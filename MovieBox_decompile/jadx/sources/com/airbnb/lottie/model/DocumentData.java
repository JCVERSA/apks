package com.airbnb.lottie.model;

import android.graphics.PointF;

public class DocumentData {

    public String f17153a;

    public String f17154b;

    public float f17155c;

    public Justification f17156d;

    public int f17157e;

    public float f17158f;

    public float f17159g;

    public int f17160h;

    public int f17161i;

    public float f17162j;

    public boolean f17163k;

    public PointF f17164l;

    public PointF f17165m;

    public enum Justification {
        LEFT_ALIGN,
        RIGHT_ALIGN,
        CENTER
    }

    public DocumentData(String str, String str2, float f10, Justification justification, int i10, float f11, float f12, int i11, int i12, float f13, boolean z10, PointF pointF, PointF pointF2) {
        a(str, str2, f10, justification, i10, f11, f12, i11, i12, f13, z10, pointF, pointF2);
    }

    public void a(String str, String str2, float f10, Justification justification, int i10, float f11, float f12, int i11, int i12, float f13, boolean z10, PointF pointF, PointF pointF2) {
        this.f17153a = str;
        this.f17154b = str2;
        this.f17155c = f10;
        this.f17156d = justification;
        this.f17157e = i10;
        this.f17158f = f11;
        this.f17159g = f12;
        this.f17160h = i11;
        this.f17161i = i12;
        this.f17162j = f13;
        this.f17163k = z10;
        this.f17164l = pointF;
        this.f17165m = pointF2;
    }

    public int hashCode() {
        int iHashCode = (((((int) ((((this.f17153a.hashCode() * 31) + this.f17154b.hashCode()) * 31) + this.f17155c)) * 31) + this.f17156d.ordinal()) * 31) + this.f17157e;
        long jFloatToRawIntBits = Float.floatToRawIntBits(this.f17158f);
        return (((iHashCode * 31) + ((int) (jFloatToRawIntBits ^ (jFloatToRawIntBits >>> 32)))) * 31) + this.f17160h;
    }

    public DocumentData() {
    }
}
