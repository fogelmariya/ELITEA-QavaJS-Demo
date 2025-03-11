import React from 'react';
import { render, screen, fireEvent } from '@testing-library/react';
import SignUpForm from './SignUpForm';

const LABELS = {
  password: 'Password',
};

const setup = () => {
  render(<SignUpForm />);
  const passwordInput = screen.getByLabelText(LABELS.password);
  return {
    passwordInput,
  };
};

describe('SignUpForm', () => {
  test('validates password criteria correctly', () => {
    const { passwordInput } = setup();
    fireEvent.change(passwordInput, { target: { value: 'short' } });
    expect(screen.getByText(/Minimum 10 characters/i).className).toMatch(/red/);
    fireEvent.change(passwordInput, { target: { value: 'LongEnough1' } });
    expect(screen.getByText(/1 uppercase character/i).className).toMatch(/green/);
    expect(screen.getByText(/1 lowercase character/i).className).toMatch(/green/);
    expect(screen.getByText(/1 number/i).className).toMatch(/green/);
    expect(screen.getByText(/Minimum 10 characters/i).className).toMatch(/green/);
  });
});
