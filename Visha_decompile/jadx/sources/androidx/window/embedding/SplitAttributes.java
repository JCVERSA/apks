package androidx.window.embedding;

import android.annotation.SuppressLint;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.RestrictTo;
import androidx.window.core.SpecificationComputer;
import androidx.window.core.VerificationMode;
import com.google.android.material.color.utilities.Contrast;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import defpackage.e74;
import defpackage.hi;
import defpackage.y45;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u0000 \u00132\u00020\u0001:\u0004\u0012\u0013\u0014\u0015B\u001b\b\u0007\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0016"}, d2 = {"Landroidx/window/embedding/SplitAttributes;", "", "splitType", "Landroidx/window/embedding/SplitAttributes$SplitType;", "layoutDirection", "Landroidx/window/embedding/SplitAttributes$LayoutDirection;", "(Landroidx/window/embedding/SplitAttributes$SplitType;Landroidx/window/embedding/SplitAttributes$LayoutDirection;)V", "getLayoutDirection", "()Landroidx/window/embedding/SplitAttributes$LayoutDirection;", "getSplitType", "()Landroidx/window/embedding/SplitAttributes$SplitType;", "equals", "", "other", "hashCode", "", "toString", "", "Builder", "Companion", "LayoutDirection", "SplitType", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class SplitAttributes {
    private static final String TAG = SplitAttributes.class.getSimpleName();

    private final LayoutDirection layoutDir;
    private final SplitType splitType;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Landroidx/window/embedding/SplitAttributes$Builder;", "", "()V", "layoutDirection", "Landroidx/window/embedding/SplitAttributes$LayoutDirection;", "splitType", "Landroidx/window/embedding/SplitAttributes$SplitType;", "build", "Landroidx/window/embedding/SplitAttributes;", "setLayoutDirection", "setSplitType", "type", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Builder {
        private SplitType splitType = SplitType.SPLIT_TYPE_EQUAL;
        private LayoutDirection layoutDirection = LayoutDirection.LOCALE;

        public final SplitAttributes build() {
            return new SplitAttributes(this.splitType, this.layoutDirection);
        }

        public final Builder setLayoutDirection(LayoutDirection layoutDirection) {
            y45.j(layoutDirection, "layoutDirection");
            this.layoutDirection = layoutDirection;
            return this;
        }

        public final Builder setSplitType(SplitType type) {
            y45.j(type, "type");
            this.splitType = type;
            return this;
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\t\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Landroidx/window/embedding/SplitAttributes$LayoutDirection;", "", "description", "", ES6Iterator.VALUE_PROPERTY, "", "(Ljava/lang/String;I)V", "getValue$window_release", "()I", "toString", "Companion", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class LayoutDirection {
        private final String description;
        private final int value;

        public static final Companion INSTANCE = new Companion(null);
        public static final LayoutDirection LOCALE = new LayoutDirection("LOCALE", 0);
        public static final LayoutDirection LEFT_TO_RIGHT = new LayoutDirection("LEFT_TO_RIGHT", 1);
        public static final LayoutDirection RIGHT_TO_LEFT = new LayoutDirection("RIGHT_TO_LEFT", 2);
        public static final LayoutDirection TOP_TO_BOTTOM = new LayoutDirection("TOP_TO_BOTTOM", 3);
        public static final LayoutDirection BOTTOM_TO_TOP = new LayoutDirection("BOTTOM_TO_TOP", 4);

        @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0017\u0010\t\u001a\u00020\u00042\b\b\u0001\u0010\n\u001a\u00020\u000bH\u0001¢\u0006\u0002\b\fR\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Landroidx/window/embedding/SplitAttributes$LayoutDirection$Companion;", "", "()V", "BOTTOM_TO_TOP", "Landroidx/window/embedding/SplitAttributes$LayoutDirection;", "LEFT_TO_RIGHT", "LOCALE", "RIGHT_TO_LEFT", "TOP_TO_BOTTOM", "getLayoutDirectionFromValue", ES6Iterator.VALUE_PROPERTY, "", "getLayoutDirectionFromValue$window_release", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final LayoutDirection getLayoutDirectionFromValue$window_release(@IntRange(from = 0, to = 4) int value) {
                LayoutDirection layoutDirection = LayoutDirection.LEFT_TO_RIGHT;
                if (value != layoutDirection.getValue()) {
                    layoutDirection = LayoutDirection.RIGHT_TO_LEFT;
                    if (value != layoutDirection.getValue()) {
                        layoutDirection = LayoutDirection.LOCALE;
                        if (value != layoutDirection.getValue()) {
                            layoutDirection = LayoutDirection.TOP_TO_BOTTOM;
                            if (value != layoutDirection.getValue()) {
                                layoutDirection = LayoutDirection.BOTTOM_TO_TOP;
                                if (value != layoutDirection.getValue()) {
                                    throw new IllegalArgumentException("Undefined value:" + value);
                                }
                            }
                        }
                    }
                }
                return layoutDirection;
            }

            private Companion() {
            }
        }

        private LayoutDirection(String str, int i) {
            this.description = str;
            this.value = i;
        }

        public final int getValue() {
            return this.value;
        }

        public String getDescription() {
            return this.description;
        }
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0017\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0003H\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0012"}, d2 = {"Landroidx/window/embedding/SplitAttributes$SplitType;", "", "description", "", ES6Iterator.VALUE_PROPERTY, "", "(Ljava/lang/String;F)V", "getDescription$window_release", "()Ljava/lang/String;", "getValue$window_release", "()F", "equals", "", "other", "hashCode", "", "toString", "Companion", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class SplitType {

        public static final Companion INSTANCE;
        public static final SplitType SPLIT_TYPE_EQUAL;
        public static final SplitType SPLIT_TYPE_EXPAND;
        public static final SplitType SPLIT_TYPE_HINGE;
        private final String description;
        private final float value;

        @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0017\u0010\u0007\u001a\u00020\u00042\b\b\u0001\u0010\b\u001a\u00020\tH\u0001¢\u0006\u0002\b\nJ\u0012\u0010\u000b\u001a\u00020\u00042\b\b\u0001\u0010\u000b\u001a\u00020\tH\u0007R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Landroidx/window/embedding/SplitAttributes$SplitType$Companion;", "", "()V", "SPLIT_TYPE_EQUAL", "Landroidx/window/embedding/SplitAttributes$SplitType;", "SPLIT_TYPE_EXPAND", "SPLIT_TYPE_HINGE", "buildSplitTypeFromValue", ES6Iterator.VALUE_PROPERTY, "", "buildSplitTypeFromValue$window_release", "ratio", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @SuppressLint({"Range"})
            public final SplitType buildSplitTypeFromValue$window_release(@FloatRange(from = 0.0d, to = Contrast.RATIO_MIN, toInclusive = false) float value) {
                SplitType splitType = SplitType.SPLIT_TYPE_EXPAND;
                return value == splitType.getValue() ? splitType : ratio(value);
            }

            public final SplitType ratio(@FloatRange(from = 0.0d, fromInclusive = false, to = Contrast.RATIO_MIN, toInclusive = false) final float ratio) {
                SpecificationComputer.Companion companion = SpecificationComputer.INSTANCE;
                Float fValueOf = Float.valueOf(ratio);
                String str = SplitAttributes.TAG;
                y45.i(str, AbstractID3v1Tag.TAG);
                Object objCompute = SpecificationComputer.Companion.startSpecification$default(companion, fValueOf, str, VerificationMode.STRICT, null, 4, null).require("Ratio must be in range (0.0, 1.0). Use SplitType.expandContainers() instead of 0 or 1.", new e74() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override
                    public Object invoke(Object obj) {
                        return invoke(((Number) obj).floatValue());
                    }

                    public final Boolean invoke(float f) {
                        double d = ratio;
                        return Boolean.valueOf(0.0d <= d && d <= 1.0d && !hi.P(new Float[]{Float.valueOf(0.0f), Float.valueOf(1.0f)}, Float.valueOf(ratio)));
                    }
                }).compute();
                y45.g(objCompute);
                float fFloatValue = ((Number) objCompute).floatValue();
                return new SplitType("ratio:" + fFloatValue, fFloatValue);
            }

            private Companion() {
            }
        }

        static {
            Companion companion = new Companion(null);
            INSTANCE = companion;
            SPLIT_TYPE_EXPAND = new SplitType("expandContainers", 0.0f);
            SPLIT_TYPE_EQUAL = companion.ratio(0.5f);
            SPLIT_TYPE_HINGE = new SplitType("hinge", -1.0f);
        }

        public SplitType(String str, float f) {
            y45.j(str, "description");
            this.description = str;
            this.value = f;
        }

        public static final SplitType ratio(@FloatRange(from = 0.0d, fromInclusive = false, to = Contrast.RATIO_MIN, toInclusive = false) float f) {
            return INSTANCE.ratio(f);
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof SplitType)) {
                return false;
            }
            SplitType splitType = (SplitType) other;
            return this.value == splitType.value && y45.e(this.description, splitType.description);
        }

        public final String getDescription() {
            return this.description;
        }

        public final float getValue() {
            return this.value;
        }

        public int hashCode() {
            return this.description.hashCode() + (Float.hashCode(this.value) * 31);
        }

        public String toString() {
            return this.description;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public SplitAttributes() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SplitAttributes)) {
            return false;
        }
        SplitAttributes splitAttributes = (SplitAttributes) other;
        return y45.e(this.splitType, splitAttributes.splitType) && y45.e(this.layoutDir, splitAttributes.layoutDir);
    }

    public final LayoutDirection getLayoutDir() {
        return this.layoutDir;
    }

    public final SplitType getSplitType() {
        return this.splitType;
    }

    public int hashCode() {
        return (this.splitType.hashCode() * 31) + this.layoutDir.hashCode();
    }

    public String toString() {
        return SplitAttributes.class.getSimpleName() + ":{splitType=" + this.splitType + ", layoutDir=" + this.layoutDir + " }";
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public SplitAttributes(SplitType splitType, LayoutDirection layoutDirection) {
        y45.j(splitType, "splitType");
        y45.j(layoutDirection, "layoutDirection");
        this.splitType = splitType;
        this.layoutDir = layoutDirection;
    }

    public SplitAttributes(SplitType splitType, LayoutDirection layoutDirection, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? SplitType.SPLIT_TYPE_EQUAL : splitType, (i & 2) != 0 ? LayoutDirection.LOCALE : layoutDirection);
    }
}
