import Stripe from 'stripe';
import { IPaymentService } from '../../application/interfaces/services/IPaymentService.interface';
import { loadStripe, Stripe as StripeType } from '@stripe/stripe-js';

export class StripeService implements IPaymentService {
  private readonly stripe: Stripe;
  private stripePromise: Promise<StripeType | null>;

  constructor() {
    this.stripe = new Stripe(
      process.env.STRIPE_SECRET_KEY_LIVE ?? process.env.STRIPE_SECRET_KEY ?? '',
      {
        // https://github.com/stripe/stripe-node#configuration
        // https://stripe.com/docs/api/versioning
        // @ts-ignore
        apiVersion: null,
        // Register this as an official Stripe plugin.
        // https://stripe.com/docs/building-plugins#setappinfo
        appInfo: {
          name: 'Inventory Manager',
          version: '0.0.0',
          url: 'https://github.com/vercel/nextjs-subscription-payments'
        }
      }
    );
    this.stripePromise = loadStripe(
      process.env.NEXT_PUBLIC_STRIPE_PUBLISHABLE_KEY_LIVE ??
        process.env.NEXT_PUBLIC_STRIPE_PUBLISHABLE_KEY ??
        ''
    );
  }

  public async getClient(): Promise<StripeType | null> {
    return this.stripePromise;
  }
}
