package com.facebook.ads.redexgen.core;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.common.util.TimestampAdjuster;
import com.facebook.ads.androidx.media3.common.Timeline;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomizations;
import com.hunantv.media.drm.IDrmSession;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import com.transsion.socket.pkgdata.SocketData;
import com.transsion.tranplayer.MediaPlayer;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import org.mozilla.classfile.ByteCode;

public final class C9W implements Handler.Callback, InterfaceC2161mN, EJ, CK, InterfaceC06635n, InterfaceC07016z {
    public static byte[] A0x;
    public static String[] A0y = {"EvYOBb0fNCsu7OcAaOZNwoEPwn2", "8jIqnMhTOhQ3fU", "vmW", "edZR1F4oYcKYyzs7tUfX3dHGMGqqrKBY", "TI8UsWNSVk9Jh7srInWeHwVEqkc209d4", "AVB8fiMNMM9Dy8Zuh880FwllBoFt5PF1", "1mkHXRje2n0Pvvw2j", "LF2w13BN71krhrKRtprOb2x3jYcy1FYO"};
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public long A04;
    public long A06;
    public AnonymousClass67 A07;
    public C6B A08;
    public C06996x A0A;

    @MetaExoPlayerCustomization("D18870411: Adding start stall debug reason")
    public InterfaceC2222nM A0B;
    public C7I A0C;
    public CL A0D;
    public boolean A0G;
    public boolean A0H;
    public boolean A0I;
    public boolean A0K;
    public boolean A0M;
    public boolean A0N;
    public boolean A0O;
    public boolean A0P;
    public boolean A0Q;
    public boolean A0R;
    public boolean A0S;
    public boolean A0T;
    public boolean A0U;
    public boolean A0V;
    public InterfaceC2222nM[] A0W;
    public final long A0Y;
    public final long A0Z;
    public final Handler A0a;
    public final HandlerThread A0b;
    public final C2283oN A0c;
    public final C2281oL A0d;
    public final C3T A0e;
    public final InterfaceC06193v A0f;
    public final C2230nU A0g;
    public final C6A A0h;
    public final C6S A0i;
    public final C2216nG A0k;
    public final EK A0l;
    public final EL A0m;
    public final EU A0n;
    public final AnonymousClass91 A0o;
    public final ArrayList<AnonymousClass69> A0p;
    public final boolean A0q;
    public final boolean A0r;
    public final boolean A0s;
    public final boolean A0t;
    public final boolean A0u;
    public final InterfaceC2222nM[] A0v;
    public final C7D[] A0w;
    public long A05 = C.TIME_UNSET;

    @MetaExoPlayerCustomization("D18870411: Adding start stall debug reason")
    public EnumC1888hX A0E = EnumC1888hX.A09;

    @MetaExoPlayerCustomization("D63737392: Added for negative testing")
    public boolean A0J = false;

    @MetaExoPlayerCustomization("D63737392: Added for negative testing")
    public C06966u A09 = null;

    @MetaExoPlayerCustomization("D63737392: Added for negative testing")
    public boolean A0L = false;

    @MetaExoPlayerCustomization("D71523094: Added for negative testing")
    public Integer A0F = null;
    public final C06786c A0j = new C06786c();

    @MetaExoPlayerCustomization
    public final int A0X = A00();

