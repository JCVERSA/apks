package com.transsion.json;

public class n extends Number {

    private final String f44734a;

    final String f44735b = "(\\p{Digit}+)";

    final String f44736c = "(\\p{XDigit}+)";

    final String f44737d = "[eE][+-]?(\\p{Digit}+)";

    final String f44738e = "[\\x00-\\x20]*[+-]?(NaN|Infinity|((((\\p{Digit}+)(\\.)?((\\p{Digit}+)?)([eE][+-]?(\\p{Digit}+))?)|(\\.((\\p{Digit}+))([eE][+-]?(\\p{Digit}+))?)|(((0[xX](\\p{XDigit}+)(\\.)?)|(0[xX](\\p{XDigit}+)?(\\.)(\\p{XDigit}+)))[pP][+-]?(\\p{Digit}+)))[fFdD]?))[\\x00-\\x20]*";

    public n(String str) {
        this.f44734a = str;
    }

    private boolean f() {
        return this.f44734a.startsWith("0x");
    }

    private boolean g() {
        return this.f44734a.length() > 1 && this.f44734a.charAt(0) == '0' && Character.isDigit(this.f44734a.charAt(1));
    }

    public boolean a() {
        return this.f44734a.matches("\\-?\\d+");
    }

    public Double b() {
        return Double.valueOf(Double.parseDouble(this.f44734a));
    }

    public Float c() {
        return Float.valueOf(Float.parseFloat(this.f44734a));
    }

    public Integer d() {
        if (f()) {
            return Integer.valueOf(Integer.parseInt(this.f44734a.substring(2), 16));
        }
        return g() ? Integer.valueOf(Integer.parseInt(this.f44734a.substring(1), 8)) : Integer.valueOf(Integer.parseInt(this.f44734a));
    }

    @Override
    public double doubleValue() {
        return b().doubleValue();
    }

    public Long e() {
        if (f()) {
            return Long.valueOf(Long.parseLong(this.f44734a.substring(2), 16));
        }
        return g() ? Long.valueOf(Long.parseLong(this.f44734a.substring(1), 8)) : Long.valueOf(Long.parseLong(this.f44734a));
    }

    @Override
    public float floatValue() {
        return c().floatValue();
    }

    @Override
    public int intValue() {
        return d().intValue();
    }

    @Override
    public long longValue() {
        return e().longValue();
    }
}
