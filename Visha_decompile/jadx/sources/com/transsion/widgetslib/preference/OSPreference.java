package com.transsion.widgetslib.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.preference.Preference;
import androidx.preference.PreferenceViewHolder;
import com.transsion.widgetslib.R;
import com.transsion.widgetsmotionlibrary.a;
import com.transsion.widgetsmotionlibrary.b;
import defpackage.m97;
import defpackage.olb;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 .2\u00020\u0001:\u0001/B1\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\u0006¢\u0006\u0004\b\r\u0010\u000eJ\r\u0010\u000f\u001a\u00020\u0006¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u0006¢\u0006\u0004\b\u0012\u0010\u000eJ\u0015\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0015\u0010\u0016J\r\u0010\u0017\u001a\u00020\u0013¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001a\u001a\u00020\f2\b\b\u0001\u0010\u0019\u001a\u00020\u0006¢\u0006\u0004\b\u001a\u0010\u000eJ\u000f\u0010\u001b\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u001b\u0010\u0010J\u0017\u0010\u001e\u001a\u00020\f2\u0006\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010!\u001a\u00020 H\u0002¢\u0006\u0004\b!\u0010\"R\u0016\u0010$\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010#R\u0016\u0010'\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0016\u0010)\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010#R\u0014\u0010-\u001a\u00020*8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,¨\u00060"}, d2 = {"Lcom/transsion/widgetslib/preference/OSPreference;", "Landroidx/preference/Preference;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "defStyleRes", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", "type", "Lzfb;", "setCornersType", "(I)V", "getCornersType", "()I", "radiusDp", "setCornerRadius", "", "radiusPx", "setCornerRadiusPx", "(F)V", "getCornerRadiusPx", "()F", "color", "setPressMaskColor", "getPressMaskColor", "Landroidx/preference/PreferenceViewHolder;", "holder", "onBindViewHolder", "(Landroidx/preference/PreferenceViewHolder;)V", "Lcom/transsion/widgetsmotionlibrary/a;", "b", "()Lcom/transsion/widgetsmotionlibrary/a;", "I", "cornersType", "c", "F", "cornerRadiusPx", "d", "pressMaskColor", "Lcom/transsion/widgetsmotionlibrary/b;", "e", "Lcom/transsion/widgetsmotionlibrary/b;", "osMotionL2PressEffectHelper", "f", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "widgetsLib_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class OSPreference extends Preference {

    public static final Companion INSTANCE = new Companion(null);
    public static final m97 g = new m97();

    public int cornersType;

    public float cornerRadiusPx;

    public int pressMaskColor;

    public final b osMotionL2PressEffectHelper;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final m97 getOsMotionL1EasingEaseoutInterpolator() {
            return OSPreference.g;
        }

        public Companion() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
        y45.j(context, "context");
    }

    public final a b() {
        a aVar;
        int i = this.cornersType;
        float f = i == 0 ? 0.0f : this.cornerRadiusPx;
        if (i == 1) {
            return a.e.a(f);
        }
        if (i == 2) {
            aVar = new a(f, f, 0.0f, 0.0f);
        } else {
            if (i != 3) {
                return new a(0.0f, 0.0f, 0.0f, 0.0f, 15, null);
            }
            aVar = new a(0.0f, 0.0f, f, f);
        }
        return aVar;
    }

    public final float getCornerRadiusPx() {
        if (this.cornersType == 0) {
            return 0.0f;
        }
        return this.cornerRadiusPx;
    }

    public final int getCornersType() {
        return this.cornersType;
    }

    @ColorInt
    public final int getPressMaskColor() {
        return this.pressMaskColor;
    }

    @Override
    public void onBindViewHolder(PreferenceViewHolder holder) {
        y45.j(holder, "holder");
        super.onBindViewHolder(holder);
        View view = holder.itemView;
        y45.i(view, "holder.itemView");
        b.f(this.osMotionL2PressEffectHelper, view, 0.95f, this.pressMaskColor, 200L, 200L, g, 1, null, 0.0f, true, 0.0f, 0.0f, 0.0f, 0.0f, b(), null, 48128, null);
    }

    public final void setCornerRadius(int radiusDp) {
        setCornerRadiusPx(olb.h(getContext(), radiusDp));
    }

    public final void setCornerRadiusPx(float radiusPx) {
        if (this.cornerRadiusPx == radiusPx) {
            return;
        }
        this.cornerRadiusPx = radiusPx;
        notifyChanged();
    }

    public final void setCornersType(int type) {
        if (this.cornersType == type) {
            return;
        }
        this.cornersType = type;
        notifyChanged();
    }

    public final void setPressMaskColor(@ColorInt int color) {
        if (this.pressMaskColor == color) {
            return;
        }
        this.pressMaskColor = color;
        notifyChanged();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0, 8, null);
        y45.j(context, "context");
    }

    public OSPreference(Context context, AttributeSet attributeSet, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i3 & 2) != 0 ? null : attributeSet, (i3 & 4) != 0 ? 0 : i, (i3 & 8) != 0 ? 0 : i2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OSPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        y45.j(context, "context");
        this.pressMaskColor = olb.m(context, R.attr.os_list_press_color_attr, R.color.os_press_secondary_color);
        this.osMotionL2PressEffectHelper = new b();
        if (attributeSet != null) {
            int[] iArr = R.styleable.OSPreference;
            y45.i(iArr, "OSPreference");
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, i2);
            y45.i(typedArrayObtainStyledAttributes, "obtainStyledAttributes(s…efStyleAttr, defStyleRes)");
            this.cornersType = typedArrayObtainStyledAttributes.getInt(R.styleable.OSPreference_os_pref_press_corners_type, 0);
            this.cornerRadiusPx = typedArrayObtainStyledAttributes.getDimension(R.styleable.OSPreference_os_pref_press_corner_radius, this.cornerRadiusPx);
            this.pressMaskColor = typedArrayObtainStyledAttributes.getColor(R.styleable.OSPreference_os_pref_press_mask_color, this.pressMaskColor);
            typedArrayObtainStyledAttributes.recycle();
        }
    }
}
