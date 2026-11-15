package com.yandex.div.core.view2.animations;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;
import android.widget.ImageView;
import androidx.core.view.ViewGroupKt;
import androidx.transition.R;
import androidx.transition.Transition;
import androidx.transition.TransitionListenerAdapter;
import com.yandex.div.core.view2.divs.widgets.DivImageView;
import defpackage.c74;
import defpackage.pdc;
import defpackage.y45;
import defpackage.zfb;
import java.util.Iterator;

public abstract class ViewCopiesKt {

    public static final class a implements View.OnAttachStateChangeListener {
        public final View b;
        public final View c;

        public a(View view, View view2) {
            this.b = view;
            this.c = view2;
        }

        @Override
        public void onViewAttachedToWindow(View view) {
        }

        @Override
        public void onViewDetachedFromWindow(View view) {
            this.b.removeOnAttachStateChangeListener(this);
            ViewCopiesKt.e(this.c, null);
        }
    }

    public static final class b implements View.OnLayoutChangeListener {
        public final c74 b;

        public b(c74 c74Var) {
            this.b = c74Var;
        }

        @Override
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            view.removeOnLayoutChangeListener(this);
            this.b.invoke();
        }
    }

    public static final View b(final View view, ViewGroup viewGroup, Transition transition, int[] iArr) {
        y45.j(view, "view");
        y45.j(viewGroup, "sceneRoot");
        y45.j(transition, "transition");
        y45.j(iArr, "endPosition");
        int i = R.id.save_overlay_view;
        Object tag = view.getTag(i);
        View view2 = tag instanceof View ? (View) tag : null;
        if (view2 != null) {
            return view2;
        }
        final ImageView imageView = new ImageView(view.getContext());
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        f(imageView, view);
        imageView.measure(View.MeasureSpec.makeMeasureSpec(view.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(view.getHeight(), 1073741824));
        imageView.layout(0, 0, view.getWidth(), view.getHeight());
        c(imageView, viewGroup, iArr);
        view.setTag(i, imageView);
        d(view, imageView, transition, viewGroup);
        e(view, new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m148invoke();
                return zfb.a;
            }

            public final void m148invoke() {
                ViewCopiesKt.f(imageView, view);
            }
        });
        if (imageView.isAttachedToWindow()) {
            imageView.addOnAttachStateChangeListener(new a(imageView, view));
        } else {
            e(view, null);
        }
        return imageView;
    }

    public static final void c(View view, ViewGroup viewGroup, int[] iArr) {
        int[] iArr2 = new int[2];
        viewGroup.getLocationOnScreen(iArr2);
        view.offsetLeftAndRight(iArr[0] - iArr2[0]);
        view.offsetTopAndBottom(iArr[1] - iArr2[1]);
    }

    public static final void d(final View view, final View view2, Transition transition, ViewGroup viewGroup) {
        final ViewGroupOverlay overlay = viewGroup.getOverlay();
        view.setVisibility(4);
        overlay.add(view2);
        transition.addListener(new TransitionListenerAdapter() {
            @Override
            public void onTransitionEnd(Transition transition2) {
                y45.j(transition2, "transition");
                view.setTag(R.id.save_overlay_view, null);
                view.setVisibility(0);
                overlay.remove(view2);
                transition2.removeListener(this);
            }

            @Override
            public void onTransitionPause(Transition transition2) {
                y45.j(transition2, "transition");
                overlay.remove(view2);
            }

            @Override
            public void onTransitionResume(Transition transition2) {
                y45.j(transition2, "transition");
                if (view2.getParent() == null) {
                    overlay.add(view2);
                }
            }

            @Override
            public void onTransitionStart(Transition transition2) {
                y45.j(transition2, "transition");
                view.setVisibility(4);
            }
        });
    }

    public static final void e(View view, c74 c74Var) {
        y45.j(view, "<this>");
        if (view instanceof DivImageView) {
            ((DivImageView) view).setImageChangeCallback(c74Var);
        } else if (view instanceof ViewGroup) {
            Iterator it = ViewGroupKt.getChildren((ViewGroup) view).iterator();
            while (it.hasNext()) {
                e((View) it.next(), c74Var);
            }
        }
    }

    public static final void f(final ImageView imageView, final View view) {
        Bitmap bitmap;
        ImageView imageView2 = view instanceof ImageView ? (ImageView) view : null;
        Drawable drawable = imageView2 != null ? imageView2.getDrawable() : null;
        BitmapDrawable bitmapDrawable = drawable instanceof BitmapDrawable ? (BitmapDrawable) drawable : null;
        if (bitmapDrawable != null && (bitmap = bitmapDrawable.getBitmap()) != null) {
            imageView.setImageBitmap(bitmap);
            return;
        }
        c74 c74Var = new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m149invoke();
                return zfb.a;
            }

            public final void m149invoke() {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.ARGB_8888);
                y45.i(bitmapCreateBitmap, "createBitmap(view.width,… Bitmap.Config.ARGB_8888)");
                View view2 = view;
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                canvas.translate(-view2.getScrollX(), -view2.getScrollY());
                view2.draw(canvas);
                imageView.setImageBitmap(bitmapCreateBitmap);
            }
        };
        if (pdc.d(view)) {
            c74Var.invoke();
        } else if (!pdc.d(view) || view.isLayoutRequested()) {
            view.addOnLayoutChangeListener(new b(c74Var));
        } else {
            c74Var.invoke();
        }
    }
}
