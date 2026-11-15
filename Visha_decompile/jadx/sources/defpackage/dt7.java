package defpackage;

import android.content.res.Resources;
import android.text.TextUtils;
import android.util.Log;
import com.transsion.dbdata.beans.onlinevideo.FeedStreamBean;
import com.transsion.dbdata.beans.onlinevideo.VkRecommendBean;
import com.transsion.onlinevideo.R;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.time.OffsetDateTime;
import java.time.temporal.ChronoUnit;
import java.util.Comparator;
import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;

public abstract class dt7 {
    public static final String a = "dt7";
    public static final a[] b = {new a(1000000, R.string.visha_measure_million, false, true), new a(1000, R.string.visha_measure_thousand, false, true), new a(1)};
    public static final a[] c = {new a(518400, R.string.visha_play_one_yewas_ago, R.string.visha_play_one_year_ago), new a(43200, R.string.visha_play_many_months_ago, R.string.visha_play_one_month_ago), new a(10080, R.string.visha_play_many_weeks_ago, R.string.visha_play_one_week_ago), new a(1440, R.string.visha_play_many_days_ago, R.string.visha_play_one_day_ago), new a(60, R.string.visha_play_many_hours_ago, R.string.visha_play_one_hour_ago), new a(1, R.string.visha_play_many_minutes_ago, R.string.visha_play_one_minute_ago)};

    public static String c(String str) {
        long jD = d(str);
        return jD < 1 ? "" : c[f(jD, true)].a(jD);
    }

    public static long d(String str) {
        try {
            return ChronoUnit.MINUTES.between(OffsetDateTime.parse(str), OffsetDateTime.now());
        } catch (Exception e) {
            Log.i(a, "getDiffDay error: " + e.getMessage());
            return 0L;
        }
    }

    public static String e(long j) {
        Resources resources = se.a().getResources();
        if (j == 1) {
            return resources.getString(R.string.visha_ott_liker);
        }
        return j < 1 ? resources.getString(R.string.visha_ott_likers, "0") : resources.getString(R.string.visha_ott_likers, b[f(j, false)].b(j));
    }

    public static int f(long j, boolean z) {
        a[] aVarArr = z ? c : b;
        for (int i = 0; i < aVarArr.length; i++) {
            if (j >= aVarArr[i].a) {
                return i;
            }
        }
        return 0;
    }

    public static String g(long j, long j2, String str) {
        return l(false, i(j), e(j2), c(str));
    }

    public static String h(long j, String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            str2 = "VK Video";
        }
        return l(true, str2, i(j), c(str));
    }

    public static String i(long j) {
        Resources resources = se.a().getResources();
        if (j == 1) {
            return resources.getString(R.string.visha_ott_viewer);
        }
        return j < 1 ? resources.getString(R.string.visha_ott_viewers, "0") : resources.getString(R.string.visha_ott_viewers, b[f(j, false)].b(j));
    }

    public static String j(FeedStreamBean feedStreamBean) {
        try {
            return (String) feedStreamBean.getVideo().getCategories().stream().map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return dt7.m((VkRecommendBean.CategoryBean) obj);
                }
            }).collect(Collectors.joining(StringUtils.COMMA));
        } catch (Exception e) {
            Log.e(a, "getVkBeanCategories: " + e.getMessage());
            return "";
        }
    }

    public static String k(List list) {
        if (list == null || list.isEmpty()) {
            Log.w(a, "getVkBetterCoverImage: images is empty");
            return null;
        }
        list.sort(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return dt7.n((VkRecommendBean.ImageBean) obj, (VkRecommendBean.ImageBean) obj2);
            }
        });
        return ((VkRecommendBean.ImageBean) list.get(0)).url;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r5v1, types: [int] */
    /* JADX WARN: Type inference failed for: r5v3, types: [int] */
    public static String l(boolean z, String... strArr) {
        StringBuilder sb = new StringBuilder();
        if (z != 0) {
            String str = strArr[0];
            if (str.length() > 16) {
                str = str.substring(0, 16) + "...";
            }
            sb.append(str);
        }
        while (z < strArr.length) {
            if (!TextUtils.isEmpty(strArr[z])) {
                if (sb.length() != 0) {
                    sb.append(", ");
                }
                sb.append(strArr[z]);
            }
            z++;
        }
        return sb.toString();
    }

    public static String m(VkRecommendBean.CategoryBean categoryBean) {
        return String.valueOf(categoryBean.getId());
    }

    public static int n(VkRecommendBean.ImageBean imageBean, VkRecommendBean.ImageBean imageBean2) {
        return Integer.compare(imageBean2.getResolution(), imageBean.getResolution());
    }

    public static class a {
        public double a;
        public int b;
        public int c;
        public boolean d;
        public boolean e;

        public a(long j) {
            this.b = -1;
            this.c = -1;
            this.a = j;
        }

        public String a(long j) {
            Resources resources = se.a().getResources();
            double d = j;
            double d2 = this.a;
            return d == d2 ? resources.getString(this.c) : resources.getString(this.b, Integer.valueOf((int) (d / d2)));
        }

        public String b(long j) {
            String str = "";
            if (this.b == -1) {
                return j + "";
            }
            Resources resources = se.a().getResources();
            double dRound = Math.round((j / this.a) * 10.0d) / 10.0d;
            if (this.d) {
                return resources.getString(this.b, Double.valueOf(dRound));
            }
            StringBuilder sb = new StringBuilder();
            if (this.e) {
                str = dRound + "";
            }
            sb.append(str);
            sb.append(resources.getString(this.b));
            return sb.toString();
        }

        public a(long j, int i, int i2) {
            this.a = j;
            this.b = i;
            this.c = i2;
        }

        public a(long j, int i, boolean z, boolean z2) {
            this.c = -1;
            this.a = j;
            this.b = i;
            this.d = z;
            this.e = z2;
        }
    }
}
