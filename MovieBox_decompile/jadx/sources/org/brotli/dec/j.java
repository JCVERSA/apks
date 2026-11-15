package org.brotli.dec;

import java.io.IOException;
import java.io.InputStream;

final class j {
    byte[] A;
    int B;
    int C;
    int D;
    int E;
    int F;
    int G;
    byte[] H;
    int I;
    int J;
    int K;
    int L;
    int M;
    int N;
    int O;
    int P;
    int U;
    int V;
    int W;
    int X;
    int Y;
    byte[] Z;

    int f68487b;

    byte[] f68489d;

    int f68492g;

    boolean f68493h;

    boolean f68494i;

    boolean f68495j;

    int f68508w;

    int f68509x;

    int f68510y;

    byte[] f68511z;

    int f68486a = 0;

    final a f68488c = new a();

    final int[] f68490e = new int[3240];

    final int[] f68491f = new int[3240];

    final g f68496k = new g();

    final g f68497l = new g();

    final g f68498m = new g();

    final int[] f68499n = new int[3];

    final int[] f68500o = new int[3];

    final int[] f68501p = new int[6];

    final int[] f68502q = {16, 15, 11, 4};

    int f68503r = 0;

    int f68504s = 0;

    int f68505t = 0;

    boolean f68506u = false;

    int f68507v = 0;
    int Q = 0;
    long R = 0;
    byte[] S = new byte[0];
    int T = 0;

    j() {
    }

    static void a(j jVar) throws IOException {
        int i10 = jVar.f68486a;
        if (i10 == 0) {
            throw new IllegalStateException("State MUST be initialized");
        }
        if (i10 == 11) {
            return;
        }
        jVar.f68486a = 11;
        a.b(jVar.f68488c);
    }

    private static int b(a aVar) {
        if (a.i(aVar, 1) == 0) {
            return 16;
        }
        int i10 = a.i(aVar, 3);
        if (i10 != 0) {
            return i10 + 17;
        }
        int i11 = a.i(aVar, 3);
        if (i11 != 0) {
            return i11 + 8;
        }
        return 17;
    }

    static void c(j jVar, InputStream inputStream) {
        if (jVar.f68486a != 0) {
            throw new IllegalStateException("State MUST be uninitialized");
        }
        a.e(jVar.f68488c, inputStream);
        int iB = b(jVar.f68488c);
        if (iB == 9) {
            throw new BrotliRuntimeException("Invalid 'windowBits' code");
        }
        int i10 = 1 << iB;
        jVar.P = i10;
        jVar.O = i10 - 16;
        jVar.f68486a = 1;
    }
}
