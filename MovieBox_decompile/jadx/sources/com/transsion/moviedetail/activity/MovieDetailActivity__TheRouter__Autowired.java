package com.transsion.moviedetail.activity;

import androidx.annotation.Keep;
import com.therouter.TheRouter;
import com.therouter.router.b;
import mf.a;

@Keep
public class MovieDetailActivity__TheRouter__Autowired {
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void autowiredInject(Object obj) {
        if (obj instanceof MovieDetailActivity) {
            MovieDetailActivity movieDetailActivity = (MovieDetailActivity) obj;
            for (a aVar : TheRouter.g()) {
                try {
                    Boolean bool = (Boolean) aVar.a("boolean", movieDetailActivity, new b("boolean", "autoDownload", 0, "", "com.transsion.moviedetail.activity.MovieDetailActivity", "autoDownload", false, "No desc."));
                    if (bool != null) {
                        movieDetailActivity.autoDownload = bool.booleanValue();
                    }
                } catch (Exception e10) {
                    if (TheRouter.m()) {
                        e10.printStackTrace();
                    }
                }
                try {
                    Boolean bool2 = (Boolean) aVar.a("boolean", movieDetailActivity, new b("boolean", "autoPlay", 0, "", "com.transsion.moviedetail.activity.MovieDetailActivity", "autoPlay", false, "No desc."));
                    if (bool2 != null) {
                        movieDetailActivity.autoPlay = bool2.booleanValue();
                    }
                } catch (Exception e11) {
                    if (TheRouter.m()) {
                        e11.printStackTrace();
                    }
                }
                try {
                    Integer num = (Integer) aVar.a("int", movieDetailActivity, new b("int", "season", 0, "", "com.transsion.moviedetail.activity.MovieDetailActivity", "curSeason", false, "No desc."));
                    if (num != null) {
                        movieDetailActivity.curSeason = num.intValue();
                    }
                } catch (Exception e12) {
                    if (TheRouter.m()) {
                        e12.printStackTrace();
                    }
                }
                try {
                    Integer num2 = (Integer) aVar.a("int", movieDetailActivity, new b("int", "subject_type", 0, "", "com.transsion.moviedetail.activity.MovieDetailActivity", "subjectYpe", false, "No desc."));
                    if (num2 != null) {
                        movieDetailActivity.subjectYpe = num2.intValue();
                    }
                } catch (Exception e13) {
                    if (TheRouter.m()) {
                        e13.printStackTrace();
                    }
                }
                try {
                    Integer num3 = (Integer) aVar.a("int", movieDetailActivity, new b("int", "yy_preload_id", 0, "", "com.transsion.moviedetail.activity.MovieDetailActivity", "preloadId", false, "No desc."));
                    if (num3 != null) {
                        movieDetailActivity.preloadId = num3.intValue();
                    }
                } catch (Exception e14) {
                    if (TheRouter.m()) {
                        e14.printStackTrace();
                    }
                }
                try {
                    String str = (String) aVar.a("java.lang.String", movieDetailActivity, new b("java.lang.String", "id", 0, "", "com.transsion.moviedetail.activity.MovieDetailActivity", "id", false, "No desc."));
                    if (str != null) {
                        movieDetailActivity.id = str;
                    }
                } catch (Exception e15) {
                    if (TheRouter.m()) {
                        e15.printStackTrace();
                    }
                }
                try {
                    String str2 = (String) aVar.a("java.lang.String", movieDetailActivity, new b("java.lang.String", "module_name", 0, "", "com.transsion.moviedetail.activity.MovieDetailActivity", "moduleName", false, "No desc."));
                    if (str2 != null) {
                        movieDetailActivity.moduleName = str2;
                    }
                } catch (Exception e16) {
                    if (TheRouter.m()) {
                        e16.printStackTrace();
                    }
                }
                try {
                    String str3 = (String) aVar.a("java.lang.String", movieDetailActivity, new b("java.lang.String", "ops", 0, "", "com.transsion.moviedetail.activity.MovieDetailActivity", "ops", false, "No desc."));
                    if (str3 != null) {
                        movieDetailActivity.ops = str3;
                    }
                } catch (Exception e17) {
                    if (TheRouter.m()) {
                        e17.printStackTrace();
                    }
                }
                try {
                    String str4 = (String) aVar.a("java.lang.String", movieDetailActivity, new b("java.lang.String", "resourceId", 0, "", "com.transsion.moviedetail.activity.MovieDetailActivity", "autoPlayResourceId", false, "No desc."));
                    if (str4 != null) {
                        movieDetailActivity.autoPlayResourceId = str4;
                    }
                } catch (Exception e18) {
                    if (TheRouter.m()) {
                        e18.printStackTrace();
                    }
                }
            }
        }
    }
}
