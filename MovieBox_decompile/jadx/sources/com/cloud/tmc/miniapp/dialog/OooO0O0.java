package com.cloud.tmc.miniapp.dialog;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.action.ActivityAction;
import com.cloud.tmc.miniapp.action.AnimAction;
import com.cloud.tmc.miniapp.action.ClickAction;
import com.cloud.tmc.miniapp.action.HandlerAction;
import com.cloud.tmc.miniapp.action.KeyboardAction;
import com.cloud.tmc.miniapp.action.ResourcesAction;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

public class OooO0O0 extends androidx.appcompat.app.w implements ActivityAction, ResourcesAction, HandlerAction, ClickAction, AnimAction, KeyboardAction, DialogInterface.OnShowListener, DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {
    public final OooOO0O<OooO0O0> OooO00o;
    public List<Oooo000> OooO0O0;
    public List<OooOOO0> OooO0OO;
    public List<OooOo00> OooO0Oo;

    public interface OooO {
    }

    public static class OooO00o<B extends OooO00o<B>> implements ActivityAction, ResourcesAction, ClickAction, KeyboardAction {
        private int animStyle;
        private float backgroundDimAmount;
        private boolean backgroundDimEnabled;
        private final Lazy cancelListeners$delegate;
        private boolean cancelable;
        private boolean canceledOnTouchOutside;
        private SparseArray<OooOOO<View>> clickArray;
        private View contentView;
        private final Context context;
        private OooOOOO createListener;
        private OooO0O0 dialog;
        private final Lazy dismissListeners$delegate;
        private OooO extendToEdgesListener;
        private int gravity;
        private int height;
        private OooOo keyListener;
        private final Lazy showListeners$delegate;
        private int themeId;
        private int width;
        private int xOffset;
        private int yOffset;

        public static final class C0297OooO00o extends Lambda implements Function0<ArrayList<OooOOO0>> {
            public static final C0297OooO00o OooO00o = new C0297OooO00o();

            public C0297OooO00o() {
                super(0);
            }

            @Override
            public Object invoke() {
                return new ArrayList();
            }
        }

        public static final class C0298OooO0O0 extends Lambda implements Function0<ArrayList<OooOo00>> {
            public static final C0298OooO0O0 OooO00o = new C0298OooO0O0();

            public C0298OooO0O0() {
                super(0);
            }

            @Override
            public Object invoke() {
                return new ArrayList();
            }
        }

        public static final class OooO0OO extends Lambda implements Function0<ArrayList<Oooo000>> {
            public static final OooO0OO OooO00o = new OooO0OO();

            public OooO0OO() {
                super(0);
            }

            @Override
            public Object invoke() {
                return new ArrayList();
            }
        }

        public OooO00o(Context context) {
            Intrinsics.h(context, "context");
            this.context = context;
            this.themeId = R.style.MiniSDKDialogTheme;
            this.animStyle = -1;
            this.width = -2;
            this.height = -2;
            this.cancelable = true;
            this.canceledOnTouchOutside = true;
            this.backgroundDimEnabled = true;
            this.backgroundDimAmount = 0.5f;
            this.showListeners$delegate = LazyKt.b(OooO0OO.OooO00o);
            this.cancelListeners$delegate = LazyKt.b(C0297OooO00o.OooO00o);
            this.dismissListeners$delegate = LazyKt.b(C0298OooO0O0.OooO00o);
        }

        private final List<OooOOO0> getCancelListeners() {
            return (List) this.cancelListeners$delegate.getValue();
        }

        private final List<OooOo00> getDismissListeners() {
            return (List) this.dismissListeners$delegate.getValue();
        }

        private final List<Oooo000> getShowListeners() {
            return (List) this.showListeners$delegate.getValue();
        }

