import {AnimatePresence, m} from 'framer-motion';
import {Fragment} from 'react';
import {opacityAnimation} from '@common/ui/animation/opacity-animation';
import {Skeleton} from '@common/ui/skeleton/skeleton';
import clsx from 'clsx';
import {Chip} from '@common/ui/forms/input-field/chip-field/chip';
import {Trans} from '@common/i18n/trans';
import {FormattedPrice} from '@common/i18n/formatted-price';
import {Button} from '@common/ui/buttons/button';
import {Link} from 'react-router-dom';
import {LincenseFeatureList} from '@common/billing/pricing-table/license-feature-list';

interface LicensingTableProps {
  className?: string;
  productLoader?: string;
}

export function LicensingTable({
  className,
  productLoader,
}: LicensingTableProps) {
  return (
    <div
      className={clsx(
        'flex flex-col items-stretch gap-24 overflow-x-auto overflow-y-visible pb-20 md:flex-row md:justify-center',
        className,
      )}
    >
      <AnimatePresence initial={false} mode="wait">
        <EmptyPlanList key="plan-list" />
      </AnimatePresence>
    </div>
  );
}

function EmptyPlanList() {
  const filteredPlans = [
    {
      id: '1',
      name: 'Basic',
      description: 'This is a basic plan',
      recommended: false,
      free: false,
      prices: [
        {
          id: '1',
          amount: 9.99,
          interval: 'month',
        },
        {
          id: '2',
          amount: 99.99,
          interval: 'year',
        },
      ],
    },
    {
      id: '2',
      name: 'Pro',
      description: 'This is a pro plan',
      recommended: true,
      free: false,
      prices: [
        {
          id: '3',
          amount: 19.99,
          interval: 'month',
        },
        {
          id: '4',
          amount: 199.99,
          interval: 'year',
        },
      ],
    },
    {
      id: '3',
      name: 'Enterprise',
      description: 'This is an enterprise plan',
      recommended: false,
      free: false,
      prices: [
        {
          id: '5',
          amount: 49.99,
          interval: 'month',
        },
        {
          id: '6',
          amount: 499.99,
          interval: 'year',
        },
      ],
    },
  ];

  return (
    <Fragment>
      {filteredPlans.map((plan, index) => {
        const isFirst = index === 0;
        const isLast = index === filteredPlans.length - 1;
        const price = plan.prices[0];

        let upgradeRoute = `/checkout/${plan.id}/${price.id}`;

        return (
          <m.div
            key={plan.id}
            {...opacityAnimation}
            className={clsx(
              'w-full rounded-panel border bg px-28 py-28 shadow-lg md:min-w-240 md:max-w-350',
              isFirst && 'ml-auto',
              isLast && 'mr-auto',
            )}
          >
            <div className="mb-32">
              <Chip
                radius="rounded"
                size="sm"
                className={clsx(
                  'mb-20 w-min',
                  !plan.recommended && 'invisible',
                )}
              >
                <Trans message="Most popular" />
              </Chip>
              <div className="mb-12 text-xl font-semibold">
                <Trans message={plan.name} />
              </div>
              <div className="text-sm text-muted">
                <Trans message={plan.description} />
              </div>
            </div>
            <div>

              <div className="mt-60">
                <Button
                  variant={plan.recommended ? 'flat' : 'outline'}
                  color="primary"
                  className="w-full"
                  size="md"
                  elementType={upgradeRoute ? Link : undefined}
                  disabled={!upgradeRoute}
                  to={upgradeRoute}
                >
                  {plan.free ? (
                    <Trans message="Get started" />
                  ) : (
                    <Trans message="Upgrade" />
                  )}
                </Button>
              </div>
              {/* <LincenseFeatureList/> */}
            </div>
          </m.div>
        );
      })}
    </Fragment>
  );
}

function SkeletonLoader() {
  return (
    <Fragment>
      <PlanSkeleton key="skeleton-1" />
      <PlanSkeleton key="skeleton-2" />
      <PlanSkeleton key="skeleton-3" />
    </Fragment>
  );
}

function PlanSkeleton() {
  return (
    <m.div
      {...opacityAnimation}
      className="w-full rounded-lg border px-28 py-90 shadow-lg md:max-w-350"
    >
      <Skeleton className="my-10" />
      <Skeleton className="mb-40" />
      <Skeleton className="mb-40 h-30" />
      <Skeleton className="mb-40 h-40" />
      <Skeleton className="mb-20" />
      <Skeleton />
      <Skeleton />
    </m.div>
  );
}