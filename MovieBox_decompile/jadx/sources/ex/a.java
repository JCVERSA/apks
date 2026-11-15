package ex;

import com.transsion.moviedetailapi.bean.Subject;
import java.util.HashSet;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;
import qi.h;

public final class a {

    private final HashSet f59839a = new HashSet();

    public final void a(String pageName, Subject item, int i10, long j10) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(item, "item");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (this.f59839a.contains(item.getSubjectId())) {
            return;
        }
        this.f59839a.add(item.getSubjectId());
        linkedHashMap.put("sequence", String.valueOf(i10));
        linkedHashMap.put("ops", String.valueOf(item.getOps()));
        linkedHashMap.put("subject_id", String.valueOf(item.getSubjectId()));
        if (j10 > 0) {
            linkedHashMap.put("browse_duration", String.valueOf(j10));
        }
        linkedHashMap.put("has_resource", String.valueOf(item.getHasResource()));
        h.f69682a.z(pageName, linkedHashMap);
    }

    public final void b(String pageName, Subject subject, int i10) {
        Intrinsics.h(pageName, "pageName");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("sequence", String.valueOf(i10));
        linkedHashMap.put("ops", String.valueOf(subject != null ? subject.getOps() : null));
        linkedHashMap.put("subject_id", String.valueOf(subject != null ? subject.getSubjectId() : null));
        linkedHashMap.put("has_resource", String.valueOf(subject != null ? subject.getHasResource() : null));
        h.f69682a.o(pageName, linkedHashMap);
    }

    public final void c(String pageName, Subject subject, String moduleName) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(moduleName, "moduleName");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("module_name", moduleName);
        linkedHashMap.put("ops", String.valueOf(subject != null ? subject.getOps() : null));
        linkedHashMap.put("subject_id", String.valueOf(subject != null ? subject.getSubjectId() : null));
        linkedHashMap.put("has_resource", String.valueOf(subject != null ? subject.getHasResource() : null));
        h.f69682a.o(pageName, linkedHashMap);
    }
}
