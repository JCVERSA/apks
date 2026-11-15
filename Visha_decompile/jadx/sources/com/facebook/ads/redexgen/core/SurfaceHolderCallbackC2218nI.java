package com.facebook.ads.redexgen.core;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.TextureView;
import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.Iterator;
import java.util.List;

public final class SurfaceHolderCallbackC2218nI implements InterfaceC0908Fo, C8D, InterfaceC0858Dq, B3, SurfaceHolder.Callback, TextureView.SurfaceTextureListener {
    public static String[] A01 = {"mdkndyL3N", "34XFwDl9WvKoMHQUixXhMeiNQCyC6vNP", "5uafIaN5", "lxzaK8fg5Pf0nzPouXyzPKk1aT8cB3T1", "DTIJ", "0UAV", "B5vkeIjqEzHsmqRbylQSobdgrKqNmXUo", "pkzfV8UoB1KOSL3E8gfET47OMeTC19My"};
    public final C9V A00;

    @Override
    public final void ACT(C2312or c2312or, C06595j c06595j) {
    }

    @Override
    public final void ACU(long j) {
    }

    @Override
    public final void ACV(Exception exc) {
    }

    @Override
    public final void ACr(int i, long j) {
    }

    @Override
    public final void AFF(boolean z) {
    }

    @Override
    public final void AFl(C2312or c2312or, C06595j c06595j) {
    }

    public SurfaceHolderCallbackC2218nI(C9V c9v) {
        this.A00 = c9v;
    }

    @Override
    public final void ACP(String str, long j, long j2) {
        Iterator it = this.A00.A0H.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            if (A01[1].charAt(3) != 'F') {
                throw new RuntimeException();
            }
            A01[3] = "1hpUDXdDopjYnxDN8fIPsNGSxN8OzRvU";
            if (zHasNext) {
                ((C8D) it.next()).ACP(str, j, j2);
            } else {
                return;
            }
        }
    }

    @Override
    public final void ACQ(C06565g c06565g) {
        Iterator it = this.A00.A0H.iterator();
        while (it.hasNext()) {
            ((C8D) it.next()).ACQ(c06565g);
        }
        this.A00.A07 = null;
        this.A00.A09 = null;
        this.A00.A01 = 0;
    }

    @Override
    public final void ACR(C06565g c06565g) {
        this.A00.A09 = c06565g;
        Iterator it = this.A00.A0H.iterator();
        while (it.hasNext()) {
            ((C8D) it.next()).ACR(c06565g);
        }
    }

    @Override
    public final void ACS(C2312or c2312or) {
        this.A00.A07 = c2312or;
        Iterator it = this.A00.A0H.iterator();
        while (it.hasNext()) {
            ((C8D) it.next()).ACS(c2312or);
        }
    }

    @Override
    public final void ACY(int i, long j, long j2) {
        Iterator it = this.A00.A0H.iterator();
        while (it.hasNext()) {
            ((C8D) it.next()).ACY(i, j, j2);
        }
    }

    @Override
    @MetaExoPlayerCustomization(type = {"TEMPORARY"}, value = "Required until we deprecate and move ComponentListener to ExoPlayerImpl.")
    public final void ACv(C2261o0 c2261o0) {
        Iterator it = this.A00.A0I.iterator();
        while (it.hasNext()) {
            ((InterfaceC05902s) it.next()).ACv(c2261o0);
        }
    }

    @Override
    @MetaExoPlayerCustomization(type = {"TEMPORARY"}, value = "Required until we deprecate and move ComponentListener to ExoPlayerImpl.")
    public final void ACw(List<C2263o2> list) {
        Iterator it = this.A00.A0I.iterator();
        while (it.hasNext()) {
            ((InterfaceC05902s) it.next()).ACw(list);
        }
    }

    @Override
    public final void AD7(int i, long j) {
        Iterator it = this.A00.A0K.iterator();
        while (it.hasNext()) {
            ((InterfaceC0908Fo) it.next()).AD7(i, j);
        }
    }

    @Override
    public final void AEE(Metadata metadata, long j) {
        Iterator it = this.A00.A0J.iterator();
        while (it.hasNext()) {
            ((B3) it.next()).AEE(metadata, j);
        }
    }

    @Override
    public final void AEx(Object obj, long j) {
        if (this.A00.A03 == obj) {
            Iterator it = this.A00.A0L.iterator();
            while (it.hasNext()) {
                it.next();
            }
        }
        Iterator it2 = this.A00.A0K.iterator();
        while (it2.hasNext()) {
            ((InterfaceC0908Fo) it2.next()).AEx(obj, j);
        }
    }

    @Override
    public final void AFd(String str, long j, long j2) {
        Iterator it = this.A00.A0K.iterator();
        while (it.hasNext()) {
            ((InterfaceC0908Fo) it.next()).AFd(str, j, j2);
        }
    }

    @Override
    public final void AFe(C06565g c06565g) {
        Iterator it = this.A00.A0K.iterator();
        while (it.hasNext()) {
            ((InterfaceC0908Fo) it.next()).AFe(c06565g);
        }
        this.A00.A08 = null;
        this.A00.A0A = null;
    }

    @Override
    public final void AFf(C06565g c06565g) {
        this.A00.A0A = c06565g;
        Iterator it = this.A00.A0K.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            if (A01[0].length() != 9) {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[7] = "MKCckBbCZrSSu6G06Z7NkbaNocq2WvpN";
            strArr[6] = "V8qjKHPFdvtphjyj0wrcUTYdTARdRgua";
            if (zHasNext) {
                ((InterfaceC0908Fo) it.next()).AFf(c06565g);
            } else {
                return;
            }
        }
    }

    @Override
    public final void AFk(C2312or c2312or) {
        this.A00.A08 = c2312or;
        Iterator it = this.A00.A0K.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            if (A01[1].charAt(3) != 'F') {
                throw new RuntimeException();
            }
            A01[3] = "2z1T7IcDfmpzuxqypnwVKmOXmU8bKGPo";
            if (zHasNext) {
                ((InterfaceC0908Fo) it.next()).AFk(c2312or);
            } else {
                return;
            }
        }
    }

    @Override
    public final void AFr(C2265o4 c2265o4) {
        Iterator it = this.A00.A0L.iterator();
        while (it.hasNext()) {
            ((InterfaceC06334j) it.next()).AFq(c2265o4.A03, c2265o4.A01, c2265o4.A02, c2265o4.A00);
        }
        for (InterfaceC0908Fo interfaceC0908Fo : this.A00.A0K) {
            String[] strArr = A01;
            if (strArr[4].length() != strArr[5].length()) {
                throw new RuntimeException();
            }
            A01[1] = "q7eFcMKXm9CoB0iVpo1HKrbod3G9GfaY";
            interfaceC0908Fo.AFr(c2265o4);
        }
    }

    @Override
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        this.A00.A0F(new Surface(surfaceTexture), true);
    }

    @Override
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        this.A00.A0F(null, true);
        return true;
    }

    @Override
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    @Override
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override
    public final void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
    }

    @Override
    public final void surfaceCreated(SurfaceHolder surfaceHolder) {
        this.A00.A0F(surfaceHolder.getSurface(), false);
    }

    @Override
    public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.A00.A0F(null, false);
    }
}
