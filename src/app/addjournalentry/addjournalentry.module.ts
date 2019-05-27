import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { Routes, RouterModule } from '@angular/router';

import { IonicModule } from '@ionic/angular';

import { AddjournalentryPage } from './addjournalentry.page';

const routes: Routes = [
  {
    path: '',
    component: AddjournalentryPage
  }
];

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    RouterModule.forChild(routes)
  ],
  declarations: [AddjournalentryPage]
})
export class AddjournalentryPageModule {}
