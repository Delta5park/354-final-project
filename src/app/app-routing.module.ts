import { NgModule } from '@angular/core';
import { PreloadAllModules, RouterModule, Routes } from '@angular/router';

const routes: Routes = [
  { path: '', loadChildren: './tabs/tabs.module#TabsPageModule' },
  { path: 'tab4', loadChildren: './tab4/tab4.module#Tab4PageModule' },
  { path: 'tab5', loadChildren: './tab5/tab5.module#Tab5PageModule' },
  { path: 'addjournalentry', loadChildren: './addjournalentry/addjournalentry.module#AddjournalentryPageModule' },
  { path: 'addmedication', loadChildren: './addmedication/addmedication.module#AddmedicationPageModule' },
  { path: 'maintain', loadChildren: './maintain/maintain.module#MaintainPageModule' },
  { path: 'maintainjournalentry', loadChildren: './maintainjournalentry/maintainjournalentry.module#MaintainjournalentryPageModule' },
  { path: 'maintainmedication', loadChildren: './maintainmedication/maintainmedication.module#MaintainmedicationPageModule' },
  { path: 'register', loadChildren: './register/register.module#RegisterPageModule' },
  { path: 'resetpassword', loadChildren: './resetpassword/resetpassword.module#ResetpasswordPageModule' },
  { path: 'calendar', loadChildren: './calendar/calendar.module#CalendarPageModule' }
];
@NgModule({
  imports: [
    RouterModule.forRoot(routes, { preloadingStrategy: PreloadAllModules })
  ],
  exports: [RouterModule]
})
export class AppRoutingModule {}
