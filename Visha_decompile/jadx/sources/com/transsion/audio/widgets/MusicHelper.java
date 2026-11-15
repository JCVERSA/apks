package com.transsion.audio.widgets;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.util.LruCache;
import com.blankj.utilcode.util.ThreadUtils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.MultiTransformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.resource.bitmap.CenterCrop;
import com.bumptech.glide.load.resource.bitmap.RoundedCorners;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestOptions;
import com.google.gson.reflect.TypeToken;
import com.tencent.mmkv.MMKV;
import com.transsion.audio.R;
import com.transsion.audio.widgets.MusicHelper;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.PlayAudioListData;
import com.transsion.dbdata.database.AudioAlbum;
import com.transsion.glidetransformation.RoundedCornersTransformation;
import defpackage.ao;
import defpackage.dg0;
import defpackage.fi1;
import defpackage.h27;
import defpackage.k29;
import defpackage.mc7;
import defpackage.oc2;
import defpackage.r0a;
import defpackage.t74;
import defpackage.tn;
import defpackage.vb;
import defpackage.vk1;
import defpackage.zf1;
import defpackage.zt6;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.stream.Collectors;

public class MusicHelper {
    private static final boolean DEBUG = false;
    private static final int MAX_COVER_DECODE_PX = 512;
    private static final Object lock = new Object();

    private static LruCache<String, Bitmap> bitmapCache() {
        return tn.b;
    }

