package com.transsion.shorttv._channel.ui.activity;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$string;
import com.transsion.shorttv._channel.ui.activity.ShortTvMovieFilterActivity;
import com.transsion.shorttv._channel.ui.fragment.ShortTvMovieFragment;
import com.transsion.shorttv._channel.ui.widget.ShortTvTitleLayout;
import com.transsion.shorttv.base.activity.BaseActivity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import hr.e;
import hr.g;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import qi.h;
import qr.n;
import xq.b;

@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u000f\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\u0005J\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u0011\u001a\u00020\u00062\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0014¢\u0006\u0004\b\u0011\u0010\u0012J\u0019\u0010\u0013\u001a\u00020\u00062\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b\u0013\u0010\u0012J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016R\u0016\u0010\u001a\u001a\u00020\u00178\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001c\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\bR\u0016\u0010\u001f\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0018\u0010!\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b \u0010\u001eR\u001a\u0010&\u001a\b\u0012\u0004\u0012\u00020#0\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%¨\u0006'"}, d2 = {"Lcom/transsion/shorttv/_channel/ui/activity/ShortTvMovieFilterActivity;", "Lcom/transsion/shorttv/base/activity/BaseActivity;", "Lqr/n;", "Lhr/e;", "<init>", "()V", "", "a0", "Z", "", "isTranslucent", "()Z", "isStatusDark", "X", "()Lqr/n;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "initView", "", "getPageName", "()Ljava/lang/String;", "", "g", "I", "tabId", "h", "showViewPager", "i", "Ljava/lang/String;", "tabCode", "j", "mFilterJson", "", "Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;", CampaignEx.JSON_KEY_AD_K, "Ljava/util/List;", "tabItems", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ShortTvMovieFilterActivity extends BaseActivity<n> implements e {

    public int tabId;

    public String mFilterJson;

    public boolean showViewPager = true;

    public String tabCode = "";

    private final List tabItems = new ArrayList();

    public static final void Y(ShortTvMovieFilterActivity shortTvMovieFilterActivity, View view) {
        shortTvMovieFilterActivity.a0();
        shortTvMovieFilterActivity.finish();
    }

    private final void Z() {
        HashMap map = new HashMap();
        map.put("event_type", "back_browse");
        map.put("tabId", String.valueOf(this.tabId));
        h.f69682a.z(getPageName(), map);
    }

    private final void a0() {
        HashMap map = new HashMap();
        map.put("event_type", "back_click");
        map.put("tabId", String.valueOf(this.tabId));
        h.f69682a.z(getPageName(), map);
    }

    @Override
    public n getViewBinding() {
        n nVarC = n.c(getLayoutInflater());
        Intrinsics.g(nVarC, "inflate(...)");
        return nVarC;
    }

    @Override
    public String getPageName() {
        return "movie_filter_page";
    }

    @Override
    public void initView(Bundle savedInstanceState) {
        ShortTvTitleLayout shortTvTitleLayout = ((n) getMViewBinding()).f70116c;
        shortTvTitleLayout.setLeftOnclick(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                ShortTvMovieFilterActivity.Y(this.f72790a, view);
            }
        });
        Z();
        String string = getString(R$string.short_tv_filter);
        Intrinsics.g(string, "getString(...)");
        shortTvTitleLayout.setTitleText(string);
        Context context = shortTvTitleLayout.getContext();
        Intrinsics.g(context, "getContext(...)");
        shortTvTitleLayout.setPadding(0, b.b(context), 0, 0);
        getSupportFragmentManager().p().s(R$id.content_layout, ShortTvMovieFragment.INSTANCE.a(true, this.mFilterJson)).j();
    }

    @Override
    public boolean isStatusDark() {
        return !g.f61486a.a();
    }

    @Override
    public boolean isTranslucent() {
        return true;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) throws IllegalAccessException, InvocationTargetException {
        TheRouter.l(this);
        super.onCreate(savedInstanceState);
    }
}
