package com.transsion.postdetail.shorttv;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.transsion.moviedetailapi.bean.Subject;
import java.util.HashSet;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class j {

    public static final a f47190b = new a(null);

    private final HashSet f47191a = new HashSet();

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public final void a(String pageName, Subject item, int i10, long j10, String optType) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(item, "item");
        Intrinsics.h(optType, "optType");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (this.f47191a.contains(item.getSubjectId())) {
            return;
        }
        this.f47191a.add(item.getSubjectId());
        linkedHashMap.put(RequestParameters.POSITION, String.valueOf(i10));
        linkedHashMap.put("opt_type", optType);
        linkedHashMap.put("ops", String.valueOf(item.getOps()));
        linkedHashMap.put("subject_id", String.valueOf(item.getSubjectId()));
        linkedHashMap.put("item_type", "subject");
        linkedHashMap.put("browse_duration", String.valueOf(j10));
        qi.h.f69682a.z(pageName, linkedHashMap);
    }

    public final void b(String pageName, Subject subject, int i10, String optType) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(optType, "optType");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(RequestParameters.POSITION, String.valueOf(i10));
        linkedHashMap.put("opt_type", optType);
        linkedHashMap.put("subject_id", String.valueOf(subject != null ? subject.getSubjectId() : null));
        linkedHashMap.put("item_type", "subject");
        linkedHashMap.put("ops", String.valueOf(subject != null ? subject.getOps() : null));
        qi.h.f69682a.o(pageName, linkedHashMap);
    }
}
