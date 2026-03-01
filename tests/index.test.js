import { describe, it, expect } from '@jest/globals';
import app from '../src/index.js';

describe('app', () => {
  it('should be a function', () => {
    expect(typeof app).toBe('function');
  });
});