    public static String A0D(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0x, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            byte b = bArrCopyOfRange[i4];
            if (A0y[1].length() == 31) {
                throw new RuntimeException();
            }
            String[] strArr = A0y;
            strArr[2] = "wOV";
            strArr[6] = "lGv9KfQpa0xBFnWlu";
            bArrCopyOfRange[i4] = (byte) ((b - i3) - 57);
        }
        return new String(bArrCopyOfRange);
    }

    /* JADX WARN: Code duplicated, block: B:136:0x02c8  */
    /* JADX WARN: Code duplicated, block: B:138:0x02ea  */
    /* JADX WARN: Code duplicated, block: B:140:0x02f7  */
    /* JADX WARN: Code duplicated, block: B:142:0x030f  */
    /* JADX WARN: Code duplicated, block: B:145:0x031b  */
    /* JADX WARN: Code duplicated, block: B:150:0x032a  */
    /* JADX WARN: Code duplicated, block: B:170:0x0380  */
    /* JADX WARN: Code duplicated, block: B:178:0x0396  */
    /* JADX WARN: Code duplicated, block: B:180:0x039c  */
    /* JADX WARN: Code duplicated, block: B:182:0x03a1  */
    /* JADX WARN: Code duplicated, block: B:185:0x03a9 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:228:0x020b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:231:0x043a A[EDGE_INSN: B:231:0x043a->B:216:0x043a BREAK  A[LOOP:0: B:10:0x0060->B:67:0x0190], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:233:0x0211 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:241:0x03df A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:242:0x03df A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:247:0x02f4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:248:0x02f4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:249:0x02f4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:24:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:26:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:28:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:30:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:33:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:47:0x0121  */
    /* JADX WARN: Code duplicated, block: B:49:0x0125  */
    /* JADX WARN: Code duplicated, block: B:63:0x0184  */
    /* JADX WARN: Code duplicated, block: B:68:0x0194  */
    /* JADX WARN: Code duplicated, block: B:73:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:74:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:82:0x01de  */
    /* JADX WARN: Code duplicated, block: B:84:0x01f1  */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x03ab, code lost:
    
        r24.A0R = r24.A0P;
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x03bb, code lost:
    
        if (com.facebook.ads.redexgen.core.C9W.A0y[5].charAt(1) == 'q') goto L220;
     */
    /* JADX WARN: Code restructure failed: missing block: B:188:0x03bd, code lost:
    
        r2 = com.facebook.ads.redexgen.core.C9W.A0y;
        r2[4] = "Uyz0TdICBPSSMiRUHh3H6S4m2yqjGOAg";
        r2[3] = "3B1Lhsj2yRloVQBWBzqqqLZ9kauiXzuH";
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x03cb, code lost:
    
        if (r24.A0B == null) goto L193;
     */
    /* JADX WARN: Code restructure failed: missing block: B:191:0x03d4, code lost:
    
        if (r24.A0B.A9F() != 1) goto L193;
     */
    /* JADX WARN: Code restructure failed: missing block: B:192:0x03d6, code lost:
    
        r8 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:193:0x03d7, code lost:
    
        A0W(2, r8);
        A0O();
     */
    /* JADX WARN: Code restructure failed: missing block: B:221:0x044b, code lost:
    
        throw new java.lang.RuntimeException();
     */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 25 out of bounds for length 25
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:125)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    @MetaExoPlayerCustomization("D18870411: Adding start stall debug reason")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void A0F() throws IOException, C9Y {
        long jCurrentTimeMillis;
        long j;
        boolean z;
        boolean zA9h;
        long jA01;
        long jAJt = this.A0e.AJt();
        A0P();
        if (!this.A0j.A0N()) {
            A0I();
            A0a(jAJt, 10L);
            return;
        }
        C6Y c6yA0F = this.A0j.A0F();
        C6Y c6yA0G = this.A0j.A0G();
        C4S.A02(A0D(TranSceneConfig.SCENE_TYPE_GAME_HOK_KILL_2, 10, 65));
        A0Q();
        long jElapsedRealtime = SystemClock.elapsedRealtime() * 1000;
        c6yA0F.A07.A5s(this.A0A.A0C - this.A0Y, this.A0r);
        boolean z2 = false;
        boolean zAAG = true;
        boolean z3 = true;
        boolean z4 = this.A0W.length > 1;
        InterfaceC2222nM[] interfaceC2222nMArr = this.A0W;
        int length = interfaceC2222nMArr.length;
        int i = 0;
        while (true) {
            String strA0D = A0D(TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_EYES, 35, 31);
            String strA0D2 = A0D(0, 21, 22);
            if (i >= length) {
                if (!z3) {
                    A0I();
                }
                if (this.A0Q && z4 && !zAAG) {
                    for (InterfaceC2222nM interfaceC2222nM : this.A0W) {
                        if (interfaceC2222nM instanceof C05470z) {
                            interfaceC2222nM.AHn(TimestampAdjuster.MODE_SHARED, TimestampAdjuster.MODE_SHARED);
                            zAAG = interfaceC2222nM.AAG();
                        }
                    }
                }
                long j2 = c6yA0F.A00.A00;
                boolean z5 = false;
                if (zAAG && (j2 == C.TIME_UNSET || j2 <= this.A0A.A0C)) {
                    C6Z c6z = c6yA0F.A00;
                    String[] strArr = A0y;
                    if (strArr[2].length() == strArr[6].length()) {
                        throw new RuntimeException();
                    }
                    String[] strArr2 = A0y;
                    strArr2[2] = "uQd";
                    strArr2[6] = "zdLpoimG1uHaXVEOP";
                    if (c6z.A05) {
                        A0V(4);
                        A0O();
                    } else if (this.A0A.A00 != 2) {
                        if (this.A0A.A00 == 3) {
                            if (this.A0W.length == 0) {
                            }
                        }
                    } else if (this.A0A.A00 == 3) {
                        if (this.A0W.length == 0) {
                        }
                    }
                } else if (this.A0A.A00 != 2 && A19(z3)) {
                    if (this.A0J && !this.A0L) {
                        this.A0L = true;
                        this.A0F = A0B();
                        if (this.A0F != null && this.A0F.intValue() > 0) {
                            A0a(jAJt, this.A0F.intValue());
                            return;
                        }
                    }
                    if (this.A0B != null) {
                        int iA9F = this.A0B.A9F();
                        if (A0y[5].charAt(1) != 'q') {
                            A0y[1] = "FUTTGuZgInj0HgAB4TKGqFNOnZ8TLHiw";
                            if (iA9F == 1) {
                                z5 = true;
                            }
                        } else if (iA9F == 1) {
                            z5 = true;
                        }
                    }
                    A0t(this.A0E, z5);
                    if (this.A0P) {
                        A0N();
                    }
                    this.A0B = null;
                } else if (this.A0A.A00 == 3) {
                    if (this.A0W.length == 0) {
                    }
                }
                if (this.A0A.A00 == 2) {
                    for (InterfaceC2222nM interfaceC2222nM2 : this.A0W) {
                        z2 = true;
                        try {
                            interfaceC2222nM2.ABv();
                        } catch (C2238nc e) {
                            if (!e.getClass().equals(C2238nc.class)) {
                                throw e;
                            }
                            boolean z6 = this.A0N;
                            if (A0y[1].length() != 31) {
                                A0y[0] = "ROTBjRrt9pmtd4l9PrsJpq4cigEOLmNk";
                                if (!z6) {
                                    throw e;
                                }
                                if (this.A05 == C.TIME_UNSET) {
                                    Log.w(strA0D2, strA0D + e.getMessage());
                                    this.A05 = System.currentTimeMillis();
                                    if (this.A0q) {
                                        this.A0a.obtainMessage(4, e).sendToTarget();
                                    }
                                } else {
                                    jCurrentTimeMillis = System.currentTimeMillis() - this.A05;
                                    j = this.A0Z;
                                    if (A0y[5].charAt(1) != 'q') {
                                        A0y[1] = "nYRcp";
                                        if (jCurrentTimeMillis <= j) {
                                            throw e;
                                        }
                                    } else {
                                        A0y[0] = "0hUy";
                                        if (jCurrentTimeMillis <= j) {
                                            throw e;
                                        }
                                    }
                                }
                            } else {
                                if (!z6) {
                                    throw e;
                                }
                                if (this.A05 == C.TIME_UNSET) {
                                    Log.w(strA0D2, strA0D + e.getMessage());
                                    this.A05 = System.currentTimeMillis();
                                    if (this.A0q) {
                                        this.A0a.obtainMessage(4, e).sendToTarget();
                                    }
                                } else {
                                    jCurrentTimeMillis = System.currentTimeMillis() - this.A05;
                                    j = this.A0Z;
                                    if (A0y[5].charAt(1) != 'q') {
                                        A0y[1] = "nYRcp";
                                        if (jCurrentTimeMillis <= j) {
                                            throw e;
                                        }
                                    } else {
                                        A0y[0] = "0hUy";
                                        if (jCurrentTimeMillis <= j) {
                                            throw e;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                boolean z7 = this.A0P;
                String[] strArr3 = A0y;
                if (strArr3[4].charAt(1) == strArr3[3].charAt(1)) {
                    break;
                }
                A0y[0] = "CfnO3oWhmhBZYFdKQQ3";
                if ((z7 && this.A0A.A00 == 3) || this.A0A.A00 == 2) {
                    A0a(jAJt, this.A0X);
                } else if (this.A0W.length == 0 || this.A0A.A00 == 4) {
                    this.A0f.AHj(2);
                } else {
                    A0a(jAJt, 1000L);
                }
                if (!z2) {
                    this.A05 = C.TIME_UNSET;
                }
                C4S.A00();
                return;
            }
            InterfaceC2222nM interfaceC2222nM3 = interfaceC2222nMArr[i];
            interfaceC2222nM3.AHn(this.A06, jElapsedRealtime);
            if (c6yA0G.A00.A05) {
                boolean z8 = this.A0O;
                if (A0y[0].length() == 16) {
                    break;
                }
                String[] strArr4 = A0y;
                strArr4[4] = "S4Fyq0ZfVTRLxRTM4wwKz81RK4qT5SRq";
                strArr4[3] = "dt9NVxX1YAgTPnpY37Axx0Ou68rzEGgN";
                if (!z8) {
                    if (A0y[5].charAt(1) != 'q') {
                        String[] strArr5 = A0y;
                        strArr5[4] = "usLdHWXdVdc1eYm8Xo8iItMQczfdPoTF";
                        strArr5[3] = "jdYe6RXL6unoORbHA5yicze0YAqR3j0n";
                        if (this.A0H) {
                            zA9h = interfaceC2222nM3.A9h();
                            if (A0y[7].charAt(12) != '2') {
                                throw new RuntimeException();
                            }
                            A0y[5] = "gun24np1Fz9ULZxkMCl3omnFVmny067U";
                            if (zA9h) {
                            }
                        }
                    } else if (this.A0H) {
                        zA9h = interfaceC2222nM3.A9h();
                        if (A0y[7].charAt(12) != '2') {
                            throw new RuntimeException();
                        }
                        A0y[5] = "gun24np1Fz9ULZxkMCl3omnFVmny067U";
                        if (zA9h) {
                        }
                    }
                    interfaceC2222nM3.AId();
                } else if (interfaceC2222nM3.A9h()) {
                    interfaceC2222nM3.AId();
                } else {
                    boolean z9 = this.A0H;
                    if (A0y[0].length() != 16) {
                        A0y[5] = "eiShONRNAduVJjGMnbACFBBBapCf3AHm";
                        if (!z9) {
                            if (this.A0A.A0C != -1) {
                                jA01 = AbstractC05701w.A01(this.A0A.A0C - this.A0A.A02);
                                if (A0y[7].charAt(12) != '2') {
                                    throw new RuntimeException();
                                }
                                A0y[5] = "BlhxJ9uFvDlxNeph5MIqggmIWIv4QApO";
                                if (jA01 > 1000) {
                                    interfaceC2222nM3.AId();
                                }
                            }
                        }
                    } else {
                        String[] strArr6 = A0y;
                        strArr6[4] = "JgPz5rm3gJhJD0DUOH89UMmPp4ssm19B";
                        strArr6[3] = "EHDY1dQAFQsMAYBzgGAEpHtmXIGNI89a";
                        if (!z9) {
                            if (this.A0A.A0C != -1) {
                                jA01 = AbstractC05701w.A01(this.A0A.A0C - this.A0A.A02);
                                if (A0y[7].charAt(12) != '2') {
                                    throw new RuntimeException();
                                }
                                A0y[5] = "BlhxJ9uFvDlxNeph5MIqggmIWIv4QApO";
                                if (jA01 > 1000) {
                                    interfaceC2222nM3.AId();
                                }
                            }
                        }
                    }
                }
                if (!(interfaceC2222nM3 instanceof C05470z)) {
                    if (z4 || !interfaceC2222nM3.AAG()) {
                        z4 = false;
                    } else {
                        z4 = true;
                    }
                }
                if (zAAG || !interfaceC2222nM3.AAG()) {
                    zAAG = false;
                } else {
                    zAAG = true;
                }
                if (!interfaceC2222nM3.AAV() || interfaceC2222nM3.AAG() || A17(interfaceC2222nM3)) {
                    z = true;
                } else {
                    z = false;
                }
                if (!z) {
                    z2 = true;
                    try {
                        interfaceC2222nM3.ABv();
                    } catch (C2238nc e2) {
                        if (!e2.getClass().equals(C2238nc.class)) {
                            throw e2;
                        }
                        if (!this.A0N) {
                            throw e2;
                        }
                        if (this.A05 == C.TIME_UNSET) {
                            Log.w(strA0D2, strA0D + e2.getMessage());
                            this.A05 = System.currentTimeMillis();
                            if (this.A0q) {
                                this.A0a.obtainMessage(4, e2).sendToTarget();
                            }
                        } else if (System.currentTimeMillis() - this.A05 > this.A0Z) {
                            throw e2;
                        }
                    }
                    this.A0B = interfaceC2222nM3;
                    if (A0y[7].charAt(12) != '2') {
                        break;
                    } else {
                        A0y[5] = "qlbqZn2WmIl9Oup3QtCZToOsAISM7SD4";
                    }
                }
                if (z3 || !z) {
                    z3 = false;
                } else {
                    z3 = true;
                }
                i++;
            } else {
                if (!(interfaceC2222nM3 instanceof C05470z)) {
                    if (z4) {
                        z4 = false;
                    } else {
                        z4 = false;
                    }
                }
                if (zAAG) {
                    zAAG = false;
                } else {
                    zAAG = false;
                }
                if (interfaceC2222nM3.AAV()) {
                    z = true;
                } else {
                    z = true;
                }
                if (!z) {
                    z2 = true;
                    interfaceC2222nM3.ABv();
                    this.A0B = interfaceC2222nM3;
                    if (A0y[7].charAt(12) != '2') {
                        break;
                        break;
                    }
                    A0y[5] = "qlbqZn2WmIl9Oup3QtCZToOsAISM7SD4";
                }
                if (z3) {
                    z3 = false;
                } else {
                    z3 = false;
                }
                i++;
            }
        }
        throw new RuntimeException();
    }

    /* JADX WARN: Code duplicated, block: B:102:0x021b  */
    /* JADX WARN: Code duplicated, block: B:124:0x0223 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:87:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:89:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:92:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:98:0x020f  */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 22 out of bounds for length 22
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:147)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    private void A0P() throws IOException, C9Y {
        boolean zA00;
        boolean z;
        if (this.A0D == null) {
            return;
        }
        if (this.A02 > 0) {
            this.A0D.ABu();
            return;
        }
        A0J();
        C6Y c6yA0E = this.A0j.A0E();
        if (c6yA0E != null && !c6yA0E.A0R()) {
            boolean z2 = this.A0A.A0A;
            if (A0y[1].length() != 31) {
                A0y[5] = "JakbFE5sCqyiHPWhcmq5QKrahWaBlD8R";
                if (!z2) {
                    A0w(false);
                }
            }
            throw new RuntimeException();
        }
        A0y(false);
        if (this.A0j.A0N()) {
            C6Y c6yA0F = this.A0j.A0F();
            C6Y c6yA0G = this.A0j.A0G();
            boolean z3 = false;
            while (this.A0P && c6yA0F != c6yA0G && this.A06 >= c6yA0F.A0I().A0H(this.A0K)) {
                if (z3) {
                    A0H();
                }
                int i = c6yA0F.A00.A07 ? 0 : 3;
                C6Y c6y = c6yA0F;
                c6yA0F = this.A0j.A0B();
                A0g(c6y);
                C06996x c06996x = this.A0A;
                C2159mL c2159mL = c6yA0F.A00.A04;
                long j = c6yA0F.A00.A03;
                if (A0y[7].charAt(12) == '2') {
                    throw new RuntimeException();
                }
                String[] strArr = A0y;
                strArr[4] = "OGZbExKcucXIKKZQBdHGOATJ9dYdrwhN";
                strArr[3] = "TJxPjvISq11gHqp4fguKhlEOGAavfVmH";
                this.A0A = c06996x.A06(c2159mL, j, c6yA0F.A00.A02, A01());
                this.A0h.A04(i);
                A0Q();
                z3 = true;
            }
            C6Z c6z = c6yA0G.A00;
            String[] strArr2 = A0y;
            if (strArr2[4].charAt(1) != strArr2[3].charAt(1)) {
                A0y[7] = "WHxPanRASNJPtq4bnE3dJm5Kco7OvEcN";
                if (c6z.A05) {
                    for (int i2 = 0; i2 < this.A0v.length; i2++) {
                        InterfaceC2222nM interfaceC2222nM = this.A0v[i2];
                        InterfaceC0833Cr interfaceC0833Cr = c6yA0G.A09[i2];
                        if (interfaceC0833Cr != null && interfaceC2222nM.A95() == interfaceC0833Cr && interfaceC2222nM.A9h()) {
                            interfaceC2222nM.AId();
                        }
                    }
                    return;
                }
                if (c6yA0G.A0I() == null) {
                    return;
                }
                C6Y c6yA0I = c6yA0G.A0I();
                String[] strArr3 = A0y;
                if (strArr3[4].charAt(1) != strArr3[3].charAt(1)) {
                    A0y[7] = "aMxVvZtAQBe9jxU0Z4NX1LXmsoJEfXr7";
                    if (c6yA0I.A02) {
                        for (int i3 = 0; i3 < this.A0v.length; i3++) {
                            InterfaceC2222nM interfaceC2222nM2 = this.A0v[i3];
                            InterfaceC0833Cr interfaceC0833Cr2 = c6yA0G.A09[i3];
                            if (interfaceC2222nM2.A95() != interfaceC0833Cr2) {
                                return;
                            }
                            if (interfaceC0833Cr2 != null && !interfaceC2222nM2.A9h()) {
                                return;
                            }
                        }
                        EL elA0K = c6yA0G.A0K();
                        C6Y c6yA0C = this.A0j.A0C();
                        EL elA0K2 = c6yA0C.A0K();
                        boolean z4 = c6yA0C.A07.AGg() != C.TIME_UNSET;
                        for (int i4 = 0; i4 < this.A0v.length; i4++) {
                            InterfaceC2222nM interfaceC2222nM3 = this.A0v[i4];
                            if (elA0K.A00(i4)) {
                                if (z4) {
                                    interfaceC2222nM3.AId();
                                } else {
                                    boolean zAAE = interfaceC2222nM3.AAE();
                                    if (A0y[0].length() != 16) {
                                        A0y[1] = "9mAYXkFxI0mZazBGslnkswropOC4T";
                                        if (zAAE) {
                                            continue;
                                        } else {
                                            InterfaceC2122lj interfaceC2122lj = elA0K2.A04[i4];
                                            zA00 = elA0K2.A00(i4);
                                            if (this.A0w[i4].A9F() == -2) {
                                                z = true;
                                            } else {
                                                z = false;
                                            }
                                            C7G c7g = elA0K.A03[i4];
                                            C7G c7g2 = elA0K2.A03[i4];
                                            if (A0y[1].length() != 31) {
                                                throw new RuntimeException();
                                            }
                                            A0y[1] = "R6UwS9N6ly40SGlMhcEQ765TyuQep";
                                            if (zA00 || !c7g2.equals(c7g) || z) {
                                                interfaceC2222nM3.AId();
                                            } else {
                                                C2312or[] c2312orArrA1A = A1A(interfaceC2122lj);
                                                Log.e(A0D(0, 21, 22), A0D(392, 13, 67));
                                                interfaceC2222nM3.AHq(c2312orArrA1A, c6yA0C.A09[i4], c6yA0C.A0H(this.A0K), c6yA0C.A0B());
                                            }
                                        }
                                    } else {
                                        A0y[0] = "RavyRccOc8FddTyMpAZEZ";
                                        if (zAAE) {
                                            continue;
                                        } else {
                                            InterfaceC2122lj interfaceC2122lj2 = elA0K2.A04[i4];
                                            zA00 = elA0K2.A00(i4);
                                            if (this.A0w[i4].A9F() == -2) {
                                                z = true;
                                            } else {
                                                z = false;
                                            }
                                            C7G c7g3 = elA0K.A03[i4];
                                            C7G c7g4 = elA0K2.A03[i4];
                                            if (A0y[1].length() != 31) {
                                                throw new RuntimeException();
                                            }
                                            A0y[1] = "R6UwS9N6ly40SGlMhcEQ765TyuQep";
                                            if (zA00) {
                                                interfaceC2222nM3.AId();
                                            } else {
                                                interfaceC2222nM3.AId();
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        return;
                    }
                    return;
                }
            }
            throw new RuntimeException();
        }
    }

    public static void A0R() {
        A0x = new byte[]{-108, -57, -66, -97, -69, -80, -56, -76, -63, -104, -68, -65, -69, -104, -67, -61, -76, -63, -67, -80, -69, -15, 36, 27, -4, 24, 13, 37, 17, 30, -11, 25, 28, 24, -11, 26, 32, 17, 30, 26, 13, 24, -26, -12, 13, 26, 16, 24, 17, 30, -87, -57, -50, -49, -46, -55, -50, -57, SocketData.CLAZZ_TYPE_END_SOCKET, -51, -59, -45, -45, -63, -57, -59, -45, SocketData.CLAZZ_TYPE_END_SOCKET, -45, -59, -50, -44, SocketData.CLAZZ_TYPE_END_SOCKET, -63, -58, -44, -59, -46, SocketData.CLAZZ_TYPE_END_SOCKET, -46, -59, -52, -59, -63, -45, -59, SocketData.CLAZZ_TYPE_FILE, -107, -70, -64, -79, -66, -70, -83, -72, 108, -66, -63, -70, -64, -75, -71, -79, 108, -79, -66, -66, -69, -66, 122, -54, -26, -37, -13, -36, -37, -35, -27, -102, -33, -20, -20, -23, -20, -88, SocketData.CLAZZ_TYPE_FILE, -86, -97, -73, -96, -97, -95, -87, SocketData.CLAZZ_TYPE_FILE, -83, -79, -89, -78, -89, -83, -84, SocketData.CLAZZ_TYPE_STRING, -79, 120, 94, 99, -94, 106, 94, -96, -77, -92, -92, -93, -80, -93, -94, SocketData.CLAZZ_TYPE_SEND_PACKAGE, -77, -80, -97, -78, -89, -83, -84, SocketData.CLAZZ_TYPE_STRING, -79, 120, 94, 99, -94, 106, 94, -84, -93, -74, -78, SocketData.CLAZZ_TYPE_FILE_BLOCK, -83, -97, -94, SocketData.CLAZZ_TYPE_FILE, -83, -79, -89, -78, -89, -83, -84, SocketData.CLAZZ_TYPE_STRING, -79, 120, 94, 99, -94, -76, -48, -42, -45, -60, -58, SocketData.CLAZZ_TYPE_HEART_BEAT, -58, -45, -45, -48, -45, SocketData.CLAZZ_TYPE_URI, -72, -39, -44, -43, -123, -53, -58, -50, -47, -54, -55, -109, -78, -97, -91, -84, -67, -59, -56, -57, -54, -71, -54, -63, -60, -47, 120, -63, -65, -58, -57, -54, -63, -58, -65, 120, -53, -52, -54, -67, -71, -59, 120, -67, -54, -54, -57, -54, -110, 120, -108, -78, -71, -87, -82, -89, 96, -76, -81, 96, -77, -91, -82, -92, 96, -83, -91, -77, -77, -95, -89, -91, 96, -81, -82, 96, -95, 96, -92, -91, -95, -92, 96, -76, -88, -78, -91, -95, -92, 110, 5, 30, 21, 40, 32, 21, 19, 36, 21, 20, -48, 21, 34, 34, 31, 34, -48, 20, 21, 28, 25, 38, 21, 34, 25, 30, 23, -48, 29, 21, 35, 35, 17, 23, 21, -48, 31, 30, -48, 21, 40, 36, 21, 34, 30, 17, 28, -48, 36, 24, 34, 21, 17, 20, -34, -34, -23, -51, -23, -25, -33, -47, -23, -20, -27, 37, 29, 28, 33, 25, 8, 29, 42, 33, 39, 28, 1, 28, -70, -81, -68, -77, -71, -82, -102, -71, -67, -77, -66, -77, -71, -72, -97, -67, -18, -31, -20, -24, -35, -33, -31, -49, -16, -18, -31, -35, -23};
    }

    /* JADX WARN: Code duplicated, block: B:84:0x021b A[PHI: r8
      0x021b: PHI (r8v4 com.facebook.ads.redexgen.X.mL) = (r8v2 com.facebook.ads.redexgen.X.mL), (r8v6 com.facebook.ads.redexgen.X.mL) binds: [B:93:0x024d, B:83:0x0219] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:86:0x022b  */
    /* JADX WARN: Code duplicated, block: B:88:0x0231  */
    /* JADX WARN: Code duplicated, block: B:91:0x0245  */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 18 out of bounds for length 16
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:125)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    private void A0e(AnonymousClass68 anonymousClass68) throws C9Y {
        C2159mL c2159mL;
        C2159mL c2159mLA0K;
        long j;
        if (anonymousClass68.A01 != this.A0D) {
            return;
        }
        Timeline timeline = this.A0A.A03;
        Timeline timeline2 = anonymousClass68.A00;
        this.A0A = this.A0A.A04(timeline2);
        A0M();
        if (this.A02 > 0) {
            this.A0h.A03(this.A02);
            this.A02 = 0;
            if (this.A08 != null) {
                Pair<Object, Long> pairA09 = A09(this.A08, true);
                this.A08 = null;
                if (pairA09 == null) {
                    A0G();
                    return;
                }
                Object obj = pairA09.first;
                long jLongValue = ((Long) pairA09.second).longValue();
                C2159mL c2159mLA0K2 = this.A0j.A0K(timeline2, obj, jLongValue);
                this.A0A = this.A0A.A06(c2159mLA0K2, c2159mLA0K2.A00() ? 0L : jLongValue, jLongValue, this.A0A.A0D);
                return;
            }
            if (A0y[1].length() == 31) {
                throw new RuntimeException();
            }
            String[] strArr = A0y;
            strArr[2] = "O4I";
            strArr[6] = "ahZa31gq0LeVPqA4e";
            if (0 != 0) {
                throw new NullPointerException(A0D(376, 16, 17));
            }
            if (this.A0A.A02 == C.TIME_UNSET) {
                if (timeline2.A0N()) {
                    A0G();
                    return;
                }
                Pair<Object, Long> pairA08 = A08(timeline2, timeline2.A0B(this.A0V), C.TIME_UNSET);
                Object obj2 = pairA08.first;
                long jLongValue2 = ((Long) pairA08.second).longValue();
                C2159mL c2159mLA0K3 = this.A0j.A0K(timeline2, obj2, jLongValue2);
                C06996x c06996x = this.A0A;
                String[] strArr2 = A0y;
                if (strArr2[2].length() == strArr2[6].length()) {
                    throw new RuntimeException();
                }
                A0y[0] = "JR6dPBbFHW2aBR0iQ91GP51A";
                this.A0A = c06996x.A06(c2159mLA0K3, c2159mLA0K3.A00() ? 0L : jLongValue2, jLongValue2, this.A0A.A0D);
                return;
            }
            return;
        }
        Object obj3 = this.A0A.A05.A04;
        long j2 = this.A0A.A01;
        if (timeline.A0N()) {
            if (timeline2.A0N()) {
                return;
            }
            C2159mL c2159mLA0K4 = this.A0j.A0K(timeline2, obj3, j2);
            this.A0A = this.A0A.A06(c2159mLA0K4, c2159mLA0K4.A00() ? 0L : j2, j2, this.A0A.A0D);
            return;
        }
        C6Y c6yA0D = this.A0j.A0D();
        Object obj4 = c6yA0D == null ? this.A0A.A05.A04 : c6yA0D.A08;
        int iA0A = timeline2.A0A(obj4);
        if (iA0A == -1) {
            Object objA0C = A0C(obj4, timeline, timeline2);
            if (objA0C == null) {
                A0G();
                return;
            }
            Pair<Object, Long> pairA010 = A08(timeline2, timeline2.A0J(objA0C, this.A0c).A00, C.TIME_UNSET);
            Object obj5 = pairA010.first;
            long jLongValue3 = ((Long) pairA010.second).longValue();
            C2159mL c2159mLA0K5 = this.A0j.A0K(timeline2, obj5, jLongValue3);
            if (c6yA0D != null) {
                while (c6yA0D.A0I() != null) {
                    c6yA0D = c6yA0D.A0I();
                    if (c6yA0D.A00.A04.equals(c2159mLA0K5)) {
                        C06786c c06786c = this.A0j;
                        String[] strArr3 = A0y;
                        if (strArr3[4].charAt(1) != strArr3[3].charAt(1)) {
                            A0y[0] = "lm8nmDAIswUHpj0OrSP7ctv";
                            c6yA0D.A00 = c06786c.A0I(timeline2, c6yA0D.A00);
                        } else {
                            c6yA0D.A00 = c06786c.A0I(timeline2, c6yA0D.A00);
                        }
                    }
                }
            }
            long jA06 = A06(c2159mLA0K5, c2159mLA0K5.A00() ? 0L : jLongValue3);
            C06996x c06996x2 = this.A0A;
            long jA01 = A01();
            String[] strArr4 = A0y;
            if (strArr4[4].charAt(1) == strArr4[3].charAt(1)) {
                throw new RuntimeException();
            }
            String[] strArr5 = A0y;
            strArr5[2] = "HJD";
            strArr5[6] = "HIUAzKTwmQi0tOVOF";
            this.A0A = c06996x2.A06(c2159mLA0K5, jA06, jLongValue3, jA01);
            return;
        }
        C06996x c06996x3 = this.A0A;
        String[] strArr6 = A0y;
        if (strArr6[4].charAt(1) != strArr6[3].charAt(1)) {
            String[] strArr7 = A0y;
            strArr7[4] = "QYIV2IuM2tD6Cg4Dd0tvfiQK4IQ6icHf";
            strArr7[3] = "hXYkHU7O6zP410ynmzMqamHjkcWcTxII";
            c2159mL = c06996x3.A05;
            if (c2159mL.A00()) {
                c2159mLA0K = this.A0j.A0K(timeline2, Integer.valueOf(iA0A), j2);
                if (!c2159mLA0K.equals(c2159mL)) {
                    if (c2159mLA0K.A00()) {
                        j = 0;
                    } else {
                        j = j2;
                    }
                    this.A0A = this.A0A.A06(c2159mLA0K, A06(c2159mLA0K, j), j2, A01());
                    return;
                }
            }
        } else {
            c2159mL = c06996x3.A05;
            if (c2159mL.A00()) {
                c2159mLA0K = this.A0j.A0K(timeline2, Integer.valueOf(iA0A), j2);
                if (!c2159mLA0K.equals(c2159mL)) {
                    if (c2159mLA0K.A00()) {
                        j = 0;
                    } else {
                        j = j2;
                    }
                    this.A0A = this.A0A.A06(c2159mLA0K, A06(c2159mLA0K, j), j2, A01());
                    return;
                }
            }
        }
        C06786c c06786c2 = this.A0j;
        long j3 = this.A06;
        if (A0y[1].length() == 31) {
            throw new RuntimeException();
        }
        String[] strArr8 = A0y;
        strArr8[4] = "30gHr5wufVP7jVH5IRZCDYCZy2V5u0Zf";
        strArr8[3] = "xPVmpg9j3VPOmOyowbQUJ4kDfZKAMzov";
        if (!c06786c2.A0Q(timeline2, c2159mL, j3)) {
            A0x(false);
        }
        A0v(false);
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 22 out of bounds for length 20
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    private void A0f(C6B c6b) throws Throwable {
        long jLongValue;
        C2159mL c2159mLA0K;
        long jLongValue2;
        boolean z;
        this.A0h.A03(1);
        Pair<Object, Long> pairA09 = A09(c6b, true);
        if (pairA09 == null) {
            c2159mLA0K = A0A();
            jLongValue2 = C.TIME_UNSET;
            jLongValue = C.TIME_UNSET;
            z = true;
        } else {
            Object obj = pairA09.first;
            jLongValue = ((Long) pairA09.second).longValue();
            c2159mLA0K = this.A0j.A0K(this.A0A.A03, obj, jLongValue);
            if (c2159mLA0K.A00()) {
                jLongValue2 = 0;
                z = true;
            } else {
                jLongValue2 = ((Long) pairA09.second).longValue();
                z = c6b.A01 == C.TIME_UNSET;
            }
        }
        try {
            try {
                if (this.A0D == null || this.A02 > 0) {
                    this.A08 = c6b;
                    this.A07 = null;
                } else {
                    try {
                        if (jLongValue2 == C.TIME_UNSET) {
                            A0V(4);
                            A13(false, true, false);
                        } else {
                            long jA6j = jLongValue2;
                            if (c2159mLA0K.equals(this.A0A.A05)) {
                                C6Y c6yA0F = this.A0j.A0F();
                                if (c6yA0F != null && jA6j != 0) {
                                    jA6j = c6yA0F.A07.A6j(jA6j, this.A0C);
                                }
                                if (AbstractC05701w.A01(jA6j) == AbstractC05701w.A01(this.A0A.A0C)) {
                                    this.A0A = this.A0A.A06(c2159mLA0K, this.A0A.A0C, jLongValue, A01());
                                    if (z) {
                                        this.A0h.A04(2);
                                        return;
                                    }
                                    return;
                                }
                            }
                            long jA06 = A06(c2159mLA0K, jA6j);
                            z |= jLongValue2 != jA06;
                            jLongValue2 = jA06;
                        }
                    } catch (Throwable th) {
                        th = th;
                        this.A0A = this.A0A.A06(c2159mLA0K, jLongValue2, jLongValue, A01());
                        if (z) {
                            this.A0h.A04(2);
                        }
                        throw th;
                    }
                }
                this.A0A = this.A0A.A06(c2159mLA0K, jLongValue2, jLongValue, A01());
                if (z) {
                    this.A0h.A04(2);
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    static {
        A0R();
    }

    public C9W(InterfaceC2222nM[] interfaceC2222nMArr, EK ek, EL el, C6S c6s, EU eu, boolean z, int i, boolean z2, Handler handler, C3T c3t, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, long j, boolean z9, int i2, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, C07147m c07147m) {
        this.A0v = interfaceC2222nMArr;
        this.A0l = ek;
        this.A0m = el;
        this.A0i = c6s;
        this.A0n = eu;
        this.A0P = z;
        this.A03 = i;
        this.A0V = z2;
        this.A0a = handler;
        this.A0e = c3t;
        this.A0U = z3;
        this.A0H = z4;
        this.A0G = z5;
        this.A0M = z6;
        this.A0I = z7;
        this.A0T = z8;
        this.A0Z = j;
        this.A0q = z9;
        this.A00 = i2;
        this.A0u = z11;
        this.A0s = z10;
        this.A0O = z12;
        this.A0Q = z13;
        this.A0K = z14;
        this.A0t = z15;
        this.A0N = j > 0;
        this.A0Y = c6s.A6s(c07147m);
        this.A0r = c6s.AI3(c07147m);
        this.A0C = C7I.A03;
        this.A0A = new C06996x(Timeline.A02, C.TIME_UNSET, C2149mA.A06, el);
        this.A0h = new C6A();
        this.A0w = new C7D[interfaceC2222nMArr.length];
        for (int i3 = 0; i3 < interfaceC2222nMArr.length; i3++) {
            interfaceC2222nMArr[i3].AA1(i3, c07147m);
            this.A0w[i3] = interfaceC2222nMArr[i3].A75();
        }
        this.A0g = new C2230nU(this, c3t);
        this.A0k = new C2216nG(c3t);
        this.A0o = z11 ? new AnonymousClass91(c3t) : null;
        this.A0p = new ArrayList<>();
        this.A0W = new InterfaceC2222nM[0];
        this.A0d = new C2281oL();
        this.A0c = new C2283oN();
        ek.A02(this, eu);
        this.A0b = new HandlerThread(A0D(21, 29, 115), -16);
        this.A0b.start();
        this.A0f = c3t.A5H(this.A0b.getLooper(), this);
    }

    @MetaExoPlayerCustomization
    private int A00() {
        int exoplayerThreadPollingIntervalMs = MetaExoPlayerUpgradeConfig.A00(EnumC1912i3.A04);
        if (exoplayerThreadPollingIntervalMs > 0) {
            return exoplayerThreadPollingIntervalMs;
        }
        return 10;
    }

    private long A01() {
        return A04(this.A0A.A0B);
    }

    private final long A02() {
        long loadingPeriodStartPositionUs;
        C6Y c6yA0E = this.A0j.A0E();
        if (c6yA0E == null) {
            loadingPeriodStartPositionUs = 0;
        } else {
            loadingPeriodStartPositionUs = A05(c6yA0E);
        }
        if (c6yA0E == null || loadingPeriodStartPositionUs == C.TIME_UNSET) {
            return 0L;
        }
        return c6yA0E.A0C(loadingPeriodStartPositionUs);
    }

    private final long A03() {
        long jA0C;
        C6Y c6yA0F = this.A0j.A0F();
        if (c6yA0F == null) {
            jA0C = 0;
        } else {
            jA0C = c6yA0F.A0C(c6yA0F.A0D(this.A06));
        }
        return jA0C + A02();
    }

    private long A04(long j) {
        C6Y c6yA0E = this.A0j.A0E();
        if (c6yA0E == null) {
            return 0L;
        }
        return j - c6yA0E.A0D(this.A06);
    }

    private final long A05(C6Y c6y) {
        long jMin = Long.MAX_VALUE;
        InterfaceC0833Cr[] interfaceC0833CrArr = c6y.A09;
        for (int i = 0; i < interfaceC0833CrArr.length; i++) {
            if (interfaceC0833CrArr[i] instanceof InterfaceC0834Cs) {
                long periodStartPositionUs = ((InterfaceC0834Cs) interfaceC0833CrArr[i]).A81();
                jMin = Math.min(jMin, periodStartPositionUs);
            }
        }
        return jMin == Long.MAX_VALUE ? C.TIME_UNSET : jMin;
    }

    private long A06(C2159mL c2159mL, long j) throws C9Y {
        return A07(false, c2159mL, j, this.A0j.A0F() != this.A0j.A0G());
    }

    private long A07(boolean z, C2159mL c2159mL, long j, boolean z2) throws C9Y {
        A0O();
        this.A0R = false;
        A0V(2);
        C6Y c6yA0F = this.A0j.A0F();
        C6Y c6yA0B = c6yA0F;
        while (c6yA0B != null) {
            if (A18(c2159mL, j, c6yA0B)) {
                this.A0j.A0S(c6yA0B);
                break;
            }
            c6yA0B = this.A0j.A0B();
        }
        if (c6yA0F != c6yA0B || z2) {
            for (InterfaceC2222nM interfaceC2222nM : this.A0W) {
                A0l(interfaceC2222nM);
            }
            this.A0W = new InterfaceC2222nM[0];
            if (A0y[1].length() == 31) {
                throw new RuntimeException();
            }
            String[] strArr = A0y;
            strArr[4] = "70t8rv27mnV5UL6KHl8v284ienTbIO4o";
            strArr[3] = "4hBvGCC7ZdKRW68bijyzpqxjpy9h3CGi";
            c6yA0F = null;
        }
        if (c6yA0B != null) {
            A0g(c6yA0F);
            if (c6yA0B.A01) {
                j = c6yA0B.A07.AIO(j, z);
                c6yA0B.A07.A5s(j - this.A0Y, this.A0r);
            }
            A0Y(j);
            A0w(this.A0G);
        } else {
            this.A0j.A0M(true);
            A0Y(j);
        }
        A0v(false);
        this.A0f.AIQ(2);
        return j;
    }

    private Pair<Object, Long> A08(Timeline timeline, int i, long j) {
        return timeline.A0D(this.A0d, this.A0c, i, j);
    }

    private Pair<Object, Long> A09(C6B c6b, boolean z) {
        int iA0A;
        Timeline timeline = this.A0A.A03;
        Timeline timeline2 = c6b.A02;
        if (timeline.A0N()) {
            return null;
        }
        if (timeline2.A0N()) {
            timeline2 = timeline;
        }
        try {
            Pair<Object, Long> periodPosition = timeline2.A0E(this.A0d, this.A0c, c6b.A00, c6b.A01);
            if (timeline == timeline2 || (iA0A = timeline.A0A(periodPosition.first)) != -1) {
                return periodPosition;
            }
            if (!z || A0C(periodPosition.first, timeline2, timeline) == null) {
                return null;
            }
            return A08(timeline, timeline.A0H(iA0A, this.A0c).A00, C.TIME_UNSET);
        } catch (IndexOutOfBoundsException unused) {
            throw new C2E(timeline, c6b.A00, c6b.A01);
        }
    }

    private C2159mL A0A() {
        Timeline timeline = this.A0A.A03;
        if (timeline.A0N()) {
            return C06996x.A0E;
        }
        return new C2159mL(timeline.A0M(timeline.A0K(timeline.A0B(this.A0V), this.A0d).A00));
    }

    @MetaExoPlayerCustomization(type = {"NEW_METHOD"}, value = "D71523094: Added for negative testing")
    private final Integer A0B() {
        C06956t playbackLatencyConfig;
        if (this.A09 == null || (playbackLatencyConfig = this.A09.A02()) == null) {
            String[] strArr = A0y;
            if (strArr[2].length() != strArr[6].length()) {
                A0y[7] = "1rqbEBrQgQNr61xUccdMybR9UEwvq3L8";
                return null;
            }
        } else {
            int iA00 = playbackLatencyConfig.A00();
            if (A0y[0].length() != 16) {
                String[] strArr2 = A0y;
                strArr2[2] = "KUZ";
                strArr2[6] = "wQAKuizVIm50S6vdz";
                return Integer.valueOf(iA00);
            }
        }
        throw new RuntimeException();
    }

    private Object A0C(Object obj, Timeline timeline, Timeline timeline2) {
        int iA0A = timeline.A0A(obj);
        int i = -1;
        int maxIterations = timeline.A06();
        for (int newPeriodIndex = 0; newPeriodIndex < maxIterations && i == -1 && (iA0A = timeline.A09(iA0A, this.A0c, this.A0d, this.A03, this.A0V)) != -1; newPeriodIndex++) {
            i = timeline2.A0A(timeline.A0M(iA0A));
        }
        if (i == -1) {
            return null;
        }
        return timeline2.A0M(i);
    }

    private void A0E() {
        C6Y c6yA0E = this.A0j.A0E();
        if (c6yA0E == null) {
            return;
        }
        c6yA0E.A07.A4k(c6yA0E.A0D(this.A06));
    }

    private void A0G() {
        A0V(4);
        A13(false, true, false);
    }

    private void A0H() {
        int i;
        if (this.A0h.A06(this.A0A)) {
            Handler handler = this.A0a;
            int i2 = this.A0h.A01;
            if (this.A0h.A03) {
                i = this.A0h.A00;
            } else {
                i = -1;
            }
            handler.obtainMessage(0, i2, i, this.A0A).sendToTarget();
            this.A0h.A05(this.A0A);
        }
    }

    private void A0I() throws IOException {
        C6Y c6yA0E = this.A0j.A0E();
        C6Y readingPeriodHolder = this.A0j.A0G();
        if (c6yA0E != null && !c6yA0E.A02) {
            if (readingPeriodHolder != null) {
                C6Y loadingPeriodHolder = readingPeriodHolder.A0I();
                if (loadingPeriodHolder != c6yA0E) {
                    return;
                }
            }
            for (InterfaceC2222nM interfaceC2222nM : this.A0W) {
                if (!interfaceC2222nM.A9h()) {
                    return;
                }
            }
            c6yA0E.A07.ABt();
        }
    }

    private void A0J() throws IOException {
        this.A0j.A0L(this.A06);
        if (this.A0j.A0O()) {
            C6Z c6zA0H = this.A0j.A0H(this.A06, this.A0A);
            if (c6zA0H == null) {
                this.A0D.ABu();
                return;
            }
            this.A0j.A0J(this.A0w, this.A0t ? 60000000L : 0L, this.A0l, this.A0i.A6n(), this.A0D, c6zA0H, this.A0m).AGL(this, c6zA0H.A03);
            A0y(true);
            A0v(false);
        }
    }

    private void A0K() {
        A13(true, true, true);
        this.A0i.AEu(C07147m.A03);
        A0V(1);
        this.A0b.quit();
        synchronized (this) {
            this.A0S = true;
            notifyAll();
        }
    }

    private void A0L() throws C9Y {
        boolean z;
        if (!this.A0j.A0N()) {
            return;
        }
        float f = this.A0g.A8e().A01;
        C6Y periodHolder = this.A0j.A0G();
        boolean z2 = true;
        for (C6Y c6yA0F = this.A0j.A0F(); c6yA0F != null && c6yA0F.A02; c6yA0F = c6yA0F.A0I()) {
            EL elA0L = c6yA0F.A0L(f, this.A0A.A03);
            if (elA0L != null) {
                if (z2) {
                    C6Y c6yA0F2 = this.A0j.A0F();
                    boolean zA0S = this.A0j.A0S(c6yA0F2);
                    boolean[] zArr = new boolean[this.A0v.length];
                    long jA0G = c6yA0F2.A0G(elA0L, this.A0A.A0C, zA0S, zArr);
                    if (this.A0A.A00 != 4 && jA0G != this.A0A.A0C) {
                        this.A0A = this.A0A.A06(this.A0A.A05, jA0G, this.A0A.A01, A01());
                        this.A0h.A04(4);
                        A0Y(jA0G);
                    }
                    int i = 0;
                    boolean[] zArr2 = new boolean[this.A0v.length];
                    for (int i2 = 0; i2 < this.A0v.length; i2++) {
                        InterfaceC2222nM interfaceC2222nM = this.A0v[i2];
                        zArr2[i2] = interfaceC2222nM.A92() != 0;
                        InterfaceC0833Cr interfaceC0833Cr = c6yA0F2.A09[i2];
                        if (interfaceC0833Cr != null) {
                            i++;
                        }
                        if (zArr2[i2]) {
                            InterfaceC0833Cr interfaceC0833CrA95 = interfaceC2222nM.A95();
                            if (A0y[7].charAt(12) == '2') {
                                throw new RuntimeException();
                            }
                            A0y[1] = "PyyQ9suxdi7C";
                            if (interfaceC0833Cr != interfaceC0833CrA95) {
                                A0l(interfaceC2222nM);
                            } else if (zArr[i2]) {
                                interfaceC2222nM.AI2(this.A06);
                            }
                        }
                    }
                    this.A0A = this.A0A.A07(c6yA0F2.A0J(), c6yA0F2.A0K());
                    A14(zArr2, i);
                    z = false;
                } else {
                    this.A0j.A0S(c6yA0F);
                    if (c6yA0F.A02) {
                        z = false;
                        c6yA0F.A0F(elA0L, Math.max(c6yA0F.A00.A03, c6yA0F.A0D(this.A06)), false);
                    } else {
                        z = false;
                    }
                }
                A0v(true);
                if (this.A0A.A00 != 4) {
                    A0w(z);
                    A0Q();
                    this.A0f.AIQ(2);
                    return;
                }
                return;
            }
            if (c6yA0F == periodHolder) {
                z2 = false;
            }
        }
    }

    private void A0M() {
        for (int size = this.A0p.size() - 1; size >= 0; size--) {
            if (!A16(this.A0p.get(size))) {
                this.A0p.get(size).A03.A0A(false);
                this.A0p.remove(size);
            }
        }
        Collections.sort(this.A0p);
    }

    private void A0N() throws C9Y {
        this.A0R = false;
        this.A0g.A05();
        this.A0k.A00();
        if (this.A0u) {
            this.A0o.A00();
        }
        for (InterfaceC2222nM interfaceC2222nM : this.A0W) {
            interfaceC2222nM.start();
        }
    }

    private void A0O() throws C9Y {
        this.A0g.A06();
        this.A0k.A01();
        if (this.A0u) {
            this.A0o.A01();
        }
        for (InterfaceC2222nM interfaceC2222nM : this.A0W) {
            A0m(interfaceC2222nM);
        }
    }

    private void A0Q() throws C9Y {
        if (!this.A0j.A0N()) {
            return;
        }
        C6Y c6yA0F = this.A0j.A0F();
        long jAGg = c6yA0F.A07.AGg();
        if (jAGg != C.TIME_UNSET) {
            A0Y(jAGg);
            if (jAGg != this.A0A.A0C) {
                this.A0A = this.A0A.A06(this.A0A.A05, jAGg, this.A0A.A01, A01());
                this.A0h.A04(4);
            }
        } else {
            C2230nU c2230nU = this.A0g;
            C6Y playingPeriodHolder = this.A0j.A0G();
            this.A06 = c2230nU.A04(c6yA0F != playingPeriodHolder);
            long jA0D = c6yA0F.A0D(this.A06);
            A0Z(this.A0A.A0C, jA0D);
            this.A0A.A0C = jA0D;
        }
        C6Y playingPeriodHolder2 = this.A0j.A0E();
        this.A0A.A0B = playingPeriodHolder2.A09();
        this.A0A.A0D = A01();
        this.A0A.A0D = c6yA0F.A0C(this.A0A.A0C);
    }

    private void A0S(byte b) {
        C6Y c6yA0E = this.A0j.A0E();
        if (c6yA0E != null && this.A0U) {
            c6yA0E.A07.AJq(b);
        }
    }

    private void A0T(float f) {
        for (C6Y c6yA0D = this.A0j.A0D(); c6yA0D != null && c6yA0D.A02; c6yA0D = c6yA0D.A0I()) {
            for (InterfaceC2122lj interfaceC2122lj : c6yA0D.A0K().A04) {
                if (interfaceC2122lj != null) {
                    interfaceC2122lj.AEc(f);
                }
            }
        }
    }

    private void A0U(int i) throws C9Y {
        this.A03 = i;
        if (!this.A0j.A0P(this.A0A.A03, i)) {
            if (A0y[0].length() == 16) {
                throw new RuntimeException();
            }
            A0y[5] = "F0pbcDG7mrKSFF2ySsjJdp1en5xQxzay";
            A0x(true);
        }
        A0v(false);
    }

    private void A0V(int i) {
        if (this.A0A.A00 != i) {
            this.A0A = this.A0A.A01(i);
            if (i == 2) {
                this.A04 = System.currentTimeMillis();
            } else {
                this.A04 = -1L;
            }
        }
    }

    private void A0W(int i, boolean z) {
        if (this.A0A.A00 != i) {
            C06996x c06996xA03 = this.A0A.A03(i, z);
            if (A0y[1].length() == 31) {
                throw new RuntimeException();
            }
            A0y[1] = "pTubBuiOOGTe";
            this.A0A = c06996xA03;
            if (i == 2) {
                this.A04 = System.currentTimeMillis();
            } else {
                this.A04 = -1L;
            }
        }
    }

    private void A0X(int i, boolean playing, int i2) throws C9Y {
        C6Y c6yA0F = this.A0j.A0F();
        InterfaceC2222nM interfaceC2222nM = this.A0v[i];
        this.A0W[i2] = interfaceC2222nM;
        if (interfaceC2222nM.A92() == 0) {
            C6Y c6yA0G = this.A0j.A0G();
            C6Y playingPeriodHolder = this.A0j.A0F();
            boolean z = c6yA0G == playingPeriodHolder;
            C7G c7g = c6yA0F.A0K().A03[i];
            C2312or[] c2312orArrA1A = A1A(c6yA0F.A0K().A04[i]);
            boolean z2 = this.A0P && this.A0A.A00 == 3;
            interfaceC2222nM.A6D(c7g, c2312orArrA1A, c6yA0F.A09[i], this.A06, !playing && z2, z, c6yA0G.A0H(this.A0K), c6yA0F.A0B());
            this.A0g.A09(interfaceC2222nM);
            if (z2) {
                interfaceC2222nM.start();
            }
        }
    }

    private void A0Y(long j) throws C9Y {
        long jA0E;
        if (this.A0j.A0N()) {
            jA0E = this.A0j.A0F().A0E(j);
        } else {
            jA0E = ((long) (this.A0t ? 60000000 : 0)) + j;
        }
        this.A06 = jA0E;
        this.A0g.A07(this.A06);
        for (InterfaceC2222nM interfaceC2222nM : this.A0W) {
            long j2 = this.A06;
            String[] strArr = A0y;
            if (strArr[2].length() == strArr[6].length()) {
                throw new RuntimeException();
            }
            A0y[5] = "3LWS1la82nevxXslk8B3HGv7gilut34u";
            interfaceC2222nM.AI2(j2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:41:0x00de  */
    /* JADX WARN: Code duplicated, block: B:89:0x010f A[SYNTHETIC] */
    private void A0Z(long j, long j2) throws C9Y {
        AnonymousClass69 anonymousClass69;
        AnonymousClass69 nextInfo;
        int i;
        if (this.A0p.isEmpty() || this.A0A.A05.A00()) {
            return;
        }
        C06996x c06996x = this.A0A;
        if (A0y[0].length() != 16) {
            String[] strArr = A0y;
            strArr[4] = "N4EB4VnnGuurJLGLQe09RRoMwim7ZTwR";
            strArr[3] = "el7QB6NOzA9v772mMpBH3ujflXdKxCpX";
            if (c06996x.A02 == j) {
                j--;
            }
            int iA0A = this.A0A.A03.A0A(this.A0A.A05.A04);
            int currentPeriodIndex = this.A01;
            if (currentPeriodIndex > 0) {
                ArrayList<AnonymousClass69> arrayList = this.A0p;
                int currentPeriodIndex2 = this.A01;
                int i2 = currentPeriodIndex2 - 1;
                if (A0y[1].length() != 31) {
                    String[] strArr2 = A0y;
                    strArr2[2] = "q3c";
                    strArr2[6] = "HlTr3zIzL5MxTNWEN";
                    anonymousClass69 = arrayList.get(i2);
                }
            } else {
                anonymousClass69 = null;
            }
            while (anonymousClass69 != null && (anonymousClass69.A00 > iA0A || (anonymousClass69.A00 == iA0A && anonymousClass69.A01 > j))) {
                int currentPeriodIndex3 = this.A01;
                this.A01 = currentPeriodIndex3 - 1;
                int currentPeriodIndex4 = this.A01;
                if (currentPeriodIndex4 > 0) {
                    ArrayList<AnonymousClass69> arrayList2 = this.A0p;
                    int currentPeriodIndex5 = this.A01;
                    anonymousClass69 = arrayList2.get(currentPeriodIndex5 - 1);
                } else {
                    anonymousClass69 = null;
                }
            }
            int i3 = this.A01;
            int currentPeriodIndex6 = this.A0p.size();
            if (i3 < currentPeriodIndex6) {
                ArrayList<AnonymousClass69> arrayList3 = this.A0p;
                int currentPeriodIndex7 = this.A01;
                nextInfo = arrayList3.get(currentPeriodIndex7);
            } else {
                nextInfo = null;
            }
            while (nextInfo != null && nextInfo.A02 != null) {
                int i4 = nextInfo.A00;
                if (A0y[5].charAt(1) != 'q') {
                    A0y[1] = "urcr7rEa5cce4ZESz6";
                    if (i4 >= iA0A) {
                        i = nextInfo.A00;
                        if (A0y[7].charAt(12) != '2') {
                            throw new RuntimeException();
                        }
                        A0y[7] = "Pqus3FB2V0wQm49ac7wvllFxwdLgqwrG";
                        if (i != iA0A || nextInfo.A01 > j) {
                            break;
                        }
                    }
                } else if (i4 >= iA0A) {
                    i = nextInfo.A00;
                    if (A0y[7].charAt(12) != '2') {
                        throw new RuntimeException();
                    }
                    A0y[7] = "Pqus3FB2V0wQm49ac7wvllFxwdLgqwrG";
                    if (i != iA0A) {
                        break;
                    }
                    break;
                    break;
                }
                int currentPeriodIndex8 = this.A01;
                this.A01 = currentPeriodIndex8 + 1;
                int i5 = this.A01;
                int currentPeriodIndex9 = this.A0p.size();
                if (i5 < currentPeriodIndex9) {
                    ArrayList<AnonymousClass69> arrayList4 = this.A0p;
                    int currentPeriodIndex10 = this.A01;
                    AnonymousClass69 nextInfo2 = arrayList4.get(currentPeriodIndex10);
                    nextInfo = nextInfo2;
                } else {
                    nextInfo = null;
                }
            }
            while (nextInfo != null) {
                Object obj = nextInfo.A02;
                if (A0y[1].length() != 31) {
                    String[] strArr3 = A0y;
                    strArr3[2] = "ENU";
                    strArr3[6] = "SOUOSvSypycWuSHSN";
                    if (obj == null) {
                        return;
                    }
                    int currentPeriodIndex11 = nextInfo.A00;
                    if (currentPeriodIndex11 == iA0A && nextInfo.A01 > j && nextInfo.A01 <= j2) {
                        A0j(nextInfo.A03);
                        if (nextInfo.A03.A0B() || nextInfo.A03.A0D()) {
                            ArrayList<AnonymousClass69> arrayList5 = this.A0p;
                            int currentPeriodIndex12 = this.A01;
                            arrayList5.remove(currentPeriodIndex12);
                        } else {
                            int currentPeriodIndex13 = this.A01;
                            this.A01 = currentPeriodIndex13 + 1;
                        }
                        int i6 = this.A01;
                        int currentPeriodIndex14 = this.A0p.size();
                        if (i6 < currentPeriodIndex14) {
                            ArrayList<AnonymousClass69> arrayList6 = this.A0p;
                            int currentPeriodIndex15 = this.A01;
                            AnonymousClass69 nextInfo3 = arrayList6.get(currentPeriodIndex15);
                            nextInfo = nextInfo3;
                        } else {
                            nextInfo = null;
                        }
                    } else {
                        return;
                    }
                }
            }
            return;
        }
        throw new RuntimeException();
    }

    private void A0a(long j, long j2) {
        this.A0f.AHj(2);
        this.A0f.AIR(2, j + j2);
    }

    private void A0b(C2296ob c2296ob) {
        this.A0g.AIt(c2296ob);
        if (this.A0o != null) {
            this.A0o.AIt(c2296ob);
        }
        if (this.A0k != null) {
            this.A0k.AIt(c2296ob);
        }
    }

    private void A0c(AnonymousClass67 anonymousClass67) throws C9Y {
        throw new NullPointerException(A0D(376, 16, 17));
    }

    private void A0d(AnonymousClass67 anonymousClass67, boolean z) throws C9Y {
        this.A0h.A03(1);
        throw new NullPointerException(A0D(TranSceneConfig.SCENE_TYPE_GAME_HOK_SWEEP, 13, 127));
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0072  */
    private void A0g(C6Y c6y) throws C9Y {
        C6Y c6yA0F = this.A0j.A0F();
        if (c6yA0F == null || c6y == c6yA0F) {
            return;
        }
        int i = 0;
        boolean[] zArr = new boolean[this.A0v.length];
        String[] strArr = A0y;
        String str = strArr[4];
        String str2 = strArr[3];
        int enabledRendererCount = str.charAt(1);
        if (enabledRendererCount == str2.charAt(1)) {
            throw new RuntimeException();
        }
        A0y[0] = "";
        for (int i2 = 0; i2 < this.A0v.length; i2++) {
            InterfaceC2222nM interfaceC2222nM = this.A0v[i2];
            zArr[i2] = interfaceC2222nM.A92() != 0;
            if (c6yA0F.A0K().A00(i2)) {
                i++;
            }
            if (zArr[i2]) {
                EL elA0K = c6yA0F.A0K();
                int enabledRendererCount2 = A0y[5].charAt(1);
                if (enabledRendererCount2 != 113) {
                    String[] strArr2 = A0y;
                    strArr2[4] = "5yNp1I7g7IY9vjHrSpd0TTAHnxoP5q4N";
                    strArr2[3] = "spEmpaFlzQc3LcHeWE04rIrq6t30lchN";
                    if (elA0K.A00(i2)) {
                        if (interfaceC2222nM.AAE() || interfaceC2222nM.A95() != c6y.A09[i2]) {
                        }
                    }
                } else if (elA0K.A00(i2)) {
                    if (interfaceC2222nM.AAE()) {
                    }
                }
                A0l(interfaceC2222nM);
            }
        }
        this.A0A = this.A0A.A07(c6yA0F.A0J(), c6yA0F.A0K());
        A14(zArr, i);
    }

    private void A0h(AnonymousClass71 anonymousClass71) throws C9Y {
        if (anonymousClass71.A0D()) {
            return;
        }
        try {
            anonymousClass71.A05().A9a(anonymousClass71.A01(), anonymousClass71.A09());
        } finally {
            anonymousClass71.A0A(true);
        }
    }

    private void A0i(AnonymousClass71 anonymousClass71) throws C9Y {
        if (anonymousClass71.A02() == C.TIME_UNSET) {
            A0j(anonymousClass71);
            return;
        }
        if (this.A0D == null || this.A02 > 0) {
            this.A0p.add(new AnonymousClass69(anonymousClass71));
            return;
        }
        AnonymousClass69 anonymousClass69 = new AnonymousClass69(anonymousClass71);
        if (A16(anonymousClass69)) {
            this.A0p.add(anonymousClass69);
            Collections.sort(this.A0p);
        } else {
            anonymousClass71.A0A(false);
        }
    }

    private void A0j(AnonymousClass71 anonymousClass71) throws C9Y {
        if (anonymousClass71.A03() == this.A0f.A8J()) {
            A0h(anonymousClass71);
            if (this.A0A.A00 == 3 || this.A0A.A00 == 2) {
                this.A0f.AIQ(2);
                return;
            }
            return;
        }
        this.A0f.ACA(15, anonymousClass71).A02();
    }

    private void A0k(final AnonymousClass71 anonymousClass71) {
        Looper looperA03 = anonymousClass71.A03();
        if (!looperA03.getThread().isAlive()) {
            Log.w(A0D(TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT, 3, 37), A0D(258, 40, 7));
            anonymousClass71.A0A(false);
        } else {
            this.A0e.A5H(looperA03, null).A03(new Runnable() {
                @Override
                public final void run() {
                    this.A00.A1E(anonymousClass71);
                }
            });
        }
    }

    private void A0l(InterfaceC2222nM interfaceC2222nM) throws C9Y {
        this.A0g.A08(interfaceC2222nM);
        A0m(interfaceC2222nM);
        interfaceC2222nM.A5p();
    }

    private void A0m(InterfaceC2222nM interfaceC2222nM) throws C9Y {
        if (interfaceC2222nM.A92() == 2) {
            interfaceC2222nM.stop();
        }
    }

    private void A0n(C7I c7i) {
        this.A0C = c7i;
    }

    private void A0o(InterfaceC2160mM interfaceC2160mM) {
        if (!this.A0j.A0T(interfaceC2160mM)) {
            return;
        }
        this.A0j.A0L(this.A06);
        A0w(false);
    }

    private void A0p(InterfaceC2160mM interfaceC2160mM) throws C9Y {
        byte b;
        if (!this.A0j.A0T(interfaceC2160mM)) {
            return;
        }
        C6Y c6yA0E = this.A0j.A0E();
        c6yA0E.A0N(this.A0g.A8e().A01, this.A0A.A03);
        A0s(c6yA0E.A0J(), c6yA0E.A0K());
        if (!this.A0j.A0N()) {
            C6Y loadingPeriodHolder = this.A0j.A0B();
            A0Y(loadingPeriodHolder.A00.A03);
            A0g(null);
        }
        if (this.A0M || this.A0P) {
            b = 0;
        } else {
            b = 2;
        }
        A0S(b);
        A10(this.A0P);
        if (A0y[7].charAt(12) == '2') {
            throw new RuntimeException();
        }
        A0y[5] = "0JHOWU68jltYXS7XBlXTYuPeT3LWkLA2";
        A0w(false);
    }

    @Override
    public final void ACs(InterfaceC2160mM interfaceC2160mM) {
        this.A0f.ACA(10, interfaceC2160mM).A02();
    }

    private void A0r(CL cl, boolean z, boolean z2) {
        this.A02++;
        A13(true, z, z2);
        this.A0i.AEj(C07147m.A03);
        this.A0D = cl;
        A0V(2);
        cl.AGN(this, null);
        this.A0f.AIQ(2);
    }

    private void A0s(C2149mA c2149mA, EL el) {
        this.A0i.AFV(new C6R(C07147m.A03, this.A0A.A03, this.A0A.A04, this.A0A.A0C, A01(), this.A0g.A8e().A01, this.A0P, this.A0R, C.TIME_UNSET, this.A04), c2149mA, el.A04);
    }

    @MetaExoPlayerCustomization("D18870411: Adding start stall debug reason")
    private void A0t(EnumC1888hX enumC1888hX, boolean z) {
        if (this.A0A.A00 != 3) {
            this.A0A = this.A0A.A02(3, enumC1888hX, z);
            this.A04 = -1L;
        }
    }

    @MetaExoPlayerCustomization(type = {"NEW_METHOD"}, value = "D63737392: Added for negative testing")
    private void A0u(String str) {
        boolean z = false;
        if (str == null) {
            this.A0J = false;
            this.A09 = null;
            return;
        }
        if (str != null && str.length() > 0) {
            z = true;
        }
        this.A0J = z;
        this.A09 = new C06966u(str);
    }

    private void A0v(boolean z) {
        C2159mL c2159mL;
        C6Y c6yA0E = this.A0j.A0E();
        if (c6yA0E == null) {
            C06996x c06996x = this.A0A;
            if (A0y[1].length() == 31) {
                throw new RuntimeException();
            }
            String[] strArr = A0y;
            strArr[2] = "b0w";
            strArr[6] = "WyMJg745VdMbfing6";
            c2159mL = c06996x.A05;
        } else {
            c2159mL = c6yA0E.A00.A04;
        }
        C2159mL loadingMediaPeriodId = this.A0A.A04;
        boolean loadingMediaPeriodChanged = !loadingMediaPeriodId.equals(c2159mL);
        if (loadingMediaPeriodChanged) {
            this.A0A = this.A0A.A05(c2159mL);
        }
        if ((loadingMediaPeriodChanged || z) && c6yA0E != null && c6yA0E.A02) {
            A0s(c6yA0E.A0J(), c6yA0E.A0K());
        }
    }

    @MetaExoPlayerCustomization("Customized Buffered Duration MS D23157182")
    private void A0w(boolean z) {
        long jA0C;
        C6Y c6yA0E = this.A0j.A0E();
        long jA0A = c6yA0E.A0A();
        if (jA0A == Long.MIN_VALUE) {
            A0y(false);
            return;
        }
        long jA0D = c6yA0E.A0D(this.A06);
        if (!this.A0s || c6yA0E == this.A0j.A0F() || this.A0j.A0F() == null) {
            jA0C = c6yA0E.A0C(jA0D);
            if (this.A0O) {
                for (C6Y c6yA0F = this.A0j.A0F(); c6yA0F != null && c6yA0F != c6yA0E; c6yA0F = c6yA0F.A0I()) {
                    long nextLoadPositionUs = this.A06;
                    jA0C += c6yA0F.A0C(c6yA0F.A0D(nextLoadPositionUs));
                }
            }
        } else {
            jA0C = A02();
        }
        Timeline timeline = this.A0A.A03;
        C2159mL c2159mL = c6yA0E.A00.A04;
        float f = this.A0g.A8e().A01;
        boolean z2 = this.A0P || z;
        boolean z3 = this.A0R;
        long nextLoadPositionUs2 = this.A04;
        boolean zAJB = this.A0i.AJB(new C6R(null, timeline, c2159mL, jA0D, jA0C, f, z2, z3, C.TIME_UNSET, nextLoadPositionUs2));
        if (this.A0T && this.A0P && this.A0R && !zAJB && this.A0A.A00 == 2) {
            Long lValueOf = Long.valueOf(jA0D / 1000);
            Long lValueOf2 = Long.valueOf(jA0C / 1000);
            Long lValueOf3 = Long.valueOf(jA0A / 1000);
            String[] strArr = A0y;
            if (strArr[4].charAt(1) == strArr[3].charAt(1)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0y;
            strArr2[2] = "Frr";
            strArr2[6] = "mfKzHFhLmxUYLc6Gx";
            this.A0a.obtainMessage(5, AbstractC06244a.A0n(A0D(125, 70, 5), lValueOf, lValueOf2, lValueOf3)).sendToTarget();
            this.A0T = false;
        }
        A0y(zAJB);
        if (zAJB) {
            c6yA0E.A0O(this.A06);
        }
    }

    private void A0x(boolean z) throws C9Y {
        C2159mL c2159mL = this.A0j.A0F().A00.A04;
        long jA07 = A07(false, c2159mL, this.A0A.A0C, true);
        if (jA07 != this.A0A.A0C) {
            this.A0A = this.A0A.A06(c2159mL, jA07, this.A0A.A01, A01());
            if (z) {
                C6A c6a = this.A0h;
                String[] strArr = A0y;
                if (strArr[4].charAt(1) == strArr[3].charAt(1)) {
                    throw new RuntimeException();
                }
                A0y[5] = "dnthUoDEzHvBWSE2tp3YAJwgKJx1FOWZ";
                c6a.A04(4);
            }
        }
    }

    private void A0y(boolean z) {
        if (this.A0A.A0A != z) {
            this.A0A = this.A0A.A08(z);
        }
    }

    private void A0z(boolean z) throws C9Y {
        try {
            this.A0R = false;
            this.A0P = z;
            A10(z);
            if (!z) {
                A0O();
                A0Q();
                A0S((byte) 2);
                if (this.A0I) {
                    A0E();
                }
            } else {
                A0S((byte) 0);
                if (this.A0A.A00 != 3) {
                    if (this.A0A.A00 == 2) {
                        this.A0f.AIQ(2);
                    }
                } else {
                    A0N();
                    this.A0f.AIQ(2);
                }
            }
        } finally {
            this.A0a.obtainMessage(3, Boolean.valueOf(z)).sendToTarget();
        }
    }

    @MetaExoPlayerCustomization("D19875605 Prevent further error loading once pausing video")
    private void A10(boolean z) {
        C6Y loadingPeriod = this.A0j.A0E();
        if (loadingPeriod == null) {
            return;
        }
        loadingPeriod.A07.AIs(z);
    }

    private void A11(boolean z) throws C9Y {
        this.A0V = z;
        if (!this.A0j.A0R(this.A0A.A03, z)) {
            A0x(true);
        }
        A0v(false);
    }

    private void A12(boolean z, boolean z2) {
        A13(true, z, z);
        this.A0h.A03(this.A02 + (z2 ? 1 : 0));
        this.A02 = 0;
        this.A0i.AFN(C07147m.A03);
        A0V(1);
    }

    private void A13(boolean z, boolean z2, boolean z3) {
        long j;
        C2149mA c2149mA;
        EL el;
        this.A0f.AHj(2);
        this.A0R = false;
        this.A0g.A06();
        this.A0k.A01();
        if (this.A0u) {
            this.A0o.A01();
        }
        this.A06 = this.A0t ? 60000000L : 0L;
        for (InterfaceC2222nM interfaceC2222nM : this.A0W) {
            try {
                A0l(interfaceC2222nM);
            } catch (C9Y | RuntimeException e) {
                Log.e(A0D(0, 21, 22), A0D(IDrmSession.ERROR_SESSION_DRM_PSSHS_EMPTY, 12, 44), e);
            }
        }
        this.A0W = new InterfaceC2222nM[0];
        this.A0j.A0M(!z2);
        A0y(false);
        if (z2) {
            this.A08 = null;
        }
        if (z3) {
            Iterator<AnonymousClass69> it = this.A0p.iterator();
            while (it.hasNext()) {
                it.next().A03.A0A(false);
            }
            this.A0p.clear();
            this.A01 = 0;
        }
        C2159mL c2159mLA0A = z2 ? A0A() : this.A0A.A05;
        long j2 = C.TIME_UNSET;
        if (z2) {
            j = -9223372036854775807L;
        } else {
            C06996x c06996x = this.A0A;
            if (A0y[5].charAt(1) != 'q') {
                String[] strArr = A0y;
                strArr[4] = "7gx390g1msf1u5QKnR2KjvR4WQmRx8YK";
                strArr[3] = "VlC7tbQkEF507tv73u1W2v85d7ApXXNM";
                j = c06996x.A0C;
            } else {
                A0y[5] = "C79IK8sPJjEkg2u4SoGimfUAaE3F5yew";
                j = c06996x.A0C;
            }
        }
        if (!z2) {
            C06996x c06996x2 = this.A0A;
            if (A0y[5].charAt(1) == 'q') {
                throw new RuntimeException();
            }
            String[] strArr2 = A0y;
            strArr2[2] = "uSR";
            strArr2[6] = "FwoZ6mA9qzJ4hrvJt";
            j2 = c06996x2.A01;
        }
        Timeline timeline = z3 ? Timeline.A02 : this.A0A.A03;
        int i = this.A0A.A00;
        if (z3) {
            c2149mA = C2149mA.A06;
        } else {
            C06996x c06996x3 = this.A0A;
            if (A0y[7].charAt(12) == '2') {
                throw new RuntimeException();
            }
            A0y[5] = "yizxhFEcEwEbIh7DB6ScCbr86G64zHmf";
            c2149mA = c06996x3.A06;
        }
        if (z3) {
            el = this.A0m;
        } else {
            el = this.A0A.A07;
        }
        this.A0A = new C06996x(timeline, c2159mLA0A, j, j2, i, false, c2149mA, el, c2159mLA0A, j, 0L, j);
        if (z && this.A0D != null) {
            this.A0D.AH1(this);
            this.A0D = null;
        }
    }

    private void A14(boolean[] zArr, int i) throws C9Y {
        this.A0W = new InterfaceC2222nM[i];
        int enabledRendererCount = 0;
        C6Y c6yA0F = this.A0j.A0F();
        for (int i2 = 0; i2 < enabledRendererCount; i2++) {
            if (c6yA0F.A0K().A00(i2)) {
                A0X(i2, zArr[i2], enabledRendererCount);
                enabledRendererCount++;
            }
        }
    }

    private boolean A15() {
        C6Y playingPeriodHolder = this.A0j.A0F();
        C6Y c6yA0I = playingPeriodHolder.A0I();
        long j = playingPeriodHolder.A00.A00;
        return j == C.TIME_UNSET || this.A0A.A0C < j || (c6yA0I != null && (c6yA0I.A02 || c6yA0I.A00.A04.A00()));
    }

    private boolean A16(AnonymousClass69 anonymousClass69) {
        if (anonymousClass69.A02 == null) {
            Pair<Object, Long> pairA09 = A09(new C6B(anonymousClass69.A03.A04(), anonymousClass69.A03.A00(), AbstractC05701w.A00(anonymousClass69.A03.A02())), false);
            if (pairA09 == null) {
                return false;
            }
            int iA0A = this.A0A.A03.A0A(pairA09.first);
            if (A0y[5].charAt(1) != 'q') {
                A0y[5] = "NfGCtpMsHKBVYsn3O7a8Zqq9gxyOlhFa";
                anonymousClass69.A01(iA0A, ((Long) pairA09.second).longValue(), pairA09.first);
                return true;
            }
            throw new RuntimeException();
        }
        int iA0A2 = this.A0A.A03.A0A(anonymousClass69.A02);
        if (iA0A2 == -1) {
            return false;
        }
        anonymousClass69.A00 = iA0A2;
        return true;
    }

    private boolean A17(InterfaceC2222nM interfaceC2222nM) {
        C6Y c6yA0G = this.A0j.A0G();
        C6Y readingPeriodHolder = c6yA0G.A0I();
        if (readingPeriodHolder != null) {
            C6Y readingPeriodHolder2 = c6yA0G.A0I();
            if (readingPeriodHolder2.A02 && interfaceC2222nM.A9h()) {
                return true;
            }
        }
        return false;
    }

    private boolean A18(C2159mL c2159mL, long j, C6Y c6y) {
        if (!c2159mL.equals(c6y.A00.A04)) {
            return false;
        }
        boolean z = c6y.A02;
        if (A0y[1].length() == 31) {
            throw new RuntimeException();
        }
        A0y[1] = "z9";
        if (z) {
            this.A0A.A03.A0J(this.A0A.A05.A04, this.A0c);
            int iA07 = this.A0c.A07(j);
            if (iA07 != -1) {
                long jA0D = this.A0c.A0D(iA07);
                C6Z c6z = c6y.A00;
                if (A0y[5].charAt(1) == 'q') {
                    A0y[5] = "RcBDfVPYXZ1IWswHj8kiKJAUw6BsFYM7";
                    if (jA0D == c6z.A01) {
                        return true;
                    }
                    return false;
                }
                String[] strArr = A0y;
                strArr[4] = "w6QknFDGuvwfcqywG7nwGfdAAoNokq6y";
                strArr[3] = "I5j8Ais0ITqpKL2oROmKoI7QN1W2GqI7";
                if (jA0D == c6z.A01) {
                    return true;
                }
                return false;
            }
            return true;
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:45:0x00b4  */
    @MetaExoPlayerCustomizations({@MetaExoPlayerCustomization("Customized Buffered Duration MS D23157182"), @MetaExoPlayerCustomization("D18870411: Adding start stall debug reason")})
    private boolean A19(boolean z) {
        boolean z2;
        long jA0C;
        if (this.A0W.length == 0) {
            return A15();
        }
        if (!z) {
            if (this.A0B != null) {
                this.A0E = this.A0B.A91();
            }
            return false;
        }
        if (!this.A0A.A0A) {
            return true;
        }
        C6Y c6yA0E = this.A0j.A0E();
        if (c6yA0E.A0R()) {
            C6Z c6z = c6yA0E.A00;
            if (A0y[7].charAt(12) == '2') {
                throw new RuntimeException();
            }
            A0y[5] = "JVFQROlQoWGuZTJ8G1Kf7NjovTqMHrup";
            if (c6z.A05) {
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            z2 = false;
        }
        if (!this.A0s || this.A0j.A0F() == this.A0j.A0E() || this.A0j.A0F() == null) {
            jA0C = c6yA0E.A0C(c6yA0E.A0D(this.A06));
        } else {
            jA0C = A03();
        }
        boolean z3 = z2 || this.A0i.AJE(jA0C, this.A0g.A8e().A01, this.A0R, this.A00 > 0 && (this.A04 > 0L ? 1 : (this.A04 == 0L ? 0 : -1)) > 0 && ((System.currentTimeMillis() - this.A04) > ((long) this.A00) ? 1 : ((System.currentTimeMillis() - this.A04) == ((long) this.A00) ? 0 : -1)) < 0, C.TIME_UNSET);
        if (!z3) {
            this.A0E = EnumC1888hX.A04;
        }
        return z3;
    }

    public static C2312or[] A1A(EE ee) {
        int length = ee != null ? ee.length() : 0;
        C2312or[] c2312orArr = new C2312or[length];
        for (int i = 0; i < length; i++) {
            c2312orArr[i] = ee.A83(i);
        }
        return c2312orArr;
    }

    public final Looper A1B() {
        return this.A0b.getLooper();
    }

    public final synchronized void A1C() {
        if (this.A0S) {
            return;
        }
        this.A0f.AIQ(7);
        boolean z = false;
        while (!wasInterrupted) {
            try {
                wait();
            } catch (InterruptedException unused) {
                z = true;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    public final void A1D(Timeline timeline, int i, long j) {
        this.A0f.ACA(3, new C6B(timeline, i, j)).A02();
    }

    public final void A1E(AnonymousClass71 anonymousClass71) {
        try {
            A0h(anonymousClass71);
        } catch (C9Y e) {
            Log.e(A0D(0, 21, 22), A0D(MediaPlayer.Event.VideoFPS, 55, 119), e);
            throw new RuntimeException(e);
        }
    }

    public final void A1F(CL cl, boolean z, boolean z2) {
        this.A0f.AC9(0, z ? 1 : 0, z2 ? 1 : 0, cl).A02();
    }

    public final void A1G(boolean z) {
        this.A0f.AC8(1, z ? 1 : 0, 0).A02();
    }

    public final void A1H(boolean z) {
        this.A0f.AC8(6, z ? 1 : 0, 0).A02();
    }

    @Override
    public final void AEb(C2296ob c2296ob) {
        this.A0a.obtainMessage(1, c2296ob).sendToTarget();
        A0T(c2296ob.A01);
    }

    @Override
    public final void AEk(InterfaceC2160mM interfaceC2160mM) {
        this.A0f.ACA(9, interfaceC2160mM).A02();
    }

    @Override
    public final void AFI(CL cl, Timeline timeline) {
        this.A0f.ACA(8, new AnonymousClass68(cl, timeline)).A02();
    }

    @Override
    public final void AFT() {
        this.A0f.AIQ(11);
    }

    @Override
    public final synchronized void AIS(AnonymousClass71 anonymousClass71) {
        if (this.A0S) {
            Log.w(A0D(0, 21, 22), A0D(50, 37, 39));
            anonymousClass71.A0A(false);
        } else {
            this.A0f.ACA(14, anonymousClass71).A02();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override
    public final boolean handleMessage(Message message) throws Throwable {
        String strA0D = A0D(0, 21, 22);
        try {
            switch (message.what) {
                case 0:
                    A0r((CL) message.obj, message.arg1 != 0, message.arg2 != 0);
                    A0H();
                    return true;
                case 1:
                    A0z(message.arg1 != 0);
                    A0H();
                    return true;
                case 2:
                    A0F();
                    A0H();
                    return true;
                case 3:
                    A0f((C6B) message.obj);
                    A0H();
                    return true;
                case 4:
                    A0b((C2296ob) message.obj);
                    A0H();
                    return true;
                case 5:
                    A0n((C7I) message.obj);
                    A0H();
                    return true;
                case 6:
                    A12(message.arg1 != 0, true);
                    A0H();
                    return true;
                case 7:
                    A0K();
                    return true;
                case 8:
                    A0e((AnonymousClass68) message.obj);
                    A0H();
                    return true;
                case 9:
                    A0p((InterfaceC2160mM) message.obj);
                    A0H();
                    return true;
                case 10:
                    A0o((InterfaceC2160mM) message.obj);
                    A0H();
                    return true;
                case 11:
                    A0L();
                    A0H();
                    return true;
                case 12:
                    A0U(message.arg1);
                    A0H();
                    return true;
                case 13:
                    A11(message.arg1 != 0);
                    A0H();
                    return true;
                case 14:
                    A0i((AnonymousClass71) message.obj);
                    A0H();
                    return true;
                case 15:
                    A0k((AnonymousClass71) message.obj);
                    A0H();
                    return true;
                case 16:
                    A0H();
                    return true;
                case 17:
                    A0d(null, false);
                    throw null;
                case 18:
                    A0c(null);
                    throw null;
                case 19:
                    A0u((String) message.obj);
                    A0H();
                    return true;
                default:
                    return false;
            }
        } catch (C9Y e) {
            Log.e(strA0D, A0D(110, 15, 65), e);
            A12(false, false);
            this.A0a.obtainMessage(2, e).sendToTarget();
            A0H();
        } catch (IOException e2) {
            Log.e(strA0D, A0D(ByteCode.MONITOREXIT, 13, 40), e2);
            A12(false, false);
            this.A0a.obtainMessage(2, C9Y.A01(e2, 2000)).sendToTarget();
            A0H();
        } catch (RuntimeException e3) {
            Log.e(strA0D, A0D(87, 23, 19), e3);
            A12(false, false);
            this.A0a.obtainMessage(2, C9Y.A02(e3)).sendToTarget();
            A0H();
        }
    }
}
