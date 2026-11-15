package com.transsion.tools.model;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import android.content.res.Resources;
import androidx.annotation.NonNull;
import androidx.p004lifecycle.AndroidViewModel;
import androidx.p004lifecycle.MutableLiveData;
import com.google.gson.reflect.TypeToken;
import com.transsion.dbdata.beans.SkinsMenu;
import com.transsion.dbdata.beans.ThemeData;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.vishaapis.onlinevideo.IOnlineVideoApiService;
import com.transsion.playercommon.vishaapis.onlinevideo.OnlineVideoApiManager;
import com.transsion.retrofit.cache.CacheManager;
import com.transsion.retrofit.exception.ResponseExceptionHandler;
import com.transsion.retrofit.reponse.BaseResponse;
import com.transsion.tools.R;
import com.transsion.tools.model.SkinsViewModel;
import com.transsion.utils.a;
import defpackage.b39;
import defpackage.fi1;
import defpackage.k29;
import defpackage.mc7;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.t74;
import defpackage.vb;
import defpackage.vha;
import defpackage.w6c;
import defpackage.ydc;
import defpackage.zf1;
import java.util.ArrayList;
import java.util.List;

public class SkinsViewModel extends AndroidViewModel {
    public static final int LOAD_COMPLETE = 0;
    public static final int LOAD_END = 1;
    public static final int LOAD_FAIL = 2;
    public static final int MAX_PAGE_SIZE = 6;
    public static final String TAG_SKIN_CACHE = "tag_skin_cache";
    private ThemeData mCustomTheme;
    private final MutableLiveData<List<SkinsMenu>> mDefaultSkins;
    MutableLiveData<Integer> mLoadStatus;
    private final MutableLiveData<List<SkinsMenu>> mOnlineSkins;

    public SkinsViewModel(@NonNull Application application) {
        super(application);
        this.mDefaultSkins = new MutableLiveData<>();
        this.mOnlineSkins = new MutableLiveData<>();
        this.mLoadStatus = new MutableLiveData<>();
        this.mCustomTheme = (ThemeData) w6c.f(application, "theme_preview_key");
    }

    private void addLocalThemes(List<SkinsMenu> list) {
        list.add(new SkinsMenu(R.drawable.image_default_system, R.drawable.icon_skin_default_fold, getApplication().getResources().getString(R.string.default_skin), getApplication().getResources().getString(R.string.default_skin_name)));
        if (!ydc.e()) {
            addMusicThemes(list);
        }
        int i = R.drawable.icon_skin_starry_fold;
        list.add(new SkinsMenu(i, i, getApplication().getResources().getString(R.string.local_skin_starry), getApplication().getResources().getString(R.string.skin_starry_name)));
        int i2 = R.drawable.icon_skin_feather_fold;
        list.add(new SkinsMenu(i2, i2, getApplication().getResources().getString(R.string.local_skin_feather), getApplication().getResources().getString(R.string.skin_feather_name)));
        int i3 = R.drawable.icon_skin_metal_fold;
        list.add(new SkinsMenu(i3, i3, getApplication().getResources().getString(R.string.local_skin_metal), getApplication().getResources().getString(R.string.skin_metal_name)));
        int i4 = R.drawable.icon_skin_sphere_fold;
        list.add(new SkinsMenu(i4, i4, getApplication().getResources().getString(R.string.local_skin_sphere), getApplication().getResources().getString(R.string.skin_sphere_name)));
        int i5 = R.drawable.icon_skin_jellyfish_fold;
        list.add(new SkinsMenu(i5, i5, getApplication().getResources().getString(R.string.local_skin_jellyfish), getApplication().getResources().getString(R.string.skin_jellyfish_name)));
        int i6 = R.drawable.icon_skin_gradient_fold;
        list.add(new SkinsMenu(i6, i6, getApplication().getResources().getString(R.string.local_skin_gradient), getApplication().getResources().getString(R.string.skin_gradient_name)));
        int i7 = R.drawable.icon_skin_household_fold;
        list.add(new SkinsMenu(i7, i7, getApplication().getResources().getString(R.string.local_skin_household), getApplication().getResources().getString(R.string.skin_household_name)));
    }

    private void addMusicThemes(List<SkinsMenu> list) {
        list.addAll(vha.f());
    }

    public List lambda$getCacheData$0(SkinsViewModel skinsViewModel) throws Exception {
        return (List) fi1.c(CacheManager.getInstance().getCache(TAG_SKIN_CACHE), new TypeToken<List<SkinsMenu>>() {
        }.getType());
    }

    public void lambda$getCacheData$1(int i, int i2, List list) throws Exception {
        this.mOnlineSkins.postValue(list);
        getOnlineData(i, i2);
    }

    public static List lambda$insertCache$2(List list, SkinsViewModel skinsViewModel) throws Exception {
        CacheManager.getInstance().setCache(TAG_SKIN_CACHE, fi1.e(list));
        return list;
    }

