import { registerPlugin } from '@capacitor/core';

import type { CoreCapacitorPlugin } from './definitions';

const CoreCapacitor = registerPlugin<CoreCapacitorPlugin>('CoreCapacitor', {
  web: () => import('./web').then(m => new m.CoreCapacitorWeb()),
});

export * from './definitions';
export { CoreCapacitor };
