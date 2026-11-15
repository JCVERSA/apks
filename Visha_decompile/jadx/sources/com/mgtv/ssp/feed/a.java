package com.mgtv.ssp.feed;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.media3.extractor.AacUtil;
import com.hunantv.imgo.data.ErrorData;
import com.hunantv.imgo.net.ImgoHttpCallBack;
import com.hunantv.imgo.util.PreferencesUtil;
import com.mgtv.ssp.auth.EntranceInfo;
import com.mgtv.ssp.bean.SpaceBean;
import com.mgtv.ssp.bean.config.SspSdkConfig;
import com.mgtv.ssp.bean.config.SspSpaceConfig;
import com.mgtv.ssp.callback.MgSspSdkCallback;
import com.mgtv.ssp.feed.fragment.FeedFragment;
import com.mgtv.ssp.fragment.RootFragment;
import com.mgtv.ssp.fragment.SspFragment;
import com.mgtv.ssp.immersion.ui.ImmersionVideoFragment;
import com.mgtv.ssp.net.ContentSdkBaseImgoHttpParams;
import com.mgtv.task.m;
import com.mgtv.thirdsdk.datareport.VideoSDKReport;

public class a {
    private int a = 0;

    public void b(Context context, com.mgtv.ssp.bean.a aVar) {
        if (this.a == 0 && PreferencesUtil.a("SDKCONFIG_SWITCH", 0) == 1) {
            this.a++;
            a(context, com.hunantv.imgo.net.a.l() + "/api/spaceConfig", aVar);
        }
    }

    public void a(Context context, com.mgtv.ssp.bean.a aVar) {
        MgSspSdkCallback mgSspSdkCallback;
        if (aVar == null || (mgSspSdkCallback = aVar.c) == null || !a(mgSspSdkCallback)) {
            return;
        }
        this.a = 0;
        a(context, "", aVar);
    }

