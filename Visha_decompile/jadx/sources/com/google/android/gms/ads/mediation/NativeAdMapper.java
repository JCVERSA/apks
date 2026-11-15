package com.google.android.gms.ads.mediation;

import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import com.google.android.gms.ads.nativead.NativeAd;
import java.util.List;
import java.util.Map;

public abstract class NativeAdMapper {
    public String a;
    public List b;
    public String c;
    public NativeAd.Image d;
    public String e;
    public String f;
    public Double g;
    public String h;
    public String i;
    public boolean j;
    public View k;
    public View l;
    public Bundle m = new Bundle();
    public boolean n;
    public boolean o;
    public float p;

    @NonNull
    public View getAdChoicesContent() {
        return this.k;
    }

    @NonNull
    public final String getAdvertiser() {
        return this.f;
    }

    @NonNull
    public final String getBody() {
        return this.c;
    }

    @NonNull
    public final String getCallToAction() {
        return this.e;
    }

    public float getCurrentTime() {
        return 0.0f;
    }

    public float getDuration() {
        return 0.0f;
    }

    @NonNull
    public final Bundle getExtras() {
        return this.m;
    }

    @NonNull
    public final String getHeadline() {
        return this.a;
    }

    @NonNull
    public final NativeAd.Image getIcon() {
        return this.d;
    }

    @NonNull
    public final List<NativeAd.Image> getImages() {
        return this.b;
    }

    public float getMediaContentAspectRatio() {
        return this.p;
    }

    public final boolean getOverrideClickHandling() {
        return this.o;
    }

    public final boolean getOverrideImpressionRecording() {
        return this.n;
    }

    @NonNull
    public final String getPrice() {
        return this.i;
    }

    @NonNull
    public final Double getStarRating() {
        return this.g;
    }

    @NonNull
    public final String getStore() {
        return this.h;
    }

    public void handleClick(@NonNull View view) {
    }

    public boolean hasVideoContent() {
        return this.j;
    }

    public void recordImpression() {
    }

    public void setAdChoicesContent(@NonNull View view) {
        this.k = view;
    }

    public final void setAdvertiser(@NonNull String str) {
        this.f = str;
    }

    public final void setBody(@NonNull String str) {
        this.c = str;
    }

    public final void setCallToAction(@NonNull String str) {
        this.e = str;
    }

    public final void setExtras(@NonNull Bundle bundle) {
        this.m = bundle;
    }

    public void setHasVideoContent(boolean z) {
        this.j = z;
    }

    public final void setHeadline(@NonNull String str) {
        this.a = str;
    }

    public final void setIcon(@NonNull NativeAd.Image image) {
        this.d = image;
    }

    public final void setImages(@NonNull List<NativeAd.Image> list) {
        this.b = list;
    }

    public void setMediaContentAspectRatio(float f) {
        this.p = f;
    }

    public void setMediaView(@NonNull View view) {
        this.l = view;
    }

    public final void setOverrideClickHandling(boolean z) {
        this.o = z;
    }

    public final void setOverrideImpressionRecording(boolean z) {
        this.n = z;
    }

    public final void setPrice(@NonNull String str) {
        this.i = str;
    }

    public final void setStarRating(@NonNull Double d) {
        this.g = d;
    }

    public final void setStore(@NonNull String str) {
        this.h = str;
    }

    public void trackViews(@NonNull View view, @NonNull Map<String, View> map, @NonNull Map<String, View> map2) {
    }

    public void untrackView(@NonNull View view) {
    }

    @NonNull
    public final View zza() {
        return this.l;
    }
}
