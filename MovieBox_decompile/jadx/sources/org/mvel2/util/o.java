package org.mvel2.util;

import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.Queue;
import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.ast.EndOfStatement;
import org.mvel2.ast.Proto;
import org.mvel2.compiler.ExecutableStatement;

public class o {

    private static ThreadLocal f68908m = new ThreadLocal();

    private char[] f68909a;

    private ParserContext f68910b;

    private int f68911c;

    private int f68912d;

    private String f68913e;

    String f68914f = null;

    String f68915g = null;

    private Class f68916h;

    private String f68917i;

    private String f68918j;

    private boolean f68919k;

    private g f68920l;

    class a implements b {

        final String f68921a;

        final Proto.c f68922b;

        final String f68923c;

        a(String str, Proto.c cVar, String str2) {
            this.f68921a = str;
            this.f68922b = cVar;
            this.f68923c = str2;
        }

        @Override
        public boolean a(Proto proto) {
            if (!this.f68921a.equals(proto.getName())) {
                return false;
            }
            this.f68922b.f(Proto.ReceiverType.PROPERTY);
            this.f68922b.e((ExecutableStatement) m.G0(this.f68923c, o.this.f68910b));
            return true;
        }

        @Override
        public String getName() {
            return this.f68921a;
        }
    }

    private interface b {
        boolean a(Proto proto);

        String getName();
    }

    public o(char[] cArr, int i10, int i11, String str, ParserContext parserContext, int i12, g gVar) {
        this.f68919k = false;
        this.f68909a = cArr;
        this.f68912d = i10;
        this.f68911c = i11;
        this.f68913e = str;
        this.f68910b = parserContext;
        this.f68919k = (i12 & 16) == 0;
        this.f68920l = gVar;
    }

    private void b() {
        if (this.f68915g != null) {
            try {
                if (this.f68910b.hasProtoImport(this.f68914f)) {
                    this.f68916h = Proto.class;
                } else {
                    this.f68916h = m.D(null, this.f68914f, this.f68910b);
                }
                this.f68917i = this.f68915g;
            } catch (ClassNotFoundException e10) {
                if (!this.f68919k) {
                    throw new CompileException("could not resolve class: " + this.f68914f, this.f68909a, this.f68912d, e10);
                }
                this.f68916h = b.class;
                this.f68918j = this.f68914f;
                this.f68917i = this.f68915g;
            }
        } else {
            this.f68916h = Object.class;
            this.f68917i = this.f68914f;
        }
        this.f68914f = null;
        this.f68915g = null;
    }

    public static void c(char[] cArr, int i10, ParserContext parserContext) {
        if (g()) {
            LinkedHashMap linkedHashMap = (LinkedHashMap) parserContext.getParserConfiguration().getImports();
            Object obj = linkedHashMap.values().toArray()[linkedHashMap.size() - 1];
            if (obj instanceof Proto) {
                Proto proto = (Proto) obj;
                int cursorEnd = proto.getCursorEnd();
                do {
                    i10--;
                    if (i10 <= cursorEnd) {
                        break;
                    }
                } while (m.q0(cArr[i10]));
                while (i10 > cursorEnd && m.c0(cArr[i10])) {
                    i10--;
                }
                while (i10 > cursorEnd && (m.q0(cArr[i10]) || cArr[i10] == ';')) {
                    i10--;
                }
                if (i10 == cursorEnd) {
                    return;
                }
                throw new CompileException("unresolved reference (possible illegal forward-reference?): " + f(), cArr, proto.getCursorStart());
            }
        }
    }

    private void d(String str, Proto.c cVar, String str2) {
        Queue queue = (Queue) f68908m.get();
        if (queue == null) {
            ThreadLocal threadLocal = f68908m;
            LinkedList linkedList = new LinkedList();
            threadLocal.set(linkedList);
            queue = linkedList;
        }
        queue.add(new a(str, cVar, str2));
    }

    public static String f() {
        if (f68908m.get() == null || ((Queue) f68908m.get()).isEmpty()) {
            return null;
        }
        return ((b) ((Queue) f68908m.get()).poll()).getName();
    }

    public static boolean g() {
        return (f68908m.get() == null || ((Queue) f68908m.get()).isEmpty()) ? false : true;
    }

