package com.transsion.magicvideo.model;

import android.app.Application;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.p004lifecycle.LiveData;
import androidx.p004lifecycle.MutableLiveData;
import com.transsion.BaseViewModel;
import com.transsion.NetState;
import com.transsion.core.log.LogUtils;
import com.transsion.dbdata.beans.SubtitleHistory;
import com.transsion.dbdata.beans.SubtitleSettingData;
import com.transsion.dbdata.beans.media.SubtitleTrackInfo;
import com.transsion.dbdata.beans.subtitle.OpenSubtitle;
import com.transsion.dbdata.beans.subtitle.SubtitleLanguage;
import com.transsion.dbdata.source.DataSourceScope;
import com.transsion.magicvideo.model.VideoSubtitleViewModel;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.vishaapis.opensubtitle.SubTitleService;
import com.transsion.playercommon.vishaapis.opensubtitle.SubTitleServiceManager;
import com.transsion.retrofit.exception.ResponseExceptionHandler;
import com.transsion.retrofit.reponse.BaseResponse;
import defpackage.fc7;
import defpackage.k29;
import defpackage.mc7;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.rl8;
import defpackage.t74;
import defpackage.tpb;
import defpackage.vb;
import defpackage.we6;
import defpackage.zf1;
import defpackage.zj7;
import java.util.Comparator;
import java.util.List;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public class VideoSubtitleViewModel extends BaseViewModel {
    private static final String TAG = "VideoSubtitleViewModel";
    public MutableLiveData<SubtitleHistory> deleteSubtitleHistory;
    public MutableLiveData<SubtitleTrackInfo> firstCurData;
    private MutableLiveData<List<SubtitleTrackInfo>> firstTrackData;
    public MutableLiveData<Boolean> isAutoSearch;
    public MutableLiveData<Boolean> isEditModeSubtitleHistory;
    public MutableLiveData<SubtitleTrackInfo> secondCurData;
    private MutableLiveData<List<SubtitleTrackInfo>> secondTrackData;
    public MutableLiveData<List<SubtitleHistory>> selectHistoryLiveData;
    public MutableLiveData<SubtitleLanguage> selectLanguage;
    private MutableLiveData<SubtitleSettingData> settingLiveData;
    public MutableLiveData<List<SubtitleHistory>> subtitleHistoryLiveData;
    public LiveData<List<SubtitleHistory>> subtitleHistoryLiveLiveData;
    public MutableLiveData<List<OpenSubtitle>> subtitleListNet;
    private MutableLiveData<List<SubtitleTrackInfo>> systemSubtitlesLiveData;

    public VideoSubtitleViewModel(@NonNull Application application) {
        super(application);
        this.settingLiveData = new MutableLiveData<>();
        this.firstTrackData = new MutableLiveData<>();
        this.secondTrackData = new MutableLiveData<>();
        this.firstCurData = new MutableLiveData<>();
        this.secondCurData = new MutableLiveData<>();
        this.subtitleHistoryLiveData = new MutableLiveData<>();
        this.selectHistoryLiveData = new MutableLiveData<>();
        this.isEditModeSubtitleHistory = new MutableLiveData<>();
        this.deleteSubtitleHistory = new MutableLiveData<>();
        this.selectLanguage = new MutableLiveData<>();
        Boolean bool = Boolean.FALSE;
        this.isAutoSearch = new MutableLiveData<>(bool);
        this.systemSubtitlesLiveData = new MutableLiveData<>();
        this.subtitleListNet = new MutableLiveData<>();
        this.subtitleHistoryLiveLiveData = we6.e().q(DataSourceScope.VIDEO, zj7.c(new rl8.b(), SubtitleHistory.class));
        this.isEditModeSubtitleHistory.setValue(bool);
    }

    private List<SubtitleTrackInfo> filterTrackSubtitles(List<SubtitleTrackInfo> list) {
        return (List) list.stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return VideoSubtitleViewModel.lambda$filterTrackSubtitles$6((SubtitleTrackInfo) obj);
            }
        }).collect(Collectors.toList());
    }

    public static boolean lambda$filterTrackSubtitles$6(SubtitleTrackInfo subtitleTrackInfo) {
        return (subtitleTrackInfo.isInnerSubtitle || TextUtils.equals(subtitleTrackInfo.path, "NULL")) ? false : true;
    }

    public static SubtitleSettingData lambda$querySettingData$0(VideoSubtitleViewModel videoSubtitleViewModel) throws Exception {
        SubtitleSettingData subtitleSettingDataC = tpb.j0().c();
        return subtitleSettingDataC == null ? new SubtitleSettingData(0) : subtitleSettingDataC;
    }

    public void lambda$querySettingData$1(SubtitleSettingData subtitleSettingData) throws Exception {
        this.settingLiveData.postValue(subtitleSettingData);
    }

    public static void lambda$querySystemSubtitles$10(Throwable th) throws Exception {
        LogUtils.e("querySystemSubtitles", th.getMessage());
    }

    public static List lambda$querySystemSubtitles$8(VideoSubtitleViewModel videoSubtitleViewModel) throws Exception {
        return tpb.j0().s();
    }

    public void lambda$querySystemSubtitles$9(List list) throws Exception {
        this.systemSubtitlesLiveData.postValue(list);
    }

    public static int lambda$queryTrackCurrentSubtitles$7(SubtitleTrackInfo subtitleTrackInfo, SubtitleTrackInfo subtitleTrackInfo2) {
        long j = subtitleTrackInfo.time;
        long j2 = subtitleTrackInfo2.time;
        if (j - j2 > 0) {
            return 1;
        }
        return j == j2 ? 0 : -1;
    }

    public static List lambda$queryTrackSubtitle$2(int i, int i2, VideoSubtitleViewModel videoSubtitleViewModel) throws Exception {
        return tpb.j0().M(i, i2);
    }

    public List lambda$queryTrackSubtitle$3(int i, List list) throws Exception {
        List<SubtitleTrackInfo> listSubList = list.subList(0, Math.min(8, list.size()));
        if (i == 0) {
            this.firstTrackData.postValue(filterTrackSubtitles(listSubList));
        } else if (i == 1) {
            this.secondTrackData.postValue(filterTrackSubtitles(listSubList));
        }
        queryTrackCurrentSubtitles(i, listSubList);
        return listSubList;
    }

    public static void lambda$queryTrackSubtitle$4(List list) throws Exception {
    }

    public static void lambda$queryTrackSubtitle$5(Throwable th) throws Exception {
        LogUtils.e("...", th.getMessage());
    }

    private void queryTrackCurrentSubtitles(int i, List<SubtitleTrackInfo> list) {
        List list2 = (List) list.stream().sorted(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return VideoSubtitleViewModel.lambda$queryTrackCurrentSubtitles$7((SubtitleTrackInfo) obj, (SubtitleTrackInfo) obj2);
            }
        }).collect(Collectors.toList());
        SubtitleTrackInfo subtitleTrackInfo = !list2.isEmpty() ? (SubtitleTrackInfo) list2.get(list.size() - 1) : null;
        if (i == 0) {
            this.firstCurData.postValue(subtitleTrackInfo);
            Log.e(TAG, "trackInfo1 =" + subtitleTrackInfo);
            return;
        }
        this.secondCurData.postValue(subtitleTrackInfo);
        Log.e(TAG, "trackInfo2 =" + subtitleTrackInfo);
    }

    public MutableLiveData<List<SubtitleTrackInfo>> getFirstTrackData() {
        return this.firstTrackData;
    }

    public MutableLiveData<List<SubtitleTrackInfo>> getSecondTrackData() {
        return this.secondTrackData;
    }

    public MutableLiveData<SubtitleSettingData> getSettingLiveData() {
        return this.settingLiveData;
    }

    public MutableLiveData<List<SubtitleTrackInfo>> getSystemSubtitlesLiveData() {
        return this.systemSubtitlesLiveData;
    }

    public void insertSettingDataSync(SubtitleSettingData subtitleSettingData, BaseActivity baseActivity) {
        tpb.j0().insertSubtitleSetting(subtitleSettingData);
    }

    public void query(BaseActivity baseActivity, String str, String str2) {
        ((SubTitleService) SubTitleServiceManager.getInstance().getApi(SubTitleService.class)).query(str, str2).g(baseActivity.bindToLifecycle()).L(new ResponseExceptionHandler.ServerResultFunc()).O(new ResponseExceptionHandler.HttpResultFunc()).d0(k29.c()).M(vb.a()).subscribe(new pd7() {
            @Override
            public void onComplete() {
            }

            @Override
            public void onError(Throwable th) {
                VideoSubtitleViewModel.this.netException.setValue(th);
                VideoSubtitleViewModel.this.netState.setValue(NetState.FAILED);
            }

            @Override
            public void onSubscribe(rc2 rc2Var) {
                VideoSubtitleViewModel.this.netState.setValue(NetState.LOADING);
            }

            @Override
            public void onNext(BaseResponse<List<OpenSubtitle>> baseResponse) {
                List<OpenSubtitle> data = baseResponse.getData();
                if (!fc7.d(data)) {
                    VideoSubtitleViewModel.this.netState.setValue(NetState.EMPTY);
                } else {
                    VideoSubtitleViewModel.this.netState.setValue(NetState.EFFECTIVE);
                    VideoSubtitleViewModel.this.subtitleListNet.setValue(data);
                }
            }
        });
    }

    public void querySettingData(BaseActivity baseActivity) {
        mc7.K(this).g(baseActivity.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return VideoSubtitleViewModel.lambda$querySettingData$0((VideoSubtitleViewModel) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) throws Exception {
                this.b.lambda$querySettingData$1((SubtitleSettingData) obj);
            }
        });
    }

    public void querySystemSubtitles(BaseActivity baseActivity) {
        mc7.K(this).g(baseActivity.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return VideoSubtitleViewModel.lambda$querySystemSubtitles$8((VideoSubtitleViewModel) obj);
            }
        }).d0(k29.c()).M(vb.a()).a0(new zf1() {
            @Override
            public final void accept(Object obj) throws Exception {
                this.b.lambda$querySystemSubtitles$9((List) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) throws Exception {
                VideoSubtitleViewModel.lambda$querySystemSubtitles$10((Throwable) obj);
            }
        });
    }

    public void queryTrackSubtitle(final int i, final int i2, BaseActivity baseActivity) {
        if (baseActivity == null) {
            return;
        }
        mc7.K(this).g(baseActivity.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return VideoSubtitleViewModel.lambda$queryTrackSubtitle$2(i, i2, (VideoSubtitleViewModel) obj);
            }
        }).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.lambda$queryTrackSubtitle$3(i2, (List) obj);
            }
        }).d0(k29.c()).M(vb.a()).a0(new zf1() {
            @Override
            public final void accept(Object obj) throws Exception {
                VideoSubtitleViewModel.lambda$queryTrackSubtitle$4((List) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) throws Exception {
                VideoSubtitleViewModel.lambda$queryTrackSubtitle$5((Throwable) obj);
            }
        });
    }

    public void queryVideoSubtitles(int i, BaseActivity baseActivity) {
        queryTrackSubtitle(i, 0, baseActivity);
        queryTrackSubtitle(i, 1, baseActivity);
    }
}
