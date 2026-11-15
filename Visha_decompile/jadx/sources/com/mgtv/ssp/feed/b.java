package com.mgtv.ssp.feed;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.media3.extractor.AacUtil;
import com.hunantv.imgo.data.ErrorData;
import com.hunantv.imgo.net.ImgoHttpCallBack;
import com.mgtv.ssp.auth.EntranceInfo;
import com.mgtv.ssp.bean.SpaceBean;
import com.mgtv.ssp.bean.config.SspSdkConfig;
import com.mgtv.ssp.bean.config.SspSpaceConfig;
import com.mgtv.ssp.callback.MgSspSdkCallback;
import com.mgtv.ssp.feed.viewcard.FeedVideoView;
import com.mgtv.ssp.feed.viewcard.ImmersionVideoView;
import com.mgtv.ssp.net.ContentSdkBaseImgoHttpParams;
import com.mgtv.ssp.viewcard.BaseVideoListView;
import com.mgtv.task.m;
import com.mgtv.thirdsdk.datareport.VideoSDKReport;

public class b {
    /* JADX WARN: Code duplicated, block: B:23:0x007c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x007d  */
    private void b(Context context, final com.mgtv.ssp.bean.a aVar) {
        BaseVideoListView baseVideoListView;
        BaseVideoListView immersionVideoView;
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
        if (i != 2) {
            if (i == 3) {
                EntranceInfo entranceInfo = aVar.b;
                if (entranceInfo != null) {
                    com.hunantv.imgo.util.b.a(entranceInfo.getContentId(), "immersion");
                    contentSdkBaseImgoHttpParamsA.put("spaceId", com.hunantv.imgo.util.b.l("immersion"));
                }
                immersionVideoView = new ImmersionVideoView(context);
                immersionVideoView.setMgSspSdkCallback(aVar.c);
                immersionVideoView.setInfo(aVar.b);
            } else {
                baseVideoListView = null;
            }
            if (baseVideoListView == null) {
                return;
            }
            aVar.c.onStarted(baseVideoListView);
            final BaseVideoListView baseVideoListView2 = baseVideoListView;
            mVar.a(true).b(10000).a(com.mgtv.ssp.net.a.a(2), contentSdkBaseImgoHttpParamsA, new ImgoHttpCallBack<SpaceBean>() {
                @Override
                public void b(SpaceBean spaceBean) {
                }

                @Override
                public void a(SpaceBean spaceBean) {
                    if (spaceBean != null) {
                        b.this.a(baseVideoListView2, spaceBean, aVar, jCurrentTimeMillis, contentSdkBaseImgoHttpParamsA);
                        return;
                    }
                    MgSspSdkCallback mgSspSdkCallback = aVar.c;
                    if (mgSspSdkCallback != null) {
                        mgSspSdkCallback.onFail(100002, "http vast format error");
                    }
                    a(spaceBean, 100002, 100002, "http vast format error", (Throwable) null);
                }

                @Override
                public void a(@Nullable SpaceBean spaceBean, int i2, int i3, @Nullable String str, @Nullable Throwable th) {
                    super.a(spaceBean, i2, i3, str, th);
                    if (aVar.c != null) {
                        try {
                            if (com.mgtv.ssp.auth.b.a().f()) {
                                SspSpaceConfig sspSpaceConfig = new SspSpaceConfig();
                                sspSpaceConfig.autoPlay = 1;
                                com.mgtv.ssp.auth.b.a().a(sspSpaceConfig);
                                BaseVideoListView baseVideoListView3 = baseVideoListView2;
                                if (baseVideoListView3 != null) {
                                    baseVideoListView3.n();
                                }
                                b.this.a(jCurrentTimeMillis, true, null, aVar);
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                            aVar.c.onFail(AacUtil.AAC_LC_MAX_RATE_BYTES_PER_SECOND, "data error");
                        }
                    }
                    ErrorData errorData = new ErrorData();
                    errorData.setUrl(com.mgtv.ssp.net.a.a(2));
                    errorData.setCode(i3 + "");
                    ContentSdkBaseImgoHttpParams contentSdkBaseImgoHttpParams = contentSdkBaseImgoHttpParamsA;
                    errorData.setParam(contentSdkBaseImgoHttpParams != null ? contentSdkBaseImgoHttpParams.buildParameter() : "");
                    errorData.setMsg(str);
                    b.this.a(jCurrentTimeMillis, false, errorData, aVar);
                }
            });
        }
        EntranceInfo entranceInfo2 = aVar.b;
        if (entranceInfo2 != null) {
            com.hunantv.imgo.util.b.a(entranceInfo2.getContentId(), "card");
            contentSdkBaseImgoHttpParamsA.put("spaceId", com.hunantv.imgo.util.b.l("card"));
        }
        immersionVideoView = new FeedVideoView(context);
        immersionVideoView.setMgSspSdkCallback(aVar.c);
        immersionVideoView.setInfo(aVar.b);
        baseVideoListView = immersionVideoView;
        if (baseVideoListView == null) {
            return;
        }
        aVar.c.onStarted(baseVideoListView);
        final BaseVideoListView baseVideoListView3 = baseVideoListView;
        mVar.a(true).b(10000).a(com.mgtv.ssp.net.a.a(2), contentSdkBaseImgoHttpParamsA, new ImgoHttpCallBack<SpaceBean>() {
            @Override
            public void b(SpaceBean spaceBean) {
            }

            @Override
            public void a(SpaceBean spaceBean) {
                if (spaceBean != null) {
                    b.this.a(baseVideoListView3, spaceBean, aVar, jCurrentTimeMillis, contentSdkBaseImgoHttpParamsA);
                    return;
                }
                MgSspSdkCallback mgSspSdkCallback = aVar.c;
                if (mgSspSdkCallback != null) {
                    mgSspSdkCallback.onFail(100002, "http vast format error");
                }
                a(spaceBean, 100002, 100002, "http vast format error", (Throwable) null);
            }

            @Override
            public void a(@Nullable SpaceBean spaceBean, int i2, int i3, @Nullable String str, @Nullable Throwable th) {
                super.a(spaceBean, i2, i3, str, th);
                if (aVar.c != null) {
                    try {
                        if (com.mgtv.ssp.auth.b.a().f()) {
                            SspSpaceConfig sspSpaceConfig = new SspSpaceConfig();
                            sspSpaceConfig.autoPlay = 1;
                            com.mgtv.ssp.auth.b.a().a(sspSpaceConfig);
                            BaseVideoListView baseVideoListView4 = baseVideoListView3;
                            if (baseVideoListView4 != null) {
                                baseVideoListView4.n();
                            }
                            b.this.a(jCurrentTimeMillis, true, null, aVar);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        aVar.c.onFail(AacUtil.AAC_LC_MAX_RATE_BYTES_PER_SECOND, "data error");
                    }
                }
                ErrorData errorData = new ErrorData();
                errorData.setUrl(com.mgtv.ssp.net.a.a(2));
                errorData.setCode(i3 + "");
                ContentSdkBaseImgoHttpParams contentSdkBaseImgoHttpParams = contentSdkBaseImgoHttpParamsA;
                errorData.setParam(contentSdkBaseImgoHttpParams != null ? contentSdkBaseImgoHttpParams.buildParameter() : "");
                errorData.setMsg(str);
                b.this.a(jCurrentTimeMillis, false, errorData, aVar);
            }
        });
    }

    public void a(Context context, com.mgtv.ssp.bean.a aVar) {
        MgSspSdkCallback mgSspSdkCallback;
        if (aVar == null || (mgSspSdkCallback = aVar.c) == null || !a(mgSspSdkCallback)) {
            return;
        }
        b(context, aVar);
    }

    private boolean a(MgSspSdkCallback mgSspSdkCallback) {
        if (com.mgtv.ssp.auth.b.a().b() != 0) {
            com.mgtv.ssp.auth.a.a();
            if (com.mgtv.ssp.auth.b.a().b() != 0) {
                mgSspSdkCallback.onFail(com.mgtv.ssp.auth.b.a().b() + AacUtil.AAC_LC_MAX_RATE_BYTES_PER_SECOND, "初始化没有成功");
                return false;
            }
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

    public void a(BaseVideoListView baseVideoListView, SpaceBean spaceBean, com.mgtv.ssp.bean.a aVar, long j, ContentSdkBaseImgoHttpParams contentSdkBaseImgoHttpParams) {
        String strBuildParameter = "";
        MgSspSdkCallback mgSspSdkCallback = aVar.c;
        if (mgSspSdkCallback != null) {
            if (spaceBean != null) {
                try {
                    if (spaceBean.data != null) {
                        if (com.mgtv.ssp.auth.b.a().f()) {
                            com.mgtv.ssp.auth.b.a().a(spaceBean.data);
                            baseVideoListView.n();
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
            if (com.mgtv.ssp.auth.b.a().f()) {
                baseVideoListView.n();
            }
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
