package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.util.LruCache;
import com.blankj.utilcode.util.ThreadUtils;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.playercommon.R;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public abstract class tn {
    public static LruCache a = new LruCache(512);
    public static LruCache b = new a(16777216);
    public static final List c = new ArrayList();

    public class a extends LruCache {
        public a(int i) {
            super(i);
        }

        @Override
        public void entryRemoved(boolean z, String str, Bitmap bitmap, Bitmap bitmap2) {
            if (str == null || !tn.B(z, bitmap2)) {
                return;
            }
            tn.a.remove(str);
        }

        @Override
        public int sizeOf(String str, Bitmap bitmap) {
            return bitmap.getByteCount();
        }
    }

    public interface b {
        void a(Bitmap bitmap);
    }

    public interface c {
        void a(Bitmap bitmap, AudioItem audioItem);
    }

    static {
        m();
    }

    public static void A(String str, Bitmap bitmap) {
        z(str, bitmap);
    }

    public static boolean B(boolean z, Bitmap bitmap) {
        return z || bitmap == null;
    }

    public static int f(BitmapFactory.Options options, int i, int i2) {
        int i3 = options.outWidth;
        int i4 = options.outHeight;
        int i5 = 1;
        if (i3 > i || i4 > i2) {
            int i6 = i3 / 2;
            int i7 = i4 / 2;
            while (i6 / i5 >= i && i7 / i5 >= i2) {
                i5 *= 2;
            }
        }
        return i5;
    }

    public static void g() {
        b.evictAll();
        a.evictAll();
    }

    public static Bitmap h(byte[] bArr) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        options.inSampleSize = f(options, 1000, 1000);
        options.inJustDecodeBounds = false;
        options.inPreferredConfig = Bitmap.Config.RGB_565;
        return BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
    }

    public static Bitmap i(String str) {
        if (str == null) {
            return null;
        }
        return (Bitmap) b.get(str);
    }

    public static int j(AudioItem audioItem) {
        return (audioItem == null || TextUtils.isEmpty(audioItem.getDisplayName())) ? R.drawable.ic_list_default : l(Math.abs(audioItem.getDisplayName().hashCode() % 6));
    }

    public static int k(String str) {
        return r0a.g(str) ? R.drawable.ic_list_default : l(Math.abs(str.hashCode() % 6));
    }

    public static int l(int i) {
        List list = c;
        if (list.isEmpty()) {
            m();
        }
        return !list.isEmpty() ? ((Integer) list.get(i)).intValue() : R.drawable.ic_list_default;
    }

    public static void m() {
        List list = c;
        list.clear();
        list.add(Integer.valueOf(R.drawable.ic_default_playlist_1));
        list.add(Integer.valueOf(R.drawable.ic_default_playlist_2));
        list.add(Integer.valueOf(R.drawable.ic_default_playlist_3));
        list.add(Integer.valueOf(R.drawable.ic_default_playlist_4));
        list.add(Integer.valueOf(R.drawable.ic_default_playlist_5));
        list.add(Integer.valueOf(R.drawable.ic_default_playlist_6));
    }

    public static boolean n(Bitmap bitmap) {
        return bitmap != null && !bitmap.isRecycled() && bitmap.getWidth() > 0 && bitmap.getHeight() > 0 && bitmap.getWidth() <= 2048 && bitmap.getHeight() <= 2048 && bitmap.getByteCount() <= 4194304;
    }

    public static Bitmap o(Context context, boolean z, AudioItem audioItem, AudioItem audioItem2) {
        String str;
        Bitmap bitmapX = x(context, audioItem2);
        if (z && (str = audioItem.data) != null) {
            A(str, bitmapX);
        }
        return bitmapX;
    }

    public static Bitmap q(Context context, boolean z, AudioItem audioItem, AudioItem audioItem2) {
        String str;
        Bitmap bitmapX = x(context, audioItem2);
        if (z && (str = audioItem.data) != null) {
            A(str, bitmapX);
        }
        return bitmapX;
    }

    public static Bitmap t(Context context, Uri uri, boolean z) {
        Bitmap bitmapI;
        if (ThreadUtils.r()) {
            Log.e("AudioCoverCacheUtils", "loadCoverByMediaData onMainThread");
        }
        if (uri == null) {
            return null;
        }
        String string = uri.toString();
        if (string != null && z && (bitmapI = i(string)) != null) {
            return bitmapI;
        }
        Bitmap bitmapW = w(context, uri);
        if (z && string != null) {
            A(string, bitmapW);
        }
        return bitmapW;
    }

    public static void u(final Context context, final AudioItem audioItem, final b bVar, final boolean z) {
        Bitmap bitmapI;
        String str = audioItem.data;
        if (str != null && z && (bitmapI = i(str)) != null) {
            bVar.a(bitmapI);
            return;
        }
        mc7 mc7VarM = mc7.K(audioItem).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return tn.o(context, z, audioItem, (AudioItem) obj);
            }
        }).d0(k29.b(TaskExecutor.b())).M(vb.a());
        Objects.requireNonNull(bVar);
        mc7VarM.a0(new zt6(bVar), new zf1() {
            @Override
            public final void accept(Object obj) {
                bVar.a(null);
            }
        });
    }

    public static void v(final Context context, final AudioItem audioItem, final c cVar, final boolean z) {
        Bitmap bitmapI;
        String str = audioItem.data;
        if (str == null || !z || (bitmapI = i(str)) == null) {
            mc7.K(audioItem).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return tn.q(context, z, audioItem, (AudioItem) obj);
                }
            }).d0(k29.b(TaskExecutor.b())).M(vb.a()).a0(new zf1() {
                @Override
                public final void accept(Object obj) {
                    cVar.a((Bitmap) obj, audioItem);
                }
            }, new zf1() {
                @Override
                public final void accept(Object obj) {
                    cVar.a(null, audioItem);
                }
            });
        } else {
            cVar.a(bitmapI, audioItem);
        }
    }

    public static Bitmap w(Context context, Uri uri) {
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            try {
                mediaMetadataRetriever.setDataSource(context, uri);
                byte[] embeddedPicture = mediaMetadataRetriever.getEmbeddedPicture();
                if (embeddedPicture != null && embeddedPicture.length != 0) {
                    return h(embeddedPicture);
                }
                return null;
            } catch (Exception e) {
                Log.d("CoverUtils", "loadingCover " + e);
                return null;
            }
        } finally {
            try {
                mediaMetadataRetriever.close();
            } catch (IOException e2) {
                Log.e("AudioCoverCacheUtils", "loadingCover " + e2.getMessage());
            }
        }
    }

    public static Bitmap x(Context context, AudioItem audioItem) {
        if (audioItem == null) {
            return null;
        }
        try {
            Bitmap bitmapW = w(context, audioItem.getUri());
            if (bitmapW != null) {
                return bitmapW;
            }
        } catch (Exception e) {
            Log.d("AudioCoverCacheUtils", "loadingCover getUri failed " + e);
        }
        if (!TextUtils.isEmpty(audioItem.data)) {
            Bitmap bitmapY = y(audioItem.data);
            if (bitmapY != null) {
                return bitmapY;
            }
            if (audioItem.data.contains("://")) {
                return w(context, Uri.parse(audioItem.data));
            }
        }
        return null;
    }

    public static Bitmap y(String str) {
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            try {
                mediaMetadataRetriever.setDataSource(str);
                byte[] embeddedPicture = mediaMetadataRetriever.getEmbeddedPicture();
                if (embeddedPicture != null && embeddedPicture.length != 0) {
                    return h(embeddedPicture);
                }
                return null;
            } catch (Exception e) {
                Log.d("AudioCoverCacheUtils", "loadingCover by path " + e);
                return null;
            }
        } finally {
            try {
                mediaMetadataRetriever.close();
            } catch (IOException e2) {
                Log.e("AudioCoverCacheUtils", "loadingCover by path " + e2.getMessage());
            }
        }
    }

    public static void z(String str, Bitmap bitmap) {
        if (str == null || !n(bitmap)) {
            return;
        }
        if (b.get(str) == null) {
            b.put(str, bitmap);
        }
        a.put(str, Boolean.TRUE);
    }
}
