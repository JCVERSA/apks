package com.google.android.gms.maps.model;

public final class Gap extends PatternItem {
    public final float length;

    public Gap(float f10) {
        super(2, Float.valueOf(Math.max(f10, 0.0f)));
        this.length = Math.max(f10, 0.0f);
    }

    @Override
    public final String toString() {
        float f10 = this.length;
        StringBuilder sb2 = new StringBuilder(29);
        sb2.append("[Gap: length=");
        sb2.append(f10);
        sb2.append("]");
        return sb2.toString();
    }
}
