package com.google.android.material.navigation;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.appcompat.view.menu.h;
import androidx.appcompat.view.menu.l;
import androidx.appcompat.view.menu.q;
import com.google.android.material.internal.ParcelableSparseArray;

public class NavigationBarPresenter implements l {

    private androidx.appcompat.view.menu.f f28531a;

    private NavigationBarMenuView f28532b;

    private boolean f28533c = false;

    private int f28534d;

    static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        int f28535a;

        ParcelableSparseArray f28536b;

        class a implements Parcelable.Creator {
            a() {
            }

            @Override
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        SavedState() {
        }

        @Override
        public int describeContents() {
            return 0;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeInt(this.f28535a);
            parcel.writeParcelable(this.f28536b, 0);
        }

        SavedState(Parcel parcel) {
            this.f28535a = parcel.readInt();
            this.f28536b = (ParcelableSparseArray) parcel.readParcelable(getClass().getClassLoader());
        }
    }

    public void a(int i10) {
        this.f28534d = i10;
    }

    @Override
    public void b(androidx.appcompat.view.menu.f fVar, boolean z10) {
    }

    @Override
    public boolean c(androidx.appcompat.view.menu.f fVar, h hVar) {
        return false;
    }

    @Override
    public void e(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.f28532b.k(savedState.f28535a);
            this.f28532b.j(com.google.android.material.badge.c.d(this.f28532b.getContext(), savedState.f28536b));
        }
    }

    @Override
    public boolean f(q qVar) {
        return false;
    }

    @Override
    public Parcelable g() {
        SavedState savedState = new SavedState();
        savedState.f28535a = this.f28532b.getSelectedItemId();
        savedState.f28536b = com.google.android.material.badge.c.e(this.f28532b.getBadgeDrawables());
        return savedState;
    }

    @Override
    public int getId() {
        return this.f28534d;
    }

    @Override
    public void h(boolean z10) {
        if (this.f28533c) {
            return;
        }
        if (z10) {
            this.f28532b.buildMenuView();
        } else {
            this.f28532b.updateMenuView();
        }
    }

    @Override
    public boolean i() {
        return false;
    }

    @Override
    public boolean j(androidx.appcompat.view.menu.f fVar, h hVar) {
        return false;
    }

    @Override
    public void k(Context context, androidx.appcompat.view.menu.f fVar) {
        this.f28531a = fVar;
        this.f28532b.initialize(fVar);
    }

    public void l(NavigationBarMenuView navigationBarMenuView) {
        this.f28532b = navigationBarMenuView;
    }

    public void m(boolean z10) {
        this.f28533c = z10;
    }
}
