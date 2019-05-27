import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { Routes, RouterModule } from '@angular/router';

import { IonicModule } from '@ionic/angular';

import { MaintainmedicationPage } from './maintainmedication.page';

const routes: Routes = [
  {
    path: '',
    component: MaintainmedicationPage
  }
];

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    RouterModule.forChild(routes)
  ],
  declarations: [MaintainmedicationPage]
})
export class MaintainmedicationPageModule {}
