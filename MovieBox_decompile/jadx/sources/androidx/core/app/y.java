package androidx.core.app;

import android.app.RemoteInput;
import android.os.Build;
import android.os.Bundle;
import java.util.Iterator;
import java.util.Set;

public final class y {

    private final String f7818a;

    private final CharSequence f7819b;

    private final CharSequence[] f7820c;

    private final boolean f7821d;

    private final int f7822e;

    private final Bundle f7823f;

    private final Set f7824g;

    static class a {
        public static RemoteInput a(y yVar) {
            Set setD;
            RemoteInput.Builder builderAddExtras = new RemoteInput.Builder(yVar.i()).setLabel(yVar.h()).setChoices(yVar.e()).setAllowFreeFormInput(yVar.c()).addExtras(yVar.g());
            if (Build.VERSION.SDK_INT >= 26 && (setD = yVar.d()) != null) {
                Iterator it = setD.iterator();
                while (it.hasNext()) {
                    b.a(builderAddExtras, (String) it.next(), true);
                }
            }
            if (Build.VERSION.SDK_INT >= 29) {
                c.a(builderAddExtras, yVar.f());
            }
            return builderAddExtras.build();
        }
    }

    static class b {
        static RemoteInput.Builder a(RemoteInput.Builder builder, String str, boolean z10) {
            return builder.setAllowDataType(str, z10);
        }
    }

    static class c {
        static RemoteInput.Builder a(RemoteInput.Builder builder, int i10) {
            return builder.setEditChoicesBeforeSending(i10);
        }
    }

    y(String str, CharSequence charSequence, CharSequence[] charSequenceArr, boolean z10, int i10, Bundle bundle, Set set) {
        this.f7818a = str;
        this.f7819b = charSequence;
        this.f7820c = charSequenceArr;
        this.f7821d = z10;
        this.f7822e = i10;
        this.f7823f = bundle;
        this.f7824g = set;
        if (f() == 2 && !c()) {
            throw new IllegalArgumentException("setEditChoicesBeforeSending requires setAllowFreeFormInput");
        }
    }

    static RemoteInput a(y yVar) {
        return a.a(yVar);
    }

    static RemoteInput[] b(y[] yVarArr) {
        if (yVarArr == null) {
            return null;
        }
        RemoteInput[] remoteInputArr = new RemoteInput[yVarArr.length];
        for (int i10 = 0; i10 < yVarArr.length; i10++) {
            remoteInputArr[i10] = a(yVarArr[i10]);
        }
        return remoteInputArr;
    }

    public boolean c() {
        return this.f7821d;
    }

    public Set d() {
        return this.f7824g;
    }

    public CharSequence[] e() {
        return this.f7820c;
    }

    public int f() {
        return this.f7822e;
    }

    public Bundle g() {
        return this.f7823f;
    }

    public CharSequence h() {
        return this.f7819b;
    }

    public String i() {
        return this.f7818a;
    }

    public boolean j() {
        return (c() || (e() != null && e().length != 0) || d() == null || d().isEmpty()) ? false : true;
    }
}
