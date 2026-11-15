package com.mgtv.thirdsdk.a.b;

import android.content.Context;
import android.text.TextUtils;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.hunantv.imgo.data.MgtvPlayerConstants;
import com.hunantv.imgo.log.e;
import com.hunantv.imgo.net.ImgoHttpCallBack;
import com.hunantv.imgo.net.ImgoHttpParams;
import com.hunantv.imgo.net.entity.PlayerAuthDataEntity;
import com.hunantv.imgo.util.f;
import com.hunantv.imgo.util.l;
import com.hunantv.imgo.util.s;
import com.mgtv.task.m;
import defpackage.hb0;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.UUID;

public class a {
    private static final String a = "a";
    private com.mgtv.thirdsdk.a.a.b b;
    private com.mgtv.thirdsdk.a.b c;
    private m d;
    private boolean e;
    private String f;
    private ImgoHttpParams g;
    private String h = com.hunantv.imgo.util.b.y();
    private String i = com.hunantv.imgo.util.b.d();
    private String j;

    public a(com.mgtv.thirdsdk.a.b bVar, Context context) {
        this.c = bVar;
        this.d = new m(context);
    }

    private String b() {
        return com.hunantv.imgo.net.a.b() + "/union/video/source";
    }

    public void a(com.mgtv.thirdsdk.a.a.b bVar) {
        this.b = bVar;
    }

    public void a(String str, int i) {
        if (TextUtils.isEmpty(str) || this.d == null) {
            return;
        }
        this.e = false;
        this.f = "0";
        this.g = new ImgoHttpParams();
        this.j = str;
        String string = UUID.randomUUID().toString();
        String strA = f.a(new SimpleDateFormat("yyyyMMddHHmmss", Locale.CHINA));
        String strA2 = s.a(string + com.hunantv.imgo.util.b.A() + strA + "sha256" + com.hunantv.imgo.util.b.Q() + str + i + this.f);
        this.g.put("c", string);
        this.g.put("t", strA);
        this.g.put("fileSourceType", this.f);
        this.g.put(hb0.KEY_NAME_SNIFF_RESULT_DOWNLOAD_RESOLUTION, Integer.valueOf(i));
        this.g.put("s", strA2);
        this.g.put("encrypted", "1");
        this.g.put("cxid", com.hunantv.imgo.util.b.A());
        this.g.put(TtmlNode.ATTR_ID, str);
        this.g.put(CmcdConfiguration.KEY_STREAM_TYPE, "sha256");
        this.g.put("openid", com.hunantv.imgo.util.b.R());
        if (!TextUtils.isEmpty(com.hunantv.imgo.util.b.V())) {
            this.g.put("ch_token", com.hunantv.imgo.util.b.V());
        }
        this.g.put("rtype", com.hunantv.imgo.util.b.S());
        String strB = b();
        this.g.put("src", com.hunantv.imgo.util.b.f() ? "intelmgtv" : "mgtv");
        if (!TextUtils.isEmpty(com.hunantv.imgo.util.b.aj())) {
            this.g.put("paySupport", com.hunantv.imgo.util.b.aj());
        }
        e.a(a, "getSource-HttpParams：" + com.mgtv.json.a.a(this.g, (Class<? extends ImgoHttpParams>) ImgoHttpParams.class), true);
        this.d.b(5000).a(strB, this.g, new ImgoHttpCallBack<PlayerAuthDataEntity>() {
            @Override
            public void b(PlayerAuthDataEntity playerAuthDataEntity) {
            }

            @Override
            public void a(PlayerAuthDataEntity playerAuthDataEntity) {
                a.this.a(playerAuthDataEntity);
                if (l.a(a.this.c.c)) {
                    if (a.this.b != null) {
                        a.this.b.a("070705");
                    }
                } else if (playerAuthDataEntity == null || playerAuthDataEntity.hdcp != 1) {
                    if (a.this.b != null) {
                        a.this.b.a(1);
                    }
                } else {
                    e.b(a.a, "resultData.hdcp == 1", true);
                    if (a.this.b != null) {
                        a.this.b.a("070707");
                    }
                }
            }

            @Override
            public void a(PlayerAuthDataEntity playerAuthDataEntity, int i2, int i3, String str2, Throwable th) {
                PlayerAuthDataEntity.User user;
                super.a(playerAuthDataEntity, i2, i3, str2, th);
                if (playerAuthDataEntity != null && (user = playerAuthDataEntity.user) != null && user.tstatus == 0 && a.this.b != null) {
                    a.this.b.a("070706");
                    return;
                }
                String str3 = playerAuthDataEntity != null ? playerAuthDataEntity.playableErrCode : null;
                if (a_() == ImgoHttpCallBack.ErrorType.BUSINESS_ERROR) {
                    a.this.a(playerAuthDataEntity);
                    if (i3 == 10023) {
                        if (a.this.b != null) {
                            a.this.b.a("070704");
                        }
                    } else if (!l.a(a.this.c.c)) {
                        if (a.this.b != null) {
                            a.this.b.a(1);
                        }
                    } else if (str3 == null || !MgtvPlayerConstants.ErrorCode.AUTH_FAILED_NOT_PERMITTED.equals(str3)) {
                        if (a.this.b != null) {
                            a.this.b.a("070705");
                        }
                    } else if (a.this.b != null) {
                        a.this.b.a(MgtvPlayerConstants.ErrorCode.AUTH_FAILED_NOT_PERMITTED);
                    }
                }
            }
        });
    }

    public void a(PlayerAuthDataEntity playerAuthDataEntity) {
        if (playerAuthDataEntity != null) {
            if (!l.a(playerAuthDataEntity.shadowSources)) {
                com.mgtv.thirdsdk.a.b bVar = this.c;
                bVar.a(bVar.d, playerAuthDataEntity.shadowSources);
            }
            if (l.a(playerAuthDataEntity.videoDomains)) {
                return;
            }
            this.c.g = playerAuthDataEntity.videoDomains;
        }
    }
}
