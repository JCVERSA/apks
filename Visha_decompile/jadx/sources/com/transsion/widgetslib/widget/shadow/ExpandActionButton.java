package com.transsion.widgetslib.widget.shadow;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.ColorDrawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import androidx.constraintlayout.motion.widget.Key;
import com.transsion.widgetslib.R;
import java.util.ArrayList;

public class ExpandActionButton extends FrameLayout {
    public static final int HORIZONTAL = 1;
    public static final int VERTICAL = 0;
    public boolean b;
    public final int c;
    public final int d;
    public FloatingOvalButton e;
    public FloatingOvalButton[] f;
    public int g;
    public boolean h;
    public int i;
    public boolean j;

    public static class SaveState extends View.BaseSavedState {
        public static final Parcelable.Creator<SaveState> CREATOR = new a();
        boolean expandable;

        public class a implements Parcelable.Creator {
            @Override
            public SaveState createFromParcel(Parcel parcel) {
                return new SaveState(parcel);
            }

            @Override
            public SaveState[] newArray(int i) {
                return new SaveState[i];
            }
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeByte((byte) (!this.expandable ? 1 : 0));
        }

        private SaveState(Parcel parcel) {
            super(parcel);
            this.expandable = parcel.readByte() == 0;
        }

        public SaveState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(View view) {
            if (!ExpandActionButton.this.h) {
                ExpandActionButton.d(ExpandActionButton.this);
            } else if (ExpandActionButton.this.b) {
                ExpandActionButton.this.collapseItemButtons();
            } else {
                ExpandActionButton.this.expandItemButtons();
            }
        }
    }

    public class b extends AnimatorListenerAdapter {
        public b() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            ExpandActionButton.this.j = false;
            ExpandActionButton.this.b = true;
            if (ExpandActionButton.this.h) {
                return;
            }
            ExpandActionButton.this.collapseItemButtons();
        }