    public static void h(Proto proto) {
        if (f68908m.get() != null) {
            Queue<b> queue = (Queue) f68908m.get();
            HashSet hashSet = new HashSet();
            for (b bVar : queue) {
                if (bVar.a(proto)) {
                    hashSet.add(bVar);
                }
            }
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                queue.remove((b) it.next());
            }
        }
    }

    public int e() {
        return this.f68912d;
    }

    /* JADX WARN: Code duplicated, block: B:59:0x0125  */
    public Proto i() {
        Proto proto = new Proto(this.f68913e, this.f68910b);
        while (true) {
            int i10 = this.f68912d;
            if (i10 >= this.f68911c) {
                int i11 = i10 + 1;
                this.f68912d = i11;
                if (this.f68920l != null && m.p0(this.f68909a, i11)) {
                    this.f68920l.a(new EndOfStatement(this.f68910b));
                }
                return proto;
            }
            int iE0 = m.E0(this.f68909a, i10);
            this.f68912d = iE0;
            if (this.f68915g == null) {
                while (true) {
                    int i12 = this.f68912d;
                    if (i12 >= this.f68911c || !m.c0(this.f68909a[i12])) {
                        break;
                    }
                    this.f68912d++;
                }
                int i13 = this.f68912d;
                if (i13 > iE0) {
                    String str = new String(this.f68909a, iE0, i13 - iE0);
                    this.f68914f = str;
                    if ("def".equals(str) || "function".equals(this.f68914f)) {
                        int i14 = this.f68912d + 1;
                        this.f68912d = i14;
                        int iE1 = m.E0(this.f68909a, i14);
                        this.f68912d = iE1;
                        while (true) {
                            int i15 = this.f68912d;
                            if (i15 >= this.f68911c || !m.c0(this.f68909a[i15])) {
                                break;
                            }
                            this.f68912d++;
                        }
                        int i16 = this.f68912d;
                        if (iE1 == i16) {
                            throw new CompileException("attempt to declare an anonymous function as a prototype member", this.f68909a, iE1);
                        }
                        h hVar = new h(new String(this.f68909a, iE1, i16 - iE1), this.f68912d, this.f68911c, this.f68909a, 0, this.f68910b, null);
                        proto.declareReceiver(hVar.b(), hVar.c());
                        this.f68912d = hVar.a() + 1;
                        this.f68914f = null;
                    }
                }
                this.f68912d = m.E0(this.f68909a, this.f68912d);
            }
            int i17 = this.f68912d;
            if (i17 > this.f68911c) {
                throw new CompileException("unexpected end of statement in proto declaration: " + this.f68913e, this.f68909a, iE0);
            }
            char[] cArr = this.f68909a;
            char c10 = cArr[i17];
            if (c10 == ';') {
                this.f68912d = i17 + 1;
                b();
                if (this.f68919k && this.f68916h == b.class) {
                    d(this.f68918j, proto.declareReceiver(this.f68917i, Proto.ReceiverType.DEFERRED, (ExecutableStatement) null), null);
                } else {
                    proto.declareReceiver(this.f68917i, this.f68916h, (ExecutableStatement) null);
                }
            } else if (c10 != '=') {
                while (true) {
                    int i18 = this.f68912d;
                    if (i18 >= this.f68911c || !m.c0(this.f68909a[i18])) {
                        break;
                    }
                    this.f68912d++;
                }
                int i19 = this.f68912d;
                if (i19 > i17) {
                    this.f68915g = new String(this.f68909a, i17, i19 - i17);
                }
            } else {
                int i20 = i17 + 1;
                this.f68912d = i20;
                int iE2 = m.E0(cArr, i20);
                this.f68912d = iE2;
                while (true) {
                    int i21 = this.f68912d;
                    int i22 = this.f68911c;
                    if (i21 >= i22) {
                        break;
                    }
                    char[] cArr2 = this.f68909a;
                    char c11 = cArr2[i21];
                    if (c11 != '\"') {
                        if (c11 == ';') {
                            break;
                        }
                        if (c11 == '[' || c11 == '{' || c11 == '\'' || c11 == '(') {
                            this.f68912d = m.e(cArr2, i21, i22, c11, this.f68910b);
                        }
                    } else {
                        this.f68912d = m.e(cArr2, i21, i22, c11, this.f68910b);
                    }
                    this.f68912d++;
                }
                b();
                char[] cArr3 = this.f68909a;
                int i23 = this.f68912d;
                this.f68912d = i23 + 1;
                String str2 = new String(cArr3, iE2, i23 - iE2);
                if (this.f68919k && this.f68916h == b.class) {
                    d(this.f68918j, proto.declareReceiver(this.f68917i, Proto.ReceiverType.DEFERRED, (ExecutableStatement) null), str2);
                } else {
                    proto.declareReceiver(this.f68917i, this.f68916h, (ExecutableStatement) m.G0(str2, this.f68910b));
                }
            }
        }
    }
}
