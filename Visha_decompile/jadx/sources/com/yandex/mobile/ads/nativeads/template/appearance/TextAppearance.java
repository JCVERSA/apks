package com.yandex.mobile.ads.nativeads.template.appearance;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.mobile.ads.impl.ma1;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001%J\u001a\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\u000b\u0010\nJ \u0010\u0010\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0015\u001a\u00020\b8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\nR\u001a\u0010\u001b\u001a\u00020\u00168\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u001a\u0010\u001e\u001a\u00020\b8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001c\u0010\u0013\u001a\u0004\b\u001d\u0010\nR\u001c\u0010$\u001a\u0004\u0018\u00010\u001f8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#¨\u0006&"}, d2 = {"Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;", "Landroid/os/Parcelable;", "Lcom/yandex/mobile/ads/impl/ma1;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Lzfb;", "writeToParcel", "(Landroid/os/Parcel;I)V", "b", "I", "getTextColor", "textColor", "", "c", "F", "getTextSize", "()F", "textSize", "d", "getFontStyle", TtmlNode.ATTR_TTS_FONT_STYLE, "", "e", "Ljava/lang/String;", "getFontFamilyName", "()Ljava/lang/String;", "fontFamilyName", "Builder", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
public final class TextAppearance implements Parcelable, ma1 {
    public static final Parcelable.Creator<TextAppearance> CREATOR = new a();

    private final int textColor;

    private final float textSize;

    private final int fontStyle;

    private final String fontFamilyName;

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\u000b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0005¢\u0006\u0004\b\u0012\u0010\b¨\u0006\u0015"}, d2 = {"Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;", "", "Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;", "build", "()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;", "", "textColor", "setTextColor", "(I)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;", "", "textSize", "setTextSize", "(F)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;", "", "fontFamilyName", "setFontFamilyName", "(Ljava/lang/String;)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;", TtmlNode.ATTR_TTS_FONT_STYLE, "setFontStyle", MethodDecl.initName, "()V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
    public static final class Builder {
        private int a;
        private float b;
        private int c;
        private String d;

        public final TextAppearance build() {
            return new TextAppearance(this.a, this.b, this.c, this.d, null);
        }

        public final Builder setFontFamilyName(String fontFamilyName) {
            this.d = fontFamilyName;
            return this;
        }

        public final Builder setFontStyle(int fontStyle) {
            this.c = fontStyle;
            return this;
        }

        public final Builder setTextColor(int textColor) {
            this.a = textColor;
            return this;
        }

        public final Builder setTextSize(float textSize) {
            this.b = textSize;
            return this;
        }
    }

    public static final class a implements Parcelable.Creator<TextAppearance> {
        @Override
        public final TextAppearance createFromParcel(Parcel parcel) {
            y45.j(parcel, "parcel");
            return new TextAppearance(parcel.readInt(), parcel.readFloat(), parcel.readInt(), parcel.readString(), null);
        }

        @Override
        public final TextAppearance[] newArray(int i) {
            return new TextAppearance[i];
        }
    }

    public TextAppearance(int i, float f, int i2, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, f, i2, str);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!y45.e(TextAppearance.class, other != null ? other.getClass() : null)) {
            return false;
        }
        y45.h(other, "null cannot be cast to non-null type com.yandex.mobile.ads.nativeads.template.appearance.TextAppearance");
        TextAppearance textAppearance = (TextAppearance) other;
        if (getTextColor() == textAppearance.getTextColor() && getTextSize() == textAppearance.getTextSize() && getFontStyle() == textAppearance.getFontStyle()) {
            return y45.e(getFontFamilyName(), textAppearance.getFontFamilyName());
        }
        return false;
    }

    @Override
    public String getFontFamilyName() {
        return this.fontFamilyName;
    }

    @Override
    public int getFontStyle() {
        return this.fontStyle;
    }

    @Override
    public int getTextColor() {
        return this.textColor;
    }

    @Override
    public float getTextSize() {
        return this.textSize;
    }

    public int hashCode() {
        int fontStyle = (getFontStyle() + ((Float.hashCode(getTextSize()) + (getTextColor() * 31)) * 31)) * 31;
        String fontFamilyName = getFontFamilyName();
        return fontStyle + (fontFamilyName != null ? fontFamilyName.hashCode() : 0);
    }

    @Override
    public void writeToParcel(Parcel parcel, int flags) {
        y45.j(parcel, "out");
        parcel.writeInt(this.textColor);
        parcel.writeFloat(this.textSize);
        parcel.writeInt(this.fontStyle);
        parcel.writeString(this.fontFamilyName);
    }

    private TextAppearance(int i, float f, int i2, String str) {
        this.textColor = i;
        this.textSize = f;
        this.fontStyle = i2;
        this.fontFamilyName = str;
    }
}
