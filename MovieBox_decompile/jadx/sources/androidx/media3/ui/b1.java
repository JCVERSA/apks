package androidx.media3.ui;

import android.content.Context;
import android.text.Layout;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.MotionEvent;
import android.webkit.WebView;
import android.widget.FrameLayout;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

final class b1 extends FrameLayout implements SubtitleView.a {

    private final androidx.media3.ui.a f13327a;

    private final WebView f13328b;

    private List f13329c;

    private androidx.media3.ui.b f13330d;

    private float f13331e;

    private int f13332f;

    private float f13333g;

    class a extends WebView {
        a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override
        public boolean onTouchEvent(MotionEvent motionEvent) {
            super.onTouchEvent(motionEvent);
            return false;
        }

        @Override
        public boolean performClick() {
            super.performClick();
            return false;
        }
    }

    static class b {

        static final int[] f13335a;

        static {
            int[] iArr = new int[Layout.Alignment.values().length];
            f13335a = iArr;
            try {
                iArr[Layout.Alignment.ALIGN_NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13335a[Layout.Alignment.ALIGN_OPPOSITE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f13335a[Layout.Alignment.ALIGN_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public b1(Context context) {
        this(context, null);
    }

    private static int b(int i10) {
        if (i10 != 1) {
            return i10 != 2 ? 0 : -100;
        }
        return -50;
    }

    private static String c(Layout.Alignment alignment) {
        if (alignment == null) {
            return TtmlNode.CENTER;
        }
        int i10 = b.f13335a[alignment.ordinal()];
        if (i10 != 1) {
            return i10 != 2 ? TtmlNode.CENTER : TtmlNode.END;
        }
        return "start";
    }

    private static String d(androidx.media3.ui.b bVar) {
        int i10 = bVar.f13323d;
        if (i10 == 1) {
            return androidx.media3.common.util.a1.G("1px 1px 0 %1$s, 1px -1px 0 %1$s, -1px 1px 0 %1$s, -1px -1px 0 %1$s", g.b(bVar.f13324e));
        }
        if (i10 == 2) {
            return androidx.media3.common.util.a1.G("0.1em 0.12em 0.15em %s", g.b(bVar.f13324e));
        }
        if (i10 != 3) {
            return i10 != 4 ? "unset" : androidx.media3.common.util.a1.G("-0.05em -0.05em 0.15em %s", g.b(bVar.f13324e));
        }
        return androidx.media3.common.util.a1.G("0.06em 0.08em 0.15em %s", g.b(bVar.f13324e));
    }

    private String e(int i10, float f10) {
        float fH = x0.h(i10, f10, getHeight(), (getHeight() - getPaddingTop()) - getPaddingBottom());
        return fH == -3.4028235E38f ? "unset" : androidx.media3.common.util.a1.G("%.2fpx", Float.valueOf(fH / getContext().getResources().getDisplayMetrics().density));
    }

    private static String f(int i10) {
        if (i10 != 1) {
            return i10 != 2 ? "horizontal-tb" : "vertical-lr";
        }
        return "vertical-rl";
    }

    private static String h(u1.a aVar) {
        float f10 = aVar.f72956q;
        if (f10 == 0.0f) {
            return "";
        }
        int i10 = aVar.f72955p;
        return androidx.media3.common.util.a1.G("%s(%.2fdeg)", (i10 == 2 || i10 == 1) ? "skewY" : "skewX", Float.valueOf(f10));
    }

    /* JADX WARN: Code duplicated, block: B:25:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:26:0x0107  */
    /* JADX WARN: Code duplicated, block: B:29:0x0121  */
    /* JADX WARN: Code duplicated, block: B:30:0x0124  */
    /* JADX WARN: Code duplicated, block: B:33:0x013b  */
    /* JADX WARN: Code duplicated, block: B:35:0x013e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:36:0x0140  */
    /* JADX WARN: Code duplicated, block: B:38:0x0144 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:40:0x0147  */
    /* JADX WARN: Code duplicated, block: B:42:0x014f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:49:0x015d  */
    /* JADX WARN: Code duplicated, block: B:53:0x0185  */
    /* JADX WARN: Code duplicated, block: B:59:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:63:0x0223  */
    /* JADX WARN: Code duplicated, block: B:64:0x023f  */
    private void i() {
        String strG;
        int iB;
        int i10;
        float f10;
        String strG2;
        int i11;
        int i12;
        int i13;
        String str;
        String str2;
        String str3;
        int i14;
        String str4;
        int i15;
        r0.b bVarA;
        Iterator it;
        r0.b bVar;
        Layout.Alignment alignment;
        String str5;
        boolean z10;
        b1 b1Var = this;
        StringBuilder sb2 = new StringBuilder();
        float f11 = 1.2f;
        int i16 = 0;
        int i17 = 1;
        sb2.append(androidx.media3.common.util.a1.G("<body><div style='-webkit-user-select:none;position:fixed;top:0;bottom:0;left:0;right:0;color:%s;font-size:%s;line-height:%.2f;text-shadow:%s;'>", g.b(b1Var.f13330d.f13320a), b1Var.e(b1Var.f13332f, b1Var.f13331e), Float.valueOf(1.2f), d(b1Var.f13330d)));
        HashMap map = new HashMap();
        map.put(g.a("default_bg"), androidx.media3.common.util.a1.G("background-color:%s;", g.b(b1Var.f13330d.f13321b)));
        int i18 = 0;
        while (i18 < b1Var.f13329c.size()) {
            u1.a aVar = (u1.a) b1Var.f13329c.get(i18);
            float f12 = aVar.f72947h;
            float f13 = f12 != -3.4028235E38f ? f12 * 100.0f : 50.0f;
            int iB2 = b(aVar.f72948i);
            float f14 = aVar.f72944e;
            if (f14 != -3.4028235E38f) {
                if (aVar.f72945f != i17) {
                    Float fValueOf = Float.valueOf(f14 * 100.0f);
                    Object[] objArr = new Object[i17];
                    objArr[i16] = fValueOf;
                    strG = androidx.media3.common.util.a1.G("%.2f%%", objArr);
                    iB = aVar.f72955p == i17 ? -b(aVar.f72946g) : b(aVar.f72946g);
                } else if (f14 >= 0.0f) {
                    Float fValueOf2 = Float.valueOf(f14 * f11);
                    Object[] objArr2 = new Object[i17];
                    objArr2[i16] = fValueOf2;
                    strG = androidx.media3.common.util.a1.G("%.2fem", objArr2);
                    iB = i16;
                    i10 = iB;
                } else {
                    Float fValueOf3 = Float.valueOf(((-f14) - 1.0f) * f11);
                    Object[] objArr3 = new Object[i17];
                    objArr3[i16] = fValueOf3;
                    strG = androidx.media3.common.util.a1.G("%.2fem", objArr3);
                    i10 = i17;
                    iB = i16;
                }
                f10 = aVar.f72949j;
                if (f10 != -3.4028235E38f) {
                    Object[] objArr4 = new Object[i17];
                    objArr4[i16] = Float.valueOf(f10 * 100.0f);
                    strG2 = androidx.media3.common.util.a1.G("%.2f%%", objArr4);
                } else {
                    strG2 = "fit-content";
                }
                String strC = c(aVar.f72941b);
                String strF = f(aVar.f72955p);
                String strE = b1Var.e(aVar.f72953n, aVar.f72954o);
                if (aVar.f72951l) {
                    i11 = aVar.f72952m;
                } else {
                    i11 = b1Var.f13330d.f13322c;
                }
                String strB = g.b(i11);
                i12 = iB;
                i13 = aVar.f72955p;
                str = TtmlNode.RIGHT;
                str2 = IntegrationConstants.TAB_BAR_POSITION_TOP;
                str3 = TtmlNode.LEFT;
                if (i13 != 1) {
                    if (i10 != 0) {
                        str = TtmlNode.LEFT;
                    }
                    str3 = IntegrationConstants.TAB_BAR_POSITION_TOP;
                    i14 = 2;
                    str2 = str;
                } else if (i13 != 2) {
                    if (i10 != 0) {
                        str2 = IntegrationConstants.TAB_BAR_POSITION_DEFAULT;
                    }
                    i14 = 2;
                } else {
                    if (i10 == 0) {
                        str = TtmlNode.LEFT;
                    }
                    str3 = IntegrationConstants.TAB_BAR_POSITION_TOP;
                    i14 = 2;
                    str2 = str;
                }
                if (i13 != i14 || i13 == 1) {
                    str4 = "height";
                    i15 = i12;
                    i12 = iB2;
                } else {
                    str4 = "width";
                    i15 = iB2;
                }
                bVarA = r0.a(aVar.f72940a, getContext().getResources().getDisplayMetrics().density);
                it = map.keySet().iterator();
                while (it.hasNext()) {
                    Iterator it2 = it;
                    String str6 = (String) it.next();
                    r0.b bVar2 = bVarA;
                    str5 = (String) map.put(str6, (String) map.get(str6));
                    if (str5 != null || str5.equals(map.get(str6))) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    androidx.media3.common.util.a.g(z10);
                    it = it2;
                    bVarA = bVar2;
                }
                bVar = bVarA;
                HashMap map2 = map;
                sb2.append(androidx.media3.common.util.a1.G("<div style='position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;'>", Integer.valueOf(i18), str3, Float.valueOf(f13), str2, strG, str4, strG2, strC, strF, strE, strB, Integer.valueOf(i15), Integer.valueOf(i12), h(aVar)));
                sb2.append(androidx.media3.common.util.a1.G("<span class='%s'>", "default_bg"));
                alignment = aVar.f72942c;
                if (alignment != null) {
                    sb2.append(androidx.media3.common.util.a1.G("<span style='display:inline-block; text-align:%s;'>", c(alignment)));
                    sb2.append(bVar.f13402a);
                    sb2.append("</span>");
                } else {
                    sb2.append(bVar.f13402a);
                }
                sb2.append("</span>");
                sb2.append("</div>");
                i17 = 1;
                i18++;
                f11 = 1.2f;
                i16 = 0;
                map = map2;
                b1Var = this;
            } else {
                Object[] objArr5 = new Object[i17];
                objArr5[i16] = Float.valueOf((1.0f - b1Var.f13333g) * 100.0f);
                strG = androidx.media3.common.util.a1.G("%.2f%%", objArr5);
                iB = -100;
            }
            i10 = i16;
            f10 = aVar.f72949j;
            if (f10 != -3.4028235E38f) {
                Object[] objArr6 = new Object[i17];
                objArr6[i16] = Float.valueOf(f10 * 100.0f);
                strG2 = androidx.media3.common.util.a1.G("%.2f%%", objArr6);
            } else {
                strG2 = "fit-content";
            }
            String strC2 = c(aVar.f72941b);
            String strF2 = f(aVar.f72955p);
            String strE2 = b1Var.e(aVar.f72953n, aVar.f72954o);
            if (aVar.f72951l) {
                i11 = aVar.f72952m;
            } else {
                i11 = b1Var.f13330d.f13322c;
            }
            String strB2 = g.b(i11);
            i12 = iB;
            i13 = aVar.f72955p;
            str = TtmlNode.RIGHT;
            str2 = IntegrationConstants.TAB_BAR_POSITION_TOP;
            str3 = TtmlNode.LEFT;
            if (i13 != 1) {
                if (i10 != 0) {
                    str = TtmlNode.LEFT;
                }
                str3 = IntegrationConstants.TAB_BAR_POSITION_TOP;
                i14 = 2;
                str2 = str;
            } else if (i13 != 2) {
                if (i10 != 0) {
                    str2 = IntegrationConstants.TAB_BAR_POSITION_DEFAULT;
                }
                i14 = 2;
            } else {
                if (i10 == 0) {
                    str = TtmlNode.LEFT;
                }
                str3 = IntegrationConstants.TAB_BAR_POSITION_TOP;
                i14 = 2;
                str2 = str;
            }
            if (i13 != i14) {
                str4 = "height";
                i15 = i12;
                i12 = iB2;
            } else {
                str4 = "height";
                i15 = i12;
                i12 = iB2;
            }
            bVarA = r0.a(aVar.f72940a, getContext().getResources().getDisplayMetrics().density);
            it = map.keySet().iterator();
            while (it.hasNext()) {
                Iterator it3 = it;
                String str7 = (String) it.next();
                r0.b bVar3 = bVarA;
                str5 = (String) map.put(str7, (String) map.get(str7));
                if (str5 != null) {
                    z10 = true;
                } else {
                    z10 = true;
                }
                androidx.media3.common.util.a.g(z10);
                it = it3;
                bVarA = bVar3;
            }
            bVar = bVarA;
            HashMap map3 = map;
            sb2.append(androidx.media3.common.util.a1.G("<div style='position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;'>", Integer.valueOf(i18), str3, Float.valueOf(f13), str2, strG, str4, strG2, strC2, strF2, strE2, strB2, Integer.valueOf(i15), Integer.valueOf(i12), h(aVar)));
            sb2.append(androidx.media3.common.util.a1.G("<span class='%s'>", "default_bg"));
            alignment = aVar.f72942c;
            if (alignment != null) {
                sb2.append(androidx.media3.common.util.a1.G("<span style='display:inline-block; text-align:%s;'>", c(alignment)));
                sb2.append(bVar.f13402a);
                sb2.append("</span>");
            } else {
                sb2.append(bVar.f13402a);
            }
            sb2.append("</span>");
            sb2.append("</div>");
            i17 = 1;
            i18++;
            f11 = 1.2f;
            i16 = 0;
            map = map3;
            b1Var = this;
        }
        Map map4 = map;
        sb2.append("</div></body></html>");
        StringBuilder sb3 = new StringBuilder();
        sb3.append("<html><head><style>");
        for (String str8 : map4.keySet()) {
            sb3.append(str8);
            sb3.append("{");
            sb3.append((String) map4.get(str8));
            sb3.append("}");
        }
        sb3.append("</style></head>");
        sb2.insert(0, sb3.toString());
        this.f13328b.loadData(Base64.encodeToString(sb2.toString().getBytes(StandardCharsets.UTF_8), 1), "text/html", "base64");
    }

    @Override
    public void a(List list, androidx.media3.ui.b bVar, float f10, int i10, float f11) {
        this.f13330d = bVar;
        this.f13331e = f10;
        this.f13332f = i10;
        this.f13333g = f11;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i11 = 0; i11 < list.size(); i11++) {
            u1.a aVar = (u1.a) list.get(i11);
            if (aVar.f72943d != null) {
                arrayList.add(aVar);
            } else {
                arrayList2.add(aVar);
            }
        }
        if (!this.f13329c.isEmpty() || !arrayList2.isEmpty()) {
            this.f13329c = arrayList2;
            i();
        }
        this.f13327a.a(arrayList, bVar, f10, i10, f11);
        invalidate();
    }

    public void g() {
        this.f13328b.destroy();
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        if (!z10 || this.f13329c.isEmpty()) {
            return;
        }
        i();
    }

    public b1(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f13329c = Collections.emptyList();
        this.f13330d = androidx.media3.ui.b.f13319g;
        this.f13331e = 0.0533f;
        this.f13332f = 0;
        this.f13333g = 0.08f;
        androidx.media3.ui.a aVar = new androidx.media3.ui.a(context, attributeSet);
        this.f13327a = aVar;
        a aVar2 = new a(context, attributeSet);
        this.f13328b = aVar2;
        aVar2.setBackgroundColor(0);
        addView(aVar);
        addView(aVar2);
    }
}
