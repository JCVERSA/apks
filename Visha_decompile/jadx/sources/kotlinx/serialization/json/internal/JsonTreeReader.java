package kotlinx.serialization.json.internal;

import defpackage.c3;
import defpackage.da5;
import defpackage.ou1;
import defpackage.wa5;
import defpackage.y45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import kotlin.KotlinNothingValueException;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.c;

public final class JsonTreeReader {
    public final c3 a;
    public final boolean b;
    public int c;

    public JsonTreeReader(da5 da5Var, c3 c3Var) {
        y45.j(da5Var, "configuration");
        y45.j(c3Var, "lexer");
        this.a = c3Var;
        this.b = da5Var.m();
    }

    public final kotlinx.serialization.json.b e() {
        byte bF = this.a.F();
        if (bF == 1) {
            return j(true);
        }
        if (bF == 0) {
            return j(false);
        }
        if (bF == 6) {
            int i = this.c + 1;
            this.c = i;
            kotlinx.serialization.json.b bVarG = i == 200 ? g() : i();
            this.c--;
            return bVarG;
        }
        if (bF == 8) {
            return f();
        }
        c3.y(this.a, "Cannot begin reading element, unexpected token: " + ((int) bF), 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    public final kotlinx.serialization.json.b f() {
        byte bM = this.a.m();
        if (this.a.F() == 4) {
            c3.y(this.a, "Unexpected leading comma", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        ArrayList arrayList = new ArrayList();
        while (this.a.f()) {
            arrayList.add(e());
            bM = this.a.m();
            if (bM != 4) {
                c3 c3Var = this.a;
                boolean z = bM == 9;
                int i = c3Var.a;
                if (!z) {
                    c3.y(c3Var, "Expected end of the array or comma", i, null, 4, null);
                    throw new KotlinNothingValueException();
                }
            }
        }
        if (bM == 8) {
            this.a.n((byte) 9);
        } else if (bM == 4) {
            c3.y(this.a, "Unexpected trailing comma", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        return new kotlinx.serialization.json.a(arrayList);
    }

    public final kotlinx.serialization.json.b g() {
        return (kotlinx.serialization.json.b) kotlin.a.b(new ou1(new JsonTreeReader$readDeepRecursive$1(this, null)), zfb.a);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0070  */
    /* JADX WARN: Code duplicated, block: B:21:0x0074  */
    /* JADX WARN: Code duplicated, block: B:22:0x007b  */
    /* JADX WARN: Code duplicated, block: B:25:0x0099 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:26:0x009a  */
    /* JADX WARN: Code duplicated, block: B:29:0x00b2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:31:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:33:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x009a -> B:27:0x00a5). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object h(defpackage.pu1 r20, defpackage.wh1 r21) {
        /*
            Method dump skipped, instruction units count: 263
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.json.internal.JsonTreeReader.h(pu1, wh1):java.lang.Object");
    }

    public final kotlinx.serialization.json.b i() {
        byte bN = this.a.n((byte) 6);
        if (this.a.F() == 4) {
            c3.y(this.a, "Unexpected leading comma", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        while (this.a.f()) {
            String strS = this.b ? this.a.s() : this.a.q();
            this.a.n((byte) 5);
            linkedHashMap.put(strS, e());
            bN = this.a.m();
            if (bN != 4) {
                if (bN == 7) {
                    break;
                }
                c3.y(this.a, "Expected end of the object or comma", 0, null, 6, null);
                throw new KotlinNothingValueException();
            }
        }
        if (bN == 6) {
            this.a.n((byte) 7);
        } else if (bN == 4) {
            c3.y(this.a, "Unexpected trailing comma", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        return new JsonObject(linkedHashMap);
    }

    public final c j(boolean z) {
        String strS = (this.b || !z) ? this.a.s() : this.a.q();
        return (z || !y45.e(strS, "null")) ? new wa5(strS, z, null, 4, null) : JsonNull.INSTANCE;
    }
}
