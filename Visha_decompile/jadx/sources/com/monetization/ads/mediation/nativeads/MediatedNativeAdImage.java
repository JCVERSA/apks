package com.monetization.ads.mediation.nativeads;

import android.graphics.drawable.Drawable;
import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001:\u0001\u0019B+\b\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u000b\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0017\u0010\u0018R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\u0004\u001a\u0004\b\t\u0010\u0006R\u0017\u0010\u0010\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0019\u0010\u0016\u001a\u0004\u0018\u00010\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u001a"}, d2 = {"Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdImage;", "", "", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "I", "getWidth", "()I", "width", "b", "getHeight", "height", "", "c", "Ljava/lang/String;", "getUrl", "()Ljava/lang/String;", "url", "Landroid/graphics/drawable/Drawable;", "d", "Landroid/graphics/drawable/Drawable;", "getDrawable", "()Landroid/graphics/drawable/Drawable;", "drawable", MethodDecl.initName, "(IILjava/lang/String;Landroid/graphics/drawable/Drawable;)V", "Builder", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
public final class MediatedNativeAdImage {

    private final int width;

    private final int height;

    private final String url;

    private final Drawable drawable;

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0014\u001a\u00020\u000f¢\u0006\u0004\b\u0015\u0010\u0016J\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\n\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\n\u0010\bJ\u0017\u0010\r\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\r\u0010\u000eR\u0017\u0010\u0014\u001a\u00020\u000f8\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, d2 = {"Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdImage$Builder;", "", "Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdImage;", "build", "()Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdImage;", "", "width", "setWidth", "(I)Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdImage$Builder;", "height", "setHeight", "Landroid/graphics/drawable/Drawable;", "drawable", "setDrawable", "(Landroid/graphics/drawable/Drawable;)Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdImage$Builder;", "", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "Ljava/lang/String;", "getUrl", "()Ljava/lang/String;", "url", MethodDecl.initName, "(Ljava/lang/String;)V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
    public static final class Builder {

        private final String url;
        private int b;
        private int c;
        private Drawable d;

        public Builder(String str) {
            y45.j(str, "url");
            this.url = str;
        }

        public final MediatedNativeAdImage build() {
            return new MediatedNativeAdImage(this.b, this.c, this.url, this.d, null);
        }

        public final String getUrl() {
            return this.url;
        }

        public final Builder setDrawable(Drawable drawable) {
            this.d = drawable;
            return this;
        }

        public final Builder setHeight(int height) {
            this.c = height;
            return this;
        }

        public final Builder setWidth(int width) {
            this.b = width;
            return this;
        }
    }

    public MediatedNativeAdImage(int i, int i2, String str, Drawable drawable, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, str, drawable);
    }

    public final Drawable getDrawable() {
        return this.drawable;
    }

    public final int getHeight() {
        return this.height;
    }

    public final String getUrl() {
        return this.url;
    }

    public final int getWidth() {
        return this.width;
    }

    private MediatedNativeAdImage(int i, int i2, String str, Drawable drawable) {
        this.width = i;
        this.height = i2;
        this.url = str;
        this.drawable = drawable;
    }
}
