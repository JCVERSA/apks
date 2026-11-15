package com.transsion.dbdata.source.data.repository;

import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.source.data.ktx.ActionExtKt;
import com.transsion.dbdata.source.data.ktx.AudioFilterKtxKt;
import com.transsion.dbdata.source.data.ktx.CursorExtKt;
import com.transsion.dbdata.source.data.ktx.MediaDataExtKt;
import com.transsion.dbdata.source.data.ktx.QueryBundleKtxKt;
import com.transsion.dbdata.source.data.ktx.SqlKt;
import com.transsion.dbdata.source.data.ktx.UriKtxKt;
import com.transsion.dbdata.source.data.repository.QueryBundle;
import com.transsion.dbdata.source.data.repository.SystemAudioQueryRepository;
import com.transsion.dbdata.utils.AudioFilterUtils;
import com.transsion.dbdata.utils.SortUtil;
import defpackage.abb;
import defpackage.at;
import defpackage.c74;
import defpackage.e74;
import defpackage.fi;
import defpackage.ge6;
import defpackage.ly0;
import defpackage.pp3;
import defpackage.s74;
import defpackage.vmb;
import defpackage.xk8;
import defpackage.y45;
import defpackage.y71;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\"\b\u0000\u0018\u0000 Q2\u00020\u0001:\u0001QB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J@\u0010\f\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u0005*\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\b2\u0010\b\u0004\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\nH\u0082\b¢\u0006\u0004\b\f\u0010\rJ\u001b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J!\u0010\u0015\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u000f\u001a\u00020\u000eH\u0003¢\u0006\u0004\b\u0015\u0010\u0016J4\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00062\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001b0\u001aH\u0082\b¢\u0006\u0004\b\u001d\u0010\u001eJ4\u0010\u001f\u001a\u00020\u001b2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00062\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u001b0\u001aH\u0082\b¢\u0006\u0004\b\u001f\u0010\u001eJ4\u0010!\u001a\u00020\u001b2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00062\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u001b0\u001aH\u0082\b¢\u0006\u0004\b!\u0010\u001eJ\u000f\u0010\"\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\"\u0010#J\u0017\u0010&\u001a\u0004\u0018\u00010\u00102\u0006\u0010%\u001a\u00020$¢\u0006\u0004\b&\u0010'J\u001f\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00100)2\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b*\u0010+JI\u00101\u001a\u0014\u0012\u0004\u0012\u00020 \u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100)002\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010-\u001a\u00020,2\b\b\u0002\u0010.\u001a\u00020,2\b\b\u0002\u0010/\u001a\u00020,¢\u0006\u0004\b1\u00102J-\u00105\u001a\b\u0012\u0004\u0012\u00020\u00100)2\f\u00103\u001a\b\u0012\u0004\u0012\u00020 0)2\n\b\u0002\u00104\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b5\u00106J)\u00109\u001a\b\u0012\u0004\u0012\u00020\u00100)2\f\u00107\u001a\b\u0012\u0004\u0012\u00020\u00060)2\u0006\u00108\u001a\u00020 ¢\u0006\u0004\b9\u0010:J9\u0010>\u001a\b\u0012\u0004\u0012\u00020\u00100)2\b\u0010;\u001a\u0004\u0018\u00010\u00062\b\u0010<\u001a\u0004\u0018\u00010\u00062\b\u00104\u001a\u0004\u0018\u00010\u00062\u0006\u0010=\u001a\u00020 ¢\u0006\u0004\b>\u0010?J)\u0010@\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010)2\b\u0010;\u001a\u0004\u0018\u00010\u00062\b\u0010<\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b@\u0010AJ7\u0010E\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010)2\n\b\u0002\u0010B\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010C\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010D\u001a\u00020,¢\u0006\u0004\bE\u0010FJ!\u0010G\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010)2\n\b\u0002\u0010C\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\bG\u0010+J!\u0010I\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010)2\n\b\u0002\u0010H\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\bI\u0010+J\u001d\u0010K\u001a\b\u0012\u0004\u0012\u00020\u00100)2\b\u0010J\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\bK\u0010+J\u0013\u0010L\u001a\b\u0012\u0004\u0012\u00020\u00100)¢\u0006\u0004\bL\u0010MJ\u001b\u0010O\u001a\b\u0012\u0004\u0012\u00020\u00100)2\u0006\u0010N\u001a\u00020 ¢\u0006\u0004\bO\u0010P¨\u0006R"}, d2 = {"Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;", "Lcom/transsion/dbdata/source/data/repository/SystemBaseQueryRepository;", MethodDecl.initName, "()V", "", "T", "", "key", "", "expireTime", "Lkotlin/Function0;", "producer", "getCachedResult", "(Ljava/lang/String;JLc74;)Ljava/lang/Object;", "Landroid/net/Uri;", "uri", "Lcom/transsion/dbdata/beans/media/AudioItem;", "queryOtherAppAudioItem", "(Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;", "Landroid/content/ContentResolver;", "resolver", "readAudioItemFromProviderUri", "(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;", "Landroid/database/Cursor;", "cursor", "column", "Lkotlin/Function1;", "Lzfb;", "consumer", "readStringColumn", "(Landroid/database/Cursor;Ljava/lang/String;Le74;)V", "readLongColumn", "", "readIntColumn", "providerUri", "()Landroid/net/Uri;", "Lxk8$x;", "action", "querySingle", "(Lxk8$x;)Lcom/transsion/dbdata/beans/media/AudioItem;", "sortOrder", "", "queryAll", "(Ljava/lang/String;)Ljava/util/List;", "", "filtered", "needFilter", "excludeConvertOutFolder", "Lkotlin/Pair;", "queryAllOptimized", "(Ljava/lang/String;ZZZ)Lkotlin/Pair;", "mediaIds", "displayName", "queryBatchByIdsAndName", "(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;", "pathList", "count", "queryBatchByPath", "(Ljava/util/List;I)Ljava/util/List;", "albumName", "artistName", "flag", "queryAIAudioByMultiConditions", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;", "queryBatchByAlbumArtist", "(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;", "bucketId", PlayAudioData.TAG_PARENT_PATH, "onlyMusic", "queryBatchByBucket", "(Ljava/lang/Long;Ljava/lang/String;Z)Ljava/util/List;", "queryBatchByParentPath", "title", "queryBatchByTitle", "searchText", "search", "queryRecent", "()Ljava/util/List;", "filterType", "queryByFilterType", "(I)Ljava/util/List;", "Companion", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SystemAudioQueryRepository extends SystemBaseQueryRepository {
    private static final long CACHE_EXPIRE_TIME = 30000;

    public static final Companion INSTANCE;
    private static volatile ConcurrentHashMap<String, Pair<Long, Object>> sharedQueryCache;

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J'\u0010\b\u001a\u001a\u0012\u0004\u0012\u00020\u0005\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u00060\u0004H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0007¢\u0006\u0004\b\u000b\u0010\u0003R\u0014\u0010\f\u001a\u00020\u00078\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\rR.\u0010\u000e\u001a\u001a\u0012\u0004\u0012\u00020\u0005\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u00060\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$Companion;", "", MethodDecl.initName, "()V", "Ljava/util/concurrent/ConcurrentHashMap;", "", "Lkotlin/Pair;", "", "newSharedQueryCache", "()Ljava/util/concurrent/ConcurrentHashMap;", "Lzfb;", "invalidateCachedSingleQueries", "CACHE_EXPIRE_TIME", "J", "sharedQueryCache", "Ljava/util/concurrent/ConcurrentHashMap;", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ConcurrentHashMap<String, Pair<Long, Object>> newSharedQueryCache() {
            return new ConcurrentHashMap<String, Pair<? extends Long, ? extends Object>>() {
                @Override
                public final boolean containsKey(Object obj) {
                    if (obj instanceof String) {
                        return containsKey((String) obj);
                    }
                    return false;
                }

                @Override
                public final boolean containsValue(Object obj) {
                    if (obj instanceof Pair) {
                        return containsValue((Pair<Long, ? extends Object>) obj);
                    }
                    return false;
                }

                @Override
                public final Set<Map.Entry<String, Pair<Long, Object>>> entrySet() {
                    return getEntries();
                }

                @Override
                public final Object get(Object obj) {
                    if (obj instanceof String) {
                        return get((String) obj);
                    }
                    return null;
                }

                public Set<Map.Entry<String, Pair<Long, Object>>> getEntries() {
                    return super.entrySet();
                }

                public Set<String> getKeys() {
                    return super.keySet();
                }

                @Override
                public final Object getOrDefault(Object obj, Object obj2) {
                    return !(obj instanceof String) ? obj2 : getOrDefault((String) obj, (Pair<Long, ? extends Object>) obj2);
                }

                public int getSize() {
                    return super.size();
                }

                public Collection<Pair<Long, Object>> getValues() {
                    return super.values();
                }

                @Override
                public final Set<String> keySet() {
                    return getKeys();
                }

                @Override
                public final Object remove(Object obj) {
                    if (obj instanceof String) {
                        return remove((String) obj);
                    }
                    return null;
                }

                @Override
                public final int size() {
                    return getSize();
                }

                @Override
                public final Collection<Pair<Long, Object>> values() {
                    return getValues();
                }

                public boolean containsKey(String str) {
                    return super.containsKey((Object) str);
                }

                public boolean containsValue(Pair<Long, ? extends Object> pair) {
                    return super.containsValue((Object) pair);
                }

                @Override
                public final Pair<Long, Object> get(Object obj) {
                    if (obj instanceof String) {
                        return get((String) obj);
                    }
                    return null;
                }

                public final Pair getOrDefault(Object obj, Pair pair) {
                    return !(obj instanceof String) ? pair : getOrDefault((String) obj, (Pair<Long, ? extends Object>) pair);
                }

                @Override
                public final Pair<Long, Object> remove(Object obj) {
                    if (obj instanceof String) {
                        return remove((String) obj);
                    }
                    return null;
                }

                public Pair<Long, Object> get(String key) {
                    y45.j(key, "key");
                    Pair<Long, Object> pair = (Pair) super.get((Object) key);
                    if (pair == null || System.currentTimeMillis() - pair.getFirst().longValue() <= 30000) {
                        return pair;
                    }
                    remove((Object) key);
                    return null;
                }

                public Pair<Long, Object> getOrDefault(String str, Pair<Long, ? extends Object> pair) {
                    return (Pair) super.getOrDefault((Object) str, pair);
                }

                public Pair<Long, Object> remove(String str) {
                    return (Pair) super.remove((Object) str);
                }

                @Override
                public final boolean remove(Object obj, Object obj2) {
                    if ((obj instanceof String) && (obj2 instanceof Pair)) {
                        return remove((String) obj, (Pair<Long, ? extends Object>) obj2);
                    }
                    return false;
                }

                public boolean remove(String str, Pair<Long, ? extends Object> pair) {
                    return super.remove((Object) str, (Object) pair);
                }
            };
        }

        public final void invalidateCachedSingleQueries() {
            SystemAudioQueryRepository.sharedQueryCache = newSharedQueryCache();
        }

        private Companion() {
        }
    }

    static {
        Companion companion = new Companion(null);
        INSTANCE = companion;
        sharedQueryCache = companion.newSharedQueryCache();
    }

    private final <T> T getCachedResult(String key, long expireTime, c74 producer) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        Pair pair = (Pair) sharedQueryCache.get(key);
        if (pair != null && jCurrentTimeMillis - ((Number) pair.getFirst()).longValue() < expireTime) {
            T t = (T) pair.getSecond();
            y45.h(t, "null cannot be cast to non-null type T of com.transsion.dbdata.source.data.repository.SystemAudioQueryRepository.getCachedResult");
            return t;
        }
        Object objInvoke = producer.invoke();
        if (objInvoke == null) {
            return null;
        }
        Pair pair2 = (Pair) sharedQueryCache.compute(key, new SystemAudioQueryRepository$sam$java_util_function_BiFunction$0(new SystemAudioQueryRepository$getCachedResult$stored$1(jCurrentTimeMillis, expireTime, abb.a(Long.valueOf(jCurrentTimeMillis), objInvoke)), null));
        if (pair2 != null) {
            return (T) pair2.getSecond();
        }
        return null;
    }

    public static Object getCachedResult$default(SystemAudioQueryRepository systemAudioQueryRepository, String str, long j, c74 c74Var, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 30000;
        }
        long j2 = j;
        long jCurrentTimeMillis = System.currentTimeMillis();
        Pair pair = (Pair) sharedQueryCache.get(str);
        if (pair != null && jCurrentTimeMillis - ((Number) pair.getFirst()).longValue() < j2) {
            Object second = pair.getSecond();
            y45.h(second, "null cannot be cast to non-null type T of com.transsion.dbdata.source.data.repository.SystemAudioQueryRepository.getCachedResult");
            return second;
        }
        Object objInvoke = c74Var.invoke();
        if (objInvoke == null) {
            return null;
        }
        Pair pair2 = (Pair) sharedQueryCache.compute(str, new SystemAudioQueryRepository$sam$java_util_function_BiFunction$0(new SystemAudioQueryRepository$getCachedResult$stored$1(jCurrentTimeMillis, j2, abb.a(Long.valueOf(jCurrentTimeMillis), objInvoke)), null));
        if (pair2 != null) {
            return pair2.getSecond();
        }
        return null;
    }

    public static final void invalidateCachedSingleQueries() {
        INSTANCE.invalidateCachedSingleQueries();
    }

    public static final zfb queryAIAudioByMultiConditions$lambda$26$lambda$24(String str, String[] strArr, QueryBundle.Builder builder) {
        y45.j(builder, "$this$buildAudioQueryBundle");
        builder.setSelection(str);
        builder.setSelectionArgs(strArr);
        return zfb.a;
    }

    public static final AudioItem queryAIAudioByMultiConditions$lambda$26$lambda$25(Cursor cursor, Uri uri) {
        y45.j(cursor, "cursor");
        y45.j(uri, "uri");
        return MediaDataExtKt.buildAudioItem(cursor, uri);
    }

    public static List queryAll$default(SystemAudioQueryRepository systemAudioQueryRepository, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        return systemAudioQueryRepository.queryAll(str);
    }

    public static final zfb queryAll$lambda$15(String str, QueryBundle.Builder builder) {
        y45.j(builder, "$this$buildAudioQueryBundle");
        if (str != null && str.length() != 0) {
            builder.setSortOrder(str);
        }
        return zfb.a;
    }

    public static final AudioItem queryAll$lambda$16(Cursor cursor, Uri uri) {
        y45.j(cursor, "cursor");
        y45.j(uri, "uri");
        return MediaDataExtKt.buildAudioItem(cursor, uri);
    }

    public static Pair queryAllOptimized$default(SystemAudioQueryRepository systemAudioQueryRepository, String str, boolean z, boolean z2, boolean z3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            z2 = true;
        }
        if ((i & 8) != 0) {
            z3 = true;
        }
        return systemAudioQueryRepository.queryAllOptimized(str, z, z2, z3);
    }

    public static final zfb queryAllOptimized$lambda$17(String str, QueryBundle.Builder builder) {
        y45.j(builder, "$this$buildAudioQueryBundle");
        if (str != null && str.length() != 0) {
            builder.setSortOrder(str);
        }
        return zfb.a;
    }

    public static final zfb queryBatchByAlbumArtist$lambda$29$lambda$27(String str, String[] strArr, QueryBundle.Builder builder) {
        y45.j(builder, "$this$buildAudioQueryBundle");
        builder.setSelection(str);
        builder.setSelectionArgs(strArr);
        return zfb.a;
    }

    public static final AudioItem queryBatchByAlbumArtist$lambda$29$lambda$28(Cursor cursor, Uri uri) {
        y45.j(cursor, "cursor");
        y45.j(uri, "uri");
        return MediaDataExtKt.buildAudioItem(cursor, uri);
    }

    public static List queryBatchByBucket$default(SystemAudioQueryRepository systemAudioQueryRepository, Long l, String str, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            l = null;
        }
        if ((i & 2) != 0) {
            str = null;
        }
        if ((i & 4) != 0) {
            z = true;
        }
        return systemAudioQueryRepository.queryBatchByBucket(l, str, z);
    }

    public static final zfb queryBatchByBucket$lambda$31(String str, String[] strArr, QueryBundle.Builder builder) {
        y45.j(builder, "$this$buildAudioQueryBundle");
        builder.setSelection(str);
        builder.setSelectionArgs(strArr);
        return zfb.a;
    }

    public static final AudioItem queryBatchByBucket$lambda$32(Cursor cursor, Uri uri) {
        y45.j(cursor, "cursor");
        y45.j(uri, "uri");
        return MediaDataExtKt.buildAudioItem(cursor, uri);
    }

    public static List queryBatchByIdsAndName$default(SystemAudioQueryRepository systemAudioQueryRepository, List list, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        return systemAudioQueryRepository.queryBatchByIdsAndName(list, str);
    }

    public static final zfb queryBatchByIdsAndName$lambda$20(StringBuilder sb, List list, QueryBundle.Builder builder) {
        y45.j(builder, "$this$buildAudioQueryBundle");
        builder.setSelection(sb.toString());
        builder.setSelectionArgs((String[]) list.toArray(new String[0]));
        return zfb.a;
    }

    public static final AudioItem queryBatchByIdsAndName$lambda$21(Cursor cursor, Uri uri) {
        y45.j(cursor, "cursor");
        y45.j(uri, "uri");
        return MediaDataExtKt.buildAudioItem(cursor, uri);
    }

    public static List queryBatchByParentPath$default(SystemAudioQueryRepository systemAudioQueryRepository, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        return systemAudioQueryRepository.queryBatchByParentPath(str);
    }

    public static final zfb queryBatchByParentPath$lambda$33(String str, String[] strArr, QueryBundle.Builder builder) {
        y45.j(builder, "$this$buildAudioQueryBundle");
        builder.setSelection(str);
        builder.setSelectionArgs(strArr);
        return zfb.a;
    }

    public static final AudioItem queryBatchByParentPath$lambda$34(Cursor cursor, Uri uri) {
        y45.j(cursor, "cursor");
        y45.j(uri, "uri");
        return MediaDataExtKt.buildAudioItem(cursor, uri);
    }

    public static final zfb queryBatchByPath$lambda$22(List list, int i, QueryBundle.Builder builder) {
        y45.j(builder, "$this$buildAudioQueryBundle");
        builder.setSelection(SqlKt.toDataInSelection(list));
        builder.setLimitedCount(i);
        return zfb.a;
    }

    public static final AudioItem queryBatchByPath$lambda$23(Cursor cursor, Uri uri) {
        y45.j(cursor, "cursor");
        y45.j(uri, "uri");
        return MediaDataExtKt.buildAudioItem(cursor, uri);
    }

    public static List queryBatchByTitle$default(SystemAudioQueryRepository systemAudioQueryRepository, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        return systemAudioQueryRepository.queryBatchByTitle(str);
    }

    public static final zfb queryBatchByTitle$lambda$35(String str, String[] strArr, QueryBundle.Builder builder) {
        y45.j(builder, "$this$buildAudioQueryBundle");
        builder.setSelection(str);
        builder.setSelectionArgs(strArr);
        return zfb.a;
    }

    public static final AudioItem queryBatchByTitle$lambda$36(Cursor cursor, Uri uri) {
        y45.j(cursor, "cursor");
        y45.j(uri, "uri");
        return MediaDataExtKt.buildAudioItem(cursor, uri);
    }

    public static final zfb queryByFilterType$lambda$42(String str, QueryBundle.Builder builder) {
        y45.j(builder, "$this$buildAudioQueryBundle");
        builder.setSortOrder(SortUtil.j(false));
        builder.setSelection(str);
        return zfb.a;
    }

    public static final AudioItem queryByFilterType$lambda$43(Cursor cursor, Uri uri) {
        y45.j(cursor, "cursor");
        y45.j(uri, "uri");
        return MediaDataExtKt.buildAudioItem(cursor, uri);
    }

    public final AudioItem queryOtherAppAudioItem(Uri uri) throws Throwable {
        String str;
        AudioItem audioItem;
        if (uri == null) {
            return null;
        }
        ContentResolver contentResolver = ge6.a.g().getContentResolver();
        y45.g(contentResolver);
        AudioItem audioItemFromProviderUri = readAudioItemFromProviderUri(contentResolver, uri);
        final String str2 = audioItemFromProviderUri != null ? audioItemFromProviderUri.displayName : null;
        if (str2 != null && str2.length() != 0 && (((str = audioItemFromProviderUri.artistName) == null || str.length() == 0) && (audioItem = (AudioItem) querySingle(QueryBundleKtxKt.buildAudioQueryBundle(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return SystemAudioQueryRepository.queryOtherAppAudioItem$lambda$1(str2, (QueryBundle.Builder) obj);
            }
        }), new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return SystemAudioQueryRepository.queryOtherAppAudioItem$lambda$2((Cursor) obj, (Uri) obj2);
            }
        })) != null)) {
            return audioItem;
        }
        if (audioItemFromProviderUri != null) {
            if (audioItemFromProviderUri.id != 0) {
                return audioItemFromProviderUri;
            }
            String str3 = audioItemFromProviderUri.displayName;
            if (str3 != null && str3.length() != 0) {
                return audioItemFromProviderUri;
            }
        }
        return UriKtxKt.toMediaItem(uri);
    }

    public static final zfb queryOtherAppAudioItem$lambda$1(String str, QueryBundle.Builder builder) {
        y45.j(builder, "$this$buildAudioQueryBundle");
        builder.setSelection("_display_name = ?");
        builder.setSelectionArgs(new String[]{str});
        return zfb.a;
    }

    public static final AudioItem queryOtherAppAudioItem$lambda$2(Cursor cursor, Uri uri) {
        y45.j(cursor, "cursor");
        y45.j(uri, "realUri");
        return MediaDataExtKt.buildAudioItem(cursor, uri);
    }

    public static final zfb queryRecent$lambda$40(String str, QueryBundle.Builder builder) {
        y45.j(builder, "$this$buildAudioQueryBundle");
        builder.setSelection("date_modified > ?");
        builder.setSelectionArgs(new String[]{str});
        return zfb.a;
    }

    public static final AudioItem queryRecent$lambda$41(Cursor cursor, Uri uri) {
        y45.j(cursor, "cursor");
        y45.j(uri, "uri");
        return MediaDataExtKt.buildAudioItem(cursor, uri);
    }

    @SuppressLint({"Range"})
    private final AudioItem readAudioItemFromProviderUri(ContentResolver resolver, Uri uri) throws Throwable {
        String string;
        String string2;
        String string3;
        String string4;
        Cursor cursor = null;
        cursor = null;
        try {
            try {
                Cursor cursorQuery = resolver.query(uri, null, null, null, null);
                try {
                    if (cursorQuery == null) {
                        AudioItem audioItem = new AudioItem();
                        audioItem.uri = uri;
                        return audioItem;
                    }
                    if (!cursorQuery.moveToFirst()) {
                        AudioItem audioItem2 = new AudioItem();
                        audioItem2.uri = uri;
                        cursorQuery.close();
                        return audioItem2;
                    }
                    AudioItem audioItem3 = new AudioItem();
                    audioItem3.uri = uri;
                    int columnIndex = cursorQuery.getColumnIndex("_display_name");
                    if (columnIndex >= 0 && (string4 = cursorQuery.getString(columnIndex)) != null) {
                        if (string4.length() <= 0) {
                            string4 = null;
                        }
                        if (string4 != null) {
                            audioItem3.displayName = string4;
                        }
                    }
                    int columnIndex2 = cursorQuery.getColumnIndex("_size");
                    if (columnIndex2 >= 0 && !cursorQuery.isNull(columnIndex2)) {
                        audioItem3.size = cursorQuery.getLong(columnIndex2);
                    }
                    int columnIndex3 = cursorQuery.getColumnIndex("mime_type");
                    if (columnIndex3 >= 0 && (string3 = cursorQuery.getString(columnIndex3)) != null) {
                        if (string3.length() <= 0) {
                            string3 = null;
                        }
                        if (string3 != null) {
                            audioItem3.mineType = string3;
                        }
                    }
                    int columnIndex4 = cursorQuery.getColumnIndex("artist");
                    if (columnIndex4 >= 0 && (string2 = cursorQuery.getString(columnIndex4)) != null) {
                        if (string2.length() <= 0) {
                            string2 = null;
                        }
                        if (string2 != null) {
                            audioItem3.artistName = string2;
                        }
                    }
                    int columnIndex5 = cursorQuery.getColumnIndex("_data");
                    if (columnIndex5 >= 0 && (string = cursorQuery.getString(columnIndex5)) != null) {
                        String str = string.length() > 0 ? string : null;
                        if (str != null) {
                            audioItem3.data = str;
                        }
                    }
                    int columnIndex6 = cursorQuery.getColumnIndex("_id");
                    if (columnIndex6 >= 0 && !cursorQuery.isNull(columnIndex6)) {
                        audioItem3.id = cursorQuery.getInt(columnIndex6);
                    }
                    cursorQuery.close();
                    return audioItem3;
                } catch (Exception e) {
                    e = e;
                    cursor = cursorQuery;
                    vmb.d(getMTag(), "readAudioItemFromProviderUri(uri:" + uri + ") error:", e);
                    AudioItem audioItem4 = new AudioItem();
                    audioItem4.uri = uri;
                    if (cursor != null) {
                        cursor.close();
                    }
                    return audioItem4;
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private final void readIntColumn(Cursor cursor, String column, e74 consumer) {
        int columnIndex = cursor.getColumnIndex(column);
        if (columnIndex < 0 || cursor.isNull(columnIndex)) {
            return;
        }
        consumer.invoke(Integer.valueOf(cursor.getInt(columnIndex)));
    }

    private final void readLongColumn(Cursor cursor, String column, e74 consumer) {
        int columnIndex = cursor.getColumnIndex(column);
        if (columnIndex < 0 || cursor.isNull(columnIndex)) {
            return;
        }
        consumer.invoke(Long.valueOf(cursor.getLong(columnIndex)));
    }

    private final void readStringColumn(Cursor cursor, String column, e74 consumer) {
        String string;
        int columnIndex = cursor.getColumnIndex(column);
        if (columnIndex < 0 || (string = cursor.getString(columnIndex)) == null) {
            return;
        }
        if (string.length() <= 0) {
            string = null;
        }
        if (string != null) {
            consumer.invoke(string);
        }
    }

    public static final zfb search$lambda$38(StringBuilder sb, String[] strArr, QueryBundle.Builder builder) {
        y45.j(builder, "$this$buildAudioQueryBundle");
        builder.setSelection(sb.toString());
        builder.setSelectionArgs(strArr);
        return zfb.a;
    }

    public static final AudioItem search$lambda$39(Cursor cursor, Uri uri) {
        y45.j(cursor, "cursor");
        y45.j(uri, "uri");
        return MediaDataExtKt.buildAudioItem(cursor, uri);
    }

    @Override
    public Uri providerUri() {
        return at.b.f();
    }

    public final List<AudioItem> queryAIAudioByMultiConditions(String albumName, String artistName, String displayName, int flag) {
        Pair<String, String[]> pairBuildFieldLikeWithDisplayNameCondition;
        if (flag == 25) {
            pairBuildFieldLikeWithDisplayNameCondition = SqlKt.buildFieldLikeWithDisplayNameCondition("album", albumName, null);
        } else if (flag != 26) {
            switch (flag) {
                case 42:
                    pairBuildFieldLikeWithDisplayNameCondition = SqlKt.buildFieldLikeWithDisplayNameCondition("title", displayName, null);
                    break;
                case 43:
                    pairBuildFieldLikeWithDisplayNameCondition = SqlKt.buildFieldLikeWithDisplayNameCondition("artist", artistName, displayName);
                    break;
                case 44:
                    pairBuildFieldLikeWithDisplayNameCondition = SqlKt.buildFieldLikeWithDisplayNameCondition("album", albumName, displayName);
                    break;
                default:
                    pairBuildFieldLikeWithDisplayNameCondition = null;
                    break;
            }
        } else {
            pairBuildFieldLikeWithDisplayNameCondition = SqlKt.buildFieldLikeWithDisplayNameCondition("artist", artistName, null);
        }
        if (pairBuildFieldLikeWithDisplayNameCondition != null) {
            final String strComponent1 = pairBuildFieldLikeWithDisplayNameCondition.component1();
            final String[] strArrComponent2 = pairBuildFieldLikeWithDisplayNameCondition.component2();
            List<AudioItem> listM121queryBatch = m121queryBatch(QueryBundleKtxKt.buildAudioQueryBundle(new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return SystemAudioQueryRepository.queryAIAudioByMultiConditions$lambda$26$lambda$24(strComponent1, strArrComponent2, (QueryBundle.Builder) obj);
                }
            }), new s74() {
                @Override
                public final Object invoke(Object obj, Object obj2) {
                    return SystemAudioQueryRepository.queryAIAudioByMultiConditions$lambda$26$lambda$25((Cursor) obj, (Uri) obj2);
                }
            });
            if (listM121queryBatch != null) {
                return listM121queryBatch;
            }
        }
        return queryAll$default(this, null, 1, null);
    }

    public final List<AudioItem> queryAll(final String sortOrder) {
        return m121queryBatch(QueryBundleKtxKt.buildAudioQueryBundle(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return SystemAudioQueryRepository.queryAll$lambda$15(sortOrder, (QueryBundle.Builder) obj);
            }
        }), new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return SystemAudioQueryRepository.queryAll$lambda$16((Cursor) obj, (Uri) obj2);
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:162:0x01c7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:41:0x0112  */
    /* JADX WARN: Code duplicated, block: B:47:0x0135 A[Catch: all -> 0x0100, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0100, blocks: (B:33:0x00f5, B:35:0x00fb, B:47:0x0135, B:53:0x0143), top: B:130:0x00f5 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x013b  */
    /* JADX WARN: Code duplicated, block: B:53:0x0143 A[Catch: all -> 0x0100, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0100, blocks: (B:33:0x00f5, B:35:0x00fb, B:47:0x0135, B:53:0x0143), top: B:130:0x00f5 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x0149  */
    /* JADX WARN: Code duplicated, block: B:58:0x0151 A[Catch: all -> 0x0158, TryCatch #9 {all -> 0x0158, blocks: (B:56:0x014b, B:58:0x0151, B:63:0x0164, B:72:0x019a, B:74:0x01a5), top: B:148:0x014b }] */
    /* JADX WARN: Code duplicated, block: B:62:0x0162  */
    /* JADX WARN: Code duplicated, block: B:65:0x018a  */
    /* JADX WARN: Code duplicated, block: B:67:0x0190  */
    /* JADX WARN: Code duplicated, block: B:68:0x0191  */
    /* JADX WARN: Code duplicated, block: B:70:0x0195  */
    /* JADX WARN: Code duplicated, block: B:71:0x0198  */
    /* JADX WARN: Code duplicated, block: B:74:0x01a5 A[Catch: all -> 0x0158, TRY_LEAVE, TryCatch #9 {all -> 0x0158, blocks: (B:56:0x014b, B:58:0x0151, B:63:0x0164, B:72:0x019a, B:74:0x01a5), top: B:148:0x014b }] */
    /* JADX WARN: Code duplicated, block: B:83:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:88:0x01cb A[LOOP:1: B:132:0x00a6->B:88:0x01cb, LOOP_END] */
    public final Pair<Integer, List<AudioItem>> queryAllOptimized(final String sortOrder, boolean filtered, boolean needFilter, boolean excludeConvertOutFolder) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        Cursor cursor;
        Throwable th;
        Cursor cursor2;
        boolean z;
        boolean z2;
        int i7;
        boolean z3;
        String strJ;
        Long longSafe;
        long jLongValue;
        Long longSafe2;
        long jLongValue2;
        Integer intSafe;
        int iIntValue;
        long jResolveDurationMsForFilter$default;
        AudioItem audioItemBuildAudioItemInternal;
        ArrayList arrayList = new ArrayList();
        QueryBundle queryBundleBuildAudioQueryBundle = QueryBundleKtxKt.buildAudioQueryBundle(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return SystemAudioQueryRepository.queryAllOptimized$lambda$17(sortOrder, (QueryBundle.Builder) obj);
            }
        });
        Uri uri = queryBundleBuildAudioQueryBundle.getUri();
        if (uri == null) {
            uri = getMUri();
        }
        Uri uri2 = uri;
        vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") start");
        int mPageSize = queryBundleBuildAudioQueryBundle.getLimitedCount() > getMPageSize() ? getMPageSize() : queryBundleBuildAudioQueryBundle.getLimitedCount();
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        while (true) {
            try {
                vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") start query");
                Cursor cursorQuery = query(ge6.a.g(), queryBundleBuildAudioQueryBundle, i10, mPageSize);
                if (cursorQuery != null) {
                    Cursor cursor3 = cursorQuery;
                    try {
                        Cursor cursor4 = cursor3;
                        int count = cursor4.getCount();
                        try {
                            vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") end query,count:" + count);
                            int i11 = i8;
                            int i12 = i9;
                            while (true) {
                                try {
                                    if (!cursor4.moveToNext()) {
                                        cursor2 = cursor3;
                                        i4 = count;
                                        i = i10;
                                        i2 = mPageSize;
                                        i8 = i11;
                                        i9 = i12;
                                        break;
                                    }
                                    try {
                                        String stringSafe = CursorExtKt.getStringSafe(cursor4, 6);
                                        try {
                                            if (stringSafe == null || stringSafe.length() == 0) {
                                                cursor2 = cursor3;
                                                i4 = count;
                                                i = i10;
                                                i2 = mPageSize;
                                                z = false;
                                            } else {
                                                if (pp3.A) {
                                                    cursor2 = cursor3;
                                                    i4 = count;
                                                    i = i10;
                                                    i2 = mPageSize;
                                                    strJ = ge6.a.j(stringSafe);
                                                    longSafe = CursorExtKt.getLongSafe(cursor4, 8);
                                                    if (longSafe != null) {
                                                        jLongValue = longSafe.longValue();
                                                    } else {
                                                        jLongValue = -1;
                                                    }
                                                    longSafe2 = CursorExtKt.getLongSafe(cursor4, 7);
                                                    if (longSafe2 != null) {
                                                        jLongValue2 = longSafe2.longValue();
                                                    } else {
                                                        jLongValue2 = -1;
                                                    }
                                                    z = false;
                                                    intSafe = CursorExtKt.getIntSafe(cursor4, 0);
                                                    if (intSafe != null) {
                                                        iIntValue = intSafe.intValue();
                                                    } else {
                                                        iIntValue = 0;
                                                    }
                                                    jResolveDurationMsForFilter$default = AudioFilterKtxKt.resolveDurationMsForFilter$default(stringSafe, iIntValue, jLongValue2, false, null, null, 32, null);
                                                    if (AudioFilterKtxKt.shouldPassAudioFilter(stringSafe, strJ, jLongValue, jResolveDurationMsForFilter$default, filtered, needFilter, excludeConvertOutFolder)) {
                                                        if (jResolveDurationMsForFilter$default <= 0) {
                                                            if (jLongValue2 > 0) {
                                                                jResolveDurationMsForFilter$default = jLongValue2;
                                                            } else {
                                                                jResolveDurationMsForFilter$default = -1;
                                                            }
                                                        }
                                                        audioItemBuildAudioItemInternal = MediaDataExtKt.buildAudioItemInternal(cursor4, uri2, stringSafe, strJ, jLongValue, jResolveDurationMsForFilter$default);
                                                        if (audioItemBuildAudioItemInternal != null) {
                                                            arrayList.add(audioItemBuildAudioItemInternal);
                                                            z2 = true;
                                                        }
                                                    }
                                                    i11++;
                                                } else {
                                                    try {
                                                        if (AudioFilterUtils.r()) {
                                                            cursor2 = cursor3;
                                                            i4 = count;
                                                            i = i10;
                                                            i2 = mPageSize;
                                                            try {
                                                                strJ = ge6.a.j(stringSafe);
                                                                longSafe = CursorExtKt.getLongSafe(cursor4, 8);
                                                                if (longSafe != null) {
                                                                    jLongValue = longSafe.longValue();
                                                                } else {
                                                                    jLongValue = -1;
                                                                }
                                                                longSafe2 = CursorExtKt.getLongSafe(cursor4, 7);
                                                                if (longSafe2 != null) {
                                                                    jLongValue2 = longSafe2.longValue();
                                                                } else {
                                                                    jLongValue2 = -1;
                                                                }
                                                                z = false;
                                                                try {
                                                                    intSafe = CursorExtKt.getIntSafe(cursor4, 0);
                                                                    if (intSafe != null) {
                                                                        iIntValue = intSafe.intValue();
                                                                    } else {
                                                                        iIntValue = 0;
                                                                    }
                                                                    jResolveDurationMsForFilter$default = AudioFilterKtxKt.resolveDurationMsForFilter$default(stringSafe, iIntValue, jLongValue2, false, null, null, 32, null);
                                                                    if (AudioFilterKtxKt.shouldPassAudioFilter(stringSafe, strJ, jLongValue, jResolveDurationMsForFilter$default, filtered, needFilter, excludeConvertOutFolder)) {
                                                                        if (jResolveDurationMsForFilter$default <= 0) {
                                                                            if (jLongValue2 > 0) {
                                                                                jResolveDurationMsForFilter$default = jLongValue2;
                                                                            } else {
                                                                                jResolveDurationMsForFilter$default = -1;
                                                                            }
                                                                        }
                                                                        audioItemBuildAudioItemInternal = MediaDataExtKt.buildAudioItemInternal(cursor4, uri2, stringSafe, strJ, jLongValue, jResolveDurationMsForFilter$default);
                                                                        if (audioItemBuildAudioItemInternal != null) {
                                                                            arrayList.add(audioItemBuildAudioItemInternal);
                                                                            z2 = true;
                                                                        }
                                                                    }
                                                                    i11++;
                                                                } catch (Throwable th2) {
                                                                    th = th2;
                                                                    th = th;
                                                                    i8 = i11;
                                                                    i9 = i12;
                                                                    cursor = cursor2;
                                                                    throw th;
                                                                }
                                                            } catch (Throwable th3) {
                                                                th = th3;
                                                                th = th;
                                                                i8 = i11;
                                                                i9 = i12;
                                                                cursor = cursor2;
                                                                throw th;
                                                            }
                                                        } else {
                                                            if (filtered) {
                                                                i11++;
                                                                cursor2 = cursor3;
                                                                i4 = count;
                                                                i = i10;
                                                                i2 = mPageSize;
                                                            } else {
                                                                cursor2 = cursor3;
                                                                i4 = count;
                                                                i = i10;
                                                                i2 = mPageSize;
                                                                try {
                                                                    AudioItem audioItemBuildAudioItemInternal$default = MediaDataExtKt.buildAudioItemInternal$default(cursor4, uri2, stringSafe, null, 0L, 0L, 28, null);
                                                                    if (audioItemBuildAudioItemInternal$default != null) {
                                                                        arrayList.add(audioItemBuildAudioItemInternal$default);
                                                                        z3 = true;
                                                                    } else {
                                                                        i11++;
                                                                    }
                                                                    z2 = z3;
                                                                } catch (Throwable th4) {
                                                                    th = th4;
                                                                    th = th;
                                                                    i8 = i11;
                                                                    i9 = i12;
                                                                    cursor = cursor2;
                                                                    try {
                                                                        throw th;
                                                                    } catch (Throwable th5) {
                                                                        ly0.a(cursor, th);
                                                                        throw th5;
                                                                    }
                                                                }
                                                            }
                                                            z3 = false;
                                                            z2 = z3;
                                                        }
                                                    } catch (Throwable th6) {
                                                        th = th6;
                                                        cursor2 = cursor3;
                                                        i4 = count;
                                                        i = i10;
                                                        i2 = mPageSize;
                                                    }
                                                }
                                                if (z2) {
                                                    i12++;
                                                }
                                                i7 = i12;
                                                if (i7 >= queryBundleBuildAudioQueryBundle.getLimitedCount()) {
                                                    i9 = i7;
                                                    i8 = i11;
                                                    break;
                                                }
                                                i12 = i7;
                                                cursor3 = cursor2;
                                                count = i4;
                                                i10 = i;
                                                mPageSize = i2;
                                            }
                                            if (i7 >= queryBundleBuildAudioQueryBundle.getLimitedCount()) {
                                                i9 = i7;
                                                i8 = i11;
                                                break;
                                            }
                                            i12 = i7;
                                            cursor3 = cursor2;
                                            count = i4;
                                            i10 = i;
                                            mPageSize = i2;
                                        } catch (Throwable th7) {
                                            th = th7;
                                            i9 = i7;
                                            i8 = i11;
                                            cursor = cursor2;
                                            throw th;
                                        }
                                        z2 = z;
                                        if (z2) {
                                            i12++;
                                        }
                                        i7 = i12;
                                    } catch (Throwable th8) {
                                        th = th8;
                                        cursor2 = cursor3;
                                        i4 = count;
                                        i = i10;
                                        i2 = mPageSize;
                                    }
                                } catch (Throwable th9) {
                                    cursor = cursor3;
                                    i4 = count;
                                    i = i10;
                                    i2 = mPageSize;
                                    th = th9;
                                    i8 = i11;
                                    i9 = i12;
                                }
                            }
                            try {
                                zfb zfbVar = zfb.a;
                                try {
                                    ly0.a(cursor2, null);
                                } catch (Exception e) {
                                    e = e;
                                    vmb.d(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") error:", e);
                                    i5 = i4;
                                    i6 = i2;
                                    i10 = i + i6;
                                    vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") ,count:" + i5 + ", totalNumber:" + i9 + ", pageSize:" + i6);
                                    if (i5 == i6) {
                                    }
                                    vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") end");
                                    return abb.a(Integer.valueOf(i8), arrayList);
                                }
                                i5 = i4;
                            } catch (Throwable th10) {
                                th = th10;
                                cursor = cursor2;
                                th = th;
                                throw th;
                            }
                        } catch (Throwable th11) {
                            th = th11;
                            cursor = cursor3;
                            i4 = count;
                            i = i10;
                            i2 = mPageSize;
                        }
                    } catch (Throwable th12) {
                        cursor = cursor3;
                        i = i10;
                        i2 = mPageSize;
                        th = th12;
                        i4 = 0;
                    }
                } else {
                    i = i10;
                    i2 = mPageSize;
                    i3 = 0;
                    try {
                        vmb.c(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") cursor is null");
                        i5 = 0;
                    } catch (Exception e2) {
                        e = e2;
                        i4 = i3;
                        vmb.d(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") error:", e);
                        i5 = i4;
                    }
                }
            } catch (Exception e3) {
                e = e3;
                i = i10;
                i2 = mPageSize;
                i3 = 0;
            }
            i6 = i2;
            i10 = i + i6;
            vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") ,count:" + i5 + ", totalNumber:" + i9 + ", pageSize:" + i6);
            if (i5 == i6 || i9 >= queryBundleBuildAudioQueryBundle.getLimitedCount()) {
                vmb.a(getMTag(), "queryBatchNoResult(uri:" + uri2 + ") end");
                return abb.a(Integer.valueOf(i8), arrayList);
            }
            mPageSize = i6;
        }
    }

    public final List<AudioItem> queryBatchByAlbumArtist(String albumName, String artistName) {
        Pair<String, String[]> pairBuildFieldLikeWithDisplayNameCondition;
        if (albumName == null || albumName.length() == 0) {
            pairBuildFieldLikeWithDisplayNameCondition = (artistName == null || artistName.length() == 0) ? null : SqlKt.buildFieldLikeWithDisplayNameCondition("artist", artistName, null);
        } else {
            pairBuildFieldLikeWithDisplayNameCondition = SqlKt.buildFieldLikeWithDisplayNameCondition("album", albumName, null);
        }
        if (pairBuildFieldLikeWithDisplayNameCondition == null) {
            return null;
        }
        final String strComponent1 = pairBuildFieldLikeWithDisplayNameCondition.component1();
        final String[] strArrComponent2 = pairBuildFieldLikeWithDisplayNameCondition.component2();
        return m121queryBatch(QueryBundleKtxKt.buildAudioQueryBundle(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return SystemAudioQueryRepository.queryBatchByAlbumArtist$lambda$29$lambda$27(strComponent1, strArrComponent2, (QueryBundle.Builder) obj);
            }
        }), new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return SystemAudioQueryRepository.queryBatchByAlbumArtist$lambda$29$lambda$28((Cursor) obj, (Uri) obj2);
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0046  */
    public final List<AudioItem> queryBatchByBucket(Long bucketId, String parentPath, boolean onlyMusic) {
        Pair pairA;
        Pair pairA2 = bucketId != null ? abb.a("bucket_id = ?", new String[]{bucketId.toString()}) : null;
        if (pairA2 != null) {
            String str = (String) pairA2.component1();
            String[] strArr = (String[]) pairA2.component2();
            if (onlyMusic) {
                pairA = abb.a(str + " AND is_music = ?", fi.A(strArr, "1"));
            } else {
                pairA = abb.a(str, strArr);
            }
            if (pairA == null) {
                pairA = abb.a(null, null);
            }
        } else {
            pairA = abb.a(null, null);
        }
        final String str2 = (String) pairA.component1();
        final String[] strArr2 = (String[]) pairA.component2();
        if (str2 == null || strArr2 == null) {
            return null;
        }
        return m121queryBatch(QueryBundleKtxKt.buildAudioQueryBundle(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return SystemAudioQueryRepository.queryBatchByBucket$lambda$31(str2, strArr2, (QueryBundle.Builder) obj);
            }
        }), new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return SystemAudioQueryRepository.queryBatchByBucket$lambda$32((Cursor) obj, (Uri) obj2);
            }
        });
    }

    public final List<AudioItem> queryBatchByIdsAndName(List<Integer> mediaIds, String displayName) {
        y45.j(mediaIds, "mediaIds");
        if (mediaIds.isEmpty()) {
            return y71.k();
        }
        Pair<StringBuilder, List<String>> pairBuildIdsAndNameCondition = SqlKt.buildIdsAndNameCondition(mediaIds, displayName);
        final StringBuilder sbComponent1 = pairBuildIdsAndNameCondition.component1();
        final List<String> listComponent2 = pairBuildIdsAndNameCondition.component2();
        return m121queryBatch(QueryBundleKtxKt.buildAudioQueryBundle(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return SystemAudioQueryRepository.queryBatchByIdsAndName$lambda$20(sbComponent1, listComponent2, (QueryBundle.Builder) obj);
            }
        }), new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return SystemAudioQueryRepository.queryBatchByIdsAndName$lambda$21((Cursor) obj, (Uri) obj2);
            }
        });
    }

    public final List<AudioItem> queryBatchByParentPath(String parentPath) {
        Pair pairA;
        if (parentPath == null) {
            parentPath = "";
        }
        if (Build.VERSION.SDK_INT > 29) {
            pairA = abb.a("relative_path = ?", new String[]{parentPath});
        } else {
            pairA = abb.a("_data LIKE ?", new String[]{parentPath + "%"});
        }
        final String str = (String) pairA.component1();
        final String[] strArr = (String[]) pairA.component2();
        return m121queryBatch(QueryBundleKtxKt.buildAudioQueryBundle(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return SystemAudioQueryRepository.queryBatchByParentPath$lambda$33(str, strArr, (QueryBundle.Builder) obj);
            }
        }), new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return SystemAudioQueryRepository.queryBatchByParentPath$lambda$34((Cursor) obj, (Uri) obj2);
            }
        });
    }

    public final List<AudioItem> queryBatchByPath(final List<String> pathList, final int count) {
        y45.j(pathList, "pathList");
        return (pathList.isEmpty() || count <= 0) ? y71.k() : m121queryBatch(QueryBundleKtxKt.buildAudioQueryBundle(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return SystemAudioQueryRepository.queryBatchByPath$lambda$22(pathList, count, (QueryBundle.Builder) obj);
            }
        }), new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return SystemAudioQueryRepository.queryBatchByPath$lambda$23((Cursor) obj, (Uri) obj2);
            }
        });
    }

    public final List<AudioItem> queryBatchByTitle(String title) {
        if (title == null || title.length() == 0) {
            return null;
        }
        final String[] strArr = {title, "1"};
        final String str = "title LIKE ? AND is_music = ?";
        return m121queryBatch(QueryBundleKtxKt.buildAudioQueryBundle(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return SystemAudioQueryRepository.queryBatchByTitle$lambda$35(str, strArr, (QueryBundle.Builder) obj);
            }
        }), new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return SystemAudioQueryRepository.queryBatchByTitle$lambda$36((Cursor) obj, (Uri) obj2);
            }
        });
    }

    public final List<AudioItem> queryByFilterType(int filterType) {
        final String sizeSelection = filterType == 769 ? SqlKt.toSizeSelection(AudioFilterUtils.b, false) : SqlKt.toDurationSelection(AudioFilterUtils.c, false);
        return m121queryBatch(QueryBundleKtxKt.buildAudioQueryBundle(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return SystemAudioQueryRepository.queryByFilterType$lambda$42(sizeSelection, (QueryBundle.Builder) obj);
            }
        }), new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return SystemAudioQueryRepository.queryByFilterType$lambda$43((Cursor) obj, (Uri) obj2);
            }
        });
    }

    public final List<AudioItem> queryRecent() {
        final String strValueOf = String.valueOf(Math.abs((System.currentTimeMillis() / ((long) 1000)) - ((long) 604800)));
        return m121queryBatch(QueryBundleKtxKt.buildAudioQueryBundle(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return SystemAudioQueryRepository.queryRecent$lambda$40(strValueOf, (QueryBundle.Builder) obj);
            }
        }), new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return SystemAudioQueryRepository.queryRecent$lambda$41((Cursor) obj, (Uri) obj2);
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0066  */
    public final AudioItem querySingle(xk8.x action) {
        Object second;
        y45.j(action, "action");
        String str = "single_" + action.hashCode();
        long jCurrentTimeMillis = System.currentTimeMillis();
        Pair pair = (Pair) sharedQueryCache.get(str);
        if (pair == null || jCurrentTimeMillis - ((Number) pair.getFirst()).longValue() >= 30000) {
            QueryBundle queryBundle = ActionExtKt.toQueryBundle(action, at.b.e());
            AudioItem audioItemQueryOtherAppAudioItem = queryBundle == null ? queryOtherAppAudioItem(action.f()) : (AudioItem) querySingle(queryBundle, new s74() {
                @Override
                public final AudioItem invoke(Cursor cursor, Uri uri) {
                    y45.j(cursor, "cursor");
                    y45.j(uri, "uri");
                    return MediaDataExtKt.buildAudioItem(cursor, uri);
                }
            });
            if (audioItemQueryOtherAppAudioItem == null) {
                second = null;
            } else {
                Long lValueOf = Long.valueOf(jCurrentTimeMillis);
                y45.h(audioItemQueryOtherAppAudioItem, "null cannot be cast to non-null type kotlin.Any");
                Pair pair2 = (Pair) sharedQueryCache.compute(str, new SystemAudioQueryRepository$sam$java_util_function_BiFunction$0(new SystemAudioQueryRepository$getCachedResult$stored$1(jCurrentTimeMillis, 30000L, abb.a(lValueOf, audioItemQueryOtherAppAudioItem)), null));
                if (pair2 != null) {
                    second = pair2.getSecond();
                } else {
                    second = null;
                }
            }
        } else {
            second = pair.getSecond();
            y45.h(second, "null cannot be cast to non-null type T of com.transsion.dbdata.source.data.repository.SystemAudioQueryRepository.getCachedResult");
        }
        return (AudioItem) second;
    }

    public final List<AudioItem> search(String searchText) {
        if (searchText == null || searchText.length() == 0) {
            return y71.k();
        }
        final StringBuilder sb = new StringBuilder();
        sb.append("is_music = ?");
        sb.append(" AND ");
        sb.append("(");
        sb.append("_display_name LIKE ?");
        sb.append(" OR ");
        sb.append("title LIKE ?");
        sb.append(")");
        final String[] strArr = {"1", "%" + searchText + "%", "%" + searchText + "%"};
        return m121queryBatch(QueryBundleKtxKt.buildAudioQueryBundle(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return SystemAudioQueryRepository.search$lambda$38(sb, strArr, (QueryBundle.Builder) obj);
            }
        }), new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return SystemAudioQueryRepository.search$lambda$39((Cursor) obj, (Uri) obj2);
            }
        });
    }
}
