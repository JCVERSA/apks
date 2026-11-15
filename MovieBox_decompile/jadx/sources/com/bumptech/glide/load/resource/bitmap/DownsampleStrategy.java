package com.bumptech.glide.load.resource.bitmap;

import com.bumptech.glide.load.Option;

public abstract class DownsampleStrategy {
    public static final DownsampleStrategy CENTER_OUTSIDE;
    public static final DownsampleStrategy DEFAULT;
    static final boolean IS_BITMAP_FACTORY_SCALING_SUPPORTED;
    public static final DownsampleStrategy NONE;
    public static final Option<DownsampleStrategy> OPTION;
    public static final DownsampleStrategy AT_LEAST = new AtLeast();
    public static final DownsampleStrategy AT_MOST = new AtMost();
    public static final DownsampleStrategy FIT_CENTER = new FitCenter();
    public static final DownsampleStrategy CENTER_INSIDE = new CenterInside();

    private static class AtLeast extends DownsampleStrategy {
        AtLeast() {
        }

        @Override
        public SampleSizeRounding getSampleSizeRounding(int i10, int i11, int i12, int i13) {
            return SampleSizeRounding.QUALITY;
        }

        @Override
        public float getScaleFactor(int i10, int i11, int i12, int i13) {
            int iMin = Math.min(i11 / i13, i10 / i12);
            if (iMin == 0) {
                return 1.0f;
            }
            return 1.0f / Integer.highestOneBit(iMin);
        }
    }

    private static class AtMost extends DownsampleStrategy {
        AtMost() {
        }

        @Override
        public SampleSizeRounding getSampleSizeRounding(int i10, int i11, int i12, int i13) {
            return SampleSizeRounding.MEMORY;
        }

        @Override
        public float getScaleFactor(int i10, int i11, int i12, int i13) {
            int iCeil = (int) Math.ceil(Math.max(i11 / i13, i10 / i12));
            int iMax = Math.max(1, Integer.highestOneBit(iCeil));
            return 1.0f / (iMax << (iMax >= iCeil ? 0 : 1));
        }
    }

    private static class CenterInside extends DownsampleStrategy {
        CenterInside() {
        }

        @Override
        public SampleSizeRounding getSampleSizeRounding(int i10, int i11, int i12, int i13) {
            return getScaleFactor(i10, i11, i12, i13) == 1.0f ? SampleSizeRounding.QUALITY : DownsampleStrategy.FIT_CENTER.getSampleSizeRounding(i10, i11, i12, i13);
        }

        @Override
        public float getScaleFactor(int i10, int i11, int i12, int i13) {
            return Math.min(1.0f, DownsampleStrategy.FIT_CENTER.getScaleFactor(i10, i11, i12, i13));
        }
    }

    private static class CenterOutside extends DownsampleStrategy {
        CenterOutside() {
        }

        @Override
        public SampleSizeRounding getSampleSizeRounding(int i10, int i11, int i12, int i13) {
            return SampleSizeRounding.QUALITY;
        }

        @Override
        public float getScaleFactor(int i10, int i11, int i12, int i13) {
            return Math.max(i12 / i10, i13 / i11);
        }
    }

    private static class FitCenter extends DownsampleStrategy {
        FitCenter() {
        }

        @Override
        public SampleSizeRounding getSampleSizeRounding(int i10, int i11, int i12, int i13) {
            return DownsampleStrategy.IS_BITMAP_FACTORY_SCALING_SUPPORTED ? SampleSizeRounding.QUALITY : SampleSizeRounding.MEMORY;
        }

        @Override
        public float getScaleFactor(int i10, int i11, int i12, int i13) {
            if (DownsampleStrategy.IS_BITMAP_FACTORY_SCALING_SUPPORTED) {
                return Math.min(i12 / i10, i13 / i11);
            }
            int iMax = Math.max(i11 / i13, i10 / i12);
            if (iMax == 0) {
                return 1.0f;
            }
            return 1.0f / Integer.highestOneBit(iMax);
        }
    }

    private static class None extends DownsampleStrategy {
        None() {
        }

        @Override
        public SampleSizeRounding getSampleSizeRounding(int i10, int i11, int i12, int i13) {
            return SampleSizeRounding.QUALITY;
        }

        @Override
        public float getScaleFactor(int i10, int i11, int i12, int i13) {
            return 1.0f;
        }
    }

    public enum SampleSizeRounding {
        MEMORY,
        QUALITY
    }

    static {
        CenterOutside centerOutside = new CenterOutside();
        CENTER_OUTSIDE = centerOutside;
        NONE = new None();
        DEFAULT = centerOutside;
        OPTION = Option.memory("com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy", centerOutside);
        IS_BITMAP_FACTORY_SCALING_SUPPORTED = true;
    }

    public abstract SampleSizeRounding getSampleSizeRounding(int i10, int i11, int i12, int i13);

    public abstract float getScaleFactor(int i10, int i11, int i12, int i13);
}
