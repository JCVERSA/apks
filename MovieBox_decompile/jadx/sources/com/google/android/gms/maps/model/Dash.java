package com.google.android.gms.maps.model;

public final class Dash extends PatternItem {
    public final float length;

    public Dash(float f10) {
        super(0, Float.valueOf(Math.max(f10, 0.0f)));
        this.length = Math.max(f10, 0.0f);
    }

    @Override
    public final String toString() {
        float f10 = this.length;
        StringBuilder sb2 = new StringBuilder(30);
        sb2.append("[Dash: length=");
        sb2.append(f10);
        sb2.append("]");
        return sb2.toString();
    }
}
