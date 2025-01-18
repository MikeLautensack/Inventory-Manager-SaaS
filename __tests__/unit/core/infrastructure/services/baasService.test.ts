jest.mock('next/headers', () => ({
  // Provide a mock cookies() implementation
  cookies: jest.fn(() => {
    return {
      // Return a mock cookie store-like object with .get, .set, etc.
      get: jest.fn().mockReturnValue({ value: 'mockCookieValue' }),
      set: jest.fn(),
      delete: jest.fn()
    };
  })
}));

import { IBaaSService } from '@/core/application/interfaces/services/IBaaSService.interface';
import { SupabaseService } from '@/core/infrastructure/services/SupabaseService';

describe('BaaS Service tests', () => {
  const service: IBaaSService = new SupabaseService();

  test('init service', () => {
    expect(service).toBeDefined();
  });
});
