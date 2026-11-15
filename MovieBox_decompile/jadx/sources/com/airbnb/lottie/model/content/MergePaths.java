package com.airbnb.lottie.model.content;

import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieFeatureFlag;
import com.airbnb.lottie.h;
import o4.l;
import t4.c;
import x4.f;

public class MergePaths implements c {

    private final String f17171a;

    private final MergePathsMode f17172b;

    private final boolean f17173c;

    public enum MergePathsMode {
        MERGE,
        ADD,
        SUBTRACT,
        INTERSECT,
        EXCLUDE_INTERSECTIONS;

        public static MergePathsMode forId(int i10) {
            if (i10 == 1) {
                return MERGE;
            }
            if (i10 == 2) {
                return ADD;
            }
            if (i10 == 3) {
                return SUBTRACT;
            }
            if (i10 != 4) {
                return i10 != 5 ? MERGE : EXCLUDE_INTERSECTIONS;
            }
            return INTERSECT;
        }
    }

    public MergePaths(String str, MergePathsMode mergePathsMode, boolean z10) {
        this.f17171a = str;
        this.f17172b = mergePathsMode;
        this.f17173c = z10;
    }

    @Override
    public o4.c a(LottieDrawable lottieDrawable, h hVar, com.airbnb.lottie.model.layer.a aVar) {
        if (lottieDrawable.n0(LottieFeatureFlag.MergePathsApi19)) {
            return new l(this);
        }
        f.c("Animation contains merge paths but they are disabled.");
        return null;
    }

    public MergePathsMode b() {
        return this.f17172b;
    }

    public String c() {
        return this.f17171a;
    }

    public boolean d() {
        return this.f17173c;
    }

    public String toString() {
        return "MergePaths{mode=" + this.f17172b + '}';
    }
}
