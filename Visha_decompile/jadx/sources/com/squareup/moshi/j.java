package com.squareup.moshi;

import defpackage.rc5;
import defpackage.wkb;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Deque;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class j {
    public static final List e;
    public final List a;
    public final int b;
    public final ThreadLocal c = new ThreadLocal();
    public final Map d = new LinkedHashMap();

    public static final class a {
        public final List a = new ArrayList();
        public int b = 0;

        public a a(e.InterfaceC0196e interfaceC0196e) {
            if (interfaceC0196e == null) {
                throw new IllegalArgumentException("factory == null");
            }
            List list = this.a;
            int i = this.b;
            this.b = i + 1;
            list.add(i, interfaceC0196e);
            return this;
        }

        public a b(Object obj) {
            if (obj != null) {
                return a(com.squareup.moshi.a.d(obj));
            }
            throw new IllegalArgumentException("adapter == null");
        }

        public a c(e.InterfaceC0196e interfaceC0196e) {
            if (interfaceC0196e == null) {
                throw new IllegalArgumentException("factory == null");
            }
            this.a.add(interfaceC0196e);
            return this;
        }

        public j d() {
            return new j(this);
        }
    }

    public static final class b extends e {
        public final Type a;
        public final String b;
        public final Object c;
        public e d;

        public b(Type type, String str, Object obj) {
            this.a = type;
            this.b = str;
            this.c = obj;
        }

        @Override
        public Object fromJson(JsonReader jsonReader) {
            e eVar = this.d;
            if (eVar != null) {
                return eVar.fromJson(jsonReader);
            }
            throw new IllegalStateException("JsonAdapter isn't ready");
        }

        @Override
        public void toJson(rc5 rc5Var, Object obj) {
            e eVar = this.d;
            if (eVar == null) {
                throw new IllegalStateException("JsonAdapter isn't ready");
            }
            eVar.toJson(rc5Var, obj);
        }

        public String toString() {
            e eVar = this.d;
            return eVar != null ? eVar.toString() : super.toString();
        }
    }

    public final class c {
        public final List a = new ArrayList();
        public final Deque b = new ArrayDeque();
        public boolean c;

        public c() {
        }

        public void a(e eVar) {
            ((b) this.b.getLast()).d = eVar;
        }

        public IllegalArgumentException b(IllegalArgumentException illegalArgumentException) {
            if (this.c) {
                return illegalArgumentException;
            }
            this.c = true;
            if (this.b.size() == 1 && ((b) this.b.getFirst()).b == null) {
                return illegalArgumentException;
            }
            StringBuilder sb = new StringBuilder(illegalArgumentException.getMessage());
            Iterator itDescendingIterator = this.b.descendingIterator();
            while (itDescendingIterator.hasNext()) {
                b bVar = (b) itDescendingIterator.next();
                sb.append("\nfor ");
                sb.append(bVar.a);
                if (bVar.b != null) {
                    sb.append(' ');
                    sb.append(bVar.b);
                }
            }
            return new IllegalArgumentException(sb.toString(), illegalArgumentException);
        }

        public void c(boolean z) {
            this.b.removeLast();
            if (this.b.isEmpty()) {
                j.this.c.remove();
                if (z) {
                    synchronized (j.this.d) {
                        try {
                            int size = this.a.size();
                            for (int i = 0; i < size; i++) {
                                b bVar = (b) this.a.get(i);
                                e eVar = (e) j.this.d.put(bVar.c, bVar.d);
                                if (eVar != null) {
                                    bVar.d = eVar;
                                    j.this.d.put(bVar.c, eVar);
                                }
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            }
        }

        public e d(Type type, String str, Object obj) {
            int size = this.a.size();
            for (int i = 0; i < size; i++) {
                b bVar = (b) this.a.get(i);
                if (bVar.c.equals(obj)) {
                    this.b.add(bVar);
                    e eVar = bVar.d;
                    return eVar != null ? eVar : bVar;
                }
            }
            b bVar2 = new b(type, str, obj);
            this.a.add(bVar2);
            this.b.add(bVar2);
            return null;
        }
    }

    static {
        ArrayList arrayList = new ArrayList(5);
        e = arrayList;
        arrayList.add(l.a);
        arrayList.add(d.b);
        arrayList.add(i.c);
        arrayList.add(com.squareup.moshi.b.c);
        arrayList.add(k.a);
        arrayList.add(com.squareup.moshi.c.d);
    }

    public j(a aVar) {
        int size = aVar.a.size();
        List list = e;
        ArrayList arrayList = new ArrayList(size + list.size());
        arrayList.addAll(aVar.a);
        arrayList.addAll(list);
        this.a = Collections.unmodifiableList(arrayList);
        this.b = aVar.b;
    }

    public e c(Class cls) {
        return e(cls, wkb.a);
    }

    public e d(Type type) {
        return e(type, wkb.a);
    }

    public e e(Type type, Set set) {
        return f(type, set, null);
    }

    public e f(Type type, Set set, String str) {
        if (type == null) {
            throw new NullPointerException("type == null");
        }
        if (set == null) {
            throw new NullPointerException("annotations == null");
        }
        Type typeP = wkb.p(wkb.a(type));
        Object objG = g(typeP, set);
        synchronized (this.d) {
            try {
                e eVar = (e) this.d.get(objG);
                if (eVar != null) {
                    return eVar;
                }
                c cVar = (c) this.c.get();
                if (cVar == null) {
                    cVar = new c();
                    this.c.set(cVar);
                }
                e eVarD = cVar.d(typeP, str, objG);
                try {
                    if (eVarD != null) {
                        cVar.c(false);
                        return eVarD;
                    }
                    try {
                        int size = this.a.size();
                        for (int i = 0; i < size; i++) {
                            e eVarA = ((e.InterfaceC0196e) this.a.get(i)).a(typeP, set, this);
                            if (eVarA != null) {
                                cVar.a(eVarA);
                                cVar.c(true);
                                return eVarA;
                            }
                        }
                        throw new IllegalArgumentException("No JsonAdapter for " + wkb.u(typeP, set));
                    } catch (IllegalArgumentException e2) {
                        throw cVar.b(e2);
                    }
                } catch (Throwable th) {
                    cVar.c(false);
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final Object g(Type type, Set set) {
        return set.isEmpty() ? type : Arrays.asList(type, set);
    }

    public e h(e.InterfaceC0196e interfaceC0196e, Type type, Set set) {
        if (set == null) {
            throw new NullPointerException("annotations == null");
        }
        Type typeP = wkb.p(wkb.a(type));
        int iIndexOf = this.a.indexOf(interfaceC0196e);
        if (iIndexOf == -1) {
            throw new IllegalArgumentException("Unable to skip past unknown factory " + interfaceC0196e);
        }
        int size = this.a.size();
        for (int i = iIndexOf + 1; i < size; i++) {
            e eVarA = ((e.InterfaceC0196e) this.a.get(i)).a(typeP, set, this);
            if (eVarA != null) {
                return eVarA;
            }
        }
        throw new IllegalArgumentException("No next JsonAdapter for " + wkb.u(typeP, set));
    }
}
