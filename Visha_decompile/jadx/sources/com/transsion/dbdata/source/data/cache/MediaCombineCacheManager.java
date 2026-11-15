package com.transsion.dbdata.source.data.cache;

import android.util.Log;
import androidx.annotation.MainThread;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.lzy.okgo.model.Progress;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.database.SimpleMediaItem;
import com.transsion.dbdata.source.data.cache.MediaCombineCacheManager;
import defpackage.c74;
import defpackage.el0;
import defpackage.mc2;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.qe6;
import defpackage.s74;
import defpackage.v6a;
import defpackage.wh1;
import defpackage.x30;
import defpackage.y45;
import defpackage.y71;
import defpackage.yi5;
import defpackage.z45;
import defpackage.zfb;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import javassist.compiler.ast.MethodDecl;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.b;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.d;

@Metadata(d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u0000 q2\u00020\u0001:\u0001qB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0003J\r\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\u0003J#\u0010\r\u001a\u00020\u00042\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ%\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u0011\u0010\u0012J\u001d\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u0014\u0010\u0015J\u001d\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u0017\u0010\u0015J\u0015\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\t¢\u0006\u0004\b\u0018\u0010\u0019J%\u0010\u0017\u001a\u00020\u00042\u000e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\b2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u0017\u0010\u000eJ\u001d\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u001d\u0010\u001eJ\u001d\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u001f\u0010\u001eJ\u001f\u0010#\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u000bH\u0007¢\u0006\u0004\b#\u0010$J\u0017\u0010#\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020 H\u0007¢\u0006\u0004\b#\u0010%J\u0017\u0010&\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020 H\u0007¢\u0006\u0004\b&\u0010%J\u0017\u0010'\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020 H\u0007¢\u0006\u0004\b'\u0010%J\u001d\u0010*\u001a\u00020\u00042\u0006\u0010)\u001a\u00020(2\u0006\u0010\"\u001a\u00020\u000b¢\u0006\u0004\b*\u0010+J\u001d\u0010,\u001a\u00020\u00042\u0006\u0010)\u001a\u00020(2\u0006\u0010\"\u001a\u00020\u000b¢\u0006\u0004\b,\u0010+J\u001d\u0010,\u001a\u00020\u00042\u0006\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u000b¢\u0006\u0004\b,\u0010-J\u001d\u0010,\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\t2\u0006\u0010\"\u001a\u00020\u000b¢\u0006\u0004\b,\u0010\u0015J%\u00100\u001a\u00020\u00042\u0006\u0010.\u001a\u00020\u001a2\u0006\u0010/\u001a\u00020\u001a2\u0006\u0010\"\u001a\u00020\u000b¢\u0006\u0004\b0\u00101J\u0015\u00102\u001a\u00020\t2\u0006\u0010!\u001a\u00020 ¢\u0006\u0004\b2\u00103J\u0015\u00105\u001a\u00020\t2\u0006\u00104\u001a\u00020 ¢\u0006\u0004\b5\u00103J\u001d\u00107\u001a\u00020\u00042\u0006\u00104\u001a\u00020 2\u0006\u00106\u001a\u00020\t¢\u0006\u0004\b7\u00108J\u001d\u0010;\u001a\u00020\u00042\u0006\u00109\u001a\u00020 2\u0006\u0010:\u001a\u00020 ¢\u0006\u0004\b;\u0010<J\u0015\u0010=\u001a\u00020\u00042\u0006\u0010!\u001a\u00020 ¢\u0006\u0004\b=\u0010>J\u001b\u0010=\u001a\u00020\u00042\f\u0010!\u001a\b\u0012\u0004\u0012\u00020 0\b¢\u0006\u0004\b=\u0010?J\u001f\u0010@\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u000bH\u0007¢\u0006\u0004\b@\u0010$J\u0017\u0010@\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020 H\u0007¢\u0006\u0004\b@\u0010%J\u001f\u0010@\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\t2\u0006\u0010\"\u001a\u00020\u000bH\u0007¢\u0006\u0004\b@\u0010AJ\u0017\u0010B\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020 H\u0007¢\u0006\u0004\bB\u0010%J\u0017\u0010C\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020 H\u0007¢\u0006\u0004\bC\u0010%J\u001d\u0010E\u001a\u00020\u00042\u0006\u0010)\u001a\u00020D2\u0006\u0010\"\u001a\u00020\u000b¢\u0006\u0004\bE\u0010FJ\u001d\u0010G\u001a\u00020\u00042\u0006\u0010)\u001a\u00020D2\u0006\u0010\"\u001a\u00020\u000b¢\u0006\u0004\bG\u0010FJ\u001d\u0010G\u001a\u00020\u00042\u0006\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u000b¢\u0006\u0004\bG\u0010-J\u001d\u0010G\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\t2\u0006\u0010\"\u001a\u00020\u000b¢\u0006\u0004\bG\u0010\u0015J%\u0010H\u001a\u00020\u00042\u0006\u00109\u001a\u00020 2\u0006\u0010/\u001a\u00020D2\u0006\u0010\"\u001a\u00020\u000b¢\u0006\u0004\bH\u0010IJ\r\u0010J\u001a\u00020\u0004¢\u0006\u0004\bJ\u0010\u0003J\r\u0010K\u001a\u00020\u0004¢\u0006\u0004\bK\u0010\u0003J\u0019\u0010M\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0L¢\u0006\u0004\bM\u0010NJ\u001f\u0010O\u001a\u0004\u0018\u00010D2\u0006\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u000b¢\u0006\u0004\bO\u0010PJ\u0017\u0010O\u001a\u0004\u0018\u00010D2\u0006\u0010!\u001a\u00020 ¢\u0006\u0004\bO\u0010QJ\u001f\u0010R\u001a\u0004\u0018\u00010D2\u0006\u0010\u0013\u001a\u00020\t2\u0006\u0010\"\u001a\u00020\u000b¢\u0006\u0004\bR\u0010SJ\u001b\u0010T\u001a\b\u0012\u0004\u0012\u00020D0\b2\u0006\u0010\"\u001a\u00020\u000b¢\u0006\u0004\bT\u0010UR\u0014\u0010W\u001a\u00020V8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bW\u0010XR\u0014\u0010Z\u001a\u00020Y8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bZ\u0010[R\u001b\u0010a\u001a\u00020\\8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b]\u0010^\u001a\u0004\b_\u0010`R\u001b\u0010f\u001a\u00020b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bc\u0010^\u001a\u0004\bd\u0010eR\u001b\u0010k\u001a\u00020g8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bh\u0010^\u001a\u0004\bi\u0010jR\u001b\u0010p\u001a\u00020l8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bm\u0010^\u001a\u0004\bn\u0010o¨\u0006r"}, d2 = {"Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;", "", MethodDecl.initName, "()V", "Lzfb;", "clear", "fetchData", "init", "", "", "mediaIds", "", "isVideo", "updateScanRecentAdd", "(Ljava/util/List;Z)V", "oldMediaId", "newMediaId", "updateRecentId", "(IIZ)V", "mediaId", "deleteRecentId", "(IZ)V", TtmlNode.ATTR_ID, "recordPreviewedId", "recordFilePreviewedId", "(I)V", "Lcom/transsion/dbdata/beans/media/MediaItem;", "items", "item", "isRecentAdd", "(Lcom/transsion/dbdata/beans/media/MediaItem;Z)Z", "isRecentAddOther", "", "path", "fromVideo", "isFavorite", "(Ljava/lang/String;Z)Z", "(Ljava/lang/String;)Z", "isVideoFavorite", "isAudioFavorite", "Lcom/transsion/dbdata/database/SimpleMediaItem;", "mediaItem", "addFavorite", "(Lcom/transsion/dbdata/database/SimpleMediaItem;Z)V", "removeFavorite", "(Ljava/lang/String;Z)V", "oldMediaItem", "newMediaItem", "updateFavorite", "(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;Z)V", "getPlayCount", "(Ljava/lang/String;)I", Progress.FILE_PATH, "recordPlayCount", "playCount", "syncPlayCount", "(Ljava/lang/String;I)V", "oldPath", "newPath", "synCountWhenReName", "(Ljava/lang/String;Ljava/lang/String;)V", "synCountWhenDelete", "(Ljava/lang/String;)V", "(Ljava/util/List;)V", "isMissing", "(IZ)Z", "isVideoMissing", "isAudioMissing", "Lqe6;", "addMissing", "(Lqe6;Z)V", "removeMissing", "updateMissing", "(Ljava/lang/String;Lqe6;Z)V", "forceRefreshMissingCache", "forceReloadAll", "Lkotlin/Pair;", "getMissingCacheStats", "()Lkotlin/Pair;", "getMissingItemByPath", "(Ljava/lang/String;Z)Lqe6;", "(Ljava/lang/String;)Lqe6;", "getMissingItemById", "(IZ)Lqe6;", "getAllMissingItems", "(Z)Ljava/util/List;", "Lnk1;", "mCoroutineScope", "Lnk1;", "Ljava/util/concurrent/atomic/AtomicBoolean;", "mIsInitialized", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;", "mMediaRecentAddCache$delegate", "Lyi5;", "getMMediaRecentAddCache", "()Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;", "mMediaRecentAddCache", "Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;", "mMediaFavoritesCache$delegate", "getMMediaFavoritesCache", "()Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;", "mMediaFavoritesCache", "Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;", "mMediaPlayCountCache$delegate", "getMMediaPlayCountCache", "()Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;", "mMediaPlayCountCache", "Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;", "mMediaMissingDataCache$delegate", "getMMediaMissingDataCache", "()Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;", "mMediaMissingDataCache", "Companion", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MediaCombineCacheManager {
    private static final String TAG = "MediaCombineCacheManager";
    private final nk1 mCoroutineScope = d.a(v6a.b(null, 1, null).plus(mc2.b()));
    private final AtomicBoolean mIsInitialized = new AtomicBoolean(false);

    private final yi5 mMediaFavoritesCache;

    private final yi5 mMediaMissingDataCache;

    private final yi5 mMediaPlayCountCache;

    private final yi5 mMediaRecentAddCache;

    public static final Companion INSTANCE = new Companion(null);
    private static final yi5 manager$delegate = b.b(LazyThreadSafetyMode.SYNCHRONIZED, new c74() {
        @Override
        public final Object invoke() {
            return MediaCombineCacheManager.manager_delegate$lambda$4();
        }
    });

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006R\u001b\u0010\n\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\u0006R\u0014\u0010\f\u001a\u00020\u000b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;", "", MethodDecl.initName, "()V", "Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;", "getInstance", "()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;", "manager$delegate", "Lyi5;", "getManager", "manager", "", AbstractID3v1Tag.TAG, "Ljava/lang/String;", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final MediaCombineCacheManager getManager() {
            return (MediaCombineCacheManager) MediaCombineCacheManager.manager$delegate.getValue();
        }

        public final MediaCombineCacheManager getInstance() {
            return getManager();
        }

        private Companion() {
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
    @nt1(c = "com.transsion.dbdata.source.data.cache.MediaCombineCacheManager$fetchData$1", f = "MediaCombineCacheManager.kt", l = {100}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements s74 {
        private Object L$0;
        int label;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
        @nt1(c = "com.transsion.dbdata.source.data.cache.MediaCombineCacheManager$fetchData$1$1", f = "MediaCombineCacheManager.kt", l = {}, m = "invokeSuspend")
        public static final class C02151 extends SuspendLambda implements s74 {
            int label;
            final MediaCombineCacheManager this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C02151(MediaCombineCacheManager mediaCombineCacheManager, wh1<? super C02151> wh1Var) {
                super(2, wh1Var);
                this.this$0 = mediaCombineCacheManager;
            }

            @Override
            public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
                return new C02151(this.this$0, wh1Var);
            }

            @Override
            public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
                return ((C02151) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                z45.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
                this.this$0.getMMediaPlayCountCache().init();
                return zfb.a;
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
        @nt1(c = "com.transsion.dbdata.source.data.cache.MediaCombineCacheManager$fetchData$1$2", f = "MediaCombineCacheManager.kt", l = {}, m = "invokeSuspend")
        public static final class AnonymousClass2 extends SuspendLambda implements s74 {
            int label;
            final MediaCombineCacheManager this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass2(MediaCombineCacheManager mediaCombineCacheManager, wh1<? super AnonymousClass2> wh1Var) {
                super(2, wh1Var);
                this.this$0 = mediaCombineCacheManager;
            }

            @Override
            public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
                return new AnonymousClass2(this.this$0, wh1Var);
            }

            @Override
            public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
                return ((AnonymousClass2) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                z45.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
                this.this$0.getMMediaRecentAddCache().init();
                return zfb.a;
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
        @nt1(c = "com.transsion.dbdata.source.data.cache.MediaCombineCacheManager$fetchData$1$3", f = "MediaCombineCacheManager.kt", l = {}, m = "invokeSuspend")
        public static final class AnonymousClass3 extends SuspendLambda implements s74 {
            int label;
            final MediaCombineCacheManager this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass3(MediaCombineCacheManager mediaCombineCacheManager, wh1<? super AnonymousClass3> wh1Var) {
                super(2, wh1Var);
                this.this$0 = mediaCombineCacheManager;
            }

            @Override
            public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
                return new AnonymousClass3(this.this$0, wh1Var);
            }

            @Override
            public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
                return ((AnonymousClass3) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                z45.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
                this.this$0.getMMediaFavoritesCache().init();
                return zfb.a;
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
        @nt1(c = "com.transsion.dbdata.source.data.cache.MediaCombineCacheManager$fetchData$1$4", f = "MediaCombineCacheManager.kt", l = {}, m = "invokeSuspend")
        public static final class AnonymousClass4 extends SuspendLambda implements s74 {
            int label;
            final MediaCombineCacheManager this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass4(MediaCombineCacheManager mediaCombineCacheManager, wh1<? super AnonymousClass4> wh1Var) {
                super(2, wh1Var);
                this.this$0 = mediaCombineCacheManager;
            }

            @Override
            public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
                return new AnonymousClass4(this.this$0, wh1Var);
            }

            @Override
            public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
                return ((AnonymousClass4) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                z45.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
                this.this$0.getMMediaMissingDataCache().init();
                return zfb.a;
            }
        }

        public AnonymousClass1(wh1<? super AnonymousClass1> wh1Var) {
            super(2, wh1Var);
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            AnonymousClass1 anonymousClass1 = MediaCombineCacheManager.this.new AnonymousClass1(wh1Var);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.label;
            try {
                if (i == 0) {
                    c.b(obj);
                    nk1 nk1Var = (nk1) this.L$0;
                    List listN = y71.n(el0.b(nk1Var, null, null, new C02151(MediaCombineCacheManager.this, null), 3, null), el0.b(nk1Var, null, null, new AnonymousClass2(MediaCombineCacheManager.this, null), 3, null), el0.b(nk1Var, null, null, new AnonymousClass3(MediaCombineCacheManager.this, null), 3, null), el0.b(nk1Var, null, null, new AnonymousClass4(MediaCombineCacheManager.this, null), 3, null));
                    this.label = 1;
                    if (x30.a(listN, this) == objF) {
                        return objF;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    c.b(obj);
                }
            } catch (Exception e) {
                Log.e(MediaCombineCacheManager.TAG, "Failed to fetch data", e);
            }
            return zfb.a;
        }
    }

    private MediaCombineCacheManager() {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        this.mMediaRecentAddCache = b.b(lazyThreadSafetyMode, new c74() {
            @Override
            public final Object invoke() {
                return MediaCombineCacheManager.mMediaRecentAddCache_delegate$lambda$0();
            }
        });
        this.mMediaFavoritesCache = b.b(lazyThreadSafetyMode, new c74() {
            @Override
            public final Object invoke() {
                return MediaCombineCacheManager.mMediaFavoritesCache_delegate$lambda$1();
            }
        });
        this.mMediaPlayCountCache = b.b(lazyThreadSafetyMode, new c74() {
            @Override
            public final Object invoke() {
                return MediaCombineCacheManager.mMediaPlayCountCache_delegate$lambda$2();
            }
        });
        this.mMediaMissingDataCache = b.b(lazyThreadSafetyMode, new c74() {
            @Override
            public final Object invoke() {
                return MediaCombineCacheManager.mMediaMissingDataCache_delegate$lambda$3();
            }
        });
    }

    private final void clear() {
        this.mIsInitialized.set(false);
        getMMediaRecentAddCache().clear();
        getMMediaFavoritesCache().clear();
        getMMediaPlayCountCache().clear();
        getMMediaMissingDataCache().clear();
    }

    private final void fetchData() {
        el0.d(this.mCoroutineScope, null, null, new AnonymousClass1(null), 3, null);
    }

    public final MediaFavoritesCache getMMediaFavoritesCache() {
        return (MediaFavoritesCache) this.mMediaFavoritesCache.getValue();
    }

    public final MediaMissingDataCache getMMediaMissingDataCache() {
        return (MediaMissingDataCache) this.mMediaMissingDataCache.getValue();
    }

    public final MediaPlayCountCache getMMediaPlayCountCache() {
        return (MediaPlayCountCache) this.mMediaPlayCountCache.getValue();
    }

    public final MediaRecentAddCache getMMediaRecentAddCache() {
        return (MediaRecentAddCache) this.mMediaRecentAddCache.getValue();
    }

    public static final MediaFavoritesCache mMediaFavoritesCache_delegate$lambda$1() {
        return new MediaFavoritesCache();
    }

    public static final MediaMissingDataCache mMediaMissingDataCache_delegate$lambda$3() {
        return new MediaMissingDataCache();
    }

    public static final MediaPlayCountCache mMediaPlayCountCache_delegate$lambda$2() {
        return new MediaPlayCountCache();
    }

    public static final MediaRecentAddCache mMediaRecentAddCache_delegate$lambda$0() {
        return new MediaRecentAddCache();
    }

    public static final MediaCombineCacheManager manager_delegate$lambda$4() {
        return new MediaCombineCacheManager();
    }

    public final void addFavorite(SimpleMediaItem mediaItem, boolean fromVideo) {
        y45.j(mediaItem, "mediaItem");
        getMMediaFavoritesCache().addFavorite(mediaItem, fromVideo);
    }

    public final void addMissing(qe6 mediaItem, boolean fromVideo) {
        y45.j(mediaItem, "mediaItem");
        getMMediaMissingDataCache().addMissing(mediaItem, fromVideo);
    }

    public final void deleteRecentId(int mediaId, boolean isVideo) {
        getMMediaRecentAddCache().deleteRecentId(mediaId, isVideo);
    }

    public final void forceRefreshMissingCache() {
        getMMediaMissingDataCache().forceRefresh();
    }

    public final void forceReloadAll() {
        clear();
        fetchData();
    }

    public final List<qe6> getAllMissingItems(boolean fromVideo) {
        return getMMediaMissingDataCache().getAllMissingItems(fromVideo);
    }

    public final Pair<Integer, Integer> getMissingCacheStats() {
        return getMMediaMissingDataCache().getCacheStats();
    }

    public final qe6 getMissingItemById(int mediaId, boolean fromVideo) {
        return getMMediaMissingDataCache().getMissingItemById(mediaId, fromVideo);
    }

    public final qe6 getMissingItemByPath(String path, boolean fromVideo) {
        y45.j(path, "path");
        return getMMediaMissingDataCache().getMissingItemByPath(path, fromVideo);
    }

    public final int getPlayCount(String path) {
        y45.j(path, "path");
        return getMMediaPlayCountCache().getPlayCount(path);
    }

    public final void init() {
        if (this.mIsInitialized.get()) {
            return;
        }
        this.mIsInitialized.set(true);
        fetchData();
    }

    @MainThread
    public final boolean isAudioFavorite(String path) {
        y45.j(path, "path");
        return getMMediaFavoritesCache().isAudioFavorite(path);
    }

    @MainThread
    public final boolean isAudioMissing(String path) {
        y45.j(path, "path");
        return getMMediaMissingDataCache().isAudioMissing(path);
    }

    @MainThread
    public final boolean isFavorite(String path, boolean fromVideo) {
        y45.j(path, "path");
        return getMMediaFavoritesCache().isFavorite(path, fromVideo);
    }

    @MainThread
    public final boolean isMissing(String path, boolean fromVideo) {
        y45.j(path, "path");
        return getMMediaMissingDataCache().isMissing(path, fromVideo);
    }

    public final boolean isRecentAdd(MediaItem item, boolean isVideo) {
        y45.j(item, "item");
        return getMMediaRecentAddCache().isRecentAdd(item, isVideo);
    }

    public final boolean isRecentAddOther(MediaItem item, boolean isVideo) {
        y45.j(item, "item");
        return getMMediaRecentAddCache().isRecentAddOther(item, isVideo);
    }

    @MainThread
    public final boolean isVideoFavorite(String path) {
        y45.j(path, "path");
        return getMMediaFavoritesCache().isVideoFavorite(path);
    }

    @MainThread
    public final boolean isVideoMissing(String path) {
        y45.j(path, "path");
        return getMMediaMissingDataCache().isVideoMissing(path);
    }

    public final void recordFilePreviewedId(int id) {
        getMMediaRecentAddCache().recordPreviewedIdOther(id);
    }

    public final int recordPlayCount(String filePath) {
        y45.j(filePath, Progress.FILE_PATH);
        return getMMediaPlayCountCache().recordPlayCount(filePath);
    }

    public final void recordPreviewedId(int id, boolean isVideo) {
        getMMediaRecentAddCache().recordPreviewedId(id, isVideo);
    }

    public final void removeFavorite(SimpleMediaItem mediaItem, boolean fromVideo) {
        y45.j(mediaItem, "mediaItem");
        getMMediaFavoritesCache().removeFavorite(mediaItem, fromVideo);
    }

    public final void removeMissing(qe6 mediaItem, boolean fromVideo) {
        y45.j(mediaItem, "mediaItem");
        getMMediaMissingDataCache().removeMissing(mediaItem, fromVideo);
    }

    public final void synCountWhenDelete(String path) {
        y45.j(path, "path");
        getMMediaPlayCountCache().synCountWhenDelete(path);
    }

    public final void synCountWhenReName(String oldPath, String newPath) {
        y45.j(oldPath, "oldPath");
        y45.j(newPath, "newPath");
        getMMediaPlayCountCache().synCountWhenReName(oldPath, newPath);
    }

    public final void syncPlayCount(String filePath, int playCount) {
        y45.j(filePath, Progress.FILE_PATH);
        getMMediaPlayCountCache().syncPlayCount(filePath, playCount);
    }

    public final void updateFavorite(MediaItem oldMediaItem, MediaItem newMediaItem, boolean fromVideo) {
        y45.j(oldMediaItem, "oldMediaItem");
        y45.j(newMediaItem, "newMediaItem");
        getMMediaFavoritesCache().updateFavorite(oldMediaItem, newMediaItem, fromVideo);
    }

    public final void updateMissing(String oldPath, qe6 newMediaItem, boolean fromVideo) {
        y45.j(oldPath, "oldPath");
        y45.j(newMediaItem, "newMediaItem");
        getMMediaMissingDataCache().updateMissing(oldPath, newMediaItem, fromVideo);
    }

    public final void updateRecentId(int oldMediaId, int newMediaId, boolean isVideo) {
        getMMediaRecentAddCache().updateRecentId(oldMediaId, newMediaId, isVideo);
    }

    public final void updateScanRecentAdd(List<Integer> mediaIds, boolean isVideo) {
        y45.j(mediaIds, "mediaIds");
        getMMediaRecentAddCache().updateScanRecentAdd(mediaIds, isVideo);
    }

    public final qe6 getMissingItemByPath(String path) {
        y45.j(path, "path");
        return getMMediaMissingDataCache().getMissingItemByPath(path);
    }

    @MainThread
    public final boolean isFavorite(String path) {
        y45.j(path, "path");
        return getMMediaFavoritesCache().isFavorite(path);
    }

    @MainThread
    public final boolean isMissing(String path) {
        y45.j(path, "path");
        return getMMediaMissingDataCache().isMissing(path);
    }

    public final void recordPreviewedId(List<? extends MediaItem> items, boolean isVideo) {
        getMMediaRecentAddCache().recordPreviewedId(items, isVideo);
    }

    public final void removeFavorite(String path, boolean fromVideo) {
        y45.j(path, "path");
        getMMediaFavoritesCache().removeFavorite(path, fromVideo);
    }

    public final void removeMissing(String path, boolean fromVideo) {
        y45.j(path, "path");
        getMMediaMissingDataCache().removeMissing(path, fromVideo);
    }

    public final void synCountWhenDelete(List<String> path) {
        y45.j(path, "path");
        getMMediaPlayCountCache().synCountWhenDelete(path);
    }

    @MainThread
    public final boolean isMissing(int mediaId, boolean fromVideo) {
        return getMMediaMissingDataCache().isMissing(mediaId, fromVideo);
    }

    public final void removeFavorite(int mediaId, boolean fromVideo) {
        getMMediaFavoritesCache().removeFavorite(mediaId, fromVideo);
    }

    public final void removeMissing(int mediaId, boolean fromVideo) {
        getMMediaMissingDataCache().removeMissing(mediaId, fromVideo);
    }
}
