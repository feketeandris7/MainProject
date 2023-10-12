import { Component, OnInit, ViewChild } from '@angular/core';
import { MatSidenav } from '@angular/material/sidenav';
import { ToggleService } from 'src/app/core/services/toggle.service';

@Component({
  selector: 'app-navigation',
  templateUrl: './navigation.component.html',
  styleUrls: ['./navigation.component.css'],
})
export class NavigationComponent implements OnInit {
  @ViewChild('sidenav') sidenav!: MatSidenav;

  constructor(private readonly toggleService: ToggleService) {}

  ngOnInit(): void {
    this.toggleService.expandedEmitter.subscribe((res) => {
      this.sidenav.toggle();
    });
  }
}
