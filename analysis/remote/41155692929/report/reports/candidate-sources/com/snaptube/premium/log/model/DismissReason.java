package com.snaptube.premium.log.model;

import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import net.pubnative.mediation.adapter.model.GuideNativeAdModel;
import o.h52;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0010"}, d2 = {"Lcom/snaptube/premium/log/model/DismissReason;", "", "(Ljava/lang/String;I)V", "isUserCancel", "", "toTriggerTag", "", "SLIDE_DOWN", "CLOSE_BUTTON", "BACK_PRESSED", "BLANK_BACKGROUND", "GUIDE_VIEW", "GUIDE", "NOT_NOW", "NOT_PLAYABLE_FILE", "UNKNOWN", "base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public enum DismissReason {
    SLIDE_DOWN,
    CLOSE_BUTTON,
    BACK_PRESSED,
    BLANK_BACKGROUND,
    GUIDE_VIEW,
    GUIDE,
    NOT_NOW,
    NOT_PLAYABLE_FILE,
    UNKNOWN;

    private static final h52 $ENTRIES = kotlin.enums.a.a(a());

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[DismissReason.values().length];
            try {
                iArr[DismissReason.SLIDE_DOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DismissReason.CLOSE_BUTTON.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DismissReason.BACK_PRESSED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DismissReason.BLANK_BACKGROUND.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[DismissReason.GUIDE_VIEW.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[DismissReason.GUIDE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[DismissReason.NOT_NOW.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[DismissReason.NOT_PLAYABLE_FILE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[DismissReason.UNKNOWN.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            a = iArr;
        }
    }

    @NotNull
    public static h52 getEntries() {
        return $ENTRIES;
    }

    public final boolean isUserCancel() {
        return this == SLIDE_DOWN || this == BACK_PRESSED || this == BLANK_BACKGROUND;
    }

    @NotNull
    public final String toTriggerTag() {
        switch (a.a[ordinal()]) {
            case 1:
                return "slide_down";
            case 2:
                return "fold_btn";
            case 3:
                return "system_back";
            case 4:
                return "blank";
            case 5:
                return "guide_view";
            case 6:
                return GuideNativeAdModel.NETWORK_NAME;
            case 7:
                return "not_now";
            case 8:
                return "not_playable_file";
            case 9:
                return "";
            default:
                throw new NoWhenBranchMatchedException();
        }
    }
}
