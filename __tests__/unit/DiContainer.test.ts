import diContainer from '@/core/di/diContainer';

describe('DI Container tests', () => {
  const container = diContainer;

  test('DI Container working', () => {
    expect(container).toBeDefined();
  });
});
