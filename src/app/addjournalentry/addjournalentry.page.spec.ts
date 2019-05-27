import { CUSTOM_ELEMENTS_SCHEMA } from '@angular/core';
import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AddjournalentryPage } from './addjournalentry.page';

describe('AddjournalentryPage', () => {
  let component: AddjournalentryPage;
  let fixture: ComponentFixture<AddjournalentryPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AddjournalentryPage ],
      schemas: [CUSTOM_ELEMENTS_SCHEMA],
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AddjournalentryPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
