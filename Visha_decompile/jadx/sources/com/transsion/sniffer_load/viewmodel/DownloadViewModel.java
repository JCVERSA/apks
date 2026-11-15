package com.transsion.sniffer_load.viewmodel;

import androidx.p004lifecycle.LifecycleOwner;
import androidx.p004lifecycle.MutableLiveData;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModel;
import com.transsion.sniffer_load.GlobalDownloadManger;
import com.transsion.sniffer_load.WebActivity;
import com.transsion.sniffer_load.data.SniffDataManager;

public class DownloadViewModel extends ViewModel {
    public final MutableLiveData a = new MutableLiveData();
    public final MutableLiveData b = new MutableLiveData();
    public final MutableLiveData c = new MutableLiveData();
    public final MutableLiveData d = new MutableLiveData();
    public final MutableLiveData e = new MutableLiveData();
    public final MutableLiveData f = new MutableLiveData();

    public static void d() {
        GlobalDownloadManger.B().m("DownloadingAdapter");
    }

    public void a(LifecycleOwner lifecycleOwner, Observer observer) {
        this.e.observe(lifecycleOwner, observer);
    }

    public void b(LifecycleOwner lifecycleOwner) {
        this.e.removeObservers(lifecycleOwner);
    }

    public void c(String str) {
        this.e.postValue(SniffDataManager.getPageData(WebActivity.L0));
    }
}
