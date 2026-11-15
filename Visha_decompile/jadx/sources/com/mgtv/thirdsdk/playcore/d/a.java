package com.mgtv.thirdsdk.playcore.d;

import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.hunantv.imgo.BaseApplication;
import com.hunantv.imgo.net.ImgoHttpCallBack;
import com.hunantv.imgo.net.ImgoHttpParams;
import com.hunantv.imgo.net.entity.PlayerAuthDataEntity;
import com.hunantv.imgo.net.entity.PlayerSubtitlesBean;
import com.hunantv.imgo.net.entity.PlayerSubtitlesUrlBean;
import com.hunantv.imgo.util.u;
import com.mgtv.ssp.R;
import com.mgtv.ssp.play.bean.SubTitleData;
import com.mgtv.ssp.utils.language.c;
import com.mgtv.task.http.HttpParams;
import com.mgtv.task.m;
import com.mgtv.thirdsdk.playcore.e;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

public class a {
    List<PlayerSubtitlesBean.TitleData> a;
    private OkHttpClient c;
    private b d;
    private HandlerC0189a e;
    private int f;
    private e g;
    private PlayerSubtitlesBean.TitleData h;
    private int[] j;
    private int i = -999;
    private m b = new m(BaseApplication.getContext());

    public static class HandlerC0189a extends Handler {
        private final WeakReference<a> a;

        public HandlerC0189a(a aVar) {
            this.a = new WeakReference<>(aVar);
        }

        @Override
        public void handleMessage(@NonNull Message message) {
            super.handleMessage(message);
            if (this.a.get() != null) {
                this.a.get().a((byte[]) message.obj);
            }
        }
    }

    public interface b {
        void a();

        void a(ArrayList<SubTitleData> arrayList, SubTitleData subTitleData);

        void a(byte[] bArr);
    }

    public a(b bVar) {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        this.c = builder.connectTimeout(30L, timeUnit).readTimeout(30L, timeUnit).build();
        this.e = new HandlerC0189a(this);
        this.d = bVar;
        this.j = new int[]{1, 2, 3, 4, 5, 9, 17};
    }

    public static int c(a aVar) {
        int i = aVar.f;
        aVar.f = i + 1;
        return i;
    }

    private e c() {
        return this.g;
    }

    public PlayerSubtitlesBean.TitleData b() {
        return this.h;
    }

    public void a(e eVar) {
        this.g = eVar;
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        HttpParams httpParams = new HttpParams();
        httpParams.put("videoId", str);
        httpParams.put("abroad", Integer.valueOf(com.hunantv.imgo.b.a.a()));
        httpParams.put("src", com.hunantv.imgo.util.b.M());
        this.b.a(com.hunantv.imgo.net.b.z(), httpParams, new ImgoHttpCallBack<PlayerSubtitlesBean>() {
            @Override
            public void b(PlayerSubtitlesBean playerSubtitlesBean) {
            }

            @Override
            public void a(PlayerSubtitlesBean playerSubtitlesBean) {
                List<PlayerSubtitlesBean.TitleData> list;
                if (playerSubtitlesBean == null || (list = playerSubtitlesBean.title) == null || list.size() <= 0) {
                    if (a.this.d != null) {
                        a.this.d.a();
                        return;
                    }
                    return;
                }
                playerSubtitlesBean.title.add(0, a.this.a());
                a.this.a = playerSubtitlesBean.title;
                ArrayList<SubTitleData> arrayList = new ArrayList<>();
                if (a.this.d != null) {
                    if (a.this.j != null) {
                        int length = a.this.j.length;
                    }
                    for (PlayerSubtitlesBean.TitleData titleData : playerSubtitlesBean.title) {
                        SubTitleData subTitleData = new SubTitleData();
                        subTitleData.create(titleData.getName(), titleData.getLanguage(), titleData.getCaptionCountrySimpleName(), titleData.getCaptionSimpleName());
                        arrayList.add(subTitleData);
                    }
                }
                PlayerSubtitlesBean.TitleData titleDataA = a.this.a(playerSubtitlesBean.title);
                a.this.a(titleDataA);
                if (a.this.d != null) {
                    a.this.d.a(arrayList, titleDataA);
                }
            }

            @Override
            public void a(@Nullable PlayerSubtitlesBean playerSubtitlesBean, int i, int i2, @Nullable String str2, @Nullable Throwable th) {
                super.a(playerSubtitlesBean, i, i2, str2, th);
                if (a.this.d != null) {
                    a.this.d.a();
                }
            }
        });
    }

    public void a(PlayerSubtitlesBean.TitleData titleData) {
        a(titleData, false);
    }

