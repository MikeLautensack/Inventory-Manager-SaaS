import { Stripe } from '@stripe/stripe-js';

export interface IPaymentService {
  getClient(): Promise<Stripe | null>;
}
