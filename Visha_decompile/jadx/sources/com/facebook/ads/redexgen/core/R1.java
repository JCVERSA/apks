package com.facebook.ads.redexgen.core;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.Log;
import android.view.MotionEvent;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.ads.internal.api.AudienceNetworkActivityApi;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Arrays;

public final class R1 implements AudienceNetworkActivityApi {
    public static byte[] A03;
    public static String[] A04 = {"npa5fyfDyBgpHwGfwNiqfHEj4F8LEiZf", "OqeETugh9", "5goSJATWOcVItDjddk", "82BqGjCZsQ5KSOXOW0A0KlOfyUV9N54d", "DC8qTi6RH4AT7G9O", "9IwTeKuU2aT5NbzWtfQwCWqg5E0PczVH", "CnGxzoUQk", "OIUpXP34AuomSZv"};
    public boolean A00;
    public final AudienceNetworkActivityApi A01;
    public final R0 A02;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 41);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        byte[] bArr = {101, 97, 98, 86, 71, 74, 70, 77, 64, 70, 109, 70, 87, 84, 76, 81, 72, 19, 40, 35, 62, 54, 35, 37, 50, 35, 34, 102, 35, 62, 37, 35, 54, 50, 47, 41, 40, 104, 60, 51, 2, 60, 62, 41, 52, 43, 52, 41, 36};
        if (A04[2].length() == 12) {
            throw new RuntimeException();
        }
        String[] strArr = A04;
        strArr[3] = "H3o2ukg7PoWSfztBPt1oK5BMl3p36c0G";
        strArr[0] = "tZaZcqIYCt5A5bsZPeypVNujsThHJ9sw";
        A03 = bArr;
    }

    static {
        A01();
    }

    public R1(AudienceNetworkActivity audienceNetworkActivity, AudienceNetworkActivityApi audienceNetworkActivityApi, R0 r0) {
        this.A01 = audienceNetworkActivityApi;
        this.A02 = r0;
    }

    private void A02(Throwable th) {
        this.A00 = true;
        this.A02.A09();
        finish(8);
        SQ logContext = this.A02.A06();
        if (logContext != null) {
            logContext.A08().AAy(A00(38, 11, 116), AbstractC1248Sv.A0C, new C1249Sw(th));
            return;
        }
        Log.e(A00(0, 17, 10), A00(17, 21, 111), th);
    }

    @Override
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        try {
            if (this.A00) {
                this.A01.dump(str, fileDescriptor, printWriter, strArr);
            } else {
                this.A02.dump(str, fileDescriptor, printWriter, strArr);
            }
        } catch (Throwable t) {
            A02(t);
        }
    }

    @Override
    public final void finish(int i) {
        this.A02.finish(i);
    }

    @Override
    public final void onActivityResult(int i, int i2, Intent intent) {
        try {
            if (this.A00) {
                this.A01.onActivityResult(i, i2, intent);
            } else {
                this.A02.onActivityResult(i, i2, intent);
                this.A01.onActivityResult(i, i2, intent);
            }
        } catch (Throwable t) {
            A02(t);
        }
    }

    @Override
    public final void onBackPressed() {
        try {
            if (this.A00) {
                return;
            }
            this.A02.onBackPressed();
        } catch (Throwable th) {
            if (A04[5].charAt(6) == 'I') {
                throw new RuntimeException();
            }
            String[] strArr = A04;
            strArr[7] = "nPADpKrXuoueUGX";
            strArr[4] = "T13akIzntQNSUZag";
            A02(th);
        }
    }

    @Override
    public final void onConfigurationChanged(Configuration configuration) {
        try {
            if (this.A00) {
                this.A01.onConfigurationChanged(configuration);
                return;
            }
            this.A02.onConfigurationChanged(configuration);
            this.A01.onConfigurationChanged(configuration);
            String[] strArr = A04;
            if (strArr[1].length() != strArr[6].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A04;
            strArr2[7] = "Q1wJ3SQKEGYG95X";
            strArr2[4] = "AvO5pGxADzIyCHUj";
        } catch (Throwable t) {
            A02(t);
        }
    }

    @Override
    public final void onCreate(Bundle bundle) {
        this.A01.onCreate(bundle);
        try {
            this.A02.onCreate(bundle);
        } catch (Throwable t) {
            A02(t);
        }
    }

    @Override
    public final void onDestroy() {
        try {
            if (this.A00) {
                this.A01.onDestroy();
            } else {
                this.A02.onDestroy();
                this.A01.onDestroy();
            }
        } catch (Throwable th) {
            if (A04[2].length() == 12) {
                throw new RuntimeException();
            }
            A04[2] = "3CPJLXRae2337PFMI";
            A02(th);
        }
    }

    @Override
    public final void onPause() {
        try {
            if (this.A00) {
                this.A01.onPause();
            } else {
                this.A02.onPause();
                this.A01.onPause();
            }
        } catch (Throwable t) {
            A02(t);
        }
    }

    @Override
    public final void onResume() {
        this.A01.onResume();
        try {
            if (this.A00) {
                return;
            }
            this.A02.onResume();
        } catch (Throwable t) {
            A02(t);
        }
    }

    @Override
    public final void onSaveInstanceState(Bundle bundle) {
        this.A01.onSaveInstanceState(bundle);
        try {
            if (this.A00) {
                return;
            }
            this.A02.onSaveInstanceState(bundle);
        } catch (Throwable t) {
            A02(t);
        }
    }

    @Override
    public final void onStart() {
        this.A01.onStart();
        try {
            if (this.A00) {
                return;
            }
            this.A02.onStart();
        } catch (Throwable t) {
            A02(t);
        }
    }

    @Override
    public final void onStop() {
        this.A01.onStop();
        try {
            if (this.A00) {
                return;
            }
            this.A02.onStop();
        } catch (Throwable t) {
            A02(t);
        }
    }

    @Override
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        try {
            if (this.A00) {
                return this.A01.onTouchEvent(motionEvent);
            }
            this.A02.onTouchEvent(motionEvent);
            return this.A01.onTouchEvent(motionEvent);
        } catch (Throwable t) {
            A02(t);
        }
    }
}
