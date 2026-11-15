package com.transsion.magicvideo.model;

import android.app.Application;
import androidx.annotation.NonNull;
import androidx.p004lifecycle.AndroidViewModel;
import androidx.p004lifecycle.MutableLiveData;

public class VideoControlModel extends AndroidViewModel {
    public MutableLiveData<Boolean> enableClickFullScreen;
    public MutableLiveData<Boolean> isReleaseTouchEvent;

    public VideoControlModel(@NonNull Application application) {
        super(application);
        this.isReleaseTouchEvent = new MutableLiveData<>();
        this.enableClickFullScreen = new MutableLiveData<>();
        MutableLiveData<Boolean> mutableLiveData = this.isReleaseTouchEvent;
        Boolean bool = Boolean.TRUE;
        mutableLiveData.setValue(bool);
        this.enableClickFullScreen.setValue(bool);
    }
}
