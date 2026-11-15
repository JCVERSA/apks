package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.text.Layout;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.MotionEvent;
import android.webkit.WebView;
import android.widget.FrameLayout;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

final class q0 extends FrameLayout implements SubtitleView.a {

    private final com.google.android.exoplayer2.ui.b f26435a;

    private final WebView f26436b;

    private List f26437c;

    private c f26438d;

    private float f26439e;

    private int f26440f;

    private float f26441g;

    class a extends WebView {
        a(q0 q0Var, Context context, AttributeSet attributeSet) {
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

        static final int[] f26442a;

        static {
            int[] iArr = new int[Layout.Alignment.values().length];
            f26442a = iArr;
            try {
                iArr[Layout.Alignment.ALIGN_NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f26442a[Layout.Alignment.ALIGN_OPPOSITE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f26442a[Layout.Alignment.ALIGN_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public q0(Context context) {
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
        int i10 = b.f26442a[alignment.ordinal()];
        if (i10 != 1) {
            return i10 != 2 ? TtmlNode.CENTER : TtmlNode.END;
        }
        return "start";
    }

    private static String d(c cVar) {
        int i10 = cVar.f26341d;
        if (i10 == 1) {
            return com.google.android.exoplayer2.util.p0.C("1px 1px 0 %1$s, 1px -1px 0 %1$s, -1px 1px 0 %1$s, -1px -1px 0 %1$s", h.b(cVar.f26342e));
        }
        if (i10 == 2) {
            return com.google.android.exoplayer2.util.p0.C("0.1em 0.12em 0.15em %s", h.b(cVar.f26342e));
        }
        if (i10 != 3) {
            return i10 != 4 ? "unset" : com.google.android.exoplayer2.util.p0.C("-0.05em -0.05em 0.15em %s", h.b(cVar.f26342e));
        }
        return com.google.android.exoplayer2.util.p0.C("0.06em 0.08em 0.15em %s", h.b(cVar.f26342e));
    }

    private String e(int i10, float f10) {
        float fH = m0.h(i10, f10, getHeight(), (getHeight() - getPaddingTop()) - getPaddingBottom());
        return fH == -3.4028235E38f ? "unset" : com.google.android.exoplayer2.util.p0.C("%.2fpx", Float.valueOf(fH / getContext().getResources().getDisplayMetrics().density));
    }

    private static String f(int i10) {
        if (i10 != 1) {
            return i10 != 2 ? "horizontal-tb" : "vertical-lr";
        }
        return "vertical-rl";
    }

    private static String h(da.b bVar) {
        float f10 = bVar.f58940q;
        if (f10 == 0.0f) {
            return "";
        }
        int i10 = bVar.f58939p;
        return com.google.android.exoplayer2.util.p0.C("%s(%.2fdeg)", (i10 == 2 || i10 == 1) ? "skewY" : "skewX", Float.valueOf(f10));
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
        String strC;
        int iB;
        int i10;
        float f10;
        String strC2;
        int i11;
        int i12;
        int i13;
        String str;
        String str2;
        String str3;
        int i14;
        String str4;
        int i15;
        k.b bVarA;
        Iterator it;
        k.b bVar;
        Layout.Alignment alignment;
        String str5;
        boolean z10;
        q0 q0Var = this;
        StringBuilder sb2 = new StringBuilder();
        float f11 = 1.2f;
        int i16 = 0;
        int i17 = 1;
        sb2.append(com.google.android.exoplayer2.util.p0.C("<body><div style='-webkit-user-select:none;position:fixed;top:0;bottom:0;left:0;right:0;color:%s;font-size:%s;line-height:%.2f;text-shadow:%s;'>", h.b(q0Var.f26438d.f26338a), q0Var.e(q0Var.f26440f, q0Var.f26439e), Float.valueOf(1.2f), d(q0Var.f26438d)));
        HashMap map = new HashMap();
        map.put(h.a("default_bg"), com.google.android.exoplayer2.util.p0.C("background-color:%s;", h.b(q0Var.f26438d.f26339b)));
        int i18 = 0;
        while (i18 < q0Var.f26437c.size()) {
            da.b bVar2 = (da.b) q0Var.f26437c.get(i18);
            float f12 = bVar2.f58931h;
            float f13 = f12 != -3.4028235E38f ? f12 * 100.0f : 50.0f;
            int iB2 = b(bVar2.f58932i);
            float f14 = bVar2.f58928e;
            if (f14 != -3.4028235E38f) {
                if (bVar2.f58929f != i17) {
                    Float fValueOf = Float.valueOf(f14 * 100.0f);
                    Object[] objArr = new Object[i17];
                    objArr[i16] = fValueOf;
                    strC = com.google.android.exoplayer2.util.p0.C("%.2f%%", objArr);
                    iB = bVar2.f58939p == i17 ? -b(bVar2.f58930g) : b(bVar2.f58930g);
                } else if (f14 >= 0.0f) {
                    Float fValueOf2 = Float.valueOf(f14 * f11);
                    Object[] objArr2 = new Object[i17];
                    objArr2[i16] = fValueOf2;
                    strC = com.google.android.exoplayer2.util.p0.C("%.2fem", objArr2);
                    iB = i16;
                    i10 = iB;
                } else {
                    Float fValueOf3 = Float.valueOf(((-f14) - 1.0f) * f11);
                    Object[] objArr3 = new Object[i17];
                    objArr3[i16] = fValueOf3;
                    strC = com.google.android.exoplayer2.util.p0.C("%.2fem", objArr3);
                    i10 = i17;
                    iB = i16;
                }
                f10 = bVar2.f58933j;
                if (f10 != -3.4028235E38f) {
                    Object[] objArr4 = new Object[i17];
                    objArr4[i16] = Float.valueOf(f10 * 100.0f);
                    strC2 = com.google.android.exoplayer2.util.p0.C("%.2f%%", objArr4);
                } else {
                    strC2 = "fit-content";
                }
                String strC3 = c(bVar2.f58925b);
                String strF = f(bVar2.f58939p);
                String strE = q0Var.e(bVar2.f58937n, bVar2.f58938o);
                if (bVar2.f58935l) {
                    i11 = bVar2.f58936m;
                } else {
                    i11 = q0Var.f26438d.f26340c;
                }
                String strB = h.b(i11);
                i12 = iB;
                i13 = bVar2.f58939p;
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
                bVarA = k.a(bVar2.f58924a, getContext().getResources().getDisplayMetrics().density);
                it = map.keySet().iterator();
                while (it.hasNext()) {
                    Iterator it2 = it;
                    String str6 = (String) it.next();
                    k.b bVar3 = bVarA;
                    str5 = (String) map.put(str6, (String) map.get(str6));
                    if (str5 != null || str5.equals(map.get(str6))) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    com.google.android.exoplayer2.util.a.g(z10);
                    it = it2;
                    bVarA = bVar3;
                }
                bVar = bVarA;
                HashMap map2 = map;
                sb2.append(com.google.android.exoplayer2.util.p0.C("<div style='position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;'>", Integer.valueOf(i18), str3, Float.valueOf(f13), str2, strC, str4, strC2, strC3, strF, strE, strB, Integer.valueOf(i15), Integer.valueOf(i12), h(bVar2)));
                sb2.append(com.google.android.exoplayer2.util.p0.C("<span class='%s'>", "default_bg"));
                alignment = bVar2.f58926c;
                if (alignment != null) {
                    sb2.append(com.google.android.exoplayer2.util.p0.C("<span style='display:inline-block; text-align:%s;'>", c(alignment)));
                    sb2.append(bVar.f26420a);
                    sb2.append("</span>");
                } else {
                    sb2.append(bVar.f26420a);
                }
                sb2.append("</span>");
                sb2.append("</div>");
                i17 = 1;
                i18++;
                f11 = 1.2f;
                i16 = 0;
                map = map2;
                q0Var = this;
            } else {
                Object[] objArr5 = new Object[i17];
                objArr5[i16] = Float.valueOf((1.0f - q0Var.f26441g) * 100.0f);
                strC = com.google.android.exoplayer2.util.p0.C("%.2f%%", objArr5);
                iB = -100;
            }
            i10 = i16;
            f10 = bVar2.f58933j;
            if (f10 != -3.4028235E38f) {
                Object[] objArr6 = new Object[i17];
                objArr6[i16] = Float.valueOf(f10 * 100.0f);
                strC2 = com.google.android.exoplayer2.util.p0.C("%.2f%%", objArr6);
            } else {
                strC2 = "fit-content";
            }
            String strC4 = c(bVar2.f58925b);
            String strF2 = f(bVar2.f58939p);
            String strE2 = q0Var.e(bVar2.f58937n, bVar2.f58938o);
            if (bVar2.f58935l) {
                i11 = bVar2.f58936m;
            } else {
                i11 = q0Var.f26438d.f26340c;
            }
            String strB2 = h.b(i11);
            i12 = iB;
            i13 = bVar2.f58939p;
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
            bVarA = k.a(bVar2.f58924a, getContext().getResources().getDisplayMetrics().density);
            it = map.keySet().iterator();
            while (it.hasNext()) {
                Iterator it3 = it;
                String str7 = (String) it.next();
                k.b bVar4 = bVarA;
                str5 = (String) map.put(str7, (String) map.get(str7));
                if (str5 != null) {
                    z10 = true;
                } else {
                    z10 = true;
                }
                com.google.android.exoplayer2.util.a.g(z10);
                it = it3;
                bVarA = bVar4;
            }
            bVar = bVarA;
            HashMap map3 = map;
            sb2.append(com.google.android.exoplayer2.util.p0.C("<div style='position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;'>", Integer.valueOf(i18), str3, Float.valueOf(f13), str2, strC, str4, strC2, strC4, strF2, strE2, strB2, Integer.valueOf(i15), Integer.valueOf(i12), h(bVar2)));
            sb2.append(com.google.android.exoplayer2.util.p0.C("<span class='%s'>", "default_bg"));
            alignment = bVar2.f58926c;
            if (alignment != null) {
                sb2.append(com.google.android.exoplayer2.util.p0.C("<span style='display:inline-block; text-align:%s;'>", c(alignment)));
                sb2.append(bVar.f26420a);
                sb2.append("</span>");
            } else {
                sb2.append(bVar.f26420a);
            }
            sb2.append("</span>");
            sb2.append("</div>");
            i17 = 1;
            i18++;
            f11 = 1.2f;
            i16 = 0;
            map = map3;
            q0Var = this;
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
        this.f26436b.loadData(Base64.encodeToString(sb2.toString().getBytes(com.google.common.base.c.f29403c), 1), "text/html", "base64");
    }

    @Override
    public void a(List list, c cVar, float f10, int i10, float f11) {
        this.f26438d = cVar;
        this.f26439e = f10;
        this.f26440f = i10;
        this.f26441g = f11;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i11 = 0; i11 < list.size(); i11++) {
            da.b bVar = (da.b) list.get(i11);
            if (bVar.f58927d != null) {
                arrayList.add(bVar);
            } else {
                arrayList2.add(bVar);
            }
        }
        if (!this.f26437c.isEmpty() || !arrayList2.isEmpty()) {
            this.f26437c = arrayList2;
            i();
        }
        this.f26435a.a(arrayList, cVar, f10, i10, f11);
        invalidate();
    }

    public void g() {
        this.f26436b.destroy();
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        if (!z10 || this.f26437c.isEmpty()) {
            return;
        }
        i();
    }

    public q0(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f26437c = Collections.emptyList();
        this.f26438d = c.f26337g;
        this.f26439e = 0.0533f;
        this.f26440f = 0;
        this.f26441g = 0.08f;
        com.google.android.exoplayer2.ui.b bVar = new com.google.android.exoplayer2.ui.b(context, attributeSet);
        this.f26435a = bVar;
        a aVar = new a(this, context, attributeSet);
        this.f26436b = aVar;
        aVar.setBackgroundColor(0);
        addView(bVar);
        addView(aVar);
    }
}
