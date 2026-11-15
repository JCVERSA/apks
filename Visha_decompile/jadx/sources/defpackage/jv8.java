package defpackage;

import freemarker.template.a;
import java.rmi.Remote;
import java.rmi.server.UnicastRemoteObject;

public class jv8 extends UnicastRemoteObject implements Remote {
    public final zfa a;
    public final int b;

    public jv8(zfa zfaVar, int i) {
        this.a = zfaVar;
        this.b = a(zfaVar) + i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [boolean, int] */
    public static int a(zfa zfaVar) {
        int i;
        int i2;
        ?? r0 = zfaVar instanceof mga;
        int i3 = r0;
        if (zfaVar instanceof hga) {
            i3 = r0 + 2;
        }
        int i4 = i3;
        if (zfaVar instanceof ffa) {
            i4 = i3 + 4;
        }
        int i5 = i4;
        if (zfaVar instanceof a) {
            i5 = i4 + 8;
        }
        int i6 = i5;
        if (zfaVar instanceof nga) {
            i6 = i5 + 16;
        }
        int i7 = i6;
        if (zfaVar instanceof bfa) {
            i7 = i6 + 32;
        }
        if (zfaVar instanceof pfa) {
            i = i7 + 128;
        } else if (zfaVar instanceof ofa) {
            i = i7;
            i = i7 + 64;
        }
        i = i7;
        if (zfaVar instanceof yfa) {
            i2 = i + 512;
        } else if (zfaVar instanceof xfa) {
            i2 = i;
            i2 = i + 256;
        }
        i2 = i;
        return zfaVar instanceof pga ? i2 + 1024 : i2;
    }
}
