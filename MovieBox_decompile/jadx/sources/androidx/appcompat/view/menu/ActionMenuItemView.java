package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import androidx.appcompat.R$styleable;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.ForwardingListener;
import androidx.appcompat.widget.o0;

public class ActionMenuItemView extends AppCompatTextView implements m.a, View.OnClickListener, ActionMenuView.a {

    h f1016a;

    private CharSequence f1017b;

    private Drawable f1018c;

    f.b f1019d;

    private ForwardingListener f1020e;

    b f1021f;

    private boolean f1022g;

    private boolean f1023h;

    private int f1024i;

    private int f1025j;

    private int f1026k;

    private class a extends ForwardingListener {
        public a() {
            super(ActionMenuItemView.this);
        }

        @Override
        public o b() {
            b bVar = ActionMenuItemView.this.f1021f;
            if (bVar != null) {
                return bVar.a();
            }
            return null;
        }

        @Override
        protected boolean c() {
            o oVarB;
            ActionMenuItemView actionMenuItemView = ActionMenuItemView.this;
            f.b bVar = actionMenuItemView.f1019d;
            return bVar != null && bVar.invokeItem(actionMenuItemView.f1016a) && (oVarB = b()) != null && oVarB.a();
        }
    }

    public static abstract class b {
        public abstract o a();
    }

    public ActionMenuItemView(Context context) {
        this(context, null);
    }

    private boolean b() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i10 = configuration.screenWidthDp;
        return i10 >= 480 || (i10 >= 640 && configuration.screenHeightDp >= 480) || configuration.orientation == 2;
    }

    private void c() {
        boolean z10 = true;
        boolean z11 = !TextUtils.isEmpty(this.f1017b);
        if (this.f1018c != null && (!this.f1016a.B() || (!this.f1022g && !this.f1023h))) {
            z10 = false;
        }
        boolean z12 = z11 & z10;
        setText(z12 ? this.f1017b : null);
        CharSequence contentDescription = this.f1016a.getContentDescription();
        if (TextUtils.isEmpty(contentDescription)) {
            setContentDescription(z12 ? null : this.f1016a.getTitle());
        } else {
            setContentDescription(contentDescription);
        }
        CharSequence tooltipText = this.f1016a.getTooltipText();
        if (TextUtils.isEmpty(tooltipText)) {
            o0.a(this, z12 ? null : this.f1016a.getTitle());
        } else {
            o0.a(this, tooltipText);
        }
    }

    @Override
    public CharSequence getAccessibilityClassName() {
        return Button.class.getName();
    }

    @Override
    public h getItemData() {
        return this.f1016a;
    }

    public boolean hasText() {
        return !TextUtils.isEmpty(getText());
    }

    @Override
    public void initialize(h hVar, int i10) {
        this.f1016a = hVar;
        setIcon(hVar.getIcon());
        setTitle(hVar.i(this));
        setId(hVar.getItemId());
        setVisibility(hVar.isVisible() ? 0 : 8);
        setEnabled(hVar.isEnabled());
        if (hVar.hasSubMenu() && this.f1020e == null) {
            this.f1020e = new a();
        }
    }

    @Override
    public boolean needsDividerAfter() {
        return hasText();
    }

    @Override
    public boolean needsDividerBefore() {
        return hasText() && this.f1016a.getIcon() == null;
    }

    @Override
    public void onClick(View view) {
        f.b bVar = this.f1019d;
        if (bVar != null) {
            bVar.invokeItem(this.f1016a);
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f1022g = b();
        c();
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        int i12;
        boolean zHasText = hasText();
        if (zHasText && (i12 = this.f1025j) >= 0) {
            super.setPadding(i12, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i10, i11);
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        int measuredWidth = getMeasuredWidth();
        int iMin = mode == Integer.MIN_VALUE ? Math.min(size, this.f1024i) : this.f1024i;
        if (mode != 1073741824 && this.f1024i > 0 && measuredWidth < iMin) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(iMin, 1073741824), i11);
        }
        if (zHasText || this.f1018c == null) {
            return;
        }
        super.setPadding((getMeasuredWidth() - this.f1018c.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }

    @Override
    public void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ForwardingListener forwardingListener;
        if (this.f1016a.hasSubMenu() && (forwardingListener = this.f1020e) != null && forwardingListener.onTouch(this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override
    public boolean prefersCondensedTitle() {
        return true;
    }

    public void setExpandedFormat(boolean z10) {
        if (this.f1023h != z10) {
            this.f1023h = z10;
            h hVar = this.f1016a;
            if (hVar != null) {
                hVar.c();
            }
        }
    }

    public void setIcon(Drawable drawable) {
        this.f1018c = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int i10 = this.f1026k;
            if (intrinsicWidth > i10) {
                intrinsicHeight = (int) (intrinsicHeight * (i10 / intrinsicWidth));
                intrinsicWidth = i10;
            }
            if (intrinsicHeight > i10) {
                intrinsicWidth = (int) (intrinsicWidth * (i10 / intrinsicHeight));
            } else {
                i10 = intrinsicHeight;
            }
            drawable.setBounds(0, 0, intrinsicWidth, i10);
        }
        setCompoundDrawables(drawable, null, null, null);
        c();
    }

    public void setItemInvoker(f.b bVar) {
        this.f1019d = bVar;
    }

    @Override
    public void setPadding(int i10, int i11, int i12, int i13) {
        this.f1025j = i10;
        super.setPadding(i10, i11, i12, i13);
    }

    public void setPopupCallback(b bVar) {
        this.f1021f = bVar;
    }

    public void setTitle(CharSequence charSequence) {
        this.f1017b = charSequence;
        c();
    }

    public boolean showsIcon() {
        return true;
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Resources resources = context.getResources();
        this.f1022g = b();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ActionMenuItemView, i10, 0);
        this.f1024i = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ActionMenuItemView_android_minWidth, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.f1026k = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.f1025j = -1;
        setSaveEnabled(false);
    }

    public void setCheckable(boolean z10) {
    }

    public void setChecked(boolean z10) {
    }

    public void setShortcut(boolean z10, char c10) {
    }
}
