package com.transsion;

import android.app.Application;
import androidx.annotation.NonNull;
import androidx.p004lifecycle.AndroidViewModel;
import androidx.p004lifecycle.MutableLiveData;

public class BaseViewModel extends AndroidViewModel {
    public MutableLiveData<Throwable> netException;
    public MutableLiveData<NetState> netState;

    public BaseViewModel(@NonNull Application application) {
        super(application);
        this.netState = new MutableLiveData<>();
        this.netException = new MutableLiveData<>();
    }
}
