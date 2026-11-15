package com.transsion.playercommon.videomodel;

import android.app.Application;
import androidx.annotation.NonNull;
import androidx.p004lifecycle.AndroidViewModel;
import androidx.p004lifecycle.LiveData;
import androidx.p004lifecycle.MutableLiveData;
import androidx.p004lifecycle.Observer;
import com.blankj.utilcode.util.ThreadUtils;
import com.transsion.dbdata.database.MediaPlayCount;
import com.transsion.dbdata.database.PlayListFolderItem;
import com.transsion.dbdata.database.PlayListMediaItem;
import com.transsion.dbdata.database.VideoPlayList;
import com.transsion.dbdata.source.DataSourceScope;
import com.transsion.playercommon.videomodel.VideoPlayListModel;
import defpackage.oa1;
import defpackage.rl8;
import defpackage.vmb;
import defpackage.we6;
import defpackage.zj7;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public class VideoPlayListModel extends AndroidViewModel {
    public LiveData a;
    public final LiveData b;
    public final LiveData c;
    public MutableLiveData d;
    public final MutableLiveData e;
    public final Observer f;

    public VideoPlayListModel(@NonNull Application application) {
        super(application);
        this.d = new MutableLiveData();
        this.e = new MutableLiveData();
        Observer observer = new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.m((List) obj);
            }
        };
        this.f = observer;
        int iF = oa1.f();
        we6 we6VarE = we6.e();
        DataSourceScope dataSourceScope = DataSourceScope.VIDEO;
        LiveData liveDataQ = we6VarE.q(dataSourceScope, zj7.c(new rl8.i(2, false, true, iF), PlayListFolderItem.class));
        this.c = liveDataQ;
        this.a = we6.e().q(dataSourceScope, zj7.c(new rl8.e(true), MediaPlayCount.class));
        this.b = we6.e().q(dataSourceScope, zj7.c(new rl8.c(true, iF), PlayListMediaItem.class));
        liveDataQ.observeForever(observer);
    }

    public static boolean j(PlayListFolderItem playListFolderItem) {
        return playListFolderItem.getCategory() != 1;
    }

    public static VideoPlayList k(PlayListFolderItem playListFolderItem) {
        VideoPlayList videoPlayList = new VideoPlayList();
        videoPlayList.id = (int) playListFolderItem.getId();
        videoPlayList.name = playListFolderItem.getName();
        videoPlayList.count = playListFolderItem.getCount();
        return videoPlayList;
    }

    public LiveData e() {
        return this.b;
    }

    public MutableLiveData f() {
        return this.d;
    }

    public LiveData g() {
        return this.c;
    }

    public MutableLiveData h() {
        return this.e;
    }

    public LiveData i() {
        return this.a;
    }

    public final void l(List list) {
        ArrayList arrayList = new ArrayList();
        try {
            List list2 = (List) list.stream().filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return VideoPlayListModel.j((PlayListFolderItem) obj);
                }
            }).map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return VideoPlayListModel.k((PlayListFolderItem) obj);
                }
            }).collect(Collectors.toList());
            vmb.a("VideoPlayListModel", "query video play list result:" + list2);
            arrayList.addAll(list2);
        } catch (Exception e) {
            vmb.d("VideoPlayListModel", "transform VideoPlayList error", e);
        }
        this.e.postValue(arrayList);
    }

    public final void m(final List list) {
        ThreadUtils.n().execute(new Runnable() {
            @Override
            public final void run() {
                this.b.l(list);
            }
        });
    }

    public void n(boolean z) {
        this.d.postValue(Boolean.valueOf(z));
    }

    public void o(boolean z) {
        this.d.setValue(Boolean.valueOf(z));
    }

    @Override
    public void onCleared() {
        LiveData liveData = this.c;
        if (liveData != null) {
            liveData.removeObserver(this.f);
        }
        super.onCleared();
    }
}
