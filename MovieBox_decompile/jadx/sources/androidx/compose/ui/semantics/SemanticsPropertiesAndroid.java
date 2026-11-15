package androidx.compose.ui.semantics;

import kotlin.jvm.functions.Function2;

public final class SemanticsPropertiesAndroid {

    public static final SemanticsPropertiesAndroid f5636a = new SemanticsPropertiesAndroid();

    private static final SemanticsPropertyKey f5637b = new SemanticsPropertyKey("TestTagsAsResourceId", false, new Function2<Boolean, Boolean, Boolean>() {
        public final Boolean invoke(Boolean bool, boolean z10) {
            return bool;
        }

        @Override
        public Object invoke(Object obj, Object obj2) {
            return invoke((Boolean) obj, ((Boolean) obj2).booleanValue());
        }
    });

    public static final int f5638c = 8;

    private SemanticsPropertiesAndroid() {
    }

    public final SemanticsPropertyKey a() {
        return f5637b;
    }
}
