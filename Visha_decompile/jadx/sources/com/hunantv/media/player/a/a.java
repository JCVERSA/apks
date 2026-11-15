package com.hunantv.media.player.a;

import java.util.Arrays;

public class a {
    private com.hunantv.media.player.a.b b;
    private String[] c;
    private b d;
    private InterfaceC0133a i;
    private volatile boolean a = false;
    private long e = 0;
    private volatile int f = 0;
    private int g = 0;
    private int h = 20;

    public static class AnonymousClass2 {
        static final int[] a;

        static {
            int[] iArr = new int[b.values().length];
            a = iArr;
            try {
                iArr[b.NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    public interface InterfaceC0133a {
        void onDnsFail(a aVar);

        void onDnsFinish(a aVar);

        void onDnsStart(a aVar);

        void onDnsSuc(a aVar, String[] strArr);
    }

    public enum b {
        NORMAL,
        FREE_HTTP_DNS
    }

    public int a(int i) {
        com.hunantv.media.player.a.b bVar = this.b;
        return bVar != null ? bVar.b() + i : i + 201000;
    }

    public void c() {
        com.hunantv.media.player.a.b bVar = this.b;
        if (bVar != null) {
            bVar.e();
        }
    }

    public b d() {
        return this.d;
    }

    public int e() {
        com.hunantv.media.player.a.b bVar = this.b;
        if (bVar != null) {
            this.f = bVar.c();
        }
        return this.f;
    }

    public long f() {
        if (this.e > 0) {
            return System.currentTimeMillis() - this.e;
        }
        return 0L;
    }

    public void b(int i) {
        this.g = i;
        com.hunantv.media.player.a.b bVar = this.b;
        if (bVar != null) {
            bVar.b(i);
        }
    }

    public void a(InterfaceC0133a interfaceC0133a) {
        this.i = interfaceC0133a;
    }

    public String[] b() {
        return this.c;
    }

    public void a(String str, b bVar, boolean z) {
        this.e = System.currentTimeMillis();
        this.a = true;
        this.c = null;
        this.d = bVar;
        int i = AnonymousClass2.a[bVar.ordinal()];
        c cVar = new c();
        this.b = cVar;
        cVar.a(z);
        this.b.b(this.g);
        this.b.a(str).a(new com.hunantv.media.player.a.b.a() {
            @Override
            public void a() {
                if (a.this.i != null) {
                    a.this.i.onDnsStart(a.this);
                }
            }

            @Override
            public void b() {
                a.this.c = null;
                if (a.this.i != null) {
                    a.this.i.onDnsFail(a.this);
                }
            }

            @Override
            public void c() {
                a.this.a = false;
                if (a.this.i != null) {
                    a.this.i.onDnsFinish(a.this);
                }
            }

            /* JADX WARN: Code duplicated, block: B:8:0x001d A[Catch: Exception -> 0x001b, TRY_LEAVE, TryCatch #0 {Exception -> 0x001b, blocks: (B:3:0x0002, B:5:0x000b, B:8:0x001d), top: B:16:0x0002 }] */
            @Override
            public void a(String[] strArr) {
                if (strArr != null) {
                    try {
                        if (strArr.length > a.this.h) {
                            a aVar = a.this;
                            aVar.c = (String[]) Arrays.copyOf(strArr, aVar.h);
                        } else {
                            a.this.c = strArr;
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                } else {
                    a.this.c = strArr;
                }
                if (a.this.i != null) {
                    InterfaceC0133a interfaceC0133a = a.this.i;
                    a aVar2 = a.this;
                    interfaceC0133a.onDnsSuc(aVar2, aVar2.c);
                }
            }
        });
        Thread thread = new Thread(this.b);
        thread.setName("mgtvmp_jADns");
        thread.start();
    }

    public boolean a() {
        return this.a;
    }
}
