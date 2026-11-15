package androidx.core.view;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Px;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.dbdata.beans.media.PlayAudioData;
import defpackage.c74;
import defpackage.e74;
import defpackage.pc9;
import defpackage.tc9;
import defpackage.y45;
import defpackage.zc9;
import kotlin.Metadata;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a*\u0010\u0004\u001a\u00020\u0002*\u00020\u00002\u0014\b\u0004\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001H\u0086\b¢\u0006\u0004\b\u0004\u0010\u0005\u001a*\u0010\u0006\u001a\u00020\u0002*\u00020\u00002\u0014\b\u0004\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001H\u0086\b¢\u0006\u0004\b\u0006\u0010\u0005\u001a*\u0010\b\u001a\u00020\u0007*\u00020\u00002\u0014\b\u0004\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001H\u0086\b¢\u0006\u0004\b\b\u0010\t\u001a*\u0010\n\u001a\u00020\u0002*\u00020\u00002\u0014\b\u0004\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001H\u0086\b¢\u0006\u0004\b\n\u0010\u0005\u001a*\u0010\u000b\u001a\u00020\u0002*\u00020\u00002\u0014\b\u0004\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001H\u0086\b¢\u0006\u0004\b\u000b\u0010\u0005\u001a<\u0010\u0011\u001a\u00020\u0002*\u00020\u00002\b\b\u0003\u0010\r\u001a\u00020\f2\b\b\u0003\u0010\u000e\u001a\u00020\f2\b\b\u0003\u0010\u000f\u001a\u00020\f2\b\b\u0003\u0010\u0010\u001a\u00020\fH\u0086\b¢\u0006\u0004\b\u0011\u0010\u0012\u001a<\u0010\u0015\u001a\u00020\u0002*\u00020\u00002\b\b\u0003\u0010\u0013\u001a\u00020\f2\b\b\u0003\u0010\u000e\u001a\u00020\f2\b\b\u0003\u0010\u0014\u001a\u00020\f2\b\b\u0003\u0010\u0010\u001a\u00020\fH\u0086\b¢\u0006\u0004\b\u0015\u0010\u0012\u001a\u001e\u0010\u0017\u001a\u00020\u0002*\u00020\u00002\b\b\u0001\u0010\u0016\u001a\u00020\fH\u0086\b¢\u0006\u0004\b\u0017\u0010\u0018\u001a,\u0010\u001d\u001a\u00020\u001c*\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u00192\u000e\b\u0004\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u001bH\u0086\b¢\u0006\u0004\b\u001d\u0010\u001e\u001a'\u0010\u001f\u001a\u00020\u001c*\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u00192\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u001b¢\u0006\u0004\b\u001f\u0010\u001e\u001a\u001b\u0010#\u001a\u00020\"*\u00020\u00002\b\b\u0002\u0010!\u001a\u00020 ¢\u0006\u0004\b#\u0010$\u001a(\u0010'\u001a\u00020\u0002*\u00020\u00002\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u00020\u0001H\u0086\b¢\u0006\u0004\b'\u0010\u0005\u001a4\u0010'\u001a\u00020\u0002\"\n\b\u0000\u0010(\u0018\u0001*\u00020%*\u00020\u00002\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00020\u0001H\u0087\b¢\u0006\u0004\b)\u0010\u0005\"*\u0010,\u001a\u00020**\u00020\u00002\u0006\u0010+\u001a\u00020*8Æ\u0002@Æ\u0002X\u0086\u000e¢\u0006\f\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/\"*\u00100\u001a\u00020**\u00020\u00002\u0006\u0010+\u001a\u00020*8Æ\u0002@Æ\u0002X\u0086\u000e¢\u0006\f\u001a\u0004\b0\u0010-\"\u0004\b1\u0010/\"*\u00102\u001a\u00020**\u00020\u00002\u0006\u0010+\u001a\u00020*8Æ\u0002@Æ\u0002X\u0086\u000e¢\u0006\f\u001a\u0004\b2\u0010-\"\u0004\b3\u0010/\"\u0016\u00106\u001a\u00020\f*\u00020\u00008Æ\u0002¢\u0006\u0006\u001a\u0004\b4\u00105\"\u0016\u00108\u001a\u00020\f*\u00020\u00008Æ\u0002¢\u0006\u0006\u001a\u0004\b7\u00105\"\u0016\u0010:\u001a\u00020\f*\u00020\u00008Æ\u0002¢\u0006\u0006\u001a\u0004\b9\u00105\"\u0016\u0010<\u001a\u00020\f*\u00020\u00008Æ\u0002¢\u0006\u0006\u001a\u0004\b;\u00105\"\u0016\u0010>\u001a\u00020\f*\u00020\u00008Æ\u0002¢\u0006\u0006\u001a\u0004\b=\u00105\"\u0016\u0010@\u001a\u00020\f*\u00020\u00008Æ\u0002¢\u0006\u0006\u001a\u0004\b?\u00105\"\u001b\u0010E\u001a\b\u0012\u0004\u0012\u00020B0A*\u00020\u00008F¢\u0006\u0006\u001a\u0004\bC\u0010D\"\u001b\u0010G\u001a\b\u0012\u0004\u0012\u00020\u00000A*\u00020\u00008F¢\u0006\u0006\u001a\u0004\bF\u0010D¨\u0006H"}, d2 = {"Landroid/view/View;", "Lkotlin/Function1;", "Lzfb;", "action", "doOnNextLayout", "(Landroid/view/View;Le74;)V", "doOnLayout", "Landroidx/core/view/OneShotPreDrawListener;", "doOnPreDraw", "(Landroid/view/View;Le74;)Landroidx/core/view/OneShotPreDrawListener;", "doOnAttach", "doOnDetach", "", TtmlNode.START, "top", TtmlNode.END, "bottom", "updatePaddingRelative", "(Landroid/view/View;IIII)V", TtmlNode.LEFT, TtmlNode.RIGHT, "updatePadding", PlayAudioData.TAG_SIZE, "setPadding", "(Landroid/view/View;I)V", "", "delayInMillis", "Lkotlin/Function0;", "Ljava/lang/Runnable;", "postDelayed", "(Landroid/view/View;JLc74;)Ljava/lang/Runnable;", "postOnAnimationDelayed", "Landroid/graphics/Bitmap$Config;", "config", "Landroid/graphics/Bitmap;", "drawToBitmap", "(Landroid/view/View;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;", "Landroid/view/ViewGroup$LayoutParams;", "block", "updateLayoutParams", "T", "updateLayoutParamsTyped", "", ES6Iterator.VALUE_PROPERTY, "isVisible", "(Landroid/view/View;)Z", "setVisible", "(Landroid/view/View;Z)V", "isInvisible", "setInvisible", "isGone", "setGone", "getMarginLeft", "(Landroid/view/View;)I", "marginLeft", "getMarginTop", "marginTop", "getMarginRight", "marginRight", "getMarginBottom", "marginBottom", "getMarginStart", "marginStart", "getMarginEnd", "marginEnd", "Lpc9;", "Landroid/view/ViewParent;", "getAncestors", "(Landroid/view/View;)Lpc9;", "ancestors", "getAllViews", "allViews", "core-ktx_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class ViewKt {
    public static final void doOnAttach(final View view, final e74 e74Var) {
        if (view.isAttachedToWindow()) {
            e74Var.invoke(view);
        } else {
            view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() {
                @Override
                public void onViewAttachedToWindow(View view2) {
                    view.removeOnAttachStateChangeListener(this);
                    e74Var.invoke(view2);
                }

                @Override
                public void onViewDetachedFromWindow(View view2) {
                }
            });
        }
    }

    public static final void doOnDetach(final View view, final e74 e74Var) {
        if (view.isAttachedToWindow()) {
            view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() {
                @Override
                public void onViewAttachedToWindow(View view2) {
                }

                @Override
                public void onViewDetachedFromWindow(View view2) {
                    view.removeOnAttachStateChangeListener(this);
                    e74Var.invoke(view2);
                }
            });
        } else {
            e74Var.invoke(view);
        }
    }

    public static final void doOnLayout(View view, final e74 e74Var) {
        if (!view.isLaidOut() || view.isLayoutRequested()) {
            view.addOnLayoutChangeListener(new View.OnLayoutChangeListener() {
                @Override
                public void onLayoutChange(View view2, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
                    view2.removeOnLayoutChangeListener(this);
                    e74Var.invoke(view2);
                }
            });
        } else {
            e74Var.invoke(view);
        }
    }

    public static final void doOnNextLayout(View view, final e74 e74Var) {
        view.addOnLayoutChangeListener(new View.OnLayoutChangeListener() {
            @Override
            public void onLayoutChange(View view2, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
                view2.removeOnLayoutChangeListener(this);
                e74Var.invoke(view2);
            }
        });
    }

    public static final OneShotPreDrawListener doOnPreDraw(final View view, final e74 e74Var) {
        return OneShotPreDrawListener.add(view, new Runnable() {
            @Override
            public final void run() {
                e74Var.invoke(view);
            }
        });
    }

    public static final Bitmap drawToBitmap(View view, Bitmap.Config config) {
        if (!view.isLaidOut()) {
            throw new IllegalStateException("View needs to be laid out before calling drawToBitmap()");
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), config);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        canvas.translate(-view.getScrollX(), -view.getScrollY());
        view.draw(canvas);
        return bitmapCreateBitmap;
    }

    public static Bitmap drawToBitmap$default(View view, Bitmap.Config config, int i, Object obj) {
        if ((i & 1) != 0) {
            config = Bitmap.Config.ARGB_8888;
        }
        return drawToBitmap(view, config);
    }

    public static final pc9 getAllViews(View view) {
        return tc9.b(new ViewKt$allViews$1(view, null));
    }

    public static final pc9 getAncestors(View view) {
        return zc9.p(view.getParent(), ViewKt$ancestors$1.INSTANCE);
    }

    public static final int getMarginBottom(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        if (marginLayoutParams != null) {
            return marginLayoutParams.bottomMargin;
        }
        return 0;
    }

    public static final int getMarginEnd(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return ((ViewGroup.MarginLayoutParams) layoutParams).getMarginEnd();
        }
        return 0;
    }

    public static final int getMarginLeft(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        if (marginLayoutParams != null) {
            return marginLayoutParams.leftMargin;
        }
        return 0;
    }

    public static final int getMarginRight(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        if (marginLayoutParams != null) {
            return marginLayoutParams.rightMargin;
        }
        return 0;
    }

    public static final int getMarginStart(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return ((ViewGroup.MarginLayoutParams) layoutParams).getMarginStart();
        }
        return 0;
    }

    public static final int getMarginTop(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        if (marginLayoutParams != null) {
            return marginLayoutParams.topMargin;
        }
        return 0;
    }

    public static final boolean isGone(View view) {
        return view.getVisibility() == 8;
    }

    public static final boolean isInvisible(View view) {
        return view.getVisibility() == 4;
    }

    public static final boolean isVisible(View view) {
        return view.getVisibility() == 0;
    }

    public static final Runnable postDelayed(View view, long j, final c74 c74Var) {
        Runnable runnable = new Runnable() {
            @Override
            public final void run() {
                c74Var.invoke();
            }
        };
        view.postDelayed(runnable, j);
        return runnable;
    }

    public static final Runnable postOnAnimationDelayed(View view, long j, final c74 c74Var) {
        Runnable runnable = new Runnable() {
            @Override
            public final void run() {
                c74Var.invoke();
            }
        };
        view.postOnAnimationDelayed(runnable, j);
        return runnable;
    }

    public static final void setGone(View view, boolean z) {
        view.setVisibility(z ? 8 : 0);
    }

    public static final void setInvisible(View view, boolean z) {
        view.setVisibility(z ? 4 : 0);
    }

    public static final void setPadding(View view, @Px int i) {
        view.setPadding(i, i, i, i);
    }

    public static final void setVisible(View view, boolean z) {
        view.setVisibility(z ? 0 : 8);
    }

    public static final void updateLayoutParams(View view, e74 e74Var) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
        }
        e74Var.invoke(layoutParams);
        view.setLayoutParams(layoutParams);
    }

    public static final <T extends ViewGroup.LayoutParams> void updateLayoutParamsTyped(View view, e74 e74Var) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        y45.p(1, "T");
        e74Var.invoke(layoutParams);
        view.setLayoutParams(layoutParams);
    }

    public static final void updatePadding(View view, @Px int i, @Px int i2, @Px int i3, @Px int i4) {
        view.setPadding(i, i2, i3, i4);
    }

    public static void updatePadding$default(View view, int i, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i = view.getPaddingLeft();
        }
        if ((i5 & 2) != 0) {
            i2 = view.getPaddingTop();
        }
        if ((i5 & 4) != 0) {
            i3 = view.getPaddingRight();
        }
        if ((i5 & 8) != 0) {
            i4 = view.getPaddingBottom();
        }
        view.setPadding(i, i2, i3, i4);
    }

    public static final void updatePaddingRelative(View view, @Px int i, @Px int i2, @Px int i3, @Px int i4) {
        view.setPaddingRelative(i, i2, i3, i4);
    }

    public static void updatePaddingRelative$default(View view, int i, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i = view.getPaddingStart();
        }
        if ((i5 & 2) != 0) {
            i2 = view.getPaddingTop();
        }
        if ((i5 & 4) != 0) {
            i3 = view.getPaddingEnd();
        }
        if ((i5 & 8) != 0) {
            i4 = view.getPaddingBottom();
        }
        view.setPaddingRelative(i, i2, i3, i4);
    }
}
