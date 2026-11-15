package com.yandex.mobile.ads.nativeads.template.appearance;

import android.os.Parcel;
import android.os.Parcelable;
import com.yandex.mobile.ads.impl.ha1;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0007\n\u0002\b\r\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001(J\u001a\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\u000b\u0010\nJ \u0010\u0010\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u00128\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u001a\u0010\u001b\u001a\u00020\b8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\nR\u001a\u0010!\u001a\u00020\u001c8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u001a\u0010$\u001a\u00020\b8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\"\u0010\u0019\u001a\u0004\b#\u0010\nR\u001a\u0010'\u001a\u00020\b8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b%\u0010\u0019\u001a\u0004\b&\u0010\n¨\u0006)"}, d2 = {"Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;", "Landroid/os/Parcelable;", "Lcom/yandex/mobile/ads/impl/ha1;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Lzfb;", "writeToParcel", "(Landroid/os/Parcel;I)V", "Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;", "b", "Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;", "getTextAppearance", "()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;", "textAppearance", "c", "I", "getBorderColor", "borderColor", "", "d", "F", "getBorderWidth", "()F", "borderWidth", "e", "getNormalColor", "normalColor", "f", "getPressedColor", "pressedColor", "Builder", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
public final class ButtonAppearance implements Parcelable, ha1 {
    public static final Parcelable.Creator<ButtonAppearance> CREATOR = new a();

    private final TextAppearance textAppearance;

    private final int borderColor;

    private final float borderWidth;

    private final int normalColor;

    private final int pressedColor;

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\u000b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\u000e\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005¢\u0006\u0004\b\u000e\u0010\bJ\u0015\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0005¢\u0006\u0004\b\u0010\u0010\bJ\u0017\u0010\u0013\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, d2 = {"Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;", "", "Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;", "build", "()Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;", "", "borderColor", "setBorderColor", "(I)Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;", "", "borderWidth", "setBorderWidth", "(F)Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;", "normalColor", "setNormalColor", "pressedColor", "setPressedColor", "Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;", "textAppearance", "setTextAppearance", "(Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;)Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;", MethodDecl.initName, "()V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
    public static final class Builder {
        private int a;
        private float b;
        private int c;
        private int d;
        private TextAppearance e;

        public final ButtonAppearance build() {
            return new ButtonAppearance(this.e, this.a, this.b, this.c, this.d, null);
        }

        public final Builder setBorderColor(int borderColor) {
            this.a = borderColor;
            return this;
        }

        public final Builder setBorderWidth(float borderWidth) {
            this.b = borderWidth;
            return this;
        }

        public final Builder setNormalColor(int normalColor) {
            this.c = normalColor;
            return this;
        }

        public final Builder setPressedColor(int pressedColor) {
            this.d = pressedColor;
            return this;
        }

        public final Builder setTextAppearance(TextAppearance textAppearance) {
            this.e = textAppearance;
            return this;
        }
    }

    public static final class a implements Parcelable.Creator<ButtonAppearance> {
        @Override
        public final ButtonAppearance createFromParcel(Parcel parcel) {
            y45.j(parcel, "parcel");
            return new ButtonAppearance(parcel.readInt() == 0 ? null : TextAppearance.CREATOR.createFromParcel(parcel), parcel.readInt(), parcel.readFloat(), parcel.readInt(), parcel.readInt(), null);
        }

        @Override
        public final ButtonAppearance[] newArray(int i) {
            return new ButtonAppearance[i];
        }
    }

    public ButtonAppearance(TextAppearance textAppearance, int i, float f, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(textAppearance, i, f, i2, i3);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!y45.e(ButtonAppearance.class, other != null ? other.getClass() : null)) {
            return false;
        }
        y45.h(other, "null cannot be cast to non-null type com.yandex.mobile.ads.nativeads.template.appearance.ButtonAppearance");
        ButtonAppearance buttonAppearance = (ButtonAppearance) other;
        return y45.e(getTextAppearance(), buttonAppearance.getTextAppearance()) && getBorderColor() == buttonAppearance.getBorderColor() && getBorderWidth() == buttonAppearance.getBorderWidth() && getNormalColor() == buttonAppearance.getNormalColor() && getPressedColor() == buttonAppearance.getPressedColor();
    }

    @Override
    public int getBorderColor() {
        return this.borderColor;
    }

    @Override
    public float getBorderWidth() {
        return this.borderWidth;
    }

    @Override
    public int getNormalColor() {
        return this.normalColor;
    }

    @Override
    public int getPressedColor() {
        return this.pressedColor;
    }

    public int hashCode() {
        TextAppearance textAppearance = getTextAppearance();
        return getPressedColor() + ((getNormalColor() + ((Float.hashCode(getBorderWidth()) + ((getBorderColor() + ((textAppearance != null ? textAppearance.hashCode() : 0) * 31)) * 31)) * 31)) * 31);
    }

    @Override
    public void writeToParcel(Parcel parcel, int flags) {
        y45.j(parcel, "out");
        TextAppearance textAppearance = this.textAppearance;
        if (textAppearance == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            textAppearance.writeToParcel(parcel, flags);
        }
        parcel.writeInt(this.borderColor);
        parcel.writeFloat(this.borderWidth);
        parcel.writeInt(this.normalColor);
        parcel.writeInt(this.pressedColor);
    }

    private ButtonAppearance(TextAppearance textAppearance, int i, float f, int i2, int i3) {
        this.textAppearance = textAppearance;
        this.borderColor = i;
        this.borderWidth = f;
        this.normalColor = i2;
        this.pressedColor = i3;
    }

    @Override
    public TextAppearance getTextAppearance() {
        return this.textAppearance;
    }
}
