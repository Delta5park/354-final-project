import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { Routes, RouterModule } from '@angular/router';

import { IonicModule } from '@ionic/angular';

import { MaintainjournalentryPage } from './maintainjournalentry.page';

const routes: Routes = [
  {
    path: '',
    component: MaintainjournalentryPage
  }
];

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    RouterModule.forChild(routes)
  ],
  declarations: [MaintainjournalentryPage]
})
export class MaintainjournalentryPageModule {}
