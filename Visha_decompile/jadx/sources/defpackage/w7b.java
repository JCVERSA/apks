package defpackage;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.transition.TransitionValues;
import android.transition.Visibility;
import android.util.DisplayMetrics;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div2.DivTooltip;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class w7b extends Visibility {
    public static final a d = new a(null);
    public final DivTooltip.Position b;
    public final Float c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final float b(View view) {
            DisplayMetrics displayMetrics = view.getResources().getDisplayMetrics();
            y45.i(displayMetrics, "resources.displayMetrics");
            return BaseDivViewExtensionsKt.M(10, displayMetrics);
        }

        public a() {
        }
    }

    public class b {
        public static final int[] a;

        static {
            int[] iArr = new int[DivTooltip.Position.values().length];
            try {
                iArr[DivTooltip.Position.TOP_LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DivTooltip.Position.LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DivTooltip.Position.BOTTOM_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DivTooltip.Position.TOP_RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[DivTooltip.Position.RIGHT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[DivTooltip.Position.BOTTOM_RIGHT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[DivTooltip.Position.CENTER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[DivTooltip.Position.TOP.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[DivTooltip.Position.BOTTOM.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            a = iArr;
        }
    }

    public w7b(DivTooltip.Position position, Float f, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(position, (i & 2) != 0 ? null : f);
    }

    public final float a(DivTooltip.Position position) {
        switch (b.a[position.ordinal()]) {
            case 1:
            case 2:
            case 3:
                return 1.0f;
            case 4:
            case 5:
            case 6:
                return -1.0f;
            case 7:
                return 0.5f;
            case 8:
            case 9:
                return 0.0f;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    public final float c(DivTooltip.Position position) {
        switch (b.a[position.ordinal()]) {
            case 1:
            case 4:
            case 8:
                return 1.0f;
            case 2:
            case 5:
                return 0.0f;
            case 3:
            case 6:
            case 9:
                return -1.0f;
            case 7:
                return 0.5f;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    @Override
    public Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        y45.j(viewGroup, "sceneRoot");
        y45.j(view, "view");
        y45.j(transitionValues, "startValues");
        y45.j(transitionValues2, "endValues");
        float fA = a(this.b);
        float fC = c(this.b);
        view.setTranslationX(fA * (this.c != null ? view.getWidth() * this.c.floatValue() : d.b(view)));
        view.setTranslationY(fC * (this.c != null ? view.getHeight() * this.c.floatValue() : d.b(view)));
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_X, view.getTranslationX(), 0.0f), PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_Y, view.getTranslationY(), 0.0f));
        y45.i(objectAnimatorOfPropertyValuesHolder, "ofPropertyValuesHolder(\n…f\n            )\n        )");
        return objectAnimatorOfPropertyValuesHolder;
    }

    @Override
    public Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        y45.j(viewGroup, "sceneRoot");
        y45.j(view, "view");
        y45.j(transitionValues, "startValues");
        y45.j(transitionValues2, "endValues");
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_X, 0.0f, a(this.b) * (this.c != null ? view.getWidth() * this.c.floatValue() : d.b(view))), PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_Y, 0.0f, c(this.b) * (this.c != null ? view.getHeight() * this.c.floatValue() : d.b(view))));
        y45.i(objectAnimatorOfPropertyValuesHolder, "ofPropertyValuesHolder(\n…n\n            )\n        )");
        return objectAnimatorOfPropertyValuesHolder;
    }

    public w7b(DivTooltip.Position position, Float f) {
        y45.j(position, "position");
        this.b = position;
        this.c = f;
    }
}
