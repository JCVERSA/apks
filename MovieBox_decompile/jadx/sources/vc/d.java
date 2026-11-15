package vc;

import com.google.firebase.perf.util.Constants$CounterNames;
import com.google.firebase.perf.v1.i;
import java.util.Iterator;
import java.util.Map;

final class d extends e {

    private static final uc.a f73577b = uc.a.e();

    private final i f73578a;

    d(i iVar) {
        this.f73578a = iVar;
    }

    private boolean g(Map map) {
        for (Map.Entry entry : map.entrySet()) {
            try {
                e.d((String) entry.getKey(), (String) entry.getValue());
            } catch (IllegalArgumentException e10) {
                f73577b.j(e10.getLocalizedMessage());
                return false;
            }
        }
        return true;
    }

    private boolean h(i iVar) {
        return i(iVar, 0);
    }

    private boolean i(i iVar, int i10) {
        if (iVar == null) {
            return false;
        }
        if (i10 > 1) {
            f73577b.j("Exceed MAX_SUBTRACE_DEEP:1");
            return false;
        }
        for (Map.Entry entry : iVar.y().entrySet()) {
            if (!l((String) entry.getKey())) {
                f73577b.j("invalid CounterId:" + ((String) entry.getKey()));
                return false;
            }
            if (!m((Long) entry.getValue())) {
                f73577b.j("invalid CounterValue:" + entry.getValue());
                return false;
            }
        }
        Iterator it = iVar.G().iterator();
        while (it.hasNext()) {
            if (!i((i) it.next(), i10 + 1)) {
                return false;
            }
        }
        return true;
    }

    private boolean j(i iVar) {
        if (iVar.x() > 0) {
            return true;
        }
        Iterator it = iVar.G().iterator();
        while (it.hasNext()) {
            if (((i) it.next()).x() > 0) {
                return true;
            }
        }
        return false;
    }

    private boolean k(i iVar) {
        return iVar.E().startsWith("_st_");
    }

    private boolean l(String str) {
        if (str == null) {
            return false;
        }
        String strTrim = str.trim();
        if (strTrim.isEmpty()) {
            f73577b.j("counterId is empty");
            return false;
        }
        if (strTrim.length() <= 100) {
            return true;
        }
        f73577b.j("counterId exceeded max length 100");
        return false;
    }

    private boolean m(Long l10) {
        return l10 != null;
    }

    private boolean n(i iVar) {
        Long l10 = (Long) iVar.y().get(Constants$CounterNames.FRAMES_TOTAL.toString());
        return l10 != null && l10.compareTo((Long) 0L) > 0;
    }

    private boolean o(i iVar, int i10) {
        if (iVar == null) {
            f73577b.j("TraceMetric is null");
            return false;
        }
        if (i10 > 1) {
            f73577b.j("Exceed MAX_SUBTRACE_DEEP:1");
            return false;
        }
        if (!q(iVar.E())) {
            f73577b.j("invalid TraceId:" + iVar.E());
            return false;
        }
        if (!p(iVar)) {
            f73577b.j("invalid TraceDuration:" + iVar.B());
            return false;
        }
        if (!iVar.H()) {
            f73577b.j("clientStartTimeUs is null.");
            return false;
        }
        if (!k(iVar) || n(iVar)) {
            Iterator it = iVar.G().iterator();
            while (it.hasNext()) {
                if (!o((i) it.next(), i10 + 1)) {
                    return false;
                }
            }
            return g(iVar.z());
        }
        f73577b.j("non-positive totalFrames in screen trace " + iVar.E());
        return false;
    }

    private boolean p(i iVar) {
        return iVar != null && iVar.B() > 0;
    }

    private boolean q(String str) {
        if (str == null) {
            return false;
        }
        String strTrim = str.trim();
        return !strTrim.isEmpty() && strTrim.length() <= 100;
    }

    @Override
    public boolean c() {
        if (!o(this.f73578a, 0)) {
            f73577b.j("Invalid Trace:" + this.f73578a.E());
            return false;
        }
        if (!j(this.f73578a) || h(this.f73578a)) {
            return true;
        }
        f73577b.j("Invalid Counters for Trace:" + this.f73578a.E());
        return false;
    }
}
