import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AddfoodadminComponent } from './addfoodadmin.component';

describe('AddfoodadminComponent', () => {
  let component: AddfoodadminComponent;
  let fixture: ComponentFixture<AddfoodadminComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ AddfoodadminComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(AddfoodadminComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
