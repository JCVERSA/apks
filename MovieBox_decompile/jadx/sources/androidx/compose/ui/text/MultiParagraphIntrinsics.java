package androidx.compose.ui.text;

import com.transsion.baselib.db.download.DownloadException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;

public final class MultiParagraphIntrinsics implements o {

    private final AnnotatedString f5726a;

    private final List f5727b;

    private final Lazy f5728c;

    private final Lazy f5729d;

    private final List f5730e;

    public MultiParagraphIntrinsics(AnnotatedString annotatedString, d0 d0Var, List list, o0.e eVar, androidx.compose.ui.text.font.h.b bVar) {
        this.f5726a = annotatedString;
        this.f5727b = list;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        this.f5728c = LazyKt.a(lazyThreadSafetyMode, new Function0<Float>() {
            {
                super(0);
            }

            @Override
            public final Float invoke() {
                Object obj;
                o oVarB;
                List listF = this.this$0.f();
                if (listF.isEmpty()) {
                    obj = null;
                } else {
                    Object obj2 = listF.get(0);
                    float fC = ((n) obj2).b().c();
                    int iN = CollectionsKt.n(listF);
                    int i10 = 1;
                    if (1 <= iN) {
                        while (true) {
                            Object obj3 = listF.get(i10);
                            float fC2 = ((n) obj3).b().c();
                            if (Float.compare(fC, fC2) < 0) {
                                obj2 = obj3;
                                fC = fC2;
                            }
                            if (i10 == iN) {
                                break;
                            }
                            i10++;
                        }
                    }
                    obj = obj2;
                }
                n nVar = (n) obj;
                return Float.valueOf((nVar == null || (oVarB = nVar.b()) == null) ? 0.0f : oVarB.c());
            }
        });
        this.f5729d = LazyKt.a(lazyThreadSafetyMode, new Function0<Float>() {
            {
                super(0);
            }

            @Override
            public final Float invoke() {
                Object obj;
                o oVarB;
                List listF = this.this$0.f();
                if (listF.isEmpty()) {
                    obj = null;
                } else {
                    Object obj2 = listF.get(0);
                    float fA = ((n) obj2).b().a();
                    int iN = CollectionsKt.n(listF);
                    int i10 = 1;
                    if (1 <= iN) {
                        while (true) {
                            Object obj3 = listF.get(i10);
                            float fA2 = ((n) obj3).b().a();
                            if (Float.compare(fA, fA2) < 0) {
                                obj2 = obj3;
                                fA = fA2;
                            }
                            if (i10 == iN) {
                                break;
                            }
                            i10++;
                        }
                    }
                    obj = obj2;
                }
                n nVar = (n) obj;
                return Float.valueOf((nVar == null || (oVarB = nVar.b()) == null) ? 0.0f : oVarB.a());
            }
        });
        r rVarK = d0Var.K();
        List listL = d.l(annotatedString, rVarK);
        ArrayList arrayList = new ArrayList(listL.size());
        int size = listL.size();
        for (int i10 = 0; i10 < size; i10++) {
            AnnotatedString.c cVar = (AnnotatedString.c) listL.get(i10);
            AnnotatedString annotatedStringM = d.m(annotatedString, cVar.f(), cVar.d());
            arrayList.add(new n(p.a(annotatedStringM.i(), d0Var.H(h((r) cVar.e(), rVarK)), annotatedStringM.g(), h.b(g(), cVar.f(), cVar.d()), eVar, bVar), cVar.f(), cVar.d()));
        }
        this.f5730e = arrayList;
    }

    public final r h(r rVar, r rVar2) {
        return !androidx.compose.ui.text.style.j.j(rVar.i(), androidx.compose.ui.text.style.j.f6105b.f()) ? rVar : rVar.a((DownloadException.EXCEPTION_IO_HTTP_RETRY & 1) != 0 ? rVar.f6035a : 0, (DownloadException.EXCEPTION_IO_HTTP_RETRY & 2) != 0 ? rVar.f6036b : rVar2.i(), (DownloadException.EXCEPTION_IO_HTTP_RETRY & 4) != 0 ? rVar.f6037c : 0L, (DownloadException.EXCEPTION_IO_HTTP_RETRY & 8) != 0 ? rVar.f6038d : null, (DownloadException.EXCEPTION_IO_HTTP_RETRY & 16) != 0 ? rVar.f6039e : null, (DownloadException.EXCEPTION_IO_HTTP_RETRY & 32) != 0 ? rVar.f6040f : null, (DownloadException.EXCEPTION_IO_HTTP_RETRY & 64) != 0 ? rVar.f6041g : 0, (DownloadException.EXCEPTION_IO_HTTP_RETRY & 128) != 0 ? rVar.f6042h : 0, (DownloadException.EXCEPTION_IO_HTTP_RETRY & 256) != 0 ? rVar.f6043i : null);
    }

    @Override
    public float a() {
        return ((Number) this.f5729d.getValue()).floatValue();
    }

    @Override
    public boolean b() {
        List list = this.f5730e;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (((n) list.get(i10)).b().b()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public float c() {
        return ((Number) this.f5728c.getValue()).floatValue();
    }

    public final AnnotatedString e() {
        return this.f5726a;
    }

    public final List f() {
        return this.f5730e;
    }

    public final List g() {
        return this.f5727b;
    }
}
