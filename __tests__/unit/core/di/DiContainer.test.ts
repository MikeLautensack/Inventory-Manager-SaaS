import diContainer from '@/core/di/diContainer';

describe('DI Container tests', () => {
  const container = diContainer;

  test('Container init', () => {
    expect(container).toBeDefined();
  });

  test('Has payment service', () => {
    expect(container.paymentService).toBeDefined();
  });

  test('Has baas service', () => {
    expect(container.baasService).toBeDefined();
  });
});
