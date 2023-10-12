import { Injectable } from '@angular/core';
import { Subject } from 'rxjs';

@Injectable({
  providedIn: 'root',
})
export class ToggleService {
  expandedEmitter = new Subject<boolean>();
  constructor() {}
}
