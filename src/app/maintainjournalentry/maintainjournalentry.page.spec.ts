import { CUSTOM_ELEMENTS_SCHEMA } from '@angular/core';
import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { MaintainjournalentryPage } from './maintainjournalentry.page';

describe('MaintainjournalentryPage', () => {
  let component: MaintainjournalentryPage;
  let fixture: ComponentFixture<MaintainjournalentryPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ MaintainjournalentryPage ],
      schemas: [CUSTOM_ELEMENTS_SCHEMA],
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(MaintainjournalentryPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
