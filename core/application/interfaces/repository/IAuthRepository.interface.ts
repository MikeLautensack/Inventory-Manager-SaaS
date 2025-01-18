import { AuthError, User } from '@supabase/supabase-js';
import { ReadonlyRequestCookies } from 'next/dist/server/web/spec-extension/adapters/request-cookies';

export type Res = {
  error: AuthError | null;
  data: UserType;
};

type UserType = {
  user: User | null;
};

export interface IAuthRepository {
  getUser(cookies: ReadonlyRequestCookies): Promise<Res>;
}
