import { CUSTOM_ELEMENTS_SCHEMA } from '@angular/core';
import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { MaintainmedicationPage } from './maintainmedication.page';

describe('MaintainmedicationPage', () => {
  let component: MaintainmedicationPage;
  let fixture: ComponentFixture<MaintainmedicationPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ MaintainmedicationPage ],
      schemas: [CUSTOM_ELEMENTS_SCHEMA],
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(MaintainmedicationPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
