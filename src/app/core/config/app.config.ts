import { Injectable } from '@angular/core';

declare global {
  interface Window {
    SPA_ENVIRONMENT: string;
    SPA_SERVER_URL: string;
  }
}

@Injectable({ providedIn: 'root' })
export class AppConfig {
  public getConfig() {
    return {
      enviroment: window.SPA_ENVIRONMENT,
      serverUrl: window.SPA_SERVER_URL,
    };
  }
}
