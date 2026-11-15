package com.google.android.gms.ads;

import androidx.annotation.NonNull;
import com.google.android.gms.ads.internal.client.zzfw;

public final class VideoOptions {
    public final boolean a;
    public final boolean b;
    public final boolean c;

    public static final class Builder {
        public boolean a = true;
        public boolean b = false;
        public boolean c = false;

        @NonNull
        public VideoOptions build() {
            return new VideoOptions(this, null);
        }

        @NonNull
        public Builder setClickToExpandRequested(boolean z) {
            this.c = z;
            return this;
        }

        @NonNull
        public Builder setCustomControlsRequested(boolean z) {
            this.b = z;
            return this;
        }

        @NonNull
        public Builder setStartMuted(boolean z) {
            this.a = z;
            return this;
        }
    }

    public VideoOptions(Builder builder, zzj zzjVar) {
        this.a = builder.a;
        this.b = builder.b;
        this.c = builder.c;
    }

    public boolean getClickToExpandRequested() {
        return this.c;
    }

    public boolean getCustomControlsRequested() {
        return this.b;
    }

    public boolean getStartMuted() {
        return this.a;
    }

    public VideoOptions(zzfw zzfwVar) {
        this.a = zzfwVar.zza;
        this.b = zzfwVar.zzb;
        this.c = zzfwVar.zzc;
    }
}
