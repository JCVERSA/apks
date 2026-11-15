package defpackage;

import android.app.Application;
import android.text.TextUtils;
import android.view.View;
import com.transsion.dbdata.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class bcc {
    public static List a = new ArrayList();

    public class a implements cl4.e {
        @Override
        public void a(ArrayList arrayList) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                View view = (View) it.next();
                int i = r16.a;
                long jLongValue = view.getTag(i) != null ? ((Long) view.getTag(i)).longValue() : -1L;
                int iIntValue = ((Integer) view.getTag(r16.b)).intValue();
                if (iIntValue == 9999) {
                    int i2 = R.id.video_list;
                    String str = view.getTag(i2) != null ? (String) view.getTag(i2) : null;
                    if (!bcc.a.contains(str)) {
                        bcc.a.add(str);
                        int i3 = r16.c;
                        int iIntValue2 = view.getTag(i3) != null ? ((Integer) view.getTag(i3)).intValue() : -1;
                        int i4 = r16.d;
                        long jLongValue2 = view.getTag(i4) != null ? ((Long) view.getTag(i4)).longValue() : -1L;
                        int i5 = R.id.biz_group_id;
                        String str2 = view.getTag(i5) != null ? (String) view.getTag(i5) : "";
                        int i6 = R.id.is_more;
                        int iIntValue3 = view.getTag(i6) != null ? ((Integer) view.getTag(i6)).intValue() : 0;
                        int i7 = R.id.recommend_part;
                        int iIntValue4 = view.getTag(i7) != null ? ((Integer) view.getTag(i7)).intValue() : 0;
                        int i8 = R.id.request_id;
                        h27.c().e(1075, d06.d(jLongValue, jLongValue2, iIntValue2, str, iIntValue3, str2, iIntValue4, view.getTag(i8) != null ? (String) view.getTag(i8) : ""));
                    }
                } else if (iIntValue == 10003) {
                    int i9 = R.id.video_list;
                    String str3 = view.getTag(i9) != null ? (String) view.getTag(i9) : null;
                    if (!bcc.a.contains(str3)) {
                        bcc.a.add(str3);
                        int i10 = r16.c;
                        int iIntValue5 = view.getTag(i10) != null ? ((Integer) view.getTag(i10)).intValue() : -1;
                        int i11 = r16.d;
                        long jLongValue3 = view.getTag(i11) != null ? ((Long) view.getTag(i11)).longValue() : -1L;
                        int i12 = R.id.biz_group_id;
                        String str4 = view.getTag(i12) != null ? (String) view.getTag(i12) : "";
                        int i13 = R.id.is_more;
                        int iIntValue6 = view.getTag(i13) != null ? ((Integer) view.getTag(i13)).intValue() : 0;
                        int i14 = R.id.recommend_part;
                        int iIntValue7 = view.getTag(i14) != null ? ((Integer) view.getTag(i14)).intValue() : 0;
                        int i15 = R.id.request_id;
                        String str5 = view.getTag(i15) != null ? (String) view.getTag(i15) : "";
                        long j = jLongValue3;
                        h27.c().e(1075, d06.d(jLongValue, jLongValue3, iIntValue5, str3, iIntValue6, str4, iIntValue7, str5));
                        int i16 = r16.e;
                        String strValueOf = view.getTag(i16) != null ? String.valueOf(view.getTag(i16)) : "";
                        int i17 = R.id.vk_id;
                        String strValueOf2 = view.getTag(i17) != null ? String.valueOf(view.getTag(i17)) : "";
                        int i18 = R.id.video_id;
                        int iIntValue8 = view.getTag(i18) != null ? ((Integer) view.getTag(i18)).intValue() : 0;
                        int i19 = R.id.pay_type;
                        int iIntValue9 = view.getTag(i19) != null ? ((Integer) view.getTag(i19)).intValue() : 0;
                        int i20 = R.id.topic_id;
                        long jLongValue4 = view.getTag(i20) != null ? ((Long) view.getTag(i20)).longValue() : -1L;
                        if (TextUtils.isEmpty(strValueOf2)) {
                            c06.k(iIntValue8, strValueOf, j, str5, jLongValue4, iIntValue9);
                        } else {
                            c06.m(strValueOf2, strValueOf, j, str5);
                        }
                    }
                } else if (iIntValue == 10000) {
                    p06.d0("vd_ott_detail_related_show");
                } else if (iIntValue == 10001) {
                    int i21 = r16.c;
                    et7.d(jLongValue, view.getTag(i21) != null ? String.valueOf(view.getTag(i21)) : "");
                    h27.c().e(1084, Long.valueOf(jLongValue));
                } else if (iIntValue == 10002) {
                    int i22 = r16.e;
                    String strValueOf3 = view.getTag(i22) != null ? String.valueOf(view.getTag(i22)) : "";
                    if (!bcc.a.contains(strValueOf3)) {
                        bcc.a.add(strValueOf3);
                        int i23 = r16.d;
                        long jLongValue5 = view.getTag(i23) != null ? ((Long) view.getTag(i23)).longValue() : -1L;
                        int i24 = R.id.vk_id;
                        String strValueOf4 = view.getTag(i24) != null ? String.valueOf(view.getTag(i24)) : "";
                        int i25 = R.id.request_id;
                        String str6 = view.getTag(i25) != null ? (String) view.getTag(i25) : "";
                        int i26 = R.id.topic_id;
                        long jLongValue6 = view.getTag(i26) != null ? ((Long) view.getTag(i26)).longValue() : -1L;
                        int i27 = R.id.pay_type;
                        int iIntValue10 = view.getTag(i27) != null ? ((Integer) view.getTag(i27)).intValue() : 0;
                        if (TextUtils.isEmpty(strValueOf4)) {
                            c06.k(jLongValue, strValueOf3, jLongValue5, str6, jLongValue6, iIntValue10);
                        } else {
                            c06.m(strValueOf4, strValueOf3, jLongValue5, str6);
                        }
                    }
                }
            }
        }
    }

    public static void a() {
        a.clear();
    }

    public static void b(Application application) {
        new ex9(application).f(com.transsion.exposure.R.id.mark).d(1000L).g(25).c(false).b(true).e(true).h(new a()).a();
    }
}
