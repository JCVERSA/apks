package com.transsion.widgetslib.widget.actionbar;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Outline;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import com.transsion.widgetslib.R;

public class FootActionBar extends FrameLayout {
    public static final ViewOutlineProvider d = new a();
    public OverflowMenu b;
    public ImageButton c;

    public class a extends ViewOutlineProvider {
        @Override
        public void getOutline(View view, Outline outline) {
            outline.setOval(0, 0, view.getWidth(), view.getHeight());
        }
    }

    public FootActionBar(Context context) {
        this(context, null);
    }

    public static void setupViewFab(View view, Resources resources) {
        view.setOutlineProvider(d);
        view.setTranslationZ(resources.getDimensionPixelSize(R.dimen.floating_action_button_translation_z));
    }

    public final void a(int i) {
    }

    public ImageButton getCenterBtn() {
        return this.c;
    }

    public OverflowMenu getOverflowMenu() {
        return this.b;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Log.d("os_menu", "ActionBar, onAttachedToWindow()");
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.b = null;
        Log.d("os_menu", "ActionBar, onDetachedFromWindow()");
    }

    public void setOverMenuColor(int i) {
        this.b.setOverMenuColor(i);
    }

    @Override
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (i == 0) {
            startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.os_footer_menu_enter));
        }
        if (i == 8) {
            startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.os_footer_menu_exit));
        }
    }

    public FootActionBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.style.OS_FooterMenuViewStyle);
    }

    public FootActionBar(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public FootActionBar(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FooterMenuView, i, i2);
        ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.os_footer_menu_2, (ViewGroup) this, true);
        setMinimumHeight((int) typedArrayObtainStyledAttributes.getDimension(R.styleable.FooterMenuView_minHeight, 64.0f));
        this.b = (OverflowMenu) findViewById(R.id.os_menu_btn);
        this.c = (ImageButton) findViewById(R.id.os_menu_center);
        typedArrayObtainStyledAttributes.getDrawable(R.styleable.FooterMenuView_menuContentBg);
        int i3 = typedArrayObtainStyledAttributes.getInt(R.styleable.FooterMenuView_overflowMenuGravity, -1);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.b.getLayoutParams();
        if (i3 != -1) {
            layoutParams.gravity = i3;
            this.b.setLayoutParams(layoutParams);
            a(layoutParams.gravity);
        }
        Log.d("os_menu", "ActionBar, lp = " + layoutParams + ", overflowMenuGravity = " + i3);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(R.styleable.FooterMenuView_overflowMenuBgColor);
        if (drawable != null) {
            this.b.setBackground(drawable);
        }
        Drawable drawable2 = typedArrayObtainStyledAttributes.getDrawable(R.styleable.FooterMenuView_overflowMenuColor);
        if (drawable2 != null && ColorDrawable.class.isInstance(drawable2)) {
            this.b.setOverMenuColor(((ColorDrawable) drawable2).getColor());
        }
        Drawable drawable3 = typedArrayObtainStyledAttributes.getDrawable(R.styleable.FooterMenuView_centerBtnBgColor);
        if (drawable3 != null) {
            this.c.setBackground(drawable3);
        }
        Drawable drawable4 = typedArrayObtainStyledAttributes.getDrawable(R.styleable.FooterMenuView_centerBtnColor);
        if (drawable4 != null) {
            this.c.setImageDrawable(drawable4);
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
