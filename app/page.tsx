import Pricing from '@/components/ui/Pricing/Pricing';
import { createClient } from '@/utils/supabase/server';
import {
  getProducts,
  getSubscription,
  getUser
} from '@/utils/supabase/queries';

export default async function PricingPage() {
  const supabase = createClient();
  const [user, products, subscription] = await Promise.all([
    getUser(supabase),
    getProducts(supabase),
    getSubscription(supabase)
  ]);

  console.log(`Testing user: ${JSON.stringify(user)}`);
  console.log(`Testing products: ${JSON.stringify(products)}`);
  console.log(`Testing subscription: ${JSON.stringify(subscription)}`);

  return (
    <Pricing
      user={user}
      products={products ?? []}
      subscription={subscription}
    />
  );
}
