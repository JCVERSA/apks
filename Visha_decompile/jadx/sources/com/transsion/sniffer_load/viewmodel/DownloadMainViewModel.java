package com.transsion.sniffer_load.viewmodel;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import androidx.p004lifecycle.MutableLiveData;
import androidx.p004lifecycle.ViewModel;
import com.google.gson.reflect.TypeToken;
import com.transsion.dbdata.beans.mimedia.MIMediaLibraryData;
import com.transsion.dbdata.beans.sniff.DownloadConfigData;
import com.transsion.dbdata.beans.sniff.DownloadMain;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.vishaapis.onlinevideo.IOnlineVideoApiService;
import com.transsion.playercommon.vishaapis.onlinevideo.OnlineVideoApiManager;
import com.transsion.retrofit.cache.CacheManager;
import com.transsion.retrofit.reponse.BaseResponse;
import com.transsion.sniffer_load.R;
import com.transsion.sniffer_load.viewmodel.DownloadMainViewModel;
import defpackage.fi1;
import defpackage.k29;
import defpackage.mc7;
import defpackage.pd7;
import defpackage.py2;
import defpackage.rc2;
import defpackage.s21;
import defpackage.t74;
import defpackage.vb;
import defpackage.zf1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.function.ToIntFunction;

public class DownloadMainViewModel extends ViewModel {
    public MutableLiveData a = new MutableLiveData();
    public MutableLiveData b = new MutableLiveData();
    public MutableLiveData c = new MutableLiveData();

    public class a implements zf1 {
        public a() {
        }

        @Override
        public void accept(DownloadConfigData downloadConfigData) {
            if (downloadConfigData != null) {
                DownloadMain downloadMain = downloadConfigData.getDownloadMain();
                if (downloadMain != null) {
                    DownloadMainViewModel.this.r(downloadMain);
                } else {
                    downloadMain = new DownloadMain();
                }
                DownloadMainViewModel.this.b.postValue(downloadMain);
                if (downloadConfigData.getSearchKey() != null) {
                    DownloadMainViewModel.this.a.postValue(downloadConfigData.getSearchKey());
                }
            }
        }
    }

    public class b implements pd7 {
        public b() {
        }

        @Override
        public void onNext(BaseResponse baseResponse) {
            Log.d("DownloadMainViewModel", "requestMIMediaLibraryList " + baseResponse);
            if (baseResponse == null || !baseResponse.isSuccess() || baseResponse.getRecords() == null) {
                DownloadMainViewModel.this.c.postValue(null);
                return;
            }
            DownloadMainViewModel.this.c.postValue((List) baseResponse.getRecords());
            s21.b.a().m((List) baseResponse.getRecords());
            CacheManager.getInstance().setCache("download_mi_media_library_cache", fi1.e(baseResponse.getRecords()));
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
            DownloadMainViewModel.this.c.postValue(null);
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
        }
    }

