package wr;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.transsion.shorttv.bean.Subject;
import java.util.HashSet;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import qi.h;

public final class a {

    public static final C0927a f74731b = new C0927a(null);

    private final HashSet f74732a = new HashSet();

    public static final class C0927a {
        public C0927a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0927a() {
        }
    }

    public static void b(a aVar, String str, Subject subject, int i10, Long l10, String str2, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            l10 = null;
        }
        aVar.a(str, subject, i10, l10, str2);
    }

    public final void a(String pageName, Subject item, int i10, Long l10, String optType) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(item, "item");
        Intrinsics.h(optType, "optType");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (this.f74732a.contains(item.getSubjectId())) {
            return;
        }
        this.f74732a.add(item.getSubjectId());
        linkedHashMap.put(RequestParameters.POSITION, String.valueOf(i10));
        linkedHashMap.put("opt_type", optType);
        linkedHashMap.put("ops", String.valueOf(item.getOps()));
        linkedHashMap.put("subject_id", String.valueOf(item.getSubjectId()));
        linkedHashMap.put("item_type", "subject");
        if (l10 != null) {
            linkedHashMap.put("browse_duration", String.valueOf(l10.longValue()));
        }
        or.b.f67950a.a();
        h.f69682a.z(pageName, linkedHashMap);
    }

    public final void c(String pageName, Subject subject, int i10, String optType) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(optType, "optType");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(RequestParameters.POSITION, String.valueOf(i10));
        linkedHashMap.put("opt_type", optType);
        linkedHashMap.put("subject_id", String.valueOf(subject != null ? subject.getSubjectId() : null));
        linkedHashMap.put("item_type", "subject");
        linkedHashMap.put("ops", String.valueOf(subject != null ? subject.getOps() : null));
        or.b.f67950a.a();
        h.f69682a.o(pageName, linkedHashMap);
    }
}
