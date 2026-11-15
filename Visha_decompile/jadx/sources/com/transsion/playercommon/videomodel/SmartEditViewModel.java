package com.transsion.playercommon.videomodel;

import android.app.Application;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.p004lifecycle.AndroidViewModel;
import androidx.p004lifecycle.MutableLiveData;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import com.transsion.dbdata.beans.audioedit.AcoustIdResponseBean;
import com.transsion.dbdata.beans.audioedit.AudioFingerPrintBean;
import com.transsion.dbdata.beans.audioedit.LastFMResponseBean;
import com.transsion.dbdata.beans.audioedit.Recording;
import com.transsion.dbdata.beans.audioedit.Result;
import com.transsion.dbdata.beans.media.MusicBrainzResponseBean;
import com.transsion.playercommon.vishaapis.appconfig.helper.SmartEditConfigHelper;
import com.transsion.playercommon.vishaapis.smartedit.AudioAcoustIdApiManager;
import com.transsion.playercommon.vishaapis.smartedit.AudioLastFmCoverApiManager;
import com.transsion.playercommon.vishaapis.smartedit.AudioSmartEditApiConfig;
import com.transsion.playercommon.vishaapis.smartedit.AudioSmartEditApiManager;
import com.transsion.playercommon.vishaapis.smartedit.IAudioAcoustIdApiService;
import com.transsion.playercommon.vishaapis.smartedit.IAudioLastFmCoverApiService;
import com.transsion.playercommon.vishaapis.smartedit.IAudioSmartEditApiService;
import defpackage.b23;
import defpackage.ek4;
import defpackage.gu8;
import defpackage.hb0;
import defpackage.k29;
import defpackage.n54;
import defpackage.vb;
import defpackage.xm9;
import defpackage.yx2;
import java.io.File;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

public class SmartEditViewModel extends AndroidViewModel {
    public final MutableLiveData a;

    public class a implements RequestListener {
        public final String b;

        public a(String str) {
            this.b = str;
        }

        public final void b(String str, File file) {
            String str2 = yx2.g.getAbsolutePath() + File.separator + str + System.currentTimeMillis() + ".jpg";
            if (!b23.f(SmartEditViewModel.this.getApplication(), file.getAbsolutePath(), str2)) {
                Log.d("SmartEditViewModel", "Failed to save image");
                return;
            }
            SmartEditViewModel.this.a.postValue(str2);
            Log.d("SmartEditViewModel", "Image saved to " + str2);
        }

        @Override
        public boolean onResourceReady(final File file, Object obj, Target target, DataSource dataSource, boolean z) {
            ExecutorService executorServiceN = ThreadUtils.n();
            final String str = this.b;
            executorServiceN.execute(new Runnable() {
                @Override
                public final void run() {
                    this.b.b(str, file);
                }
            });
            return true;
        }

        @Override
        public boolean onLoadFailed(GlideException glideException, Object obj, Target target, boolean z) {
            StringBuilder sb = new StringBuilder();
            sb.append("onLoadFailed ");
            sb.append(glideException != null ? glideException.getMessage() : null);
            Log.d("SmartEditViewModel", sb.toString());
            return false;
        }
    }

    public SmartEditViewModel(@NonNull Application application) {
        super(application);
        this.a = new MutableLiveData();
    }

    public final void c(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        Glide.with(getApplication()).downloadOnly().load2(str2).listener(new a(str)).preload();
    }

    public final String d(AcoustIdResponseBean acoustIdResponseBean, Integer num) {
        if (acoustIdResponseBean == null || acoustIdResponseBean.getResults() == null) {
            return null;
        }
        double score = 0.0d;
        Result result = null;
        for (Result result2 : acoustIdResponseBean.getResults()) {
            if (result2.getScore() > score) {
                score = result2.getScore();
                result = result2;
            }
        }
        if (result == null || result.getRecordings() == null) {
            return null;
        }
        for (Recording recording : result.getRecordings()) {
            if (recording.getDuration() != null && recording.getDuration().equals(num)) {
                return recording.getId();
            }
        }
        return null;
    }

