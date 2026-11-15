package v0;

import android.view.View;

public class e {

    public float f73426a;

    public int f73427b;

    public int f73428c;

    public int f73429d;

    public int f73430e;

    public void a(View view) {
        this.f73427b = view.getLeft();
        this.f73428c = view.getTop();
        this.f73429d = view.getRight();
        this.f73430e = view.getBottom();
        this.f73426a = view.getRotation();
    }

    public int b() {
        return this.f73430e - this.f73428c;
    }

    public int c() {
        return this.f73429d - this.f73427b;
    }
}
