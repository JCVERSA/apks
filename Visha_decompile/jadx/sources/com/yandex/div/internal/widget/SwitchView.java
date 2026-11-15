package com.yandex.div.internal.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.util.TypedValue;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.widget.SwitchCompat;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.yandex.div.internal.widget.SwitchView;
import defpackage.b17;
import defpackage.e74;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0015\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\b\u0010\u0018\u0000 >2\u00020\u0001:\u0001?B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001b\u0010\t\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0014\u001a\u00020\u000f2\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000f0\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0018\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0019\u0010\u0017J'\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u001b\u0010 \u001a\u00020\u0006*\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b \u0010!J\u001b\u0010\"\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\"\u0010\nJ\u001b\u0010#\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b#\u0010\nJ\u000f\u0010$\u001a\u00020\u000fH\u0002¢\u0006\u0004\b$\u0010\u0017R\u0014\u0010(\u001a\u00020%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R.\u0010/\u001a\u0004\u0018\u00010\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u00068\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\u0014\u00102\u001a\u0002008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u00101R\u0014\u00103\u001a\u0002008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u00101R\u001c\u00108\u001a\u0004\u0018\u0001048@X\u0081\u0004¢\u0006\f\u0012\u0004\b7\u0010\u0017\u001a\u0004\b5\u00106R\u001c\u0010;\u001a\u0004\u0018\u0001048@X\u0081\u0004¢\u0006\f\u0012\u0004\b:\u0010\u0017\u001a\u0004\b9\u00106R$\u0010<\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u000b8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b<\u0010\r\"\u0004\b=\u0010\u0011¨\u0006@"}, d2 = {"Lcom/yandex/div/internal/widget/SwitchView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", MethodDecl.initName, "(Landroid/content/Context;)V", "", "", ES6Iterator.VALUE_PROPERTY, "d", "(IF)I", "", "isEnabled", "()Z", "enabled", "Lzfb;", "setEnabled", "(Z)V", "Lkotlin/Function1;", "listener", "setOnCheckedChangeListener", "(Le74;)V", "e", "()V", CmcdData.OBJECT_TYPE_MANIFEST, "f", "resId", "Landroid/util/TypedValue;", "typedValue", "outputIsResource", CmcdData.STREAMING_FORMAT_HLS, "(ILandroid/util/TypedValue;Z)I", "k", "(II)I", "j", CmcdData.OBJECT_TYPE_INIT_SEGMENT, GslbInterceptor.HEADER_KEY_GSLB, "Landroidx/appcompat/widget/SwitchCompat;", "b", "Landroidx/appcompat/widget/SwitchCompat;", ClientABTestDTOKt.SWITCH, "c", "Ljava/lang/Integer;", "getColorOn", "()Ljava/lang/Integer;", "setColorOn", "(Ljava/lang/Integer;)V", "colorOn", "", "[I", "trackTintColors", "thumbTintColors", "Landroid/content/res/ColorStateList;", "getThumbTintList$div_release", "()Landroid/content/res/ColorStateList;", "getThumbTintList$div_release$annotations", "thumbTintList", "getTrackTintList$div_release", "getTrackTintList$div_release$annotations", "trackTintList", "isChecked", "setChecked", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class SwitchView extends FrameLayout {
    public static final int[] f;
    public static final int[] g;
    public static final int[] h;
    public static final int[][] i;

    public final SwitchCompat switch;

    public Integer colorOn;

    public final int[] trackTintColors;

    public final int[] thumbTintColors;

    static {
        int[] iArr = {-16842910};
        f = iArr;
        int[] iArr2 = {R.attr.state_checked};
        g = iArr2;
        int[] iArr3 = new int[0];
        h = iArr3;
        i = new int[][]{iArr, iArr2, iArr3};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwitchView(Context context) {
        super(context);
        y45.j(context, "context");
        SwitchCompat switchCompat = new SwitchCompat(context);
        this.switch = switchCompat;
        this.trackTintColors = new int[3];
        this.thumbTintColors = new int[3];
        switchCompat.setShowText(false);
        switchCompat.setBackground(b17.a);
        addView(switchCompat, new FrameLayout.LayoutParams(-2, -2, 17));
        setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                SwitchView.c(this.b, view);
            }
        });
        f();
        m();
    }

    public static final void c(SwitchView switchView, View view) {
        y45.j(switchView, "this$0");
        switchView.g();
    }

    private final int d(int i2, float f2) {
        return k(i2, (int) (Color.alpha(i2) * f2));
    }

    @VisibleForTesting
    public static void getThumbTintList$div_release$annotations() {
    }

    @VisibleForTesting
    public static void getTrackTintList$div_release$annotations() {
    }

    public static final void l(e74 e74Var, CompoundButton compoundButton, boolean z) {
        y45.j(e74Var, "$listener");
        e74Var.invoke(Boolean.valueOf(z));
    }

    public final void e() {
        Integer num = this.colorOn;
        if (num != null) {
            int iIntValue = num.intValue();
            this.thumbTintColors[1] = iIntValue;
            this.trackTintColors[1] = d(iIntValue, 0.3f);
            m();
        }
    }

    public final void f() {
        TypedValue typedValue = new TypedValue();
        int iH = h(R.attr.colorForeground, typedValue, false);
        int iH2 = h(R.attr.colorControlActivated, typedValue, false);
        int iH3 = h(androidx.appcompat.R.attr.colorSwitchThumbNormal, typedValue, true);
        this.trackTintColors[1] = d(iH2, 0.3f);
        this.trackTintColors[2] = j(iH, 0.3f);
        this.trackTintColors[0] = j(iH, 0.1f);
        int[] iArr = this.thumbTintColors;
        iArr[1] = iH2;
        iArr[2] = iH3;
        iArr[0] = i(iH3, 0.5f);
    }

    public final void g() {
        if (isEnabled()) {
            this.switch.performClick();
        }
    }

    public final Integer getColorOn() {
        return this.colorOn;
    }

    public final ColorStateList getThumbTintList$div_release() {
        return this.switch.getThumbTintList();
    }

    public final ColorStateList getTrackTintList$div_release() {
        return this.switch.getTrackTintList();
    }

    public final int h(int resId, TypedValue typedValue, boolean outputIsResource) {
        if (getContext().getTheme().resolveAttribute(resId, typedValue, true)) {
            return (!outputIsResource || typedValue.resourceId == 0) ? typedValue.data : ContextCompat.getColor(getContext(), typedValue.resourceId);
        }
        return 0;
    }

    public final int i(int i2, float f2) {
        return ColorUtils.blendARGB(i2, -1, f2);
    }

    public final boolean isChecked() {
        return this.switch.isChecked();
    }

    @Override
    public boolean isEnabled() {
        return this.switch.isEnabled();
    }

    public final int j(int i2, float f2) {
        return k(i2, (int) (f2 * 255));
    }

    public final int k(int i2, int i3) {
        return Color.argb(i3, Color.red(i2), Color.green(i2), Color.blue(i2));
    }

    public final void m() {
        SwitchCompat switchCompat = this.switch;
        int[][] iArr = i;
        switchCompat.setTrackTintList(new ColorStateList(iArr, this.trackTintColors));
        this.switch.setThumbTintList(new ColorStateList(iArr, this.thumbTintColors));
    }

    public final void setChecked(boolean z) {
        this.switch.setChecked(z);
    }

    public final void setColorOn(Integer num) {
        this.colorOn = num;
        e();
    }

    @Override
    public void setEnabled(boolean enabled) {
        this.switch.setEnabled(enabled);
    }

    public final void setOnCheckedChangeListener(final e74 listener) {
        y45.j(listener, "listener");
        this.switch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                SwitchView.l(listener, compoundButton, z);
            }
        });
    }
}
