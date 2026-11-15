package com.transsion.home.preload;

import android.content.Context;
import com.transsion.home.bean.AppointSubject;
import com.transsion.home.bean.BannerData;
import com.transsion.home.bean.CustomData;
import com.transsion.home.bean.FilterItem;
import com.transsion.home.bean.OperateItem;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.moviedetailapi.bean.Subject;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import sm.d;

public abstract class c {
    public static final void a(Context context, List list) {
        Cover cover;
        String url;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Subject feedsSubject = ((OperateItem) it.next()).getFeedsSubject();
                if (feedsSubject != null && (cover = feedsSubject.getCover()) != null && (url = cover.getUrl()) != null && context != null) {
                    d.b(url);
                }
            }
        }
    }

    public static final void b(List list) {
        CustomData customData;
        List<BannerData> items;
        String url;
        String url2;
        String url3;
        if (list != null) {
            int i10 = 0;
            for (Object obj : list) {
                int i11 = i10 + 1;
                if (i10 < 0) {
                    CollectionsKt.u();
                }
                OperateItem operateItem = (OperateItem) obj;
                if (i10 >= 2) {
                    String type = operateItem.getType();
                    if (Intrinsics.c(type, PostItemType.FILTER.getValue())) {
                        List<FilterItem> filters = operateItem.getFilters();
                        if (filters != null) {
                            int i12 = 0;
                            for (Object obj2 : filters) {
                                int i13 = i12 + 1;
                                if (i12 < 0) {
                                    CollectionsKt.u();
                                }
                                FilterItem filterItem = (FilterItem) obj2;
                                if (i12 < 3) {
                                    Cover image = filterItem.getImage();
                                    if (image == null || (url3 = image.getUrl()) == null) {
                                        url3 = "";
                                    }
                                    d.b(url3);
                                }
                                i12 = i13;
                            }
                        }
                    } else if (Intrinsics.c(type, PostItemType.OP_SUBJECTS_MOVIE.getValue())) {
                        List<AppointSubject> subjects = operateItem.getSubjects();
                        if (subjects != null) {
                            int i14 = 0;
                            for (Object obj3 : subjects) {
                                int i15 = i14 + 1;
                                if (i14 < 0) {
                                    CollectionsKt.u();
                                }
                                AppointSubject appointSubject = (AppointSubject) obj3;
                                if (i14 < 4) {
                                    Cover cover = appointSubject.getCover();
                                    if (cover == null || (url2 = cover.getUrl()) == null) {
                                        url2 = "";
                                    }
                                    d.b(url2);
                                }
                                i14 = i15;
                            }
                        }
                    } else if (Intrinsics.c(type, PostItemType.CUSTOM_DATA.getValue()) && (customData = operateItem.getCustomData()) != null && (items = customData.getItems()) != null) {
                        int i16 = 0;
                        for (Object obj4 : items) {
                            int i17 = i16 + 1;
                            if (i16 < 0) {
                                CollectionsKt.u();
                            }
                            BannerData bannerData = (BannerData) obj4;
                            CustomData customData2 = operateItem.getCustomData();
                            if (i16 < (customData2 != null ? customData2.getRowCount() : 0)) {
                                Image image2 = bannerData.getImage();
                                if (image2 == null || (url = image2.getUrl()) == null) {
                                    url = "";
                                }
                                d.b(url);
                            }
                            i16 = i17;
                        }
                    }
                }
                i10 = i11;
            }
        }
    }
}
