package defpackage;

import android.view.View;
import androidx.core.app.NotificationCompat;
import com.transsion.dbdata.R;

public abstract class r16 {
    public static final int a = R.id.id;
    public static final int b = R.id.item_id;
    public static final int c = R.id.sort;
    public static final int d = R.id.channel_id;
    public static final int e = R.id.name;

    public static int a() {
        return R.id.mark;
    }

    public static void b(View view, long j, String str) {
        e(view);
        view.setTag(a, Long.valueOf(j));
        view.setTag(b, 10001);
        view.setTag(c, str);
    }

    public static void c(View view, long j, String str, long j2, String str2, long j3, int i) {
        e(view);
        view.setTag(a, Long.valueOf(j));
        view.setTag(b, 10002);
        view.setTag(e, str);
        view.setTag(d, Long.valueOf(j2));
        view.setTag(R.id.request_id, str2);
        view.setTag(R.id.topic_id, Long.valueOf(j3));
        view.setTag(R.id.pay_type, Integer.valueOf(i));
    }

    public static void d(View view) {
        e(view);
        view.setTag(b, 10000);
    }

    public static void e(View view) {
        view.setTag(a(), NotificationCompat.CATEGORY_MESSAGE);
    }

    public static void f(View view, long j, int i, long j2, String str, String str2, int i2, int i3, String str3, int i4, String str4) {
        e(view);
        view.setTag(a, Long.valueOf(j));
        view.setTag(b, 9999);
        view.setTag(c, Integer.valueOf(i));
        view.setTag(d, Long.valueOf(j2));
        view.setTag(R.id.biz_group_id, str);
        view.setTag(R.id.video_list, str2);
        view.setTag(R.id.is_more, Integer.valueOf(i2));
        view.setTag(R.id.recommend_part, Integer.valueOf(i3));
        view.setTag(R.id.request_id, str3);
        view.setTag(R.id.pay_type, Integer.valueOf(i4));
        view.setTag(R.id.vk_id, str4);
    }

    public static void g(View view, long j, int i, long j2, String str, String str2, int i2, int i3, String str3, int i4, String str4) {
        e(view);
        view.setTag(a, Long.valueOf(j));
        view.setTag(b, 10003);
        view.setTag(c, Integer.valueOf(i));
        view.setTag(d, Long.valueOf(j2));
        view.setTag(R.id.biz_group_id, str);
        view.setTag(R.id.video_list, str2);
        view.setTag(R.id.is_more, Integer.valueOf(i2));
        view.setTag(R.id.recommend_part, Integer.valueOf(i3));
        view.setTag(e, str3);
        view.setTag(R.id.video_id, Integer.valueOf(i4));
        view.setTag(R.id.vk_id, str4);
    }
}