    public void f(final Context context) {
        mc7.K(this).g(((BaseActivity) context).bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.k(context, (DownloadMainViewModel) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.l((DownloadMain) obj);
            }
        });
    }

    public void g(Context context) {
        mc7.K(this).g(((BaseActivity) context).bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.m((DownloadMainViewModel) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.n((List) obj);
            }
        });
    }

    public MutableLiveData h() {
        return this.c;
    }

    public MutableLiveData i() {
        return this.b;
    }

    public MutableLiveData j() {
        return this.a;
    }

    public final DownloadMain k(Context context, DownloadMainViewModel downloadMainViewModel) {
        DownloadMain downloadMain = (DownloadMain) fi1.b(CacheManager.getInstance().getCache("download_main_cache"), DownloadMain.class);
        if (downloadMain != null) {
            return downloadMain;
        }
        DownloadMain downloadMain2 = new DownloadMain();
        q(context, downloadMain2);
        return downloadMain2;
    }

    public final void l(DownloadMain downloadMain) {
        r(downloadMain);
        this.b.postValue(downloadMain);
    }

    public final List m(DownloadMainViewModel downloadMainViewModel) throws Throwable {
        String cache = CacheManager.getInstance().getCache("download_mi_media_library_cache");
        if (TextUtils.isEmpty(cache)) {
            return null;
        }
        return (List) fi1.c(cache, new TypeToken<List<MIMediaLibraryData>>() {
        }.getType());
    }

    public final void n(List list) {
        this.c.setValue(list);
    }

    public void o(Context context) {
        py2.d(new a(), py2.b());
    }

    public void p() {
        ((IOnlineVideoApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineVideoApiService.class)).getMIDataList(1, 5).d0(k29.c()).M(k29.c()).subscribe(new b());
    }

    public void q(Context context, DownloadMain downloadMain) {
        if (downloadMain == null) {
            downloadMain = new DownloadMain();
        }
        DownloadMain.PageItem pageItem = new DownloadMain.PageItem();
        pageItem.setCategory_name(context.getResources().getString(R.string.empty_web_title));
        pageItem.setWebsite_type(0);
        ArrayList arrayList = new ArrayList();
        pageItem.setData_list(arrayList);
        DownloadMain.ItemData itemData = new DownloadMain.ItemData();
        itemData.setWebsite_name("Instagram");
        itemData.setWebsite_link("https://m.instagram.com/");
        StringBuilder sb = new StringBuilder();
        sb.append("android.resource://");
        Resources resources = context.getResources();
        int i = R.drawable.instagram;
        sb.append(resources.getResourcePackageName(i));
        sb.append("/");
        sb.append(context.getResources().getResourceTypeName(i));
        sb.append("/");
        sb.append(context.getResources().getResourceEntryName(i));
        itemData.setIcon(Uri.parse(sb.toString()).toString());
        DownloadMain.ItemData itemData2 = new DownloadMain.ItemData();
        itemData2.setWebsite_name("Tiktok");
        itemData2.setWebsite_link("https://m.tiktok.com");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("android.resource://");
        Resources resources2 = context.getResources();
        int i2 = R.drawable.tiktok;
        sb2.append(resources2.getResourcePackageName(i2));
        sb2.append("/");
        sb2.append(context.getResources().getResourceTypeName(i2));
        sb2.append("/");
        sb2.append(context.getResources().getResourceEntryName(i2));
        itemData2.setIcon(Uri.parse(sb2.toString()).toString());
        DownloadMain.ItemData itemData3 = new DownloadMain.ItemData();
        itemData3.setWebsite_name("Tumblr");
        itemData3.setWebsite_link("https://www.tumblr.com/explore/video");
        StringBuilder sb3 = new StringBuilder();
        sb3.append("android.resource://");
        Resources resources3 = context.getResources();
        int i3 = R.drawable.tumblr;
        sb3.append(resources3.getResourcePackageName(i3));
        sb3.append("/");
        sb3.append(context.getResources().getResourceTypeName(i3));
        sb3.append("/");
        sb3.append(context.getResources().getResourceEntryName(i3));
        itemData3.setIcon(Uri.parse(sb3.toString()).toString());
        arrayList.add(itemData);
        arrayList.add(itemData2);
        arrayList.add(itemData3);
        downloadMain.setWebsite_category_list(Arrays.asList(pageItem));
    }

    public final void r(DownloadMain downloadMain) {
        if (downloadMain == null) {
            downloadMain = new DownloadMain();
        }
        List<DownloadMain.PageItem> website_category_list = downloadMain.getWebsite_category_list();
        if (website_category_list != null) {
            website_category_list.sort(Comparator.comparingInt(new ToIntFunction() {
                @Override
                public final int applyAsInt(Object obj) {
                    return ((DownloadMain.PageItem) obj).getCategory_sort();
                }
            }));
        }
    }
}
