package defpackage;

import com.mgadplus.mgutil.SourceKitLogger;
import com.mgmi.db.dao3.c;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class s5d implements r5d {
    public static final String e = "s5d";
    public y1d a;
    public x1d c;
    public Object b = new Object();
    public Map d = new ConcurrentHashMap();

    public s5d(y1d y1dVar, x1d x1dVar) {
        this.a = y1dVar;
        this.c = x1dVar;
        d();
    }

    @Override
    public c a(String str) {
        Map map = this.d;
        if (map != null && map.size() != 0) {
            return (c) this.d.get(str);
        }
        SourceKitLogger.a("download1", "mDownloadTaskMap == null || mDownloadTaskMap.size() == 0");
        return null;
    }

    @Override
    public void b(c cVar) {
        synchronized (this.b) {
            try {
                this.d.put(cVar.b(), cVar);
                y1d y1dVar = this.a;
                if (y1dVar != null) {
                    y1dVar.d(cVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void c(c cVar) {
        synchronized (this.b) {
            try {
                this.d.remove(cVar.b());
                this.d.put(cVar.b(), cVar);
                y1d y1dVar = this.a;
                if (y1dVar != null) {
                    y1dVar.e(cVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void d() {
        if (this.a != null) {
            String str = e;
            SourceKitLogger.a(str, "initCachFromdb 01");
            List<c> listB = this.a.b();
            if (listB == null || listB.size() <= 0) {
                SourceKitLogger.a(str, "initCachFromdb 02");
                return;
            }
            for (c cVar : listB) {
                synchronized (this.b) {
                    if (cVar != null) {
                        try {
                            if (b2d.a(cVar.c())) {
                                SourceKitLogger.a(e, "initCachFromdb put");
                                this.d.put(cVar.b(), cVar);
                                SourceKitLogger.a("download1", "初始化查询到了数据");
                            } else {
                                SourceKitLogger.a(e, "initCachFromdb delete");
                                y1d y1dVar = this.a;
                                if (y1dVar != null) {
                                    y1dVar.c(cVar);
                                    SourceKitLogger.a("download1", "初始化删除下载记录：" + cVar.toString());
                                }
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            }
        }
    }

    @Override
    public void a(c cVar) {
        if (cVar == null) {
            return;
        }
        synchronized (this.b) {
            try {
                if (this.d.containsKey(cVar.b())) {
                    this.d.remove(cVar.b());
                }
                y1d y1dVar = this.a;
                if (y1dVar != null) {
                    y1dVar.c(cVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public List a(long j) {
        SourceKitLogger.a(e, "quenByFreeSize");
        ArrayList arrayList = new ArrayList();
        Map map = this.d;
        if (map != null) {
            long jLongValue = 0;
            for (Map.Entry entry : map.entrySet()) {
                c cVar = (c) entry.getValue();
                if (cVar != null && cVar.d().longValue() > 0) {
                    jLongValue += cVar.d().longValue();
                    arrayList.add(entry.getValue());
                }
                if (jLongValue > j) {
                    break;
                }
            }
        }
        SourceKitLogger.a(e, "quenByFreeSize size=" + arrayList.size());
        return arrayList;
    }
}
