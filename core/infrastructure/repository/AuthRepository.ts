import {
  IAuthRepository,
  Res
} from '@/core/application/interfaces/repository/IAuthRepository.interface';
import { IBaaSService } from '@/core/application/interfaces/services/IBaaSService.interface';
import { ReadonlyRequestCookies } from 'next/dist/server/web/spec-extension/adapters/request-cookies';

export class AuthRepository implements IAuthRepository {
  constructor(private readonly baasService: IBaaSService) {}

  public async getUser(cookies: ReadonlyRequestCookies): Promise<Res> {
    return await this.baasService.getServerClient(cookies).auth.getUser();
  }
}