        @Override
        public void onAnimationStart(Animator animator) {
            ExpandActionButton.this.setItemsVisibility(0);
        }
    }

    public class c extends AnimatorListenerAdapter {
        public c() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            ExpandActionButton.this.setItemsVisibility(8);
            ExpandActionButton.this.j = false;
            ExpandActionButton.this.b = false;
            if (ExpandActionButton.this.h) {
                return;
            }
            ExpandActionButton.this.j();
        }
    }

    public class d implements View.OnClickListener {
        public final int b;

        public d(int i) {
            this.b = i;
        }

        @Override
        public void onClick(View view) {
            ExpandActionButton.c(ExpandActionButton.this);
        }
    }

    public interface e {
    }

    public interface f {
    }

    public ExpandActionButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f = new FloatingOvalButton[3];
        this.h = true;
        LayoutInflater.from(context).inflate(R.layout.os_expand_action_btn_layout, this);
        this.e = (FloatingOvalButton) findViewById(R.id.float_main);
        this.f[0] = (FloatingOvalButton) findViewById(R.id.float_item0);
        this.f[1] = (FloatingOvalButton) findViewById(R.id.float_item1);
        this.f[2] = (FloatingOvalButton) findViewById(R.id.float_item2);
        int i = i(7.0f);
        setPadding(i, i, i, i);
        this.c = i(88.0f);
        this.d = i(265.0f);
        int i2 = context.getResources().getConfiguration().orientation;
        if (i2 == 2) {
            this.g = 1;
        } else if (i2 == 1) {
            this.g = 0;
        }
    }

    public static e c(ExpandActionButton expandActionButton) {
        expandActionButton.getClass();
        return null;
    }

    public static f d(ExpandActionButton expandActionButton) {
        expandActionButton.getClass();
        return null;
    }

    public void setItemsVisibility(int i) {
        for (int i2 = 0; i2 < this.i; i2++) {
            this.f[i2].setVisibility(i);
        }
    }

    public void collapseItemButtons() {
        if (this.j) {
            return;
        }
        this.j = true;
        m();
    }

    public void collapseItemButtonsNoAnim() {
        if (this.b) {
            for (int i = 0; i < this.i; i++) {
                if (this.g == 0) {
                    this.f[i].setTranslationY(0.0f);
                } else {
                    this.f[i].setTranslationX(0.0f);
                }
            }
            this.e.getImage().setRotation(0.0f);
            setItemsVisibility(8);
            this.b = false;
            if (this.h) {
                return;
            }
            j();
        }
    }

    public void expandItemButtons() {
        if (this.j) {
            return;
        }
        this.j = true;
        n();
    }

    public final int i(float f2) {
        return (int) TypedValue.applyDimension(1, f2, getResources().getDisplayMetrics());
    }

    public boolean isExpanded() {
        return this.b;
    }

    public final void j() {
        getLayoutParams().width = this.c;
        getLayoutParams().height = this.c;
        requestLayout();
    }

    public final void k() {
        int i = this.g;
        if (i == 0) {
            getLayoutParams().height = this.d;
            getLayoutParams().width = this.c;
            requestLayout();
            return;
        }
        if (i == 1) {
            getLayoutParams().width = this.d;
            getLayoutParams().height = this.c;
            requestLayout();
        }
    }

    public final void l(int i, int i2, int i3) {
        FloatingOvalButton floatingOvalButton = this.f[i3];
        floatingOvalButton.setImageResource(i);
        floatingOvalButton.setImageBackground(new ColorDrawable(i2));
        floatingOvalButton.setClickable(true);
        floatingOvalButton.setOnClickListener(new d(i3));
    }

    public final void m() {
        ArrayList arrayList = new ArrayList();
        String str = this.g == 0 ? "translationY" : "translationX";
        boolean z = getLayoutDirection() == 1;
        for (int i = 0; i < this.i; i++) {
            int i2 = i(64.0f) + (i(56.0f) * i);
            if (!z || this.g != 1) {
                i2 = -i2;
            }
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f[i], str, i2, 0.0f);
            objectAnimatorOfFloat.setDuration(238L);
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f[i], "alpha", 1.0f, 0.0f);
            objectAnimatorOfFloat2.setDuration(238L);
            arrayList.add(objectAnimatorOfFloat);
            arrayList.add(objectAnimatorOfFloat2);
        }
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.e.getImage(), Key.ROTATION, z ? -135.0f : 135.0f, 0.0f);
        objectAnimatorOfFloat3.setInterpolator(new BackOutInterpolator());
        objectAnimatorOfFloat3.setDuration(360L);
        arrayList.add(objectAnimatorOfFloat3);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        animatorSet.addListener(new c());
        animatorSet.start();
    }

    public final void n() {
        ArrayList arrayList = new ArrayList();
        String str = this.g == 0 ? "translationY" : "translationX";
        boolean z = getLayoutDirection() == 1;
        for (int i = 0; i < this.i; i++) {
            int i2 = i(64.0f) + (i(56.0f) * i);
            if (!z || this.g != 1) {
                i2 = -i2;
            }
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f[i], str, 0.0f, i2);
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f[i], "alpha", 0.0f, 1.0f);
            arrayList.add(objectAnimatorOfFloat);
            arrayList.add(objectAnimatorOfFloat2);
        }
        arrayList.add(ObjectAnimator.ofFloat(this.e.getImage(), Key.ROTATION, 0.0f, z ? -135.0f : 135.0f));
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setDuration(360L);
        animatorSet.setInterpolator(new BackOutInterpolator());
        animatorSet.playTogether(arrayList);
        animatorSet.addListener(new b());
        animatorSet.start();
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        collapseItemButtonsNoAnim();
        int i = configuration.orientation;
        if (i == 2) {
            setExpandOrientation(1);
        } else if (i == 1) {
            setExpandOrientation(0);
        }
    }

    @Override
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (!this.h) {
            setItemsVisibility(8);
            return;
        }
        for (int i5 = 0; i5 < this.i; i5++) {
            int width = (this.e.getWidth() - this.f[i5].getWidth()) / 2;
            int left = this.e.getLeft() + width;
            int top = this.e.getTop() + width;
            FloatingOvalButton floatingOvalButton = this.f[i5];
            floatingOvalButton.layout(left, top, floatingOvalButton.getWidth() + left, this.f[i5].getHeight() + i4);
        }
    }

    @Override
    public void onRestoreInstanceState(Parcelable parcelable) {
        SaveState saveState = (SaveState) parcelable;
        super.onRestoreInstanceState(saveState);
        boolean z = saveState.expandable;
        this.h = z;
        setExpandable(z);
    }

    @Override
    public Parcelable onSaveInstanceState() {
        SaveState saveState = new SaveState(super.onSaveInstanceState());
        saveState.expandable = this.h;
        return saveState;
    }

    public void setExpandOrientation(int i) {
        this.g = i;
        k();
    }

    public void setExpandable(boolean z) {
        this.h = z;
        if (z) {
            k();
        } else if (this.b) {
            collapseItemButtons();
        } else {
            if (this.j) {
                return;
            }
            j();
        }
    }

    public void setItemsIconAndColor(int[] iArr, int[] iArr2) {
        if (iArr.length != iArr2.length) {
            return;
        }
        this.i = iArr.length <= 3 ? iArr.length : 3;
        for (int i = 0; i < this.i; i++) {
            l(iArr[i], iArr2[i], i);
        }
    }

    public void setMainButtonIconAndColor(int i, int i2) {
        this.e.setImageResource(i);
        this.e.setImageBackground(new ColorDrawable(i2));
        this.e.setClickable(true);
        this.e.setOnClickListener(new a());
        setExpandable(true);
    }

    public void setOnItemButtonClickListener(e eVar) {
    }

    public void setOnMainButtonClickListener(f fVar) {
    }
}
