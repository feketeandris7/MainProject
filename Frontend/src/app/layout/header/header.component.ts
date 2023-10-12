import { Component } from '@angular/core';
import { ToggleService } from 'src/app/core/services/toggle.service';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css'],
})
export class HeaderComponent {
  hasClicked = false;

  constructor(private readonly toggleService: ToggleService) {}

  public clickEvent() {
    this.hasClicked = !this.hasClicked;
    this.toggleService.expandedEmitter.next(this.hasClicked);
  }
}
