import { SupabaseClient } from '@supabase/supabase-js';
import { ReadonlyRequestCookies } from 'next/dist/server/web/spec-extension/adapters/request-cookies';

export interface IBaaSService {
  getServerClient(cookieStore: ReadonlyRequestCookies): SupabaseClient;
}
