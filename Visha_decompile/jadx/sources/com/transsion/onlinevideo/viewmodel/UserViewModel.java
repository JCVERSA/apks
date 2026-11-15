package com.transsion.onlinevideo.viewmodel;

import android.app.Application;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.p004lifecycle.AndroidViewModel;
import androidx.p004lifecycle.MutableLiveData;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.dbdata.beans.onlinevideo.UserInfoBean;
import com.transsion.onlinevideo.viewmodel.UserViewModel;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.retrofit.cache.CacheManager;
import defpackage.fi1;
import defpackage.k29;
import defpackage.mc7;
import defpackage.t74;
import defpackage.vb;
import defpackage.zf1;

public class UserViewModel extends AndroidViewModel {
    public static final String b = "visha_" + UserViewModel.class.getSimpleName();
    public MutableLiveData a;

    public UserViewModel(@NonNull Application application) {
        super(application);
        this.a = new MutableLiveData();
    }

    public static UserInfoBean d(Context context) {
        UserInfoBean userInfoBean = (UserInfoBean) fi1.b(CacheManager.getInstance().getCache("user_info_cache_key"), UserInfoBean.class);
        if (userInfoBean == null) {
            userInfoBean = new UserInfoBean();
        }
        LogUtils.j(b, "UserInfoBean:" + userInfoBean);
        return userInfoBean;
    }

    public MutableLiveData c() {
        return this.a;
    }

    public final void e(UserInfoBean userInfoBean) {
        this.a.postValue(userInfoBean);
    }

    public void f(Context context) {
        mc7.K(context).g(((BaseActivity) context).bindToLifecycle()).d0(k29.c()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return UserViewModel.d((Context) obj);
            }
        }).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.e((UserInfoBean) obj);
            }
        });
    }
}
