import { Component, OnInit } from '@angular/core';
import { AppConfig } from './core/config/app.config';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss'],
})
export class AppComponent implements OnInit {
  title = 'scaffolding-angular';
  config: [string, string][] = [];

  constructor(private appConfig: AppConfig) {}

  ngOnInit(): void {
    this.config = Object.entries(this.appConfig.getConfig());
  }
}
