package com.transsion.playercommon.videomodel;

import android.app.Application;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.p004lifecycle.AndroidViewModel;
import androidx.p004lifecycle.LifecycleOwner;
import androidx.p004lifecycle.LiveData;
import androidx.p004lifecycle.MutableLiveData;
import androidx.p004lifecycle.Observer;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.playercommon.utils.AudioCoverProcessorUtils;
import defpackage.ao;

public class AudioAlbumViewModel extends AndroidViewModel {
    public LiveData a;
    public AudioItem b;
    public MutableLiveData c;
    public MutableLiveData d;
    public MutableLiveData e;
    public MutableLiveData f;

    class AnonymousClass2 implements Runnable {
        final int val$id;

        public AnonymousClass2(int i) {
            this.val$id = i;
        }

        @Override
        public void run() {
            AudioAlbumViewModel.this.c.postValue(ao.U().D(this.val$id));
        }
    }

    public AudioAlbumViewModel(@NonNull Application application) {
        super(application);
        this.c = new MutableLiveData();
        this.d = new MutableLiveData();
        this.e = new MutableLiveData();
        this.f = new MutableLiveData(Boolean.FALSE);
    }

    public void a(final LifecycleOwner lifecycleOwner, final Observer observer) {
        TaskExecutor.c(new TaskExecutor.Task<Void>() {
            @Override
            public Void onBackground() {
                AudioAlbumViewModel audioAlbumViewModel = AudioAlbumViewModel.this;
                if (audioAlbumViewModel.a != null) {
                    return null;
                }
                audioAlbumViewModel.a = ao.U().j0();
                return null;
            }

            @Override
            public void onResult(Void r2) {
                AudioAlbumViewModel.this.a.observe(lifecycleOwner, observer);
            }
        });
    }

    public AudioItem b() {
        return this.b;
    }

    public MutableLiveData c() {
        return this.d;
    }

    public void d(AudioItem audioItem, String str) {
        f(audioItem);
        e(str);
    }

    public void e(String str) {
        if (this.b == null) {
            return;
        }
        String strB = AudioCoverProcessorUtils.b(str);
        if (TextUtils.isEmpty(strB)) {
            strB = "";
        }
        AudioItem audioItem = this.b;
        audioItem.albumPath = strB;
        audioItem.setCustomCoverPath(strB);
        String str2 = this.b.data;
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        ao.U().s0(this.b.id, str2, strB);
        this.a = ao.U().j0();
    }

    public void f(AudioItem audioItem) {
        this.b = audioItem;
    }

    public void g(PlayAudioData playAudioData) {
        this.d.postValue(playAudioData);
    }
}