    public void createLocalSkins(Context context) {
        ArrayList arrayList = new ArrayList();
        int i = !b39.b(context) ? R.drawable.image_custom_preview_fold : R.drawable.image_custom_preview;
        int i2 = R.drawable.icon_skin_custom;
        SkinsMenu skinsMenu = new SkinsMenu(i, i2, getApplication().getResources().getString(R.string.skins_customize), i2, 0);
        ThemeData themeData = this.mCustomTheme;
        if (themeData != null) {
            skinsMenu.description = themeData.description;
            skinsMenu.name = themeData.name;
            skinsMenu.detailPath = themeData.path;
            skinsMenu.backgroundType = themeData.backgroundType;
            skinsMenu.thumbType = themeData.thumbType;
            skinsMenu.thumbPath = themeData.tabPath;
            skinsMenu.darkMode = 0;
        }
        skinsMenu.thumbnailPath = null;
        skinsMenu.backgroundType = 0;
        arrayList.add(skinsMenu);
        if (a.A() || ydc.g()) {
            addLocalThemes(arrayList);
        } else {
            arrayList.add(new SkinsMenu(R.drawable.image_default_system, R.drawable.icon_skin_default, getApplication().getResources().getString(R.string.default_skin), R.color.os_bg_primary_color, getApplication().getResources().getColor(R.color.visha_basic_color), -1));
            if (!ydc.e()) {
                addMusicThemes(arrayList);
            }
            int i3 = R.drawable.icon_skin_feather;
            Resources resources = getApplication().getResources();
            int i4 = R.string.local_skin_feather;
            arrayList.add(new SkinsMenu(i3, i3, resources.getString(i4), getApplication().getResources().getString(i4)));
            int i5 = R.drawable.icon_skin_metal;
            Resources resources2 = getApplication().getResources();
            int i6 = R.string.local_skin_metal;
            arrayList.add(new SkinsMenu(i5, i5, resources2.getString(i6), getApplication().getResources().getString(i6)));
            int i7 = R.drawable.icon_skin_rock;
            arrayList.add(new SkinsMenu(i7, i7, getApplication().getResources().getString(R.string.local_skin_2), i7, getApplication().getResources().getColor(R.color.custom_color_0), 0));
        }
        this.mDefaultSkins.postValue(arrayList);
    }

    @SuppressLint({"CheckResult"})
    public void getCacheData(Context context, final int i, final int i2) {
        mc7.K(this).g(((BaseActivity) context).bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.lambda$getCacheData$0((SkinsViewModel) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) throws Exception {
                this.b.lambda$getCacheData$1(i, i2, (List) obj);
            }
        });
    }

    public MutableLiveData<List<SkinsMenu>> getDefaultSkins() {
        return this.mDefaultSkins;
    }

    public MutableLiveData<Integer> getLoadStatus() {
        return this.mLoadStatus;
    }

    public void getOnlineData(final int i, final int i2) {
        ((IOnlineVideoApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineVideoApiService.class)).getSkins(i, i2).L(new ResponseExceptionHandler.ServerResultFunc()).O(new ResponseExceptionHandler.HttpResultFunc()).d0(k29.c()).M(vb.a()).subscribe(new pd7() {
            @Override
            public void onComplete() {
            }

            @Override
            public void onError(Throwable th) {
                SkinsViewModel.this.mLoadStatus.postValue(2);
            }

            @Override
            public void onSubscribe(rc2 rc2Var) {
            }

            @Override
            public void onNext(BaseResponse<List<SkinsMenu>> baseResponse) {
                List arrayList = (List) SkinsViewModel.this.mOnlineSkins.getValue();
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                List<SkinsMenu> records = baseResponse.getRecords();
                if (records == null || records.size() == 0) {
                    SkinsViewModel.this.mLoadStatus.postValue(1);
                    return;
                }
                if (i == 1) {
                    arrayList.clear();
                    SkinsViewModel.this.insertCache(records);
                }
                arrayList.addAll(records);
                int total = baseResponse.getTotal();
                int iCeil = (int) Math.ceil(total / i2);
                int i3 = i;
                if (i3 < iCeil) {
                    SkinsViewModel.this.mOnlineSkins.postValue(arrayList);
                    SkinsViewModel.this.mLoadStatus.postValue(0);
                } else {
                    if (i3 == iCeil && total % i2 > 0) {
                        SkinsViewModel.this.mOnlineSkins.postValue(arrayList);
                    }
                    SkinsViewModel.this.mLoadStatus.postValue(1);
                }
            }
        });
    }

    public MutableLiveData<List<SkinsMenu>> getOnlineSkins() {
        return this.mOnlineSkins;
    }

    public void insertCache(final List<SkinsMenu> list) {
        mc7.K(this).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return SkinsViewModel.lambda$insertCache$2(list, (SkinsViewModel) obj);
            }
        }).d0(k29.c()).M(vb.a()).Y();
    }

    public void updateCustomTheme() {
        this.mCustomTheme = (ThemeData) w6c.f(getApplication(), "theme_preview_key");
    }
}