    public void a(final PlayerSubtitlesBean.TitleData titleData, boolean z) {
        if (!z) {
            this.f = 0;
        }
        if (titleData != null && !TextUtils.isEmpty(titleData.url)) {
            PlayerAuthDataEntity playerAuthDataEntity = c().p;
            if (playerAuthDataEntity == null) {
                b bVar = this.d;
                if (bVar != null) {
                    bVar.a();
                    return;
                }
                return;
            }
            List<String> list = playerAuthDataEntity.videoDomains;
            if (list != null && !list.isEmpty()) {
                int size = playerAuthDataEntity.videoDomains.size();
                int i = this.f;
                if (size > i) {
                    String str = playerAuthDataEntity.videoDomains.get(i);
                    if (TextUtils.isEmpty(str)) {
                        return;
                    }
                    this.h = titleData;
                    this.b.a(true).a(str.concat(titleData.url), new ImgoHttpParams(), new ImgoHttpCallBack<PlayerSubtitlesUrlBean>() {
                        @Override
                        public void b(PlayerSubtitlesUrlBean playerSubtitlesUrlBean) {
                        }

                        @Override
                        public void a(PlayerSubtitlesUrlBean playerSubtitlesUrlBean) {
                            a.this.a(playerSubtitlesUrlBean);
                        }

                        @Override
                        public void a(@Nullable PlayerSubtitlesUrlBean playerSubtitlesUrlBean, int i2, int i3, @Nullable String str2, @Nullable Throwable th) {
                            super.a(playerSubtitlesUrlBean, i2, i3, str2, th);
                            a.c(a.this);
                            a.this.a(titleData, true);
                        }
                    });
                    return;
                }
            }
            b bVar2 = this.d;
            if (bVar2 != null) {
                bVar2.a();
                return;
            }
            return;
        }
        b bVar3 = this.d;
        if (bVar3 != null) {
            bVar3.a();
        }
    }

    public void a(PlayerSubtitlesUrlBean playerSubtitlesUrlBean) {
        if (playerSubtitlesUrlBean == null || TextUtils.isEmpty(playerSubtitlesUrlBean.info)) {
            return;
        }
        Request requestBuild = new Request.Builder().url(playerSubtitlesUrlBean.info).build();
        this.c.connectTimeoutMillis();
        this.c.newCall(requestBuild).enqueue(new Callback() {
            @Override
            public void onFailure(Call call, IOException iOException) {
            }

            @Override
            public void onResponse(Call call, Response response) throws IOException {
                if (response.code() != 200 || response.body() == null) {
                    return;
                }
                byte[] bArrBytes = response.body().bytes();
                Message messageObtain = Message.obtain();
                messageObtain.obj = bArrBytes;
                a.this.e.sendMessage(messageObtain);
            }
        });
    }

    public void a(byte[] bArr) {
        b bVar = this.d;
        if (bVar != null) {
            bVar.a(bArr);
        }
    }

    public PlayerSubtitlesBean.TitleData a(List<PlayerSubtitlesBean.TitleData> list) {
        PlayerSubtitlesBean.TitleData titleDataA;
        if (list != null && list.size() != 0) {
            int i = this.i;
            if (i != -999 && (titleDataA = a(list, i)) != null) {
                return titleDataA;
            }
            String language = c.a().b().getLanguage();
            int iA = com.hunantv.imgo.b.a.a();
            if (u.a((CharSequence) language)) {
                return list.get(0);
            }
            if (language.equals("en")) {
                return a(list, 1);
            }
            if (language.equals("vi") || language.equals("ms") || language.equals("zh") || language.equalsIgnoreCase("ZH_HK") || language.equals("th") || language.equals("in")) {
                switch (language) {
                    case "in":
                        PlayerSubtitlesBean.TitleData titleDataA2 = a(list, 17);
                        return titleDataA2 != null ? titleDataA2 : a(list, 1);
                    case "ms":
                        PlayerSubtitlesBean.TitleData titleDataA3 = a(list, 9);
                        return titleDataA3 != null ? titleDataA3 : a(list, 1);
                    case "th":
                        PlayerSubtitlesBean.TitleData titleDataA4 = a(list, 3);
                        return titleDataA4 != null ? titleDataA4 : a(list, 1);
                    case "vi":
                        PlayerSubtitlesBean.TitleData titleDataA5 = a(list, 2);
                        return titleDataA5 != null ? titleDataA5 : a(list, 1);
                    default:
                        if (iA == 1) {
                            PlayerSubtitlesBean.TitleData titleDataA6 = a(list, 5);
                            return titleDataA6 != null ? titleDataA6 : a(list, 1);
                        }
                        if (iA == 0) {
                            PlayerSubtitlesBean.TitleData titleDataA7 = a(list, 4);
                            return titleDataA7 != null ? titleDataA7 : a(list, 1);
                        }
                        return list.get(0);
                }
            }
            return list.get(0);
        }
        return a();
    }

    public PlayerSubtitlesBean.TitleData a() {
        PlayerSubtitlesBean.TitleData titleData = new PlayerSubtitlesBean.TitleData();
        titleData.setLanguage(-1);
        titleData.setName(BaseApplication.getContext().getString(R.string.subtitle_none));
        return titleData;
    }

    private PlayerSubtitlesBean.TitleData a(List<PlayerSubtitlesBean.TitleData> list, int i) {
        for (PlayerSubtitlesBean.TitleData titleData : list) {
            if (titleData.getLanguage() == i) {
                return titleData;
            }
        }
        return null;
    }

    public PlayerSubtitlesBean.TitleData a(int i) {
        List<PlayerSubtitlesBean.TitleData> list = this.a;
        if (list == null || list.size() <= 0) {
            return null;
        }
        for (PlayerSubtitlesBean.TitleData titleData : this.a) {
            if (i == titleData.getLanguage()) {
                this.i = i;
                return titleData;
            }
        }
        return null;
    }
}
