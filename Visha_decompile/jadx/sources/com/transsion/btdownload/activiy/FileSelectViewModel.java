package com.transsion.btdownload.activiy;

import androidx.p004lifecycle.LifecycleOwner;
import androidx.p004lifecycle.MutableLiveData;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModel;

public class FileSelectViewModel extends ViewModel {
    public MutableLiveData a = new MutableLiveData();

    /* JADX WARN: Multi-variable type inference failed */
    public boolean a() {
        if (this.a.getValue() == 0) {
            return false;
        }
        return ((Boolean) this.a.getValue()).booleanValue();
    }

    public void b(LifecycleOwner lifecycleOwner, Observer observer) {
        this.a.observe(lifecycleOwner, observer);
    }

    public void c(boolean z) {
        this.a.postValue(Boolean.valueOf(z));
    }
}
