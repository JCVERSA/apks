package com.transsion.tools.model;

import android.app.Application;
import androidx.annotation.NonNull;
import androidx.p004lifecycle.AndroidViewModel;
import androidx.p004lifecycle.LiveData;
import androidx.p004lifecycle.MutableLiveData;
import com.transsion.dbdata.database.ConvertAudio;
import com.transsion.dbdata.database.ConvertingVideo;
import com.transsion.dbdata.source.DataSourceScope;
import defpackage.oa1;
import defpackage.rl8;
import defpackage.we6;
import defpackage.zj7;
import java.util.List;

public class ConvertDaoModel extends AndroidViewModel {
    public LiveData<List<ConvertAudio>> audioList;
    public LiveData<List<ConvertingVideo>> convertingVideoList;
    private MutableLiveData<Boolean> listItemChanged;

    public ConvertDaoModel(@NonNull Application application) {
        super(application);
        this.listItemChanged = new MutableLiveData<>();
        flushPlayList();
    }

    public void flushPlayList() {
        this.audioList = we6.e().q(DataSourceScope.AUDIO, zj7.c(new rl8.a(oa1.e()), ConvertAudio.class));
        this.convertingVideoList = we6.e().q(DataSourceScope.VIDEO, zj7.c(new rl8.j(oa1.e()), ConvertingVideo.class));
    }

    public LiveData<List<ConvertAudio>> getConvertListData() {
        return this.audioList;
    }

    public LiveData<List<ConvertingVideo>> getConvertingVideoData() {
        return this.convertingVideoList;
    }

    public MutableLiveData<Boolean> getListItemChanged() {
        return this.listItemChanged;
    }

    public void postListItemChanged(boolean z) {
        this.listItemChanged.postValue(Boolean.valueOf(z));
    }

    public void setListItemChanged(boolean z) {
        this.listItemChanged.setValue(Boolean.valueOf(z));
    }
}