    private boolean a(MgSspSdkCallback mgSspSdkCallback) {
        if (com.mgtv.ssp.auth.b.a().b() != 0) {
            mgSspSdkCallback.onFail(com.mgtv.ssp.auth.b.a().b() + AacUtil.AAC_LC_MAX_RATE_BYTES_PER_SECOND, "初始化没有成功");
            return false;
        }
        if (com.mgtv.ssp.auth.b.a().c() != null) {
            com.mgtv.ssp.auth.b.a().c();
            if (!TextUtils.isEmpty(com.mgtv.ssp.bean.config.a.a())) {
                if (com.mgtv.ssp.auth.b.a().e() == null) {
                    mgSspSdkCallback.onFail(com.mgtv.ssp.auth.b.a().b() + AacUtil.AAC_LC_MAX_RATE_BYTES_PER_SECOND, "初始化没有成功");
                    return false;
                }
                if (com.mgtv.ssp.auth.b.a().e() != null && com.mgtv.ssp.auth.b.a().e().getStatus() == 0) {
                    return true;
                }
                mgSspSdkCallback.onFail(com.mgtv.ssp.auth.b.a().e().getStatus() + AacUtil.AAC_LC_MAX_RATE_BYTES_PER_SECOND, "渠道异常");
            } else {
                mgSspSdkCallback.onFail(100001, "渠道异常");
            }
        }
        return false;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void a(final Context context, String str, final com.mgtv.ssp.bean.a aVar) {
        RootFragment immersionVideoFragment;
        if (context == null || aVar == null) {
            return;
        }
        final long jCurrentTimeMillis = System.currentTimeMillis();
        m mVar = new m(context);
        final ContentSdkBaseImgoHttpParams contentSdkBaseImgoHttpParamsA = com.mgtv.ssp.net.a.a();
        SspSdkConfig sspSdkConfigE = com.mgtv.ssp.auth.b.a().e();
        if (sspSdkConfigE != null) {
            contentSdkBaseImgoHttpParamsA.put("cxid", sspSdkConfigE.getCxid());
        }
        int i = aVar.a;
        if (i == 2) {
            EntranceInfo entranceInfo = aVar.b;
            if (entranceInfo != null) {
                com.hunantv.imgo.util.b.a(entranceInfo.getContentId(), "card");
                contentSdkBaseImgoHttpParamsA.put("spaceId", com.hunantv.imgo.util.b.l("card"));
            }
            immersionVideoFragment = new FeedFragment();
            immersionVideoFragment.a(aVar.c);
            immersionVideoFragment.a(aVar.b);
        } else if (i == 3) {
            EntranceInfo entranceInfo2 = aVar.b;
            if (entranceInfo2 != null) {
                com.hunantv.imgo.util.b.a(entranceInfo2.getContentId(), "immersion");
                contentSdkBaseImgoHttpParamsA.put("spaceId", com.hunantv.imgo.util.b.l("immersion"));
            }
            immersionVideoFragment = new ImmersionVideoFragment();
            immersionVideoFragment.a(aVar.c);
            immersionVideoFragment.a(aVar.b);
        } else {
            immersionVideoFragment = null;
        }
        final RootFragment rootFragment = immersionVideoFragment;
        if (rootFragment == null) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            str = com.mgtv.ssp.net.a.a(2);
        }
        aVar.c.onStarted(rootFragment);
        final String str2 = str;
        mVar.a(true).b(10000).a(str, contentSdkBaseImgoHttpParamsA, new ImgoHttpCallBack<SpaceBean>() {
            @Override
            public void b(SpaceBean spaceBean) {
            }

            @Override
            public void a(SpaceBean spaceBean) {
                if (spaceBean != null) {
                    a.this.a(rootFragment, spaceBean, aVar, jCurrentTimeMillis, contentSdkBaseImgoHttpParamsA);
                    return;
                }
                MgSspSdkCallback mgSspSdkCallback = aVar.c;
                if (mgSspSdkCallback != null) {
                    mgSspSdkCallback.onFail(100002, "http vast format error");
                }
                a(spaceBean, 100002, 100002, "http vast format error", (Throwable) null);
                a.this.b(context, aVar);
            }

            @Override
            public void a(@Nullable SpaceBean spaceBean, int i2, int i3, @Nullable String str3, @Nullable Throwable th) {
                super.a(spaceBean, i2, i3, str3, th);
                if (aVar.c != null) {
                    try {
                        if (com.mgtv.ssp.auth.b.a().f()) {
                            SspSpaceConfig sspSpaceConfig = new SspSpaceConfig();
                            sspSpaceConfig.autoPlay = 1;
                            com.mgtv.ssp.auth.b.a().a(sspSpaceConfig);
                            SspFragment sspFragment = rootFragment;
                            if (sspFragment != null) {
                                sspFragment.requestData();
                            }
                            a.this.a(jCurrentTimeMillis, true, null, aVar);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        aVar.c.onFail(AacUtil.AAC_LC_MAX_RATE_BYTES_PER_SECOND, "data error");
                    }
                }
                ErrorData errorData = new ErrorData();
                errorData.setUrl(str2);
                errorData.setCode(i3 + "");
                ContentSdkBaseImgoHttpParams contentSdkBaseImgoHttpParams = contentSdkBaseImgoHttpParamsA;
                errorData.setParam(contentSdkBaseImgoHttpParams != null ? contentSdkBaseImgoHttpParams.buildParameter() : "");
                errorData.setMsg(str3);
                a.this.a(jCurrentTimeMillis, false, errorData, aVar);
                a.this.b(context, aVar);
            }
        });
    }

    public void a(SspFragment sspFragment, SpaceBean spaceBean, com.mgtv.ssp.bean.a aVar, long j, ContentSdkBaseImgoHttpParams contentSdkBaseImgoHttpParams) {
        String strBuildParameter = "";
        MgSspSdkCallback mgSspSdkCallback = aVar.c;
        if (mgSspSdkCallback != null) {
            if (spaceBean != null) {
                try {
                    if (spaceBean.data != null) {
                        if (com.mgtv.ssp.auth.b.a().f()) {
                            com.mgtv.ssp.auth.b.a().a(spaceBean.data);
                            sspFragment.requestData();
                            a(j, true, null, aVar);
                            return;
                        }
                        return;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    aVar.c.onFail(AacUtil.AAC_LC_MAX_RATE_BYTES_PER_SECOND, "data error");
                    return;
                }
            }
            mgSspSdkCallback.onFail(100003, "");
            ErrorData errorData = new ErrorData();
            errorData.setUrl(com.mgtv.ssp.net.a.a(2));
            errorData.setCode("100003");
            errorData.setMsg("data is null");
            if (contentSdkBaseImgoHttpParams != null) {
                strBuildParameter = contentSdkBaseImgoHttpParams.buildParameter();
            }
            errorData.setParam(strBuildParameter);
            a(j, false, errorData, aVar);
        }
    }

    public void a(long j, boolean z, ErrorData errorData, com.mgtv.ssp.bean.a aVar) {
        String str;
        if (aVar != null) {
            VideoSDKReport videoSDKReportA = VideoSDKReport.a();
            int i = aVar.a;
            if (i == 2) {
                str = "card";
            } else {
                str = i == 3 ? "immersion" : "vod";
            }
            videoSDKReportA.a(j, z, errorData, str);
        }
    }
}