    public final AudioFingerPrintBean e(String str) throws Exception {
        if (TextUtils.isEmpty(str)) {
            throw new Exception("Invalid file path");
        }
        File file = new File(str);
        if (!file.exists() || !file.isFile() || !file.canRead() || file.length() <= 0) {
            throw new Exception("Invalid file path");
        }
        String strA = n54.a().a(file.getCanonicalPath());
        if (TextUtils.isEmpty(strA)) {
            throw new Exception("Fingerprint generation failed");
        }
        AudioFingerPrintBean audioFingerPrintBean = (AudioFingerPrintBean) ek4.d(strA, AudioFingerPrintBean.class);
        if (audioFingerPrintBean != null) {
            return audioFingerPrintBean;
        }
        throw new Exception("Fingerprint generation failed");
    }

    public xm9 f(final String str) {
        return xm9.j(new Callable() {
            @Override
            public final Object call() {
                return this.b.i(str);
            }
        }).r(k29.c()).m(vb.a());
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0065  */
    public final String g(String str) {
        String text;
        gu8 gu8VarK = k(str);
        if (!gu8VarK.e() || gu8VarK.a() == null) {
            text = null;
        } else {
            LogUtils.j("SmartEditViewModel", "lastFMResponseBeanResponse = " + gu8VarK.a());
            LastFMResponseBean lastFMResponseBean = (LastFMResponseBean) gu8VarK.a();
            if (lastFMResponseBean.getAlbum() == null || lastFMResponseBean.getAlbum().getImage() == null) {
                text = null;
            } else {
                text = lastFMResponseBean.getAlbum().getImage().get(lastFMResponseBean.getAlbum().getImage().size() - 1).getText();
            }
        }
        LogUtils.j("SmartEditViewModel", "getCoverByLastFm cover = " + text);
        return text;
    }

    public MutableLiveData h() {
        return this.a;
    }

    public final MusicBrainzResponseBean i(String str) throws Exception {
        AudioFingerPrintBean audioFingerPrintBeanE = e(str);
        Integer numValueOf = Integer.valueOf(Math.toIntExact(Math.round(audioFingerPrintBeanE.getDuration())));
        gu8 gu8VarJ = j(numValueOf, audioFingerPrintBeanE.getFingerprint());
        hb0.markTrackSingle("vd_vmore_edit_pop_digger_respond", "respond", Integer.valueOf(gu8VarJ.b()));
        if (!gu8VarJ.e() || gu8VarJ.a() == null) {
            throw new Exception("AcoustID response error");
        }
        String strD = d((AcoustIdResponseBean) gu8VarJ.a(), numValueOf);
        if (strD == null) {
            throw new Exception("No matching MBID found");
        }
        gu8 gu8VarL = l(strD);
        hb0.markTrackSingle("vd_vmore_edit_pop_digger_respond", "respond", Integer.valueOf(gu8VarL.b()));
        if (!gu8VarL.e() || gu8VarL.a() == null) {
            throw new Exception("Error querying MusicBrainz");
        }
        String releaseMbid = ((MusicBrainzResponseBean) gu8VarL.a()).getReleaseMbid();
        if (releaseMbid != null) {
            String strG = g(releaseMbid);
            if (!TextUtils.isEmpty(strG)) {
                c(releaseMbid, strG);
            }
        }
        return (MusicBrainzResponseBean) gu8VarL.a();
    }

    public final gu8 j(Integer num, String str) {
        return ((IAudioAcoustIdApiService) AudioAcoustIdApiManager.getInstance().getApi(IAudioAcoustIdApiService.class)).lookupByFingerprint(TextUtils.isEmpty(SmartEditConfigHelper.getAcoustIdKey()) ? AudioSmartEditApiConfig.ACOUSTID_API_KEY : SmartEditConfigHelper.getAcoustIdKey(), num, str, "recordings").execute();
    }

    public final gu8 k(String str) {
        return ((IAudioLastFmCoverApiService) AudioLastFmCoverApiManager.getInstance().getApi(IAudioLastFmCoverApiService.class)).getReleaseCover(str, "album.getInfo", TextUtils.isEmpty(SmartEditConfigHelper.getLastFmKey()) ? AudioSmartEditApiConfig.LAST_FM_API_KEY : SmartEditConfigHelper.getLastFmKey(), "json").execute();
    }

    public final gu8 l(String str) {
        return ((IAudioSmartEditApiService) AudioSmartEditApiManager.getInstance().getApi(IAudioSmartEditApiService.class)).getRecordingDetails(str, "artists+releases", "json").execute();
    }
}
