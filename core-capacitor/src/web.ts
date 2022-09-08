import { WebPlugin } from '@capacitor/core';

import type { CoreCapacitorPlugin } from './definitions';

export class CoreCapacitorWeb extends WebPlugin implements CoreCapacitorPlugin {
  testFunction(): Promise<string> {
    throw new Error('Method not implemented.');
  }
}
