package androidx.core.view;

import android.annotation.SuppressLint;
import android.view.WindowInsetsAnimationController;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.graphics.Insets;
import com.google.android.material.color.utilities.Contrast;

public final class WindowInsetsAnimationControllerCompat {
    private final Impl mImpl;

    public static class Impl {
        public void finish(boolean z) {
        }

        public float getCurrentAlpha() {
            return 0.0f;
        }

        @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN)
        public float getCurrentFraction() {
            return 0.0f;
        }

        @NonNull
        public Insets getCurrentInsets() {
            return Insets.NONE;
        }

        @NonNull
        public Insets getHiddenStateInsets() {
            return Insets.NONE;
        }

        @NonNull
        public Insets getShownStateInsets() {
            return Insets.NONE;
        }

        public int getTypes() {
            return 0;
        }

        public boolean isCancelled() {
            return true;
        }

        public boolean isFinished() {
            return false;
        }

        public void setInsetsAndAlpha(@Nullable Insets insets, @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f, @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f2) {
        }
    }

    @RequiresApi(30)
    public static class Impl30 extends Impl {
        private final WindowInsetsAnimationController mController;

        public Impl30(@NonNull WindowInsetsAnimationController windowInsetsAnimationController) {
            this.mController = windowInsetsAnimationController;
        }

        @Override
        public void finish(boolean z) {
            this.mController.finish(z);
        }

        @Override
        public float getCurrentAlpha() {
            return this.mController.getCurrentAlpha();
        }

        @Override
        public float getCurrentFraction() {
            return this.mController.getCurrentFraction();
        }

        @Override
        @NonNull
        public Insets getCurrentInsets() {
            return Insets.toCompatInsets(this.mController.getCurrentInsets());
        }

        @Override
        @NonNull
        public Insets getHiddenStateInsets() {
            return Insets.toCompatInsets(this.mController.getHiddenStateInsets());
        }

        @Override
        @NonNull
        public Insets getShownStateInsets() {
            return Insets.toCompatInsets(this.mController.getShownStateInsets());
        }

        @Override
        @SuppressLint({"WrongConstant"})
        public int getTypes() {
            return this.mController.getTypes();
        }

        @Override
        public boolean isCancelled() {
            return this.mController.isCancelled();
        }

        @Override
        public boolean isFinished() {
            return this.mController.isFinished();
        }

        @Override
        public void setInsetsAndAlpha(@Nullable Insets insets, float f, float f2) {
            this.mController.setInsetsAndAlpha(insets == null ? null : insets.toPlatformInsets(), f, f2);
        }
    }

    @RequiresApi(30)
    public WindowInsetsAnimationControllerCompat(@NonNull WindowInsetsAnimationController windowInsetsAnimationController) {
        this.mImpl = new Impl30(windowInsetsAnimationController);
    }

    public void finish(boolean z) {
        this.mImpl.finish(z);
    }

    public float getCurrentAlpha() {
        return this.mImpl.getCurrentAlpha();
    }

    @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN)
    public float getCurrentFraction() {
        return this.mImpl.getCurrentFraction();
    }

    @NonNull
    public Insets getCurrentInsets() {
        return this.mImpl.getCurrentInsets();
    }

    @NonNull
    public Insets getHiddenStateInsets() {
        return this.mImpl.getHiddenStateInsets();
    }

    @NonNull
    public Insets getShownStateInsets() {
        return this.mImpl.getShownStateInsets();
    }

    public int getTypes() {
        return this.mImpl.getTypes();
    }

    public boolean isCancelled() {
        return this.mImpl.isCancelled();
    }

    public boolean isFinished() {
        return this.mImpl.isFinished();
    }

    public boolean isReady() {
        return (isFinished() || isCancelled()) ? false : true;
    }

    public void setInsetsAndAlpha(@Nullable Insets insets, @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f, @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f2) {
        this.mImpl.setInsetsAndAlpha(insets, f, f2);
    }
}
