import {Link} from 'react-router-dom';
import {artistPageTabs} from '@app/web-player/artists/artist-page-tabs';
import {Tabs} from '@common/ui/tabs/tabs';
import {TabList} from '@common/ui/tabs/tab-list';
import {Tab} from '@common/ui/tabs/tab';
import {Trans} from '@common/i18n/trans';
import {TabPanel, TabPanels} from '@common/ui/tabs/tab-panels';
import {DiscographyTab} from '@app/web-player/artists/artist-page/discography-panel/discography-tab';
import {SimilarArtistsPanel} from '@app/web-player/artists/artist-page/similar-artists-panel';
import {ArtistAboutPanel} from '@app/web-player/artists/artist-page/artist-about-panel';
import {ArtistTracksPanel} from '@app/web-player/artists/artist-page/artist-tracks-panel';
import {ArtistAlbumsPanel} from '@app/web-player/artists/artist-page/artist-albums-panel';
import {UseArtistResponse} from '@app/web-player/artists/requests/use-artist';
import {useArtistPageTabs} from '@app/web-player/artists/artist-page/use-artist-page-tabs';
import {ArtistFollowersPanel} from '@app/web-player/artists/artist-page/artist-followers-panel';

import {ArtistLicensesPanel} from '@app/web-player/artists/artist-page/artist-licenses-panel';
import {License} from '@app/web-player/tracks/licenses/license';
import {useQuery} from '@tanstack/react-query';
import {apiClient} from '@common/http/query-client';

interface Props {
  data: UseArtistResponse;
}
export function ArtistPageTabs({data}: Props) {
  const {selectedIndex, activeTabs} = useArtistPageTabs(data.artist);
  const { data: licenses } = useQuery({
    queryKey: ['artist-licenses', data.artist.id],
    queryFn: async () => {
      const response = await apiClient.get<License[]>(`artists/${data.artist.id}/licenses`);
      return response.data;
    }
  });
  return (
    <Tabs className="mt-24 md:mt-48" selectedTab={selectedIndex} isLazy>
      <TabList>
        {activeTabs.map(tab => {
          switch (tab.id) {
            case artistPageTabs.discography:
              return (
                <Tab elementType={Link} key={artistPageTabs.discography}>
                  <Trans message="Discography" />
                </Tab>
              );
            case artistPageTabs.similar:
              return (
                <Tab
                  elementType={Link}
                  to={{search: '?tab=similar'}}
                  key={artistPageTabs.similar}
                >
                  <Trans message="Similar artists" />
                </Tab>
              );
            case artistPageTabs.about:
              return (
                <Tab
                  elementType={Link}
                  to={{search: '?tab=about'}}
                  key={artistPageTabs.about}
                >
                  <Trans message="About" />
                </Tab>
              );
            case artistPageTabs.tracks:
              return (
                <Tab
                  elementType={Link}
                  to={{search: '?tab=tracks'}}
                  key={artistPageTabs.tracks}
                >
                  <Trans message="Tracks" />
                </Tab>
              );
            case artistPageTabs.albums:
              return (
                <Tab
                  elementType={Link}
                  to={{search: '?tab=albums'}}
                  key={artistPageTabs.albums}
                >
                  <Trans message="Albums" />
                </Tab>
              );
            case artistPageTabs.followers:
              return (
                <Tab
                  elementType={Link}
                  to={{search: '?tab=followers'}}
                  key={artistPageTabs.followers}
                >
                  <Trans message="Followers" />
                </Tab>
              );
            case artistPageTabs.licenses:
              return (
                <Tab
                  elementType={Link}
                  to={{search: '?tab=licenses'}}
                  key={artistPageTabs.licenses}
                >
                  <Trans message="Licenses" />
                </Tab>
              );
          }
        })}
      </TabList>
      <TabPanels className="mt-12 md:mt-24">
        {activeTabs.map(tab => {
          switch (tab.id) {
            case artistPageTabs.discography:
              return (
                <TabPanel key={artistPageTabs.discography}>
                  <DiscographyTab data={data} />
                </TabPanel>
              );
            case artistPageTabs.similar:
              return (
                <TabPanel key={artistPageTabs.similar}>
                  <SimilarArtistsPanel artist={data.artist} />
                </TabPanel>
              );
            case artistPageTabs.about:
              return (
                <TabPanel key={artistPageTabs.about}>
                  <ArtistAboutPanel artist={data.artist} />
                </TabPanel>
              );
            case artistPageTabs.tracks:
              return (
                <TabPanel key={artistPageTabs.tracks}>
                  <ArtistTracksPanel
                    artist={data.artist}
                    initialTracks={data.tracks}
                  />
                </TabPanel>
              );
            case artistPageTabs.albums:
              return (
                <TabPanel key={artistPageTabs.albums}>
                  <ArtistAlbumsPanel artist={data.artist} />
                </TabPanel>
              );
            case artistPageTabs.followers:
              return (
                <TabPanel key={artistPageTabs.followers}>
                  <ArtistFollowersPanel artist={data.artist} />
                </TabPanel>
              );
              case artistPageTabs.licenses:
              return (
                <TabPanel key={artistPageTabs.licenses}>
                  <ArtistLicensesPanel artist={data.artist} />
                </TabPanel>
              );
          }
        })}
      </TabPanels>
    </Tabs>
  );
}
