package com.journeyapps.barcodescanner.camera;

public class CameraSettings {

    private int f33117a = -1;

    private boolean f33118b = false;

    private boolean f33119c = false;

    private boolean f33120d = false;

    private boolean f33121e = true;

    private boolean f33122f = false;

    private boolean f33123g = false;

    private boolean f33124h = false;

    private FocusMode f33125i = FocusMode.AUTO;

    public enum FocusMode {
        AUTO,
        CONTINUOUS,
        INFINITY,
        MACRO
    }

    public FocusMode a() {
        return this.f33125i;
    }

    public int b() {
        return this.f33117a;
    }

    public boolean c() {
        return this.f33121e;
    }

    public boolean d() {
        return this.f33124h;
    }

    public boolean e() {
        return this.f33119c;
    }

    public boolean f() {
        return this.f33123g;
    }

    public boolean g() {
        return this.f33120d;
    }

    public boolean h() {
        return this.f33118b;
    }

    public void i(int i10) {
        this.f33117a = i10;
    }
}
