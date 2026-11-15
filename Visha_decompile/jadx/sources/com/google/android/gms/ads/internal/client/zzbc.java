package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.LoadAdError;

public class zzbc extends AdListener {
    public final Object b = new Object();
    public AdListener c;

    @Override
    public final void onAdClicked() {
        synchronized (this.b) {
            try {
                AdListener adListener = this.c;
                if (adListener != null) {
                    adListener.onAdClicked();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final void onAdClosed() {
        synchronized (this.b) {
            try {
                AdListener adListener = this.c;
                if (adListener != null) {
                    adListener.onAdClosed();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void onAdFailedToLoad(LoadAdError loadAdError) {
        synchronized (this.b) {
            try {
                AdListener adListener = this.c;
                if (adListener != null) {
                    adListener.onAdFailedToLoad(loadAdError);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final void onAdImpression() {
        synchronized (this.b) {
            try {
                AdListener adListener = this.c;
                if (adListener != null) {
                    adListener.onAdImpression();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void onAdLoaded() {
        synchronized (this.b) {
            try {
                AdListener adListener = this.c;
                if (adListener != null) {
                    adListener.onAdLoaded();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final void onAdOpened() {
        synchronized (this.b) {
            try {
                AdListener adListener = this.c;
                if (adListener != null) {
                    adListener.onAdOpened();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zza(AdListener adListener) {
        synchronized (this.b) {
            this.c = adListener;
        }
    }
}
