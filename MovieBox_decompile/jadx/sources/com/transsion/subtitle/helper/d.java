package com.transsion.subtitle.helper;

import android.content.Context;
import android.view.ViewGroup;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.y;
import com.tn.lib.widget.R$color;
import com.transsion.subtitle.R$id;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class d {

    public static final a f52866n = new a(null);

    private final Context f52867a;

    private final int f52868b;

    private final int f52869c;

    private final int f52870d;

    private final int f52871e;

    private final int f52872f;

    private final int f52873g;

    private final int f52874h;

    private final int f52875i;

    private final int f52876j;

    private final int f52877k;

    private final int f52878l;

    private final int f52879m;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public class b {

        public static final int[] f52880a;

        static {
            int[] iArr = new int[LocalVideoUiType.values().length];
            try {
                iArr[LocalVideoUiType.MIDDLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LocalVideoUiType.LAND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LocalVideoUiType.PORTRAIT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f52880a = iArr;
        }
    }

    public d(Context context) {
        Intrinsics.h(context, "context");
        this.f52867a = context;
        this.f52872f = a0.a(66.0f);
        this.f52873g = a0.a(24.0f);
        this.f52874h = a0.a(24.0f);
        this.f52875i = a0.a(68.0f);
        this.f52876j = y.e();
        int iC = y.c();
        this.f52877k = iC;
        int iC2 = com.blankj.utilcode.util.d.c();
        this.f52878l = iC2;
        this.f52879m = iC - iC2;
        this.f52868b = androidx.core.content.b.getColor(context, R$color.black);
        this.f52869c = androidx.core.content.b.getColor(context, R$color.white);
        this.f52870d = androidx.core.content.b.getColor(context, com.transsion.subtitle.R$color.subtitle_color_yellow);
        this.f52871e = androidx.core.content.b.getColor(context, com.transsion.subtitle.R$color.subtitle_color_green);
    }

    public final String a(int i10) {
        if (i10 == R$id.rb_background_black) {
            return "color_black";
        }
        if (i10 == R$id.rb_background_white) {
            return "color_white";
        }
        if (i10 == R$id.rb_background_yellor) {
            return "color_yellow";
        }
        return i10 == R$id.rb_background_green ? "color_green" : "color_black";
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final int b(String bgColorType) {
        Intrinsics.h(bgColorType, "bgColorType");
        switch (bgColorType.hashCode()) {
            case -1720275760:
                if (bgColorType.equals("color_yellow")) {
                    return R$id.rb_background_yellor;
                }
                break;
            case 1308937251:
                if (bgColorType.equals("color_black")) {
                    return R$id.rb_background_black;
                }
                break;
            case 1313737511:
                if (bgColorType.equals("color_green")) {
                    return R$id.rb_background_green;
                }
                break;
            case 1328220237:
                if (bgColorType.equals("color_white")) {
                    return R$id.rb_background_white;
                }
                break;
        }
        return R$id.rb_background_white;
    }

    public final float c(int i10) {
        if (i10 == 0) {
            return 0.1f;
        }
        if (i10 == 1) {
            return 0.25f;
        }
        if (i10 != 2) {
            return (i10 == 3 || i10 != 4) ? 0.75f : 1.0f;
        }
        return 0.5f;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final int d(String colorType) {
        Intrinsics.h(colorType, "colorType");
        switch (colorType.hashCode()) {
            case -1720275760:
                if (colorType.equals("color_yellow")) {
                    return this.f52870d;
                }
                break;
            case 1308937251:
                if (colorType.equals("color_black")) {
                    return this.f52868b;
                }
                break;
            case 1313737511:
                if (colorType.equals("color_green")) {
                    return this.f52871e;
                }
                break;
            case 1328220237:
                if (colorType.equals("color_white")) {
                    return this.f52869c;
                }
                break;
        }
        return this.f52869c;
    }

    public final String e(int i10) {
        if (i10 == R$id.rb_font_color_black) {
            return "color_black";
        }
        if (i10 != R$id.rb_font_color_white) {
            if (i10 == R$id.rb_font_color_yellor) {
                return "color_yellow";
            }
            if (i10 == R$id.rb_font_color_green) {
                return "color_green";
            }
        }
        return "color_white";
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final int f(String fontColorType) {
        Intrinsics.h(fontColorType, "fontColorType");
        switch (fontColorType.hashCode()) {
            case -1720275760:
                if (fontColorType.equals("color_yellow")) {
                    return R$id.rb_font_color_yellor;
                }
                break;
            case 1308937251:
                if (fontColorType.equals("color_black")) {
                    return R$id.rb_font_color_black;
                }
                break;
            case 1313737511:
                if (fontColorType.equals("color_green")) {
                    return R$id.rb_font_color_green;
                }
                break;
            case 1328220237:
                if (fontColorType.equals("color_white")) {
                    return R$id.rb_font_color_white;
                }
                break;
        }
        return R$id.rb_font_color_white;
    }

    public final float g(int i10) {
        switch (i10) {
            case 0:
                return 0.5f;
            case 1:
                return 0.75f;
            case 2:
            default:
                return 1.0f;
            case 3:
                return 1.5f;
            case 4:
                return 2.0f;
            case 5:
                return 3.0f;
            case 6:
                return 4.0f;
        }
    }

    public final int h(LocalVideoUiType uiType) {
        Intrinsics.h(uiType, "uiType");
        y.c();
        int i10 = b.f52880a[uiType.ordinal()];
        if (i10 == 1) {
            return (this.f52876j * 9) / 16;
        }
        if (i10 == 2) {
            return this.f52876j;
        }
        if (i10 == 3) {
            return this.f52877k;
        }
        throw new NoWhenBranchMatchedException();
    }

    public final void i(SimpleSubtitleView simpleSubtitleView, SimpleSubtitleView simpleSubtitleView2, LocalVideoUiType uiType, ViewGroup viewGroup) {
        int i10;
        Intrinsics.h(uiType, "uiType");
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
        String string = bVar.b().getString("subtitle_options_font_color", "color_white");
        String str = string != null ? string : "color_white";
        int iD = d(str);
        if (simpleSubtitleView != null) {
            simpleSubtitleView.setTextColor(iD);
        }
        if (simpleSubtitleView2 != null) {
            simpleSubtitleView2.setTextColor(iD);
        }
        float fG = g(bVar.b().getInt("subtitle_options_font_size_progress", 2));
        if (com.transsion.baseui.util.b.a(this.f52867a)) {
            i10 = uiType == LocalVideoUiType.MIDDLE ? 18 : 30;
        } else {
            i10 = uiType == LocalVideoUiType.MIDDLE ? 12 : 20;
        }
        if (simpleSubtitleView != null) {
            simpleSubtitleView.setTextSize(i10 * fG);
        }
        if (simpleSubtitleView2 != null) {
            simpleSubtitleView2.setTextSize(i10 * fG);
        }
        int i11 = bVar.b().getInt("subtitle_options_position", 10);
        j(uiType, viewGroup, i11);
        boolean z10 = bVar.b().getBoolean("subtitle_options_shadow_enabled", true);
        if (z10) {
            if (simpleSubtitleView != null) {
                simpleSubtitleView.setShadowLayer(1.0f, 3.0f, 2.0f, androidx.core.content.b.getColor(simpleSubtitleView.getContext(), R$color.black_90));
            }
            if (simpleSubtitleView2 != null) {
                simpleSubtitleView2.setShadowLayer(1.0f, 3.0f, 2.0f, androidx.core.content.b.getColor(simpleSubtitleView2.getContext(), R$color.black_90));
            }
        } else {
            if (simpleSubtitleView != null) {
                simpleSubtitleView.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
            }
            if (simpleSubtitleView2 != null) {
                simpleSubtitleView2.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
            }
        }
        boolean z11 = bVar.b().getBoolean("subtitle_options_bg_enabled", false);
        String string2 = bVar.b().getString("subtitle_options_bg_color", "color_black");
        String str2 = string2 != null ? string2 : "color_black";
        int i12 = bVar.b().getInt("subtitle_options_bg_opacity_progress", 3);
        if (z11) {
            if (simpleSubtitleView != null) {
                simpleSubtitleView.openBg();
            }
            if (simpleSubtitleView2 != null) {
                simpleSubtitleView2.openBg();
            }
            if (simpleSubtitleView != null) {
                simpleSubtitleView.setBgdRadius(a0.a(4.0f));
            }
            if (simpleSubtitleView2 != null) {
                simpleSubtitleView2.setBgdRadius(a0.a(4.0f));
            }
            int iD2 = d(str2);
            if (simpleSubtitleView != null) {
                simpleSubtitleView.setBgColor(iD2);
            }
            if (simpleSubtitleView2 != null) {
                simpleSubtitleView2.setBgColor(iD2);
            }
            float fC = c(i12);
            if (simpleSubtitleView != null) {
                simpleSubtitleView.setBgAlpha((int) (255 * fC));
            }
            if (simpleSubtitleView2 != null) {
                simpleSubtitleView2.setBgAlpha((int) (255 * fC));
            }
        } else {
            if (simpleSubtitleView != null) {
                simpleSubtitleView.closeBg();
            }
            if (simpleSubtitleView2 != null) {
                simpleSubtitleView2.closeBg();
            }
        }
        wf.a.C0922a.v(wf.a.f74274a, "SubtitleOptionsView", StringsKt.n("\n            initSubtitleOptions, fontColorType= " + str + "， fontSizePercent = " + fG + "\n                positionPercent = " + i11 + ", openShadow =" + z10 + "\n                openBackground = " + z11 + ", bgColorType = " + str2 + ", bgOpacityProgress = " + i12 + "\n        "), false, 4, null);
    }

    public final void j(LocalVideoUiType uiType, ViewGroup viewGroup, int i10) {
        Intrinsics.h(uiType, "uiType");
        int iH = h(uiType);
        int iA = a0.a(40.0f);
        int i11 = iH - iA;
        ViewGroup.LayoutParams layoutParams = viewGroup != null ? viewGroup.getLayoutParams() : null;
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        int i12 = (i10 * i11) / 100;
        if (i12 >= 0) {
            if (i12 > i11 - iA) {
                if (marginLayoutParams != null) {
                    marginLayoutParams.bottomMargin = i11 - a0.a(40.0f);
                }
            } else if (marginLayoutParams != null) {
                marginLayoutParams.bottomMargin = i12;
            }
            int height = viewGroup != null ? viewGroup.getHeight() : 0;
            if ((marginLayoutParams != null ? marginLayoutParams.bottomMargin : 0) + height > iH && marginLayoutParams != null) {
                marginLayoutParams.bottomMargin = iH - height;
            }
        }
        if (viewGroup != null) {
            viewGroup.requestLayout();
        }
    }
}
