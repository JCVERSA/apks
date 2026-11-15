package kotlin.collections.builders;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.NotSerializableException;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.collections.AbstractMutableList;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMutableList;
import kotlin.jvm.internal.markers.KMutableListIterator;

@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u001e\n\u0002\b\u0016\n\u0002\u0010)\n\u0002\b\u0002\n\u0002\u0010+\n\u0002\b\u0012\n\u0002\u0010\u0011\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u000f\b\u0000\u0018\u0000 b*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u00060\u0003j\u0002`\u00042\b\u0012\u0004\u0012\u00028\u00000\u00052\u00060\u0006j\u0002`\u0007:\u0003cdeB\u0011\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0012\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0014\u0010\u000bJ\u0017\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0016\u0010\u000bJ\u001b\u0010\u001a\u001a\u00020\u00192\n\u0010\u0018\u001a\u0006\u0012\u0002\b\u00030\u0017H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u001f\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\bH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u001f\u0010 \u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\b2\u0006\u0010\u001f\u001a\u00028\u0000H\u0002¢\u0006\u0004\b \u0010!J-\u0010$\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\b2\f\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00000\"2\u0006\u0010\u0013\u001a\u00020\bH\u0002¢\u0006\u0004\b$\u0010%J\u0017\u0010&\u001a\u00028\u00002\u0006\u0010\u001c\u001a\u00020\bH\u0002¢\u0006\u0004\b&\u0010'J\u001f\u0010*\u001a\u00020\u000f2\u0006\u0010(\u001a\u00020\b2\u0006\u0010)\u001a\u00020\bH\u0002¢\u0006\u0004\b*\u0010\u001eJ5\u0010,\u001a\u00020\b2\u0006\u0010(\u001a\u00020\b2\u0006\u0010)\u001a\u00020\b2\f\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00000\"2\u0006\u0010+\u001a\u00020\u0019H\u0002¢\u0006\u0004\b,\u0010-J\u0013\u0010.\u001a\b\u0012\u0004\u0012\u00028\u00000\u0017¢\u0006\u0004\b.\u0010/J\u000f\u00100\u001a\u00020\u0019H\u0016¢\u0006\u0004\b0\u00101J\u0018\u00103\u001a\u00028\u00002\u0006\u00102\u001a\u00020\bH\u0096\u0002¢\u0006\u0004\b3\u0010'J \u00104\u001a\u00028\u00002\u0006\u00102\u001a\u00020\b2\u0006\u0010\u001f\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b4\u00105J\u0017\u00106\u001a\u00020\b2\u0006\u0010\u001f\u001a\u00028\u0000H\u0016¢\u0006\u0004\b6\u00107J\u0017\u00108\u001a\u00020\b2\u0006\u0010\u001f\u001a\u00028\u0000H\u0016¢\u0006\u0004\b8\u00107J\u0016\u0010:\u001a\b\u0012\u0004\u0012\u00028\u000009H\u0096\u0002¢\u0006\u0004\b:\u0010;J\u0015\u0010=\u001a\b\u0012\u0004\u0012\u00028\u00000<H\u0016¢\u0006\u0004\b=\u0010>J\u001d\u0010=\u001a\b\u0012\u0004\u0012\u00028\u00000<2\u0006\u00102\u001a\u00020\bH\u0016¢\u0006\u0004\b=\u0010?J\u0017\u0010@\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00028\u0000H\u0016¢\u0006\u0004\b@\u0010AJ\u001f\u0010@\u001a\u00020\u000f2\u0006\u00102\u001a\u00020\b2\u0006\u0010\u001f\u001a\u00028\u0000H\u0016¢\u0006\u0004\b@\u0010!J\u001d\u0010B\u001a\u00020\u00192\f\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00000\"H\u0016¢\u0006\u0004\bB\u0010CJ%\u0010B\u001a\u00020\u00192\u0006\u00102\u001a\u00020\b2\f\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00000\"H\u0016¢\u0006\u0004\bB\u0010DJ\u000f\u0010E\u001a\u00020\u000fH\u0016¢\u0006\u0004\bE\u0010\u0011J\u0017\u0010F\u001a\u00028\u00002\u0006\u00102\u001a\u00020\bH\u0016¢\u0006\u0004\bF\u0010'J\u0017\u0010G\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00028\u0000H\u0016¢\u0006\u0004\bG\u0010AJ\u001d\u0010H\u001a\u00020\u00192\f\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00000\"H\u0016¢\u0006\u0004\bH\u0010CJ\u001d\u0010I\u001a\u00020\u00192\f\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00000\"H\u0016¢\u0006\u0004\bI\u0010CJ%\u0010L\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010J\u001a\u00020\b2\u0006\u0010K\u001a\u00020\bH\u0016¢\u0006\u0004\bL\u0010MJ)\u0010Q\u001a\b\u0012\u0004\u0012\u00028\u00010O\"\u0004\b\u0001\u0010N2\f\u0010P\u001a\b\u0012\u0004\u0012\u00028\u00010OH\u0016¢\u0006\u0004\bQ\u0010RJ\u0017\u0010Q\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0OH\u0016¢\u0006\u0004\bQ\u0010SJ\u001a\u0010T\u001a\u00020\u00192\b\u0010\u0018\u001a\u0004\u0018\u00010\fH\u0096\u0002¢\u0006\u0004\bT\u0010AJ\u000f\u0010U\u001a\u00020\bH\u0016¢\u0006\u0004\bU\u0010VJ\u000f\u0010X\u001a\u00020WH\u0016¢\u0006\u0004\bX\u0010YR\u001c\u0010Z\u001a\b\u0012\u0004\u0012\u00028\u00000O8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010[R\u0016\u0010\\\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010]R\u0016\u0010^\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010_R\u0014\u0010a\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b`\u0010V¨\u0006f"}, d2 = {"Lkotlin/collections/builders/ListBuilder;", "E", "", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "Lkotlin/collections/AbstractMutableList;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "initialCapacity", "<init>", "(I)V", "", "writeReplace", "()Ljava/lang/Object;", "", "registerModification", "()V", "checkIsMutable", "n", "ensureExtraCapacity", "minCapacity", "ensureCapacityInternal", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "contentEquals", "(Ljava/util/List;)Z", "i", "insertAtInternal", "(II)V", "element", "addAtInternal", "(ILjava/lang/Object;)V", "", "elements", "addAllInternal", "(ILjava/util/Collection;I)V", "removeAtInternal", "(I)Ljava/lang/Object;", "rangeOffset", "rangeLength", "removeRangeInternal", "retain", "retainOrRemoveAllInternal", "(IILjava/util/Collection;Z)I", "build", "()Ljava/util/List;", "isEmpty", "()Z", "index", "get", "set", "(ILjava/lang/Object;)Ljava/lang/Object;", "indexOf", "(Ljava/lang/Object;)I", "lastIndexOf", "", "iterator", "()Ljava/util/Iterator;", "", "listIterator", "()Ljava/util/ListIterator;", "(I)Ljava/util/ListIterator;", "add", "(Ljava/lang/Object;)Z", "addAll", "(Ljava/util/Collection;)Z", "(ILjava/util/Collection;)Z", "clear", "removeAt", "remove", "removeAll", "retainAll", "fromIndex", "toIndex", "subList", "(II)Ljava/util/List;", "T", "", "array", "toArray", "([Ljava/lang/Object;)[Ljava/lang/Object;", "()[Ljava/lang/Object;", "equals", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "backing", "[Ljava/lang/Object;", "length", "I", "isReadOnly", "Z", "getSize", "size", "Companion", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "BuilderSubList", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ListBuilder<E> extends AbstractMutableList<E> implements List<E>, RandomAccess, Serializable, KMutableList {
    private static final a Companion = new a(null);
    private static final ListBuilder Empty;
    private E[] backing;
    private boolean isReadOnly;
    private int length;

    @Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u001e\n\u0002\b\u0016\n\u0002\u0010)\n\u0002\b\u0002\n\u0002\u0010+\n\u0002\b\u0019\n\u0002\u0010\u000e\n\u0002\b\u000b\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u00022\u00060\u0003j\u0002`\u00042\b\u0012\u0004\u0012\u00028\u00010\u00052\u00060\u0006j\u0002`\u0007:\u0001aBC\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00010\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\n\u0012\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0000\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00010\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0018\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0019\u0010\u0017J\u001b\u0010\u001d\u001a\u00020\u001c2\n\u0010\u001b\u001a\u0006\u0012\u0002\b\u00030\u001aH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u001f\u0010!\u001a\u00020\u00152\u0006\u0010\u001f\u001a\u00020\n2\u0006\u0010 \u001a\u00028\u0001H\u0002¢\u0006\u0004\b!\u0010\"J-\u0010&\u001a\u00020\u00152\u0006\u0010\u001f\u001a\u00020\n2\f\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00010#2\u0006\u0010%\u001a\u00020\nH\u0002¢\u0006\u0004\b&\u0010'J\u0017\u0010(\u001a\u00028\u00012\u0006\u0010\u001f\u001a\u00020\nH\u0002¢\u0006\u0004\b(\u0010)J\u001f\u0010,\u001a\u00020\u00152\u0006\u0010*\u001a\u00020\n2\u0006\u0010+\u001a\u00020\nH\u0002¢\u0006\u0004\b,\u0010-J5\u0010/\u001a\u00020\n2\u0006\u0010*\u001a\u00020\n2\u0006\u0010+\u001a\u00020\n2\f\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00010#2\u0006\u0010.\u001a\u00020\u001cH\u0002¢\u0006\u0004\b/\u00100J\u000f\u00101\u001a\u00020\u001cH\u0016¢\u0006\u0004\b1\u00102J\u0018\u00104\u001a\u00028\u00012\u0006\u00103\u001a\u00020\nH\u0096\u0002¢\u0006\u0004\b4\u0010)J \u00105\u001a\u00028\u00012\u0006\u00103\u001a\u00020\n2\u0006\u0010 \u001a\u00028\u0001H\u0096\u0002¢\u0006\u0004\b5\u00106J\u0017\u00107\u001a\u00020\n2\u0006\u0010 \u001a\u00028\u0001H\u0016¢\u0006\u0004\b7\u00108J\u0017\u00109\u001a\u00020\n2\u0006\u0010 \u001a\u00028\u0001H\u0016¢\u0006\u0004\b9\u00108J\u0016\u0010;\u001a\b\u0012\u0004\u0012\u00028\u00010:H\u0096\u0002¢\u0006\u0004\b;\u0010<J\u0015\u0010>\u001a\b\u0012\u0004\u0012\u00028\u00010=H\u0016¢\u0006\u0004\b>\u0010?J\u001d\u0010>\u001a\b\u0012\u0004\u0012\u00028\u00010=2\u0006\u00103\u001a\u00020\nH\u0016¢\u0006\u0004\b>\u0010@J\u0017\u0010A\u001a\u00020\u001c2\u0006\u0010 \u001a\u00028\u0001H\u0016¢\u0006\u0004\bA\u0010BJ\u001f\u0010A\u001a\u00020\u00152\u0006\u00103\u001a\u00020\n2\u0006\u0010 \u001a\u00028\u0001H\u0016¢\u0006\u0004\bA\u0010\"J\u001d\u0010C\u001a\u00020\u001c2\f\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00010#H\u0016¢\u0006\u0004\bC\u0010DJ%\u0010C\u001a\u00020\u001c2\u0006\u00103\u001a\u00020\n2\f\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00010#H\u0016¢\u0006\u0004\bC\u0010EJ\u000f\u0010F\u001a\u00020\u0015H\u0016¢\u0006\u0004\bF\u0010\u0017J\u0017\u0010G\u001a\u00028\u00012\u0006\u00103\u001a\u00020\nH\u0016¢\u0006\u0004\bG\u0010)J\u0017\u0010H\u001a\u00020\u001c2\u0006\u0010 \u001a\u00028\u0001H\u0016¢\u0006\u0004\bH\u0010BJ\u001d\u0010I\u001a\u00020\u001c2\f\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00010#H\u0016¢\u0006\u0004\bI\u0010DJ\u001d\u0010J\u001a\u00020\u001c2\f\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00010#H\u0016¢\u0006\u0004\bJ\u0010DJ%\u0010M\u001a\b\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010K\u001a\u00020\n2\u0006\u0010L\u001a\u00020\nH\u0016¢\u0006\u0004\bM\u0010NJ)\u0010Q\u001a\b\u0012\u0004\u0012\u00028\u00020\b\"\u0004\b\u0002\u0010O2\f\u0010P\u001a\b\u0012\u0004\u0012\u00028\u00020\bH\u0016¢\u0006\u0004\bQ\u0010RJ\u0017\u0010Q\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\bH\u0016¢\u0006\u0004\bQ\u0010SJ\u001a\u0010T\u001a\u00020\u001c2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0012H\u0096\u0002¢\u0006\u0004\bT\u0010BJ\u000f\u0010U\u001a\u00020\nH\u0016¢\u0006\u0004\bU\u0010VJ\u000f\u0010X\u001a\u00020WH\u0016¢\u0006\u0004\bX\u0010YR\u001c\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010ZR\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010[R\u0016\u0010\f\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010[R\u001c\u0010\r\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\\R\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00010\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010]R\u0014\u0010^\u001a\u00020\u001c8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b^\u00102R\u0014\u0010`\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b_\u0010V¨\u0006b"}, d2 = {"Lkotlin/collections/builders/ListBuilder$BuilderSubList;", "E", "", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "Lkotlin/collections/AbstractMutableList;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "backing", "", "offset", "length", "parent", "Lkotlin/collections/builders/ListBuilder;", "root", "<init>", "([Ljava/lang/Object;IILkotlin/collections/builders/ListBuilder$BuilderSubList;Lkotlin/collections/builders/ListBuilder;)V", "", "writeReplace", "()Ljava/lang/Object;", "", "registerModification", "()V", "checkForComodification", "checkIsMutable", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "contentEquals", "(Ljava/util/List;)Z", "i", "element", "addAtInternal", "(ILjava/lang/Object;)V", "", "elements", "n", "addAllInternal", "(ILjava/util/Collection;I)V", "removeAtInternal", "(I)Ljava/lang/Object;", "rangeOffset", "rangeLength", "removeRangeInternal", "(II)V", "retain", "retainOrRemoveAllInternal", "(IILjava/util/Collection;Z)I", "isEmpty", "()Z", "index", "get", "set", "(ILjava/lang/Object;)Ljava/lang/Object;", "indexOf", "(Ljava/lang/Object;)I", "lastIndexOf", "", "iterator", "()Ljava/util/Iterator;", "", "listIterator", "()Ljava/util/ListIterator;", "(I)Ljava/util/ListIterator;", "add", "(Ljava/lang/Object;)Z", "addAll", "(Ljava/util/Collection;)Z", "(ILjava/util/Collection;)Z", "clear", "removeAt", "remove", "removeAll", "retainAll", "fromIndex", "toIndex", "subList", "(II)Ljava/util/List;", "T", "array", "toArray", "([Ljava/lang/Object;)[Ljava/lang/Object;", "()[Ljava/lang/Object;", "equals", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "[Ljava/lang/Object;", "I", "Lkotlin/collections/builders/ListBuilder$BuilderSubList;", "Lkotlin/collections/builders/ListBuilder;", "isReadOnly", "getSize", "size", "a", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class BuilderSubList<E> extends AbstractMutableList<E> implements List<E>, RandomAccess, Serializable, KMutableList {
        private E[] backing;
        private int length;
        private final int offset;
        private final BuilderSubList<E> parent;
        private final ListBuilder<E> root;

        private static final class a implements ListIterator, KMutableListIterator {

            private final BuilderSubList f64184a;

            private int f64185b;

            private int f64186c;

            private int f64187d;

            public a(BuilderSubList list, int i10) {
                Intrinsics.h(list, "list");
                this.f64184a = list;
                this.f64185b = i10;
                this.f64186c = -1;
                this.f64187d = ((AbstractList) list).modCount;
            }

            private final void a() {
                if (((AbstractList) this.f64184a.root).modCount != this.f64187d) {
                    throw new ConcurrentModificationException();
                }
            }

            @Override
            public void add(Object obj) {
                a();
                BuilderSubList builderSubList = this.f64184a;
                int i10 = this.f64185b;
                this.f64185b = i10 + 1;
                builderSubList.add(i10, obj);
                this.f64186c = -1;
                this.f64187d = ((AbstractList) this.f64184a).modCount;
            }

            @Override
            public boolean hasNext() {
                return this.f64185b < this.f64184a.length;
            }

            @Override
            public boolean hasPrevious() {
                return this.f64185b > 0;
            }

            @Override
            public Object next() {
                a();
                if (this.f64185b >= this.f64184a.length) {
                    throw new NoSuchElementException();
                }
                int i10 = this.f64185b;
                this.f64185b = i10 + 1;
                this.f64186c = i10;
                return this.f64184a.backing[this.f64184a.offset + this.f64186c];
            }

            @Override
            public int nextIndex() {
                return this.f64185b;
            }

            @Override
            public Object previous() {
                a();
                int i10 = this.f64185b;
                if (i10 <= 0) {
                    throw new NoSuchElementException();
                }
                int i11 = i10 - 1;
                this.f64185b = i11;
                this.f64186c = i11;
                return this.f64184a.backing[this.f64184a.offset + this.f64186c];
            }

            @Override
            public int previousIndex() {
                return this.f64185b - 1;
            }

            @Override
            public void remove() {
                a();
                int i10 = this.f64186c;
                if (i10 == -1) {
                    throw new IllegalStateException("Call next() or previous() before removing element from the iterator.");
                }
                this.f64184a.remove(i10);
                this.f64185b = this.f64186c;
                this.f64186c = -1;
                this.f64187d = ((AbstractList) this.f64184a).modCount;
            }

            @Override
            public void set(Object obj) {
                a();
                int i10 = this.f64186c;
                if (i10 == -1) {
                    throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.");
                }
                this.f64184a.set(i10, obj);
            }
        }

        public BuilderSubList(E[] backing, int i10, int i11, BuilderSubList<E> builderSubList, ListBuilder<E> root) {
            Intrinsics.h(backing, "backing");
            Intrinsics.h(root, "root");
            this.backing = backing;
            this.offset = i10;
            this.length = i11;
            this.parent = builderSubList;
            this.root = root;
            ((AbstractList) this).modCount = ((AbstractList) root).modCount;
        }

        private final void addAllInternal(int i10, Collection<? extends E> elements, int n10) {
            registerModification();
            BuilderSubList<E> builderSubList = this.parent;
            if (builderSubList != null) {
                builderSubList.addAllInternal(i10, elements, n10);
            } else {
                this.root.addAllInternal(i10, elements, n10);
            }
            this.backing = (E[]) ((ListBuilder) this.root).backing;
            this.length += n10;
        }

        private final void addAtInternal(int i10, E element) {
            registerModification();
            BuilderSubList<E> builderSubList = this.parent;
            if (builderSubList != null) {
                builderSubList.addAtInternal(i10, element);
            } else {
                this.root.addAtInternal(i10, element);
            }
            this.backing = (E[]) ((ListBuilder) this.root).backing;
            this.length++;
        }

        private final void checkForComodification() {
            if (((AbstractList) this.root).modCount != ((AbstractList) this).modCount) {
                throw new ConcurrentModificationException();
            }
        }

        private final void checkIsMutable() {
            if (isReadOnly()) {
                throw new UnsupportedOperationException();
            }
        }

        private final boolean contentEquals(List<?> other) {
            return ListBuilderKt.h(this.backing, this.offset, this.length, other);
        }

        private final boolean isReadOnly() {
            return ((ListBuilder) this.root).isReadOnly;
        }

        private final void registerModification() {
            ((AbstractList) this).modCount++;
        }

        private final E removeAtInternal(int i10) {
            registerModification();
            BuilderSubList<E> builderSubList = this.parent;
            E eRemoveAtInternal = builderSubList != null ? builderSubList.removeAtInternal(i10) : (E) this.root.removeAtInternal(i10);
            this.length--;
            return eRemoveAtInternal;
        }

        private final void removeRangeInternal(int rangeOffset, int rangeLength) {
            if (rangeLength > 0) {
                registerModification();
            }
            BuilderSubList<E> builderSubList = this.parent;
            if (builderSubList != null) {
                builderSubList.removeRangeInternal(rangeOffset, rangeLength);
            } else {
                this.root.removeRangeInternal(rangeOffset, rangeLength);
            }
            this.length -= rangeLength;
        }

        private final int retainOrRemoveAllInternal(int rangeOffset, int rangeLength, Collection<? extends E> elements, boolean retain) {
            BuilderSubList<E> builderSubList = this.parent;
            int iRetainOrRemoveAllInternal = builderSubList != null ? builderSubList.retainOrRemoveAllInternal(rangeOffset, rangeLength, elements, retain) : this.root.retainOrRemoveAllInternal(rangeOffset, rangeLength, elements, retain);
            if (iRetainOrRemoveAllInternal > 0) {
                registerModification();
            }
            this.length -= iRetainOrRemoveAllInternal;
            return iRetainOrRemoveAllInternal;
        }

        private final Object writeReplace() throws NotSerializableException {
            if (isReadOnly()) {
                return new SerializedCollection(this, 0);
            }
            throw new NotSerializableException("The list cannot be serialized while it is being built.");
        }

        @Override
        public boolean add(E element) {
            checkIsMutable();
            checkForComodification();
            addAtInternal(this.offset + this.length, element);
            return true;
        }

        @Override
        public boolean addAll(Collection<? extends E> elements) {
            Intrinsics.h(elements, "elements");
            checkIsMutable();
            checkForComodification();
            int size = elements.size();
            addAllInternal(this.offset + this.length, elements, size);
            return size > 0;
        }

        @Override
        public void clear() {
            checkIsMutable();
            checkForComodification();
            removeRangeInternal(this.offset, this.length);
        }

        @Override
        public boolean equals(Object other) {
            checkForComodification();
            return other == this || ((other instanceof List) && contentEquals((List) other));
        }

        @Override
        public E get(int index) {
            checkForComodification();
            kotlin.collections.AbstractList.INSTANCE.b(index, this.length);
            return this.backing[this.offset + index];
        }

        @Override
        public int getSize() {
            checkForComodification();
            return this.length;
        }

        @Override
        public int hashCode() {
            checkForComodification();
            return ListBuilderKt.i(this.backing, this.offset, this.length);
        }

        @Override
        public int indexOf(Object element) {
            checkForComodification();
            for (int i10 = 0; i10 < this.length; i10++) {
                if (Intrinsics.c(this.backing[this.offset + i10], element)) {
                    return i10;
                }
            }
            return -1;
        }

        @Override
        public boolean isEmpty() {
            checkForComodification();
            return this.length == 0;
        }

        @Override
        public Iterator<E> iterator() {
            return listIterator(0);
        }

        @Override
        public int lastIndexOf(Object element) {
            checkForComodification();
            for (int i10 = this.length - 1; i10 >= 0; i10--) {
                if (Intrinsics.c(this.backing[this.offset + i10], element)) {
                    return i10;
                }
            }
            return -1;
        }

        @Override
        public ListIterator<E> listIterator() {
            return listIterator(0);
        }

        @Override
        public boolean remove(Object element) {
            checkIsMutable();
            checkForComodification();
            int iIndexOf = indexOf(element);
            if (iIndexOf >= 0) {
                remove(iIndexOf);
            }
            return iIndexOf >= 0;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean removeAll(Collection<?> elements) {
            Intrinsics.h(elements, "elements");
            checkIsMutable();
            checkForComodification();
            return retainOrRemoveAllInternal(this.offset, this.length, elements, false) > 0;
        }

        @Override
        public E removeAt(int index) {
            checkIsMutable();
            checkForComodification();
            kotlin.collections.AbstractList.INSTANCE.b(index, this.length);
            return removeAtInternal(this.offset + index);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean retainAll(Collection<?> elements) {
            Intrinsics.h(elements, "elements");
            checkIsMutable();
            checkForComodification();
            return retainOrRemoveAllInternal(this.offset, this.length, elements, true) > 0;
        }

        @Override
        public E set(int index, E element) {
            checkIsMutable();
            checkForComodification();
            kotlin.collections.AbstractList.INSTANCE.b(index, this.length);
            E[] eArr = this.backing;
            int i10 = this.offset;
            E e10 = eArr[i10 + index];
            eArr[i10 + index] = element;
            return e10;
        }

        @Override
        public List<E> subList(int fromIndex, int toIndex) {
            kotlin.collections.AbstractList.INSTANCE.d(fromIndex, toIndex, this.length);
            return new BuilderSubList(this.backing, this.offset + fromIndex, toIndex - fromIndex, this, this.root);
        }

        @Override
        public <T> T[] toArray(T[] array) {
            Intrinsics.h(array, "array");
            checkForComodification();
            int length = array.length;
            int i10 = this.length;
            if (length >= i10) {
                E[] eArr = this.backing;
                int i11 = this.offset;
                ArraysKt.l(eArr, array, 0, i11, i10 + i11);
                return (T[]) CollectionsKt.g(this.length, array);
            }
            E[] eArr2 = this.backing;
            int i12 = this.offset;
            T[] tArr = (T[]) Arrays.copyOfRange(eArr2, i12, i10 + i12, array.getClass());
            Intrinsics.g(tArr, "copyOfRange(...)");
            return tArr;
        }

        @Override
        public String toString() {
            checkForComodification();
            return ListBuilderKt.j(this.backing, this.offset, this.length, this);
        }

        @Override
        public ListIterator<E> listIterator(int index) {
            checkForComodification();
            kotlin.collections.AbstractList.INSTANCE.c(index, this.length);
            return new a(this, index);
        }

        @Override
        public void add(int index, E element) {
            checkIsMutable();
            checkForComodification();
            kotlin.collections.AbstractList.INSTANCE.c(index, this.length);
            addAtInternal(this.offset + index, element);
        }

        @Override
        public boolean addAll(int index, Collection<? extends E> elements) {
            Intrinsics.h(elements, "elements");
            checkIsMutable();
            checkForComodification();
            kotlin.collections.AbstractList.INSTANCE.c(index, this.length);
            int size = elements.size();
            addAllInternal(this.offset + index, elements, size);
            return size > 0;
        }

        @Override
        public Object[] toArray() {
            checkForComodification();
            E[] eArr = this.backing;
            int i10 = this.offset;
            return ArraysKt.r(eArr, i10, this.length + i10);
        }
    }

    private static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private static final class b implements ListIterator, KMutableListIterator {

        private final ListBuilder f64188a;

        private int f64189b;

        private int f64190c;

        private int f64191d;

        public b(ListBuilder list, int i10) {
            Intrinsics.h(list, "list");
            this.f64188a = list;
            this.f64189b = i10;
            this.f64190c = -1;
            this.f64191d = ((AbstractList) list).modCount;
        }

        private final void a() {
            if (((AbstractList) this.f64188a).modCount != this.f64191d) {
                throw new ConcurrentModificationException();
            }
        }

        @Override
        public void add(Object obj) {
            a();
            ListBuilder listBuilder = this.f64188a;
            int i10 = this.f64189b;
            this.f64189b = i10 + 1;
            listBuilder.add(i10, obj);
            this.f64190c = -1;
            this.f64191d = ((AbstractList) this.f64188a).modCount;
        }

        @Override
        public boolean hasNext() {
            return this.f64189b < this.f64188a.length;
        }

        @Override
        public boolean hasPrevious() {
            return this.f64189b > 0;
        }

        @Override
        public Object next() {
            a();
            if (this.f64189b >= this.f64188a.length) {
                throw new NoSuchElementException();
            }
            int i10 = this.f64189b;
            this.f64189b = i10 + 1;
            this.f64190c = i10;
            return this.f64188a.backing[this.f64190c];
        }

        @Override
        public int nextIndex() {
            return this.f64189b;
        }

        @Override
        public Object previous() {
            a();
            int i10 = this.f64189b;
            if (i10 <= 0) {
                throw new NoSuchElementException();
            }
            int i11 = i10 - 1;
            this.f64189b = i11;
            this.f64190c = i11;
            return this.f64188a.backing[this.f64190c];
        }

        @Override
        public int previousIndex() {
            return this.f64189b - 1;
        }

        @Override
        public void remove() {
            a();
            int i10 = this.f64190c;
            if (i10 == -1) {
                throw new IllegalStateException("Call next() or previous() before removing element from the iterator.");
            }
            this.f64188a.remove(i10);
            this.f64189b = this.f64190c;
            this.f64190c = -1;
            this.f64191d = ((AbstractList) this.f64188a).modCount;
        }

        @Override
        public void set(Object obj) {
            a();
            int i10 = this.f64190c;
            if (i10 == -1) {
                throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.");
            }
            this.f64188a.set(i10, obj);
        }
    }

    static {
        ListBuilder listBuilder = new ListBuilder(0);
        listBuilder.isReadOnly = true;
        Empty = listBuilder;
    }

    public ListBuilder() {
        this(0, 1, null);
    }

    public final void addAllInternal(int i10, Collection<? extends E> elements, int n10) {
        registerModification();
        insertAtInternal(i10, n10);
        Iterator<? extends E> it = elements.iterator();
        for (int i11 = 0; i11 < n10; i11++) {
            this.backing[i10 + i11] = it.next();
        }
    }

    public final void addAtInternal(int i10, E element) {
        registerModification();
        insertAtInternal(i10, 1);
        this.backing[i10] = element;
    }

    private final void checkIsMutable() {
        if (this.isReadOnly) {
            throw new UnsupportedOperationException();
        }
    }

    private final boolean contentEquals(List<?> other) {
        return ListBuilderKt.h(this.backing, 0, this.length, other);
    }

    private final void ensureCapacityInternal(int minCapacity) {
        if (minCapacity < 0) {
            throw new OutOfMemoryError();
        }
        E[] eArr = this.backing;
        if (minCapacity > eArr.length) {
            this.backing = (E[]) ListBuilderKt.e(this.backing, kotlin.collections.AbstractList.INSTANCE.e(eArr.length, minCapacity));
        }
    }

    private final void ensureExtraCapacity(int n10) {
        ensureCapacityInternal(this.length + n10);
    }

    private final void insertAtInternal(int i10, int n10) {
        ensureExtraCapacity(n10);
        E[] eArr = this.backing;
        ArraysKt.l(eArr, eArr, i10 + n10, i10, this.length);
        this.length += n10;
    }

    private final void registerModification() {
        ((AbstractList) this).modCount++;
    }

    public final E removeAtInternal(int i10) {
        registerModification();
        E[] eArr = this.backing;
        E e10 = eArr[i10];
        ArraysKt.l(eArr, eArr, i10, i10 + 1, this.length);
        ListBuilderKt.f(this.backing, this.length - 1);
        this.length--;
        return e10;
    }

    public final void removeRangeInternal(int rangeOffset, int rangeLength) {
        if (rangeLength > 0) {
            registerModification();
        }
        E[] eArr = this.backing;
        ArraysKt.l(eArr, eArr, rangeOffset, rangeOffset + rangeLength, this.length);
        E[] eArr2 = this.backing;
        int i10 = this.length;
        ListBuilderKt.g(eArr2, i10 - rangeLength, i10);
        this.length -= rangeLength;
    }

    public final int retainOrRemoveAllInternal(int rangeOffset, int rangeLength, Collection<? extends E> elements, boolean retain) {
        int i10 = 0;
        int i11 = 0;
        while (i10 < rangeLength) {
            int i12 = rangeOffset + i10;
            if (elements.contains(this.backing[i12]) == retain) {
                E[] eArr = this.backing;
                i10++;
                eArr[i11 + rangeOffset] = eArr[i12];
                i11++;
            } else {
                i10++;
            }
        }
        int i13 = rangeLength - i11;
        E[] eArr2 = this.backing;
        ArraysKt.l(eArr2, eArr2, rangeOffset + i11, rangeLength + rangeOffset, this.length);
        E[] eArr3 = this.backing;
        int i14 = this.length;
        ListBuilderKt.g(eArr3, i14 - i13, i14);
        if (i13 > 0) {
            registerModification();
        }
        this.length -= i13;
        return i13;
    }

    private final Object writeReplace() throws NotSerializableException {
        if (this.isReadOnly) {
            return new SerializedCollection(this, 0);
        }
        throw new NotSerializableException("The list cannot be serialized while it is being built.");
    }

    @Override
    public boolean add(E element) {
        checkIsMutable();
        addAtInternal(this.length, element);
        return true;
    }

    @Override
    public boolean addAll(Collection<? extends E> elements) {
        Intrinsics.h(elements, "elements");
        checkIsMutable();
        int size = elements.size();
        addAllInternal(this.length, elements, size);
        return size > 0;
    }

    public final List<E> build() {
        checkIsMutable();
        this.isReadOnly = true;
        return this.length > 0 ? this : Empty;
    }

    @Override
    public void clear() {
        checkIsMutable();
        removeRangeInternal(0, this.length);
    }

    @Override
    public boolean equals(Object other) {
        return other == this || ((other instanceof List) && contentEquals((List) other));
    }

    @Override
    public E get(int index) {
        kotlin.collections.AbstractList.INSTANCE.b(index, this.length);
        return this.backing[index];
    }

    @Override
    public int getSize() {
        return this.length;
    }

    @Override
    public int hashCode() {
        return ListBuilderKt.i(this.backing, 0, this.length);
    }

    @Override
    public int indexOf(Object element) {
        for (int i10 = 0; i10 < this.length; i10++) {
            if (Intrinsics.c(this.backing[i10], element)) {
                return i10;
            }
        }
        return -1;
    }

    @Override
    public boolean isEmpty() {
        return this.length == 0;
    }

    @Override
    public Iterator<E> iterator() {
        return listIterator(0);
    }

    @Override
    public int lastIndexOf(Object element) {
        for (int i10 = this.length - 1; i10 >= 0; i10--) {
            if (Intrinsics.c(this.backing[i10], element)) {
                return i10;
            }
        }
        return -1;
    }

    @Override
    public ListIterator<E> listIterator() {
        return listIterator(0);
    }

    @Override
    public boolean remove(Object element) {
        checkIsMutable();
        int iIndexOf = indexOf(element);
        if (iIndexOf >= 0) {
            remove(iIndexOf);
        }
        return iIndexOf >= 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean removeAll(Collection<?> elements) {
        Intrinsics.h(elements, "elements");
        checkIsMutable();
        return retainOrRemoveAllInternal(0, this.length, elements, false) > 0;
    }

    @Override
    public E removeAt(int index) {
        checkIsMutable();
        kotlin.collections.AbstractList.INSTANCE.b(index, this.length);
        return removeAtInternal(index);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean retainAll(Collection<?> elements) {
        Intrinsics.h(elements, "elements");
        checkIsMutable();
        return retainOrRemoveAllInternal(0, this.length, elements, true) > 0;
    }

    @Override
    public E set(int index, E element) {
        checkIsMutable();
        kotlin.collections.AbstractList.INSTANCE.b(index, this.length);
        E[] eArr = this.backing;
        E e10 = eArr[index];
        eArr[index] = element;
        return e10;
    }

    @Override
    public List<E> subList(int fromIndex, int toIndex) {
        kotlin.collections.AbstractList.INSTANCE.d(fromIndex, toIndex, this.length);
        return new BuilderSubList(this.backing, fromIndex, toIndex - fromIndex, null, this);
    }

    @Override
    public <T> T[] toArray(T[] array) {
        Intrinsics.h(array, "array");
        int length = array.length;
        int i10 = this.length;
        if (length >= i10) {
            ArraysKt.l(this.backing, array, 0, 0, i10);
            return (T[]) CollectionsKt.g(this.length, array);
        }
        T[] tArr = (T[]) Arrays.copyOfRange(this.backing, 0, i10, array.getClass());
        Intrinsics.g(tArr, "copyOfRange(...)");
        return tArr;
    }

    @Override
    public String toString() {
        return ListBuilderKt.j(this.backing, 0, this.length, this);
    }

    public ListBuilder(int i10) {
        this.backing = (E[]) ListBuilderKt.d(i10);
    }

    @Override
    public ListIterator<E> listIterator(int index) {
        kotlin.collections.AbstractList.INSTANCE.c(index, this.length);
        return new b(this, index);
    }

    @Override
    public void add(int index, E element) {
        checkIsMutable();
        kotlin.collections.AbstractList.INSTANCE.c(index, this.length);
        addAtInternal(index, element);
    }

    public ListBuilder(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 10 : i10);
    }

    @Override
    public boolean addAll(int index, Collection<? extends E> elements) {
        Intrinsics.h(elements, "elements");
        checkIsMutable();
        kotlin.collections.AbstractList.INSTANCE.c(index, this.length);
        int size = elements.size();
        addAllInternal(index, elements, size);
        return size > 0;
    }

    @Override
    public Object[] toArray() {
        return ArraysKt.r(this.backing, 0, this.length);
    }
}
