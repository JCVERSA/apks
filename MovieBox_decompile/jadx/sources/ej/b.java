package ej;

import android.text.TextUtils;
import com.transsion.baselib.report.recent_event.ActionEvent;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class b {

    public static final a f59709a = new a(null);

    private static final ej.a f59710b = new ej.a(30);

    private static final HashMap f59711c;

    private static final HashMap f59712d;

    private static final HashMap f59713e;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final ActionEvent a(Map map, String str) {
            String str2 = (String) map.get("module_name");
            if (TextUtils.isEmpty(str2) || !b.f59711c.containsKey(str2)) {
                if (!TextUtils.equals(str, "Trending")) {
                    return null;
                }
                Integer num = (Integer) b.f59712d.get(str);
                return new ActionEvent(1, num != null ? num.intValue() : 0, f((String) map.get("post_id")), f((String) map.get("subject_id")), f((String) map.get("group_id")), 0, 0, 96, null);
            }
            Integer num2 = (Integer) b.f59712d.get(str);
            int iIntValue = num2 != null ? num2.intValue() : 0;
            String strF = f((String) map.get("post_id"));
            String strF2 = f((String) map.get("subject_id"));
            String strF3 = f((String) map.get("group_id"));
            HashMap map2 = b.f59711c;
            if (str2 == null) {
                str2 = "0";
            }
            return new ActionEvent(((Number) MapsKt.i(map2, str2)).intValue(), iIntValue, strF, strF2, strF3, 0, 0, 96, null);
        }

        private final ActionEvent b(Map map, String str) {
            if (TextUtils.equals(str, "postdetail")) {
                Integer num = (Integer) b.f59712d.get(str);
                return new ActionEvent(15, num != null ? num.intValue() : 0, f((String) map.get("post_id")), f((String) map.get("subject_id")), f((String) map.get("group_id")), 0, 0, 96, null);
            }
            if (!TextUtils.equals(str, "searchpage")) {
                return null;
            }
            Integer num2 = (Integer) b.f59712d.get(str);
            return new ActionEvent(19, num2 != null ? num2.intValue() : 0, "0", "0", "0", 0, 0, 96, null);
        }

        private final ActionEvent c(String str, Map map, String str2) {
            if (!b.f59712d.containsKey(str2)) {
                return null;
            }
            Integer num = (Integer) b.f59712d.get(str2);
            int iIntValue = num != null ? num.intValue() : 0;
            String strF = f((String) map.get("post_id"));
            String strF2 = f((String) map.get("subject_id"));
            String strF3 = f((String) map.get("group_id"));
            String str3 = (String) map.get("play_duration");
            int i10 = str3 != null ? Integer.parseInt(str3) : 0;
            String str4 = (String) map.get("completeCount");
            int i11 = str4 != null ? Integer.parseInt(str4) : 0;
            Integer num2 = (Integer) b.f59713e.get(str);
            if (num2 != null) {
                return new ActionEvent(num2.intValue(), iIntValue, strF, strF2, strF3, i10, i11);
            }
            return null;
        }

        private final String f(String str) {
            return (TextUtils.isEmpty(str) || str == null) ? "0" : str;
        }

        public final void d(String pageName, String event, Map map) {
            ActionEvent actionEventC;
            Intrinsics.h(pageName, "pageName");
            Intrinsics.h(event, "event");
            Intrinsics.h(map, "map");
            if (TextUtils.equals(event, "click")) {
                actionEventC = a(map, pageName);
            } else if (TextUtils.equals(event, "pt")) {
                actionEventC = b(map, pageName);
            } else {
                actionEventC = (TextUtils.equals(event, "video_play") || TextUtils.equals(event, "audio_play")) ? c(event, map, pageName) : null;
            }
            if (actionEventC != null) {
                b.f59710b.offer(actionEventC);
            }
        }

        public final Queue e() {
            return b.f59710b;
        }

        private a() {
        }
    }

    static {
        HashMap map = new HashMap();
        f59711c = map;
        HashMap map2 = new HashMap();
        f59712d = map2;
        HashMap map3 = new HashMap();
        f59713e = map3;
        map.put("unknow", 0);
        map.put("like", 3);
        map.put("dislike", 4);
        map.put("want_to_see", 5);
        map.put("i_have_seen", 6);
        map.put("create_review", 7);
        map.put("copylink", 8);
        map.put("whatsup", 8);
        map.put("Telegram", 8);
        map.put("create_post", 9);
        map.put("checkin", 10);
        map.put("checkout", 11);
        map.put("download", 12);
        map.put("comment", 13);
        map.put("want_to_see_cancel", 17);
        map.put("searchpage", 19);
        map.put("search", 20);
        map.put("download_subject", 21);
        map2.put("default", 0);
        map2.put("Trending", 1);
        map2.put("roomdetail", 2);
        map2.put("subjectdetail", 3);
        map2.put("postdetail", 4);
        map3.put("click", 1);
        map3.put("audio_play", 2);
        map3.put("video_play", 2);
        map3.put("PT", 15);
    }
}
