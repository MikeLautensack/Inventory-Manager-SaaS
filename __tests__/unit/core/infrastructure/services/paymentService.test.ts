import { IPaymentService } from '@/core/application/interfaces/services/IPaymentService.interface';
import { StripeService } from '@/core/infrastructure/services/StripeService';

describe('Payment service tests', () => {
  const paymentService: IPaymentService = new StripeService();
  test('init service', () => {
    expect(paymentService).toBeDefined();
  });
});
