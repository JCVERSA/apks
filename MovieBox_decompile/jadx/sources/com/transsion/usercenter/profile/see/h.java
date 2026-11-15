package com.transsion.usercenter.profile.see;

import android.app.Application;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.usercenter.profile.see.bean.ProfileSeeData;
import com.transsion.usercenter.profile.see.bean.ProfileSeeItem;
import com.transsion.usercenter.profile.see.bean.ProfileSeeMultiItemData;
import com.transsion.usercenter.profile.see.bean.ProfileSeeStaffItem;
import com.transsion.usercenter.profile.see.bean.ProfileSeeSubjectItem;
import com.transsion.usercenter.profile.see.bean.ProfileSeeTimeItem;
import com.transsnet.downloader.viewmodel.a0;
import io.reactivex.rxjava3.core.j;
import io.reactivex.rxjava3.core.m;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class h extends androidx.p009lifecycle.b {

    private final Lazy f55145b;

    private int f55146c;

    private int f55147d;

    private ArrayList f55148e;

    private final b0 f55149f;

    private final b0 f55150g;

    private final b0 f55151h;

    static final class a implements yx.h {
        a() {
        }

        /* JADX WARN: Code duplicated, block: B:30:0x00bf  */
        @Override
        public final m apply(BaseDto it) {
            ArrayList arrayList;
            Iterable iterableEmptyList;
            Intrinsics.h(it, "it");
            ProfileSeeData profileSeeData = (ProfileSeeData) it.getData();
            if (profileSeeData != null) {
                h hVar = h.this;
                List<ProfileSeeItem> items = profileSeeData.getItems();
                if (items != null) {
                    arrayList = new ArrayList();
                    for (ProfileSeeItem profileSeeItem : items) {
                        ProfileSeeSubjectItem subject = profileSeeItem.getSubject();
                        ProfileSeeStaffItem staff = profileSeeItem.getStaff();
                        if (subject != null) {
                            String mySeeTime = subject.getMySeeTime();
                            String strJ = hVar.j(mySeeTime != null ? Long.parseLong(mySeeTime) : 0L);
                            if (hVar.f55148e.contains(strJ)) {
                                iterableEmptyList = CollectionsKt.h(subject);
                            } else {
                                hVar.f55148e.add(strJ);
                                iterableEmptyList = CollectionsKt.h(new ProfileSeeTimeItem(strJ), subject);
                            }
                        } else if (staff != null) {
                            String mySeeTime2 = staff.getMySeeTime();
                            String strJ2 = hVar.j(mySeeTime2 != null ? Long.parseLong(mySeeTime2) : 0L);
                            if (hVar.f55148e.contains(strJ2)) {
                                iterableEmptyList = CollectionsKt.h(staff);
                            } else {
                                hVar.f55148e.add(strJ2);
                                iterableEmptyList = CollectionsKt.h(new ProfileSeeTimeItem(strJ2), staff);
                            }
                        } else {
                            iterableEmptyList = Collections.emptyList();
                        }
                        Intrinsics.e(iterableEmptyList);
                        CollectionsKt.B(arrayList, iterableEmptyList);
                    }
                } else {
                    arrayList = null;
                }
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
            } else {
                arrayList = new ArrayList();
            }
            BaseDto baseDto = new BaseDto();
            ProfileSeeData profileSeeData2 = (ProfileSeeData) it.getData();
            baseDto.setData(new ProfileSeeMultiItemData(profileSeeData2 != null ? profileSeeData2.getPager() : null, arrayList));
            baseDto.setCode(it.getCode());
            baseDto.setMsg(it.getMsg());
            baseDto.setReason(it.getReason());
            return j.t(baseDto);
        }
    }

    public static final class b extends dg.a {
        b() {
        }

        @Override
        public void a(String str, String str2) {
            h.this.f55149f.q(null);
        }

        @Override
        public void c(ProfileSeeMultiItemData profileSeeMultiItemData) {
            Pager pager;
            super.c(profileSeeMultiItemData);
            h.this.f55149f.q(profileSeeMultiItemData);
            if (profileSeeMultiItemData == null || (pager = profileSeeMultiItemData.getPager()) == null) {
                return;
            }
            h hVar = h.this;
            String nextPage = pager.getNextPage();
            hVar.f55146c = nextPage != null ? Integer.parseInt(nextPage) : 1;
            Integer perPage = pager.getPerPage();
            hVar.f55147d = perPage != null ? perPage.intValue() : 10;
            b0 b0Var = hVar.f55151h;
            int totalCount = pager.getTotalCount();
            if (totalCount == null) {
                totalCount = 0;
            }
            b0Var.q(totalCount);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f55145b = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0() {
            @Override
            public final Object invoke() {
                return h.p();
            }
        });
        this.f55146c = 1;
        this.f55147d = 10;
        this.f55148e = new ArrayList();
        this.f55149f = new b0();
        this.f55150g = new b0();
        this.f55151h = new b0();
    }

    public final String j(long j10) {
        return a0.f57862a.z(j10 * ((long) 1000));
    }

    private final com.transsion.usercenter.profile.b m() {
        return (com.transsion.usercenter.profile.b) this.f55145b.getValue();
    }

    public static final com.transsion.usercenter.profile.b p() {
        return (com.transsion.usercenter.profile.b) kg.c.f63982e.a().h(com.transsion.usercenter.profile.b.class);
    }

    public final LiveData k() {
        return this.f55151h;
    }

    public final LiveData l() {
        return this.f55150g;
    }

    public final LiveData n() {
        return this.f55149f;
    }

    public final void o(String userId, int i10) {
        Intrinsics.h(userId, "userId");
        com.transsion.usercenter.profile.b.a.i(m(), userId, this.f55146c, this.f55147d, i10, null, 16, null).n(new a()).f(dg.d.f59034a.c()).subscribe(new b());
    }

    public final void q(String userId, int i10) {
        Intrinsics.h(userId, "userId");
        this.f55146c = 1;
        this.f55147d = 10;
        this.f55148e.clear();
        o(userId, i10);
    }
}
