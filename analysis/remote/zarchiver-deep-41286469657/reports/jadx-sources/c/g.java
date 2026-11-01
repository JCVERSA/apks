package c;

import java.util.ArrayList;

public class g extends c {
    public final ArrayList<c> M = new ArrayList<>();

    @Override
    public void g() {
        this.M.clear();
        super.g();
    }

    @Override
    public final void h(b.c cVar) {
        super.h(cVar);
        ArrayList<c> arrayList = this.M;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.get(i2).h(cVar);
        }
    }

    @Override
    public final void m(int i2, int i3) {
        this.f360x = i2;
        this.f361y = i3;
        ArrayList<c> arrayList = this.M;
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            arrayList.get(i4).m(this.f354r + this.f360x, this.f355s + this.f361y);
        }
    }

    @Override
    public final void q() {
        super.q();
        ArrayList<c> arrayList = this.M;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            c cVar = arrayList.get(i2);
            cVar.m(this.f356t + this.f360x, this.f357u + this.f361y);
            if (!(cVar instanceof d)) {
                cVar.q();
            }
        }
    }

    public void s() {
        q();
        ArrayList<c> arrayList = this.M;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            c cVar = arrayList.get(i2);
            if (cVar instanceof g) {
                ((g) cVar).s();
            }
        }
    }
}
