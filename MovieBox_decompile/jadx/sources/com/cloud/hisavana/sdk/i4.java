package com.cloud.hisavana.sdk;

import android.os.Bundle;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import java.util.ArrayList;
import java.util.List;

public class i4 {

    private f f21906a;

    class a implements s5.b {
        a() {
        }

        @Override
        public void a(TaErrorCode taErrorCode, Bundle bundle) {
            if (i4.this.f21906a != null) {
                i4.this.f21906a.a(taErrorCode, bundle);
            }
        }

        @Override
        public void b(List list, List list2, Bundle bundle) {
            if (i4.this.f21906a != null) {
                i4.this.f21906a.b(list2, bundle);
            }
        }
    }

    class b implements m3 {
        b() {
        }

        @Override
        public void a(TaErrorCode taErrorCode, Bundle bundle) {
            if (i4.this.f21906a != null) {
                i4.this.f21906a.a(taErrorCode, bundle);
            }
        }

        @Override
        public void b(AdsDTO adsDTO, Bundle bundle) {
            b4.b().d("MaterialDownload", "loadPlatformAd onSuccess mAdBean ");
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(adsDTO);
            if (i4.this.f21906a != null) {
                i4.this.f21906a.b(arrayList, bundle);
            }
        }
    }

    class c implements m3 {
        c() {
        }

        @Override
        public void a(TaErrorCode taErrorCode, Bundle bundle) {
            if (i4.this.f21906a != null) {
                i4.this.f21906a.a(taErrorCode, bundle);
            }
        }

        @Override
        public void b(AdsDTO adsDTO, Bundle bundle) {
            b4.b().d("MaterialDownload", "loadPlatformAd onSuccess mAdBean ");
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(adsDTO);
            if (i4.this.f21906a != null) {
                i4.this.f21906a.b(arrayList, bundle);
            }
        }
    }

    class d implements m3 {
        d() {
        }

        @Override
        public void a(TaErrorCode taErrorCode, Bundle bundle) {
            if (i4.this.f21906a != null) {
                i4.this.f21906a.a(taErrorCode, bundle);
            }
        }

        @Override
        public void b(AdsDTO adsDTO, Bundle bundle) {
            b4.b().d("MaterialDownload", "loadPlatformAd onSuccess mAdBean ");
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(adsDTO);
            if (i4.this.f21906a != null) {
                i4.this.f21906a.b(arrayList, bundle);
            }
        }
    }

    class e implements m3 {
        e() {
        }

        @Override
        public void a(TaErrorCode taErrorCode, Bundle bundle) {
            if (i4.this.f21906a != null) {
                i4.this.f21906a.a(taErrorCode, bundle);
            }
        }

        @Override
        public void b(AdsDTO adsDTO, Bundle bundle) {
            b4.b().d("MaterialDownload", "loadPlatformAd onSuccess mAdBean ");
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(adsDTO);
            if (i4.this.f21906a != null) {
                i4.this.f21906a.b(arrayList, bundle);
            }
        }
    }

    public interface f {
        void a(TaErrorCode taErrorCode, Bundle bundle);

        void b(List list, Bundle bundle);
    }

    private void b(AdsDTO adsDTO, int i10) {
        new r(adsDTO, i10, new b()).q();
    }

    private void d(List list) {
        b4.b().d("ssp", "start execute getAdCreativies.");
        new s5(list, 1, new a()).q();
    }

    private void f(AdsDTO adsDTO, int i10) {
        new a4(adsDTO, i10, new c()).q();
    }

    private void g(AdsDTO adsDTO, int i10) {
        new q1(adsDTO, i10, new e()).u();
    }

    private void h(AdsDTO adsDTO, int i10) {
        new a2(adsDTO, i10, new d()).r();
    }

    public void c(f fVar) {
        this.f21906a = fVar;
    }

    public void e(List list, int i10, int i11, int i12) {
        switch (i10) {
            case 1:
            case 6:
                if (i12 > 0) {
                    try {
                        if (list.size() > i12) {
                            b4.b().d("ssp", "ads dto subList -> " + i12);
                            list = list.subList(0, i12);
                            break;
                        }
                    } catch (Throwable unused) {
                    }
                }
                d(list);
                break;
            case 2:
                b((AdsDTO) list.get(0), i11);
                break;
            case 3:
                f((AdsDTO) list.get(0), i11);
                break;
            case 4:
                h((AdsDTO) list.get(0), i11);
                break;
            case 5:
                g((AdsDTO) list.get(0), i11);
                break;
        }
    }
}
