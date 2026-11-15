package com.transsion.shorttv.ui.adapter.provider;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.bean.OperateItem;
import com.transsion.shorttv.bean.ShortTvItemType;
import com.transsion.shorttv.ui.widget.ShortTVDiscoverHeaderView;
import com.transsion.shorttv.ui.widget.ShortTvCategoryView;
import com.transsion.shorttv.ui.widget.ShortTvOpAppointmentView;
import com.transsion.shorttv.ui.widget.ShortTvOpCustomView;
import com.transsion.shorttv.ui.widget.ShortTvOpRankingView;
import kotlin.jvm.internal.Intrinsics;

public final class a extends BaseItemProvider {

    private final String f51164e;

    public class C0636a {

        public static final int[] f51165a;

        static {
            int[] iArr = new int[ShortTvItemType.values().length];
            try {
                iArr[ShortTvItemType.APPOINTMENT_LIST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ShortTvItemType.CUSTOM_DATA.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ShortTvItemType.OP_SUBJECTS_MOVIE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ShortTvItemType.PLAY_LIST.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ShortTvItemType.FILTER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f51165a = iArr;
        }
    }

    public a(String pageName) {
        Intrinsics.h(pageName, "pageName");
        this.f51164e = pageName;
    }

    private final boolean z(View view, ShortTvItemType shortTvItemType) {
        int i10 = shortTvItemType == null ? -1 : C0636a.f51165a[shortTvItemType.ordinal()];
        if (i10 == 1) {
            return view instanceof ShortTvOpAppointmentView;
        }
        if (i10 == 2) {
            return view instanceof ShortTvOpCustomView;
        }
        if (i10 == 3) {
            return view instanceof ShortTvOpRankingView;
        }
        if (i10 == 4) {
            return view instanceof ShortTVDiscoverHeaderView;
        }
        if (i10 != 5) {
            return false;
        }
        return view instanceof ShortTvCategoryView;
    }

    @Override
    public int l() {
        return 0;
    }

    @Override
    public int m() {
        return R$layout.layout_view_container;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:57:0x013a  */
    /* JADX WARN: Code duplicated, block: B:59:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:61:? A[RETURN, SYNTHETIC] */
    @Override
    public void b(BaseViewHolder helper, bs.a item) {
        int i10;
        View shortTvOpAppointmentView;
        View shortTvOpAppointmentView2;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        FrameLayout frameLayout = (FrameLayout) helper.getView(R$id.root);
        if (item.e() != null) {
            ViewParent parent = item.e().getParent();
            if (parent != null && (parent instanceof ViewGroup)) {
                ((ViewGroup) parent).removeView(item.e());
            }
            frameLayout.removeAllViews();
            frameLayout.addView(item.e());
            return;
        }
        OperateItem operateItemA = item.a();
        if (operateItemA == null) {
            return;
        }
        Context contextK = k();
        ShortTvItemType.Companion companion = ShortTvItemType.INSTANCE;
        String type = operateItemA.getType();
        if (type == null) {
            type = "";
        }
        ShortTvItemType shortTvItemTypeA = companion.a(type);
        View childAt = frameLayout.getChildAt(0);
        View shortTvCategoryView = null;
        if (childAt == null || !z(childAt, shortTvItemTypeA)) {
            frameLayout.removeAllViews();
            i10 = shortTvItemTypeA != null ? C0636a.f51165a[shortTvItemTypeA.ordinal()] : -1;
            if (i10 == 1) {
                shortTvOpAppointmentView = new ShortTvOpAppointmentView(this.f51164e, operateItemA, item.c(), item.f(), contextK);
            } else if (i10 == 2) {
                shortTvOpAppointmentView = new ShortTvOpCustomView(this.f51164e, operateItemA, item.c(), item.f(), contextK);
            } else {
                if (i10 != 3) {
                    if (i10 == 4) {
                        shortTvOpAppointmentView = new ShortTVDiscoverHeaderView(this.f51164e, operateItemA, item.c(), item.f(), contextK);
                    } else if (i10 == 5) {
                        shortTvCategoryView = new ShortTvCategoryView(contextK);
                    }
                    if (shortTvCategoryView != null) {
                        frameLayout.addView(shortTvCategoryView);
                        return;
                    }
                    return;
                }
                shortTvOpAppointmentView = new ShortTvOpRankingView(this.f51164e, operateItemA, item.c(), item.f(), contextK);
            }
            shortTvCategoryView = shortTvOpAppointmentView;
            if (shortTvCategoryView != null) {
                frameLayout.addView(shortTvCategoryView);
                return;
            }
            return;
        }
        frameLayout.removeAllViews();
        i10 = shortTvItemTypeA != null ? C0636a.f51165a[shortTvItemTypeA.ordinal()] : -1;
        if (i10 == 1) {
            shortTvOpAppointmentView2 = new ShortTvOpAppointmentView(this.f51164e, operateItemA, item.c(), item.f(), contextK);
        } else if (i10 == 2) {
            shortTvOpAppointmentView2 = new ShortTvOpCustomView(this.f51164e, operateItemA, item.c(), item.f(), contextK);
        } else {
            if (i10 != 3) {
                if (i10 == 4) {
                    shortTvOpAppointmentView2 = new ShortTVDiscoverHeaderView(this.f51164e, operateItemA, item.c(), item.f(), contextK);
                } else if (i10 == 5) {
                    shortTvCategoryView = new ShortTvCategoryView(contextK);
                }
                if (shortTvCategoryView != null) {
                    frameLayout.addView(shortTvCategoryView);
                }
            }
            shortTvOpAppointmentView2 = new ShortTvOpRankingView(this.f51164e, operateItemA, item.c(), item.f(), contextK);
        }
        shortTvCategoryView = shortTvOpAppointmentView2;
        if (shortTvCategoryView != null) {
            frameLayout.addView(shortTvCategoryView);
        }
    }
}
