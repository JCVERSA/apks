package com.cloud.hisavana.sdk;

import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import defpackage.dp1;
import defpackage.ikd;
import defpackage.n7d;
import defpackage.tgd;
import defpackage.utd;
import defpackage.wmd;
import java.util.ArrayList;
import java.util.List;

public class h0 {
    public g a;

    public class a implements com.cloud.hisavana.sdk.f.b {
        public a() {
        }

        @Override
        public void a(TaErrorCode taErrorCode, Bundle bundle) {
            if (h0.this.a != null) {
                h0.this.a.a(taErrorCode, bundle);
            }
        }

        @Override
        public void b(List list, List list2, Bundle bundle) {
            if (h0.this.a != null) {
                h0.this.a.b(list2, bundle);
            }
        }
    }

    public class b implements wmd {
        public b() {
        }

        @Override
        public void a(TaErrorCode taErrorCode, Bundle bundle) {
            if (h0.this.a != null) {
                h0.this.a.a(taErrorCode, bundle);
            }
        }

        @Override
        public void b(final AdsDTO adsDTO, final Bundle bundle) {
            ikd.b().d("MaterialDownload", "loadPlatformAd onSuccess mAdBean ");
            h0.this.c(adsDTO, bundle, new Runnable() {
                @Override
                public final void run() {
                    this.b.d(adsDTO, bundle);
                }
            });
        }

        public final void d(AdsDTO adsDTO, Bundle bundle) {
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(adsDTO);
            if (h0.this.a != null) {
                h0.this.a.b(arrayList, bundle);
            }
        }
    }

    public class c implements wmd {
        public c() {
        }

        public void d(AdsDTO adsDTO, Bundle bundle) {
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(adsDTO);
            if (h0.this.a != null) {
                h0.this.a.b(arrayList, bundle);
            }
        }

        @Override
        public void a(TaErrorCode taErrorCode, Bundle bundle) {
            if (h0.this.a != null) {
                h0.this.a.a(taErrorCode, bundle);
            }
        }

        @Override
        public void b(final AdsDTO adsDTO, final Bundle bundle) {
            ikd.b().d("MaterialDownload", "loadPlatformAd onSuccess mAdBean ");
            h0.this.c(adsDTO, bundle, new Runnable() {
                @Override
                public final void run() {
                    this.b.d(adsDTO, bundle);
                }
            });
        }
    }

    public class d implements wmd {
        public d() {
        }

        public void d(AdsDTO adsDTO, Bundle bundle) {
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(adsDTO);
            if (h0.this.a != null) {
                h0.this.a.b(arrayList, bundle);
            }
        }

        @Override
        public void a(TaErrorCode taErrorCode, Bundle bundle) {
            if (h0.this.a != null) {
                h0.this.a.a(taErrorCode, bundle);
            }
        }

        @Override
        public void b(final AdsDTO adsDTO, final Bundle bundle) {
            ikd.b().d("MaterialDownload", "loadPlatformAd onSuccess mAdBean ");
            h0.this.c(adsDTO, bundle, new Runnable() {
                @Override
                public final void run() {
                    this.b.d(adsDTO, bundle);
                }
            });
        }
    }

    public class e implements wmd {
        public e() {
        }

        public void d(AdsDTO adsDTO, Bundle bundle) {
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(adsDTO);
            if (h0.this.a != null) {
                h0.this.a.b(arrayList, bundle);
            }
        }

        @Override
        public void a(TaErrorCode taErrorCode, Bundle bundle) {
            if (h0.this.a != null) {
                h0.this.a.a(taErrorCode, bundle);
            }
        }

        @Override
        public void b(final AdsDTO adsDTO, final Bundle bundle) {
            ikd.b().d("MaterialDownload", "loadPlatformAd onSuccess mAdBean ");
            h0.this.c(adsDTO, bundle, new Runnable() {
                @Override
                public final void run() {
                    this.b.d(adsDTO, bundle);
                }
            });
        }
    }

    public class f extends DrawableResponseListener {
        public final AdsDTO b;
        public final Runnable c;

        public f(AdsDTO adsDTO, Runnable runnable) {
            this.b = adsDTO;
            this.c = runnable;
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            ikd ikdVarB = ikd.b();
            StringBuilder sb = new StringBuilder();
            sb.append("template html download failed, fallback to normal ad. error=");
            sb.append(taErrorCode != null ? Integer.valueOf(taErrorCode.getErrorCode()) : "null");
            ikdVarB.w("MaterialDownload", sb.toString());
            this.b.setTemplateHtmlFilePath(null);
            this.c.run();
        }

        @Override
        public void g(int i, AdImage adImage) {
            String filePath = adImage == null ? null : adImage.getFilePath();
            if (!TextUtils.isEmpty(filePath)) {
                this.b.setTemplateHtmlFilePath(filePath);
            }
            this.c.run();
        }
    }

    public interface g {
        void a(TaErrorCode taErrorCode, Bundle bundle);

        void b(List list, Bundle bundle);
    }

    public final void b(AdsDTO adsDTO, int i) {
        new dp1(adsDTO, i, new b()).s();
    }

    public final void c(AdsDTO adsDTO, Bundle bundle, Runnable runnable) {
        if (adsDTO == null || adsDTO.isInteractiveAd() || !TextUtils.isEmpty(adsDTO.getAdm()) || TextUtils.isEmpty(adsDTO.getTemplateHtmlUrl())) {
            runnable.run();
        } else {
            DownLoadRequest.k(adsDTO.getTemplateHtmlUrl(), adsDTO, 14, true, new f(adsDTO, runnable));
        }
    }

    public void d(g gVar) {
        this.a = gVar;
    }

    public final void f(List list) {
        ikd.b().d("ssp", "start execute getAdCreativies.");
        new com.cloud.hisavana.sdk.f(list, 1, new a()).s();
    }

    public void g(List list, int i, int i2, int i3) {
        switch (i) {
            case 1:
            case 6:
                if (i3 > 0) {
                    try {
                        if (list.size() > i3) {
                            ikd.b().d("ssp", "ads dto subList -> " + i3);
                            list = list.subList(0, i3);
                            break;
                        }
                    } catch (Throwable unused) {
                    }
                }
                f(list);
                break;
            case 2:
                b((AdsDTO) list.get(0), i2);
                break;
            case 3:
                h((AdsDTO) list.get(0), i2);
                break;
            case 4:
                j((AdsDTO) list.get(0), i2);
                break;
            case 5:
                i((AdsDTO) list.get(0), i2);
                break;
            case 8:
                i((AdsDTO) list.get(0), i2);
                break;
        }
    }

    public final void h(AdsDTO adsDTO, int i) {
        new utd(adsDTO, i, new c()).s();
    }

    public final void i(AdsDTO adsDTO, int i) {
        new n7d(adsDTO, i, new e()).w();
    }

    public final void j(AdsDTO adsDTO, int i) {
        new tgd(adsDTO, i, new d()).t();
    }
}