        public B addOnCancelListener(OooOOO0 listener) {
            Intrinsics.h(listener, "listener");
            getCancelListeners().add(listener);
            Intrinsics.f(this, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder");
            return this;
        }

        public B addOnDismissListener(OooOo00 listener) {
            Intrinsics.h(listener, "listener");
            getDismissListeners().add(listener);
            Intrinsics.f(this, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder");
            return this;
        }

        public B addOnShowListener(Oooo000 listener) {
            Intrinsics.h(listener, "listener");
            getShowListeners().add(listener);
            Intrinsics.f(this, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder");
            return this;
        }

        public OooO0O0 create() {
            if (this.contentView == null) {
                throw new IllegalArgumentException("are you ok?");
            }
            if (isShowing()) {
                dismiss();
            }
            if (this.gravity == 0) {
                this.gravity = 17;
            }
            int anim_left = -1;
            if (this.animStyle == -1) {
                int i10 = this.gravity;
                if (i10 == 3) {
                    anim_left = AnimAction.Companion.getANIM_LEFT();
                } else if (i10 == 5) {
                    anim_left = AnimAction.Companion.getANIM_RIGHT();
                } else if (i10 == 48) {
                    anim_left = AnimAction.Companion.getANIM_TOP();
                } else if (i10 == 80) {
                    anim_left = AnimAction.Companion.getANIM_BOTTOM();
                }
                this.animStyle = anim_left;
            }
            OooO0O0 oooO0O0CreateDialog = createDialog(this.context, this.themeId);
            this.dialog = oooO0O0CreateDialog;
            Intrinsics.e(oooO0O0CreateDialog);
            View view = this.contentView;
            Intrinsics.e(view);
            oooO0O0CreateDialog.setContentView(view);
            oooO0O0CreateDialog.setCancelable(this.cancelable);
            if (this.cancelable) {
                oooO0O0CreateDialog.setCanceledOnTouchOutside(this.canceledOnTouchOutside);
            }
            OooO0O0.OooO0OO(oooO0O0CreateDialog, getShowListeners());
            OooO0O0.OooO00o(oooO0O0CreateDialog, getCancelListeners());
            OooO0O0.OooO0O0(oooO0O0CreateDialog, getDismissListeners());
            oooO0O0CreateDialog.OooO00o(this.keyListener);
            Window window = oooO0O0CreateDialog.getWindow();
            if (window != null) {
                WindowManager.LayoutParams attributes = window.getAttributes();
                Intrinsics.g(attributes, "window.attributes");
                attributes.width = this.width;
                attributes.height = this.height;
                attributes.gravity = this.gravity;
                attributes.x = this.xOffset;
                attributes.y = this.yOffset;
                attributes.windowAnimations = this.animStyle;
                if (this.backgroundDimEnabled) {
                    window.addFlags(2);
                    window.setDimAmount(this.backgroundDimAmount);
                } else {
                    window.clearFlags(2);
                }
                window.setAttributes(attributes);
            }
            SparseArray<OooOOO<View>> sparseArray = this.clickArray;
            if (sparseArray != null) {
                for (int i11 = 0; i11 < sparseArray.size(); i11++) {
                    View view2 = this.contentView;
                    Intrinsics.e(view2);
                    View viewFindViewById = view2.findViewById(sparseArray.keyAt(i11));
                    if (viewFindViewById != null) {
                        viewFindViewById.setOnClickListener(new o00Oo0(oooO0O0CreateDialog, sparseArray.valueAt(i11)));
                    }
                }
            }
            Activity activity = getActivity();
            if (activity != null) {
                Intrinsics.h(activity, "activity");
                new OooO0OO(activity, oooO0O0CreateDialog);
            }
            OooOOOO oooOOOO = this.createListener;
            if (oooOOOO != null) {
                oooOOOO.onCreate(oooO0O0CreateDialog);
            }
            OooO0O0 oooO0O0 = this.dialog;
            Intrinsics.e(oooO0O0);
            return oooO0O0;
        }

        public OooO0O0 createDialog(Context context, int i10) {
            Intrinsics.h(context, "context");
            return new OooO0O0(context, i10);
        }

        public void dismiss() {
            OooO0O0 oooO0O0;
            try {
                Activity activity = getActivity();
                if (activity == null || activity.isFinishing() || activity.isDestroyed() || (oooO0O0 = this.dialog) == null) {
                    return;
                }
                oooO0O0.dismiss();
            } catch (Throwable th2) {
                TmcLogger.e("BaseDialog", "dismiss ->" + th2);
            }
        }

        @Override
        public <V extends View> V findViewById(int i10) {
            View view = this.contentView;
            if (view != null) {
                return (V) view.findViewById(i10);
            }
            throw new IllegalStateException("are you ok?");
        }

        @Override
        public Activity getActivity() {
            return ActivityAction.DefaultImpls.getActivity(this);
        }

        @Override
        public int getColor(int i10) {
            return ResourcesAction.DefaultImpls.getColor(this, i10);
        }

        public View getContentView() {
            return this.contentView;
        }

        @Override
        public Context getContext() {
            return this.context;
        }

        public OooO0O0 getDialog() {
            return this.dialog;
        }

        @Override
        public Drawable getDrawable(int i10) {
            return ResourcesAction.DefaultImpls.getDrawable(this, i10);
        }

        @Override
        public Resources getResources() {
            return ResourcesAction.DefaultImpls.getResources(this);
        }

        @Override
        public String getString(int i10) {
            return ResourcesAction.DefaultImpls.getString(this, i10);
        }

        @Override
        public <S> S getSystemService(Class<S> cls) {
            return (S) ResourcesAction.DefaultImpls.getSystemService(this, cls);
        }

        @Override
        public void hideKeyboard(View view) {
            KeyboardAction.DefaultImpls.hideKeyboard(this, view);
        }

        public boolean isCreated() {
            return this.dialog != null;
        }

        public boolean isShowing() {
            OooO0O0 oooO0O0;
            return isCreated() && (oooO0O0 = this.dialog) != null && oooO0O0.isShowing();
        }

        public void onClick(View view) {
            ClickAction.DefaultImpls.onClick(this, view);
        }

        public void post(Runnable runnable) {
            Intrinsics.h(runnable, "runnable");
            if (!isShowing()) {
                addOnShowListener(new o00O0O(runnable));
                return;
            }
            OooO0O0 oooO0O0 = this.dialog;
            if (oooO0O0 != null) {
                HandlerAction.DefaultImpls.post(oooO0O0, runnable);
            }
        }

        public void postAtTime(Runnable runnable, long j10) {
            Intrinsics.h(runnable, "runnable");
            if (!isShowing()) {
                addOnShowListener(new o000oOoO(runnable, j10));
                return;
            }
            OooO0O0 oooO0O0 = this.dialog;
            if (oooO0O0 != null) {
                HandlerAction.DefaultImpls.postAtTime(oooO0O0, runnable, j10);
            }
        }

        public void postDelayed(Runnable runnable, long j10) {
            Intrinsics.h(runnable, "runnable");
            if (!isShowing()) {
                addOnShowListener(new o0OoOo0(runnable, j10));
                return;
            }
            OooO0O0 oooO0O0 = this.dialog;
            if (oooO0O0 != null) {
                HandlerAction.DefaultImpls.postDelayed(oooO0O0, runnable, j10);
            }
        }

        public B setAnimStyle(int i10) {
            OooO0O0 oooO0O0;
            Window window;
            this.animStyle = i10;
            if (isCreated() && (oooO0O0 = this.dialog) != null && (window = oooO0O0.getWindow()) != null) {
                window.setWindowAnimations(i10);
            }
            Intrinsics.f(this, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder");
            return this;
        }

        public B setBackground(int i10, int i11) {
            return (B) setBackground(i10, androidx.core.content.b.getDrawable(this.context, i11));
        }

        public B setBackgroundDimAmount(float f10) {
            OooO0O0 oooO0O0;
            Window window;
            this.backgroundDimAmount = f10;
            if (isCreated() && (oooO0O0 = this.dialog) != null && (window = oooO0O0.getWindow()) != null) {
                window.setDimAmount(f10);
            }
            Intrinsics.f(this, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder");
            return this;
        }

        public B setBackgroundDimEnabled(boolean z10) {
            OooO0O0 oooO0O0;
            this.backgroundDimEnabled = z10;
            if (isCreated() && (oooO0O0 = this.dialog) != null) {
                if (z10) {
                    Window window = oooO0O0.getWindow();
                    if (window != null) {
                        window.addFlags(2);
                    }
                } else {
                    Window window2 = oooO0O0.getWindow();
                    if (window2 != null) {
                        window2.clearFlags(2);
                    }
                }
            }
            Intrinsics.f(this, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder");
            return this;
        }

        public B setCancelable(boolean z10) {
            OooO0O0 oooO0O0;
            this.cancelable = z10;
            if (isCreated() && (oooO0O0 = this.dialog) != null) {
                oooO0O0.setCancelable(z10);
            }
            Intrinsics.f(this, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder");
            return this;
        }

        public B setCanceledOnTouchOutside(boolean z10) {
            OooO0O0 oooO0O0;
            this.canceledOnTouchOutside = z10;
            if (isCreated() && this.cancelable && (oooO0O0 = this.dialog) != null) {
                oooO0O0.setCanceledOnTouchOutside(z10);
            }
            Intrinsics.f(this, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder");
            return this;
        }

        public B setContentView(int i10) {
            return (B) setContentView(LayoutInflater.from(this.context).inflate(i10, (ViewGroup) new FrameLayout(this.context), false));
        }

        public void setExtendToEdgesListener(OooO listener) {
            Intrinsics.h(listener, "listener");
            this.extendToEdgesListener = listener;
        }

        public B setGravity(int i10) {
            OooO0O0 oooO0O0;
            Window window;
            this.gravity = Gravity.getAbsoluteGravity(i10, getResources().getConfiguration().getLayoutDirection());
            if (isCreated() && (oooO0O0 = this.dialog) != null && (window = oooO0O0.getWindow()) != null) {
                window.setGravity(i10);
            }
            Intrinsics.f(this, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder");
            return this;
        }

        public B setHeight(int i10) {
            Window window;
            this.height = i10;
            if (isCreated()) {
                OooO0O0 oooO0O0 = this.dialog;
                if (oooO0O0 != null && (window = oooO0O0.getWindow()) != null) {
                    WindowManager.LayoutParams attributes = window.getAttributes();
                    if (attributes != null) {
                        attributes.height = i10;
                    }
                    window.setAttributes(attributes);
                }
                Intrinsics.f(this, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder");
                return this;
            }
            View view = this.contentView;
            ViewGroup.LayoutParams layoutParams = view != null ? view.getLayoutParams() : null;
            if (layoutParams != null) {
                layoutParams.height = i10;
                View view2 = this.contentView;
                if (view2 != null) {
                    view2.setLayoutParams(layoutParams);
                }
            }
            Intrinsics.f(this, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder");
            return this;
        }

        public B setHint(int i10, int i11) {
            return (B) setHint(i10, getString(i11));
        }

        public B setImageDrawable(int i10, int i11) {
            return (B) setBackground(i10, androidx.core.content.b.getDrawable(this.context, i11));
        }

        @Override
        public void setOnClickListener(View.OnClickListener onClickListener, int... iArr) {
            ClickAction.DefaultImpls.setOnClickListener(this, onClickListener, iArr);
        }

        public B setOnCreateListener(OooOOOO listener) {
            Intrinsics.h(listener, "listener");
            this.createListener = listener;
            Intrinsics.f(this, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder");
            return this;
        }

        public B setOnKeyListener(OooOo listener) {
            OooO0O0 oooO0O0;
            Intrinsics.h(listener, "listener");
            this.keyListener = listener;
            if (isCreated() && (oooO0O0 = this.dialog) != null) {
                oooO0O0.OooO00o(listener);
            }
            Intrinsics.f(this, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder");
            return this;
        }

        public B setText(int i10, int i11) {
            return (B) setText(i10, getString(i11));
        }

        public B setTextColor(int i10, int i11) {
            TextView textView = (TextView) findViewById(i10);
            if (textView != null) {
                textView.setTextColor(i11);
            }
            Intrinsics.f(this, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder");
            return this;
        }

        public B setThemeStyle(int i10) {
            this.themeId = i10;
            if (isCreated()) {
                throw new IllegalStateException("are you ok?");
            }
            Intrinsics.f(this, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder");
            return this;
        }

        public B setVisibility(int i10, int i11) {
            View viewFindViewById = findViewById(i10);
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(i11);
            }
            Intrinsics.f(this, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder");
            return this;
        }

        public B setWidth(int i10) {
            Window window;
            this.width = i10;
            if (isCreated()) {
                OooO0O0 oooO0O0 = this.dialog;
                if (oooO0O0 != null && (window = oooO0O0.getWindow()) != null) {
                    WindowManager.LayoutParams attributes = window.getAttributes();
                    if (attributes != null) {
                        attributes.width = i10;
                    }
                    window.setAttributes(attributes);
                }
                Intrinsics.f(this, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder");
                return this;
            }
            View view = this.contentView;
            ViewGroup.LayoutParams layoutParams = view != null ? view.getLayoutParams() : null;
            if (layoutParams != null) {
                layoutParams.width = i10;
                View view2 = this.contentView;
                if (view2 != null) {
                    view2.setLayoutParams(layoutParams);
                }
            }
            Intrinsics.f(this, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder");
            return this;
        }

        public B setXOffset(int i10) {
            OooO0O0 oooO0O0;
            Window window;
            this.xOffset = i10;
            if (isCreated() && (oooO0O0 = this.dialog) != null && (window = oooO0O0.getWindow()) != null) {
                WindowManager.LayoutParams attributes = window.getAttributes();
                if (attributes != null) {
                    attributes.x = i10;
                }
                window.setAttributes(attributes);
            }
            Intrinsics.f(this, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder");
            return this;
        }

        public B setYOffset(int i10) {
            OooO0O0 oooO0O0;
            Window window;
            this.yOffset = i10;
            if (isCreated() && (oooO0O0 = this.dialog) != null && (window = oooO0O0.getWindow()) != null) {
                WindowManager.LayoutParams attributes = window.getAttributes();
                if (attributes != null) {
                    attributes.y = i10;
                }
                window.setAttributes(attributes);
            }
            Intrinsics.f(this, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder");
            return this;
        }

        public void show() {
            OooO0O0 oooO0O0;
            try {
                Activity activity = getActivity();
                if (activity != null && !activity.isFinishing() && !activity.isDestroyed()) {
                    if (!isCreated()) {
                        create();
                    }
                    if (isShowing() || (oooO0O0 = this.dialog) == null) {
                        return;
                    }
                    oooO0O0.show();
                }
            } catch (Throwable th2) {
                TmcLogger.e("BaseDialog", "show ->" + th2);
            }
        }

        @Override
        public void showKeyboard(View view) {
            KeyboardAction.DefaultImpls.showKeyboard(this, view);
        }

        @Override
        public void toggleSoftInput(View view) {
            KeyboardAction.DefaultImpls.toggleSoftInput(this, view);
        }

        @Override
        public String getString(int i10, Object... objArr) {
            return ResourcesAction.DefaultImpls.getString(this, i10, objArr);
        }

        public B setBackground(int i10, Drawable drawable) {
            View viewFindViewById = findViewById(i10);
            if (viewFindViewById != null) {
                viewFindViewById.setBackground(drawable);
            }
            Intrinsics.f(this, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder");
            return this;
        }

        public B setHint(int i10, CharSequence charSequence) {
            TextView textView = (TextView) findViewById(i10);
            if (textView != null) {
                textView.setHint(charSequence);
            }
            Intrinsics.f(this, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder");
            return this;
        }

        public B setImageDrawable(int i10, Drawable drawable) {
            ImageView imageView = (ImageView) findViewById(i10);
            if (imageView != null) {
                imageView.setImageDrawable(drawable);
            }
            Intrinsics.f(this, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder");
            return this;
        }

        @Override
        public void setOnClickListener(View.OnClickListener onClickListener, View... viewArr) {
            ClickAction.DefaultImpls.setOnClickListener(this, onClickListener, viewArr);
        }

        public B setText(int i10, CharSequence charSequence) {
            TextView textView = (TextView) findViewById(i10);
            if (textView != null) {
                textView.setText(charSequence);
            }
            Intrinsics.f(this, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder");
            return this;
        }

        public B setContentView(View view) {
            int i10;
            if (view != null) {
                this.contentView = view;
                if (isCreated()) {
                    OooO0O0 oooO0O0 = this.dialog;
                    if (oooO0O0 != null) {
                        oooO0O0.setContentView(view);
                    }
                    Intrinsics.f(this, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder");
                    return this;
                }
                View view2 = this.contentView;
                ViewGroup.LayoutParams layoutParams = view2 != null ? view2.getLayoutParams() : null;
                if (layoutParams != null && this.width == -2 && this.height == -2) {
                    setWidth(layoutParams.width);
                    setHeight(layoutParams.height);
                }
                if (this.gravity == 0) {
                    if (layoutParams instanceof FrameLayout.LayoutParams) {
                        int i11 = ((FrameLayout.LayoutParams) layoutParams).gravity;
                        if (i11 != -1) {
                            setGravity(i11);
                        }
                    } else if ((layoutParams instanceof LinearLayout.LayoutParams) && (i10 = ((LinearLayout.LayoutParams) layoutParams).gravity) != 0) {
                        setGravity(i10);
                    }
                    if (this.gravity == 0) {
                        setGravity(17);
                    }
                }
                Intrinsics.f(this, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder");
                return this;
            }
            throw new IllegalArgumentException("are you ok?");
        }

        @Override
        public void setOnClickListener(int... iArr) {
            ClickAction.DefaultImpls.setOnClickListener(this, iArr);
        }

        @Override
        public void setOnClickListener(View... viewArr) {
            ClickAction.DefaultImpls.setOnClickListener(this, viewArr);
        }

        public B setOnClickListener(int i10, OooOOO<? extends View> listener) {
            OooO0O0 oooO0O0;
            View viewFindViewById;
            Intrinsics.h(listener, "listener");
            if (this.clickArray == null) {
                this.clickArray = new SparseArray<>();
            }
            SparseArray<OooOOO<View>> sparseArray = this.clickArray;
            Intrinsics.e(sparseArray);
            sparseArray.put(i10, listener);
            if (isCreated() && (oooO0O0 = this.dialog) != null && (viewFindViewById = oooO0O0.findViewById(i10)) != null) {
                viewFindViewById.setOnClickListener(new o00Oo0(this.dialog, listener));
            }
            Intrinsics.f(this, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder");
            return this;
        }
    }

    public static final class C0299OooO0O0 extends SoftReference<DialogInterface.OnCancelListener> implements OooOOO0 {
        public C0299OooO0O0(DialogInterface.OnCancelListener onCancelListener) {
            super(onCancelListener);
        }

        @Override
        public void OooO00o(OooO0O0 oooO0O0) {
            DialogInterface.OnCancelListener onCancelListener = get();
            if (onCancelListener != null) {
                onCancelListener.onCancel(oooO0O0);
            }
        }
    }

    public static final class OooO0OO implements Application.ActivityLifecycleCallbacks, Oooo000, OooOo00 {
        public Activity OooO00o;
        public OooO0O0 OooO0O0;
        public int OooO0OO;

        public OooO0OO(Activity activity, OooO0O0 oooO0O0) {
            this.OooO00o = activity;
            this.OooO0O0 = oooO0O0;
            if (oooO0O0 != null) {
                oooO0O0.OooO00o((Oooo000) this);
            }
            OooO0O0 oooO0O1 = this.OooO0O0;
            if (oooO0O1 != null) {
                oooO0O1.OooO00o((OooOo00) this);
            }
        }

        public static final void OooO00o(OooO0O0 it, OooO0OO this$0) {
            Intrinsics.h(it, "$it");
            Intrinsics.h(this$0, "this$0");
            if (it.isShowing()) {
                it.OooO00o(this$0.OooO0OO);
            }
        }

        @Override
        public void onActivityCreated(Activity activity, Bundle bundle) {
            Intrinsics.h(activity, "activity");
        }

        @Override
        public void onActivityDestroyed(Activity activity) {
            Intrinsics.h(activity, "activity");
            Activity activity2 = this.OooO00o;
            if (activity2 != activity) {
                return;
            }
            if (activity2 != null) {
                if (Build.VERSION.SDK_INT >= 29) {
                    activity2.unregisterActivityLifecycleCallbacks(this);
                } else {
                    activity2.getApplication().unregisterActivityLifecycleCallbacks(this);
                }
            }
            this.OooO00o = null;
            OooO0O0 oooO0O0 = this.OooO0O0;
            if (oooO0O0 != null) {
                List<Oooo000> list = oooO0O0.OooO0O0;
                if (list != null) {
                    list.remove(this);
                }
                List<OooOo00> list2 = oooO0O0.OooO0Oo;
                if (list2 != null) {
                    list2.remove(this);
                }
                if (oooO0O0.isShowing()) {
                    oooO0O0.dismiss();
                }
            }
            this.OooO0O0 = null;
        }

        @Override
        public void onActivityPaused(Activity activity) {
            OooO0O0 oooO0O0;
            Intrinsics.h(activity, "activity");
            if (this.OooO00o == activity && (oooO0O0 = this.OooO0O0) != null && oooO0O0.isShowing()) {
                Window window = oooO0O0.getWindow();
                this.OooO0OO = window == null ? -1 : window.getAttributes().windowAnimations;
                oooO0O0.OooO00o(0);
            }
        }

        @Override
        public void onActivityResumed(Activity activity) {
            final OooO0O0 oooO0O0;
            Intrinsics.h(activity, "activity");
            if (this.OooO00o == activity && (oooO0O0 = this.OooO0O0) != null && oooO0O0.isShowing()) {
                HandlerAction.DefaultImpls.postDelayed(oooO0O0, new Runnable() {
                    @Override
                    public final void run() {
                        OooO0O0.OooO0OO.OooO00o(oooO0O0, this);
                    }
                }, 100L);
            }
        }

        @Override
        public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
            Intrinsics.h(activity, "activity");
            Intrinsics.h(outState, "outState");
        }

        @Override
        public void onActivityStarted(Activity activity) {
            Intrinsics.h(activity, "activity");
        }

        @Override
        public void onActivityStopped(Activity activity) {
            Intrinsics.h(activity, "activity");
        }

        @Override
        public void onDismiss(OooO0O0 oooO0O0) {
            this.OooO0O0 = null;
            Activity activity = this.OooO00o;
            if (activity != null) {
                if (Build.VERSION.SDK_INT >= 29) {
                    activity.unregisterActivityLifecycleCallbacks(this);
                } else {
                    activity.getApplication().unregisterActivityLifecycleCallbacks(this);
                }
            }
        }

        @Override
        public void onShow(OooO0O0 oooO0O0) {
            this.OooO0O0 = oooO0O0;
            Activity activity = this.OooO00o;
            if (activity != null) {
                if (Build.VERSION.SDK_INT >= 29) {
                    activity.registerActivityLifecycleCallbacks(this);
                } else {
                    activity.getApplication().registerActivityLifecycleCallbacks(this);
                }
            }
        }
    }

    public static final class OooO0o extends SoftReference<DialogInterface.OnDismissListener> implements OooOo00 {
        public OooO0o(DialogInterface.OnDismissListener onDismissListener) {
            super(onDismissListener);
        }

        @Override
        public void onDismiss(OooO0O0 oooO0O0) {
            DialogInterface.OnDismissListener onDismissListener = get();
            if (onDismissListener != null) {
                onDismissListener.onDismiss(oooO0O0);
            }
        }
    }

    public static final class OooOO0 implements DialogInterface.OnKeyListener {
        public final OooOo OooO00o;

        public OooOO0(OooOo oooOo) {
            this.OooO00o = oooOo;
        }

        @Override
        public boolean onKey(DialogInterface dialogInterface, int i10, KeyEvent keyEvent) {
            OooOo oooOo = this.OooO00o;
            if (oooOo == null || !(dialogInterface instanceof OooO0O0)) {
                return false;
            }
            return oooOo.OooO00o((OooO0O0) dialogInterface, i10, keyEvent);
        }
    }

    public static final class OooOO0O<T extends DialogInterface.OnShowListener & DialogInterface.OnCancelListener & DialogInterface.OnDismissListener> extends SoftReference<T> implements DialogInterface.OnShowListener, DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {
        public OooOO0O(T t10) {
            super(t10);
        }

        @Override
        public void onCancel(DialogInterface dialogInterface) {
            T t10 = get();
            if (t10 != null) {
                t10.onCancel(dialogInterface);
            }
        }

        @Override
        public void onDismiss(DialogInterface dialogInterface) {
            T t10 = get();
            if (t10 != null) {
                t10.onDismiss(dialogInterface);
            }
        }

        @Override
        public void onShow(DialogInterface dialogInterface) {
            T t10 = get();
            if (t10 != null) {
                t10.onShow(dialogInterface);
            }
        }
    }

    public interface OooOOO<V extends View> {
        void OooO00o(OooO0O0 oooO0O0, V v10);
    }

    public interface OooOOO0 {
        void OooO00o(OooO0O0 oooO0O0);
    }

    public interface OooOOOO {
        void onCreate(OooO0O0 oooO0O0);
    }

    public interface OooOo {
        boolean OooO00o(OooO0O0 oooO0O0, int i10, KeyEvent keyEvent);
    }

    public interface OooOo00 {
        void onDismiss(OooO0O0 oooO0O0);
    }

    public static final class Oooo0 extends SoftReference<DialogInterface.OnShowListener> implements Oooo000 {
        public Oooo0(DialogInterface.OnShowListener onShowListener) {
            super(onShowListener);
        }

        @Override
        public void onShow(OooO0O0 oooO0O0) {
            DialogInterface.OnShowListener onShowListener = get();
            if (onShowListener != null) {
                onShowListener.onShow(oooO0O0);
            }
        }
    }

    public interface Oooo000 {
        void onShow(OooO0O0 oooO0O0);
    }

    public static final class o000oOoO implements Oooo000 {
        public final Runnable OooO00o;
        public final long OooO0O0;

        public o000oOoO(Runnable runnable, long j10) {
            Intrinsics.h(runnable, "runnable");
            this.OooO00o = runnable;
            this.OooO0O0 = j10;
        }

        @Override
        public void onShow(OooO0O0 oooO0O0) {
            List<Oooo000> list;
            if (oooO0O0 != null && (list = oooO0O0.OooO0O0) != null) {
                list.remove(this);
            }
            if (oooO0O0 != null) {
                HandlerAction.DefaultImpls.postAtTime(oooO0O0, this.OooO00o, this.OooO0O0);
            }
        }
    }

    public static final class o00O0O implements Oooo000 {
        public final Runnable OooO00o;

        public o00O0O(Runnable runnable) {
            this.OooO00o = runnable;
        }

        @Override
        public void onShow(OooO0O0 oooO0O0) {
            List<Oooo000> list;
            if (this.OooO00o == null) {
                return;
            }
            if (oooO0O0 != null && (list = oooO0O0.OooO0O0) != null) {
                list.remove(this);
            }
            if (oooO0O0 != null) {
                HandlerAction.DefaultImpls.post(oooO0O0, this.OooO00o);
            }
        }
    }

    public static final class o00Oo0 implements View.OnClickListener {
        public final OooO0O0 OooO00o;
        public final OooOOO<View> OooO0O0;

        public o00Oo0(OooO0O0 oooO0O0, OooOOO<View> oooOOO) {
            this.OooO00o = oooO0O0;
            this.OooO0O0 = oooOOO;
        }

        @Override
        public void onClick(View view) {
            Intrinsics.h(view, "view");
            OooOOO<View> oooOOO = this.OooO0O0;
            if (oooOOO != null) {
                oooOOO.OooO00o(this.OooO00o, view);
            }
        }
    }

    public static final class o0OoOo0 implements Oooo000 {
        public final Runnable OooO00o;
        public final long OooO0O0;

        public o0OoOo0(Runnable runnable, long j10) {
            this.OooO00o = runnable;
            this.OooO0O0 = j10;
        }

        @Override
        public void onShow(OooO0O0 oooO0O0) {
            List<Oooo000> list;
            if (this.OooO00o == null) {
                return;
            }
            if (oooO0O0 != null && (list = oooO0O0.OooO0O0) != null) {
                list.remove(this);
            }
            if (oooO0O0 != null) {
                HandlerAction.DefaultImpls.postDelayed(oooO0O0, this.OooO00o, this.OooO0O0);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OooO0O0(Context context, int i10) {
        super(context, i10);
        Intrinsics.h(context, "context");
        this.OooO00o = new OooOO0O<>(this);
    }

    public static final void OooO0O0(OooO0O0 oooO0O0, List list) {
        super.setOnDismissListener(oooO0O0.OooO00o);
        oooO0O0.OooO0Oo = list;
    }

    public static final void OooO0OO(OooO0O0 oooO0O0, List list) {
        super.setOnShowListener(oooO0O0.OooO00o);
        oooO0O0.OooO0O0 = list;
    }

    public void OooO00o(int i10) {
        Window window = getWindow();
        if (window != null) {
            window.setWindowAnimations(i10);
        }
    }

    @Override
    public void dismiss() {
        HandlerAction.DefaultImpls.removeCallbacks(this);
        View currentFocus = getCurrentFocus();
        if (currentFocus != null) {
            ((InputMethodManager) ResourcesAction.DefaultImpls.getSystemService(this, InputMethodManager.class)).hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
        }
        super.dismiss();
    }

    @Override
    public Activity getActivity() {
        return ActivityAction.DefaultImpls.getActivity(this);
    }

    @Override
    public int getColor(int i10) {
        return ResourcesAction.DefaultImpls.getColor(this, i10);
    }

    @Override
    public Drawable getDrawable(int i10) {
        return ResourcesAction.DefaultImpls.getDrawable(this, i10);
    }

    @Override
    public Handler getHandler() {
        return HandlerAction.DefaultImpls.getHandler(this);
    }

    @Override
    public Resources getResources() {
        return ResourcesAction.DefaultImpls.getResources(this);
    }

    @Override
    public String getString(int i10) {
        return ResourcesAction.DefaultImpls.getString(this, i10);
    }

    @Override
    public <S> S getSystemService(Class<S> cls) {
        return (S) ResourcesAction.DefaultImpls.getSystemService(this, cls);
    }

    @Override
    public void hideKeyboard(View view) {
        KeyboardAction.DefaultImpls.hideKeyboard(this, view);
    }

    @Override
    public void onCancel(DialogInterface dialogInterface) {
        List<OooOOO0> list = this.OooO0OO;
        if (list != null) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                OooOOO0 oooOOO0 = list.get(i10);
                if (oooOOO0 != null) {
                    oooOOO0.OooO00o(this);
                }
            }
        }
    }

    @Override
    public void onClick(View view) {
        ClickAction.DefaultImpls.onClick(this, view);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override
    public void onDismiss(DialogInterface dialogInterface) {
        List<OooOo00> list = this.OooO0Oo;
        if (list != null) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                OooOo00 oooOo00 = list.get(i10);
                if (oooOo00 != null) {
                    oooOo00.onDismiss(this);
                }
            }
        }
    }

    @Override
    public void onShow(DialogInterface dialogInterface) {
        List<Oooo000> list = this.OooO0O0;
        if (list != null) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                Oooo000 oooo000 = list.get(i10);
                if (oooo000 != null) {
                    oooo000.onShow(this);
                }
            }
        }
    }

    @Override
    public void onStart() {
        super.onStart();
    }

    @Override
    public void onStop() {
        super.onStop();
    }

    @Override
    public boolean post(Runnable runnable) {
        return HandlerAction.DefaultImpls.post(this, runnable);
    }

    @Override
    public boolean postAtTime(Runnable runnable, long j10) {
        return HandlerAction.DefaultImpls.postAtTime(this, runnable, j10);
    }

    @Override
    public boolean postDelayed(Object obj, long j10, Runnable runnable) {
        return HandlerAction.DefaultImpls.postDelayed(this, obj, j10, runnable);
    }

    @Override
    public void removeCallbacks() {
        HandlerAction.DefaultImpls.removeCallbacks(this);
    }

    @Override
    public void removeCallbacksAndMessages(Object obj) {
        HandlerAction.DefaultImpls.removeCallbacksAndMessages(this, obj);
    }

    @Override
    @Deprecated
    public void setOnCancelListener(DialogInterface.OnCancelListener onCancelListener) {
        if (onCancelListener == null) {
            return;
        }
        C0299OooO0O0 c0299OooO0O0 = new C0299OooO0O0(onCancelListener);
        if (this.OooO0OO == null) {
            this.OooO0OO = new ArrayList();
            super.setOnCancelListener(this.OooO00o);
        }
        List<OooOOO0> list = this.OooO0OO;
        if (list != null) {
            list.add(c0299OooO0O0);
        }
    }

    @Override
    public void setOnClickListener(View.OnClickListener onClickListener, int... iArr) {
        ClickAction.DefaultImpls.setOnClickListener(this, onClickListener, iArr);
    }

    @Override
    @Deprecated
    public void setOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
        if (onDismissListener == null) {
            return;
        }
        OooO00o(new OooO0o(onDismissListener));
    }

    @Override
    @Deprecated
    public void setOnKeyListener(DialogInterface.OnKeyListener onKeyListener) {
        super.setOnKeyListener(onKeyListener);
    }

    @Override
    @Deprecated
    public void setOnShowListener(DialogInterface.OnShowListener onShowListener) {
        if (onShowListener == null) {
            return;
        }
        OooO00o(new Oooo0(onShowListener));
    }

    @Override
    public void showKeyboard(View view) {
        KeyboardAction.DefaultImpls.showKeyboard(this, view);
    }

    @Override
    public void toggleSoftInput(View view) {
        KeyboardAction.DefaultImpls.toggleSoftInput(this, view);
    }

    public void OooO00o(OooOo oooOo) {
        super.setOnKeyListener(new OooOO0(oooOo));
    }

    @Override
    public String getString(int i10, Object... objArr) {
        return ResourcesAction.DefaultImpls.getString(this, i10, objArr);
    }

    @Override
    public boolean postDelayed(Runnable runnable, long j10) {
        return HandlerAction.DefaultImpls.postDelayed(this, runnable, j10);
    }

    @Override
    public void removeCallbacks(Runnable runnable) {
        HandlerAction.DefaultImpls.removeCallbacks(this, runnable);
    }

    @Override
    public void setOnClickListener(View.OnClickListener onClickListener, View... viewArr) {
        ClickAction.DefaultImpls.setOnClickListener(this, onClickListener, viewArr);
    }

    public void OooO00o(Oooo000 oooo000) {
        if (this.OooO0O0 == null) {
            this.OooO0O0 = new ArrayList();
            super.setOnShowListener(this.OooO00o);
        }
        List<Oooo000> list = this.OooO0O0;
        if (list != null) {
            list.add(oooo000);
        }
    }

    @Override
    public void setOnClickListener(int... iArr) {
        ClickAction.DefaultImpls.setOnClickListener(this, iArr);
    }

    @Override
    public void setOnClickListener(View... viewArr) {
        ClickAction.DefaultImpls.setOnClickListener(this, viewArr);
    }

    public void OooO00o(OooOo00 oooOo00) {
        if (this.OooO0Oo == null) {
            this.OooO0Oo = new ArrayList();
            super.setOnDismissListener(this.OooO00o);
        }
        List<OooOo00> list = this.OooO0Oo;
        if (list != null) {
            list.add(oooOo00);
        }
    }

    public static final void OooO00o(OooO0O0 oooO0O0, List list) {
        super.setOnCancelListener(oooO0O0.OooO00o);
        oooO0O0.OooO0OO = list;
    }
}
