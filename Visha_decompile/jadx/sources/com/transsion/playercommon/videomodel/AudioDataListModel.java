package com.transsion.playercommon.videomodel;

import android.app.Application;
import androidx.annotation.NonNull;
import androidx.p004lifecycle.AndroidViewModel;
import androidx.p004lifecycle.MutableLiveData;
import java.util.List;

public class AudioDataListModel extends AndroidViewModel {
    public MutableLiveData a;

    public AudioDataListModel(@NonNull Application application) {
        super(application);
        this.a = new MutableLiveData();
    }

    public List a() {
        return (List) this.a.getValue();
    }

    public void b(List list) {
        this.a.setValue(list);
    }
}