    public static void clearBitmapCache() {
        tn.g();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Bitmap lambda$loadPlayBackground$7(Context context, boolean z, AudioItem audioItem, AudioItem audioItem2) throws Exception {
        Bitmap bitmapLoadThumbByGlide;
        Bitmap bitmapI;
        synchronized (lock) {
            try {
                AudioAlbum audioAlbumD = ao.U().D(audioItem2.id);
                bitmapI = (audioAlbumD == null || (bitmapLoadThumbByGlide = loadThumbByGlide(context, audioAlbumD.imgPath)) == null) ? vk1.i(context, Uri.parse(audioItem2.data)) : bitmapLoadThumbByGlide;
                MultiTransformation multiTransformation = new MultiTransformation(new CenterCrop(), new RoundedCornersTransformation(20, 0));
                if (bitmapI != null) {
                    bitmapI = (Bitmap) Glide.with(context).asBitmap().load2(bitmapI).diskCacheStrategy(DiskCacheStrategy.ALL).apply((BaseRequestOptions<?>) RequestOptions.bitmapTransform(multiTransformation)).submit(140, 140).get();
                    if (z && audioItem.data != null && bitmapCache().get(audioItem.data) == null) {
                        tn.z(audioItem.data, bitmapI);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return bitmapI;
    }

    public static void lambda$loadPlayBackground2$10(tn.b bVar, Throwable th) throws Exception {
        Log.w("CoverUtils", "loadPlayBackground2 subscribe :" + th);
        bVar.a(null);
    }

    public static Bitmap lambda$loadPlayBackground2$9(Context context, AudioItem audioItem, int i, int i2, int i3, tn.b bVar, boolean z, int i4, AudioItem audioItem2) throws Exception {
        return loadPlayBackground22(context, audioItem, i, i2, i3, bVar, z, i4);
    }

    public static AudioItem lambda$loadPlayListBackground$5(int i, Integer num) throws Exception {
        ArrayList arrayList = new ArrayList();
        if (i == 32) {
            arrayList = new ArrayList(ao.U().a(null));
        } else if (i == 33) {
            arrayList = new ArrayList((List) ao.U().y(true).getSecond());
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return (AudioItem) arrayList.get(0);
    }

    public static void lambda$loadPlayListBackground$6(Context context, tn.b bVar, AudioItem audioItem) throws Exception {
        if (audioItem != null) {
            loadPlayBackground(context, audioItem, bVar, new RequestOptions().transform(new CenterCrop(), new RoundedCorners(oc2.a(context, 16.0f))), false);
        }
    }

    public static Integer lambda$restore$0(AudioItem audioItem) {
        return Integer.valueOf(audioItem.id);
    }

    public static Uri lambda$restore$2(Uri uri, Uri uri2) {
        return uri;
    }

    public static void lambda$restore$3(List list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        PlayAudioListData.getInstance().setPlayMediaItem((AudioItem) list.get(0)).selectedPlayMediaItem();
        PlayAudioListData.getInstance().setPlayList(new ArrayList(list), null);
    }

    public static void lambda$restore$4() {
        final List list = (List) ao.U().x(null).getSecond();
        ThreadUtils.s(new Runnable() {
            @Override
            public final void run() {
                MusicHelper.lambda$restore$3(list);
            }
        });
    }

    @SuppressLint({"CheckResult"})
    public static void loadPlayBackground(final Context context, final AudioItem audioItem, final tn.b bVar, RequestOptions requestOptions, final boolean z) {
        if (audioItem.data != null && z && bitmapCache().get(audioItem.data) != null) {
            bVar.a(bitmapCache().get(audioItem.data));
            return;
        }
        mc7 mc7VarM = mc7.K(audioItem).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return MusicHelper.lambda$loadPlayBackground$7(context, z, audioItem, (AudioItem) obj);
            }
        }).d0(k29.c()).M(vb.a());
        Objects.requireNonNull(bVar);
        mc7VarM.a0(new zt6(bVar), new zf1() {
            @Override
            public final void accept(Object obj) {
                bVar.a(null);
            }
        });
    }

    @SuppressLint({"CheckResult"})
    public static void loadPlayBackground2(final Context context, final AudioItem audioItem, int i, int i2, int i3, final tn.b bVar, final boolean z, final int i4) {
        final int iA = oc2.a(context, i) / 2;
        final int iA2 = oc2.a(context, i2) / 2;
        final int iA3 = oc2.a(context, i3) / 2;
        String str = audioItem.data + ("-" + i4);
        if (z) {
            synchronized (lock) {
                try {
                    if (bitmapCache().get(str) != null) {
                        bVar.a(bitmapCache().get(str));
                        return;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        mc7 mc7VarM = mc7.K(audioItem).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return MusicHelper.lambda$loadPlayBackground2$9(context, audioItem, iA, iA2, iA3, bVar, z, i4, (AudioItem) obj);
            }
        }).d0(k29.c()).M(vb.a());
        Objects.requireNonNull(bVar);
        mc7VarM.a0(new zt6(bVar), new zf1() {
            @Override
            public final void accept(Object obj) throws Exception {
                MusicHelper.lambda$loadPlayBackground2$10(bVar, (Throwable) obj);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static synchronized Bitmap loadPlayBackground22(Context context, AudioItem audioItem, int i, int i2, int i3, tn.b bVar, boolean z, int i4) throws ExecutionException, InterruptedException {
        Bitmap bitmapLoadThumbByGlide2;
        Bitmap bitmapDecodeResource;
        boolean z2;
        try {
            String str = "-" + i4;
            String str2 = audioItem.data + str;
            AudioAlbum audioAlbumD = ao.U().D(audioItem.id);
            Bitmap bitmapI = (audioAlbumD == null || (bitmapLoadThumbByGlide2 = loadThumbByGlide2(context, audioAlbumD.imgPath)) == null) ? vk1.i(context, Uri.parse(audioItem.data)) : bitmapLoadThumbByGlide2;
            if (bitmapI != null) {
                bitmapDecodeResource = vk1.n(bitmapI);
                z2 = false;
            } else {
                if (bitmapCache().get(str) != null) {
                    Bitmap bitmap = bitmapCache().get(str);
                    tn.z(str2, bitmap);
                    return bitmap;
                }
                bitmapDecodeResource = BitmapFactory.decodeResource(context.getResources(), R.drawable.bg_app_widgt);
                z2 = true;
            }
            MultiTransformation multiTransformation = new MultiTransformation(new CenterCrop(), new dg0(40), new RoundedCornersTransformation(i3, 0));
            if (bitmapDecodeResource != null) {
                bitmapDecodeResource = (Bitmap) Glide.with(context).asBitmap().load2(bitmapDecodeResource).diskCacheStrategy(DiskCacheStrategy.NONE).apply((BaseRequestOptions<?>) RequestOptions.bitmapTransform(multiTransformation)).submit(i, i2).get();
                if (z && bitmapCache().get(str2) == null) {
                    tn.z(str2, bitmapDecodeResource);
                    if (z2) {
                        tn.z(str, bitmapDecodeResource);
                    }
                }
            }
            return bitmapDecodeResource;
        } catch (Throwable th) {
            throw th;
        }
    }

    @SuppressLint({"CheckResult"})
    public static void loadPlayListBackground(final Context context, final tn.b bVar, final int i) {
        mc7.K(Integer.valueOf(i)).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return MusicHelper.lambda$loadPlayListBackground$5(i, (Integer) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) throws Exception {
                MusicHelper.lambda$loadPlayListBackground$6(context, bVar, (AudioItem) obj);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static Bitmap loadThumbByGlide(Context context, String str) {
        if (r0a.g(str)) {
            return null;
        }
        try {
            return (Bitmap) Glide.with(context).asBitmap().load2(str).diskCacheStrategy(DiskCacheStrategy.NONE).submit(com.transsion.utils.a.d(context, 50.0f), com.transsion.utils.a.d(context, 50.0f)).get();
        } catch (InterruptedException | ExecutionException unused) {
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Bitmap loadThumbByGlide2(Context context, String str) {
        if (r0a.g(str)) {
            return null;
        }
        try {
            return (Bitmap) Glide.with(context).asBitmap().load2(str).diskCacheStrategy(DiskCacheStrategy.NONE).submit(512, 512).get();
        } catch (InterruptedException | ExecutionException unused) {
            return null;
        }
    }

    public static void restore(Context context, AudioItem audioItem) {
        if (audioItem == null && PlayAudioListData.getInstance().playMediaItem() == null) {
            String strL = MMKV.p().l("music_playing");
            if (TextUtils.isEmpty(strL)) {
                ThreadUtils.n().execute(new Runnable() {
                    @Override
                    public final void run() {
                        MusicHelper.lambda$restore$4();
                    }
                });
                return;
            }
            AudioItem audioItem2 = (AudioItem) fi1.b(strL, AudioItem.class);
            String strL2 = MMKV.p().l("music_playlist");
            if (TextUtils.isEmpty(strL2)) {
                return;
            }
            List<AudioItem> list = (List) fi1.c(strL2, new TypeToken<List<AudioItem>>() {
            }.getType());
            if (list != null && !list.isEmpty()) {
                Map map = (Map) ao.U().L(list, true).stream().collect(Collectors.toMap(new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return MusicHelper.lambda$restore$0((AudioItem) obj);
                    }
                }, new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return ((AudioItem) obj).uri;
                    }
                }, new BinaryOperator() {
                    @Override
                    public final Object apply(Object obj, Object obj2) {
                        return MusicHelper.lambda$restore$2((Uri) obj, (Uri) obj2);
                    }
                }));
                for (AudioItem audioItem3 : list) {
                    Uri uri = (Uri) map.get(Integer.valueOf(audioItem3.id));
                    if (uri != null) {
                        audioItem3.setUri(uri);
                    }
                }
            }
            PlayAudioListData.getInstance().setPlayMediaItem(audioItem2).selectedPlayMediaItem();
            h27.c().e(1069, new Object[0]);
            PlayAudioListData.getInstance().setPlayList(new ArrayList(list), null);
        }
    }

    public static Bitmap roundBitmapByShader(Bitmap bitmap, int i, int i2, int i3) {
        if (bitmap == null) {
            throw new NullPointerException("Bitmap can't be null");
        }
        float f = i;
        float width = (f * 1.0f) / bitmap.getWidth();
        float f2 = i2;
        float height = (1.0f * f2) / bitmap.getHeight();
        Matrix matrix = new Matrix();
        matrix.setScale(width, height);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        bitmapShader.setLocalMatrix(matrix);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_4444);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setShader(bitmapShader);
        float f3 = i3;
        canvas.drawRoundRect(new RectF(0.0f, 0.0f, f, f2), f3, f3, paint);
        return bitmapCreateBitmap;
    }
}
