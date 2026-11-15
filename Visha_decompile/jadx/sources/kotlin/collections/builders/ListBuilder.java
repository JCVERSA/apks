package kotlin.collections.builders;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.rtsp.SessionDescription;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.dbdata.beans.media.PlayAudioData;
import defpackage.fi;
import defpackage.g3;
import defpackage.k3;
import defpackage.ol5;
import defpackage.qe5;
import defpackage.te5;
import defpackage.x71;
import defpackage.y45;
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
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u001e\n\u0002\b\u0016\n\u0002\u0010)\n\u0002\b\u0002\n\u0002\u0010+\n\u0002\b\u0012\n\u0002\u0010\u0011\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u000f\b\u0000\u0018\u0000 b*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u00060\u0003j\u0002`\u00042\b\u0012\u0004\u0012\u00028\u00000\u00052\u00060\u0006j\u0002`\u0007:\u0003cdeB\u0011\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0012\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0014\u0010\u000bJ\u0017\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0016\u0010\u000bJ\u001b\u0010\u001a\u001a\u00020\u00192\n\u0010\u0018\u001a\u0006\u0012\u0002\b\u00030\u0017H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u001f\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\bH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u001f\u0010 \u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\b2\u0006\u0010\u001f\u001a\u00028\u0000H\u0002¢\u0006\u0004\b \u0010!J-\u0010$\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\b2\f\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00000\"2\u0006\u0010\u0013\u001a\u00020\bH\u0002¢\u0006\u0004\b$\u0010%J\u0017\u0010&\u001a\u00028\u00002\u0006\u0010\u001c\u001a\u00020\bH\u0002¢\u0006\u0004\b&\u0010'J\u001f\u0010*\u001a\u00020\u000f2\u0006\u0010(\u001a\u00020\b2\u0006\u0010)\u001a\u00020\bH\u0002¢\u0006\u0004\b*\u0010\u001eJ5\u0010,\u001a\u00020\b2\u0006\u0010(\u001a\u00020\b2\u0006\u0010)\u001a\u00020\b2\f\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00000\"2\u0006\u0010+\u001a\u00020\u0019H\u0002¢\u0006\u0004\b,\u0010-J\u0013\u0010.\u001a\b\u0012\u0004\u0012\u00028\u00000\u0017¢\u0006\u0004\b.\u0010/J\u000f\u00100\u001a\u00020\u0019H\u0016¢\u0006\u0004\b0\u00101J\u0018\u00103\u001a\u00028\u00002\u0006\u00102\u001a\u00020\bH\u0096\u0002¢\u0006\u0004\b3\u0010'J \u00104\u001a\u00028\u00002\u0006\u00102\u001a\u00020\b2\u0006\u0010\u001f\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b4\u00105J\u0017\u00106\u001a\u00020\b2\u0006\u0010\u001f\u001a\u00028\u0000H\u0016¢\u0006\u0004\b6\u00107J\u0017\u00108\u001a\u00020\b2\u0006\u0010\u001f\u001a\u00028\u0000H\u0016¢\u0006\u0004\b8\u00107J\u0016\u0010:\u001a\b\u0012\u0004\u0012\u00028\u000009H\u0096\u0002¢\u0006\u0004\b:\u0010;J\u0015\u0010=\u001a\b\u0012\u0004\u0012\u00028\u00000<H\u0016¢\u0006\u0004\b=\u0010>J\u001d\u0010=\u001a\b\u0012\u0004\u0012\u00028\u00000<2\u0006\u00102\u001a\u00020\bH\u0016¢\u0006\u0004\b=\u0010?J\u0017\u0010@\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00028\u0000H\u0016¢\u0006\u0004\b@\u0010AJ\u001f\u0010@\u001a\u00020\u000f2\u0006\u00102\u001a\u00020\b2\u0006\u0010\u001f\u001a\u00028\u0000H\u0016¢\u0006\u0004\b@\u0010!J\u001d\u0010B\u001a\u00020\u00192\f\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00000\"H\u0016¢\u0006\u0004\bB\u0010CJ%\u0010B\u001a\u00020\u00192\u0006\u00102\u001a\u00020\b2\f\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00000\"H\u0016¢\u0006\u0004\bB\u0010DJ\u000f\u0010E\u001a\u00020\u000fH\u0016¢\u0006\u0004\bE\u0010\u0011J\u0017\u0010F\u001a\u00028\u00002\u0006\u00102\u001a\u00020\bH\u0016¢\u0006\u0004\bF\u0010'J\u0017\u0010G\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00028\u0000H\u0016¢\u0006\u0004\bG\u0010AJ\u001d\u0010H\u001a\u00020\u00192\f\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00000\"H\u0016¢\u0006\u0004\bH\u0010CJ\u001d\u0010I\u001a\u00020\u00192\f\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00000\"H\u0016¢\u0006\u0004\bI\u0010CJ%\u0010L\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010J\u001a\u00020\b2\u0006\u0010K\u001a\u00020\bH\u0016¢\u0006\u0004\bL\u0010MJ)\u0010Q\u001a\b\u0012\u0004\u0012\u00028\u00010O\"\u0004\b\u0001\u0010N2\f\u0010P\u001a\b\u0012\u0004\u0012\u00028\u00010OH\u0016¢\u0006\u0004\bQ\u0010RJ\u0017\u0010Q\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0OH\u0016¢\u0006\u0004\bQ\u0010SJ\u001a\u0010T\u001a\u00020\u00192\b\u0010\u0018\u001a\u0004\u0018\u00010\fH\u0096\u0002¢\u0006\u0004\bT\u0010AJ\u000f\u0010U\u001a\u00020\bH\u0016¢\u0006\u0004\bU\u0010VJ\u000f\u0010X\u001a\u00020WH\u0016¢\u0006\u0004\bX\u0010YR\u001c\u0010Z\u001a\b\u0012\u0004\u0012\u00028\u00000O8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010[R\u0016\u0010\\\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010]R\u0016\u0010^\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010_R\u0014\u0010a\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b`\u0010V¨\u0006f"}, d2 = {"Lkotlin/collections/builders/ListBuilder;", ExifInterface.LONGITUDE_EAST, "", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "Lk3;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "initialCapacity", MethodDecl.initName, "(I)V", "", "writeReplace", "()Ljava/lang/Object;", "Lzfb;", "registerModification", "()V", "checkIsMutable", "n", "ensureExtraCapacity", "minCapacity", "ensureCapacityInternal", "", "other", "", "contentEquals", "(Ljava/util/List;)Z", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "insertAtInternal", "(II)V", "element", "addAtInternal", "(ILjava/lang/Object;)V", "", "elements", "addAllInternal", "(ILjava/util/Collection;I)V", "removeAtInternal", "(I)Ljava/lang/Object;", "rangeOffset", "rangeLength", "removeRangeInternal", "retain", "retainOrRemoveAllInternal", "(IILjava/util/Collection;Z)I", "build", "()Ljava/util/List;", "isEmpty", "()Z", "index", "get", "set", "(ILjava/lang/Object;)Ljava/lang/Object;", "indexOf", "(Ljava/lang/Object;)I", "lastIndexOf", "", "iterator", "()Ljava/util/Iterator;", "", "listIterator", "()Ljava/util/ListIterator;", "(I)Ljava/util/ListIterator;", "add", "(Ljava/lang/Object;)Z", "addAll", "(Ljava/util/Collection;)Z", "(ILjava/util/Collection;)Z", "clear", "removeAt", "remove", "removeAll", "retainAll", "fromIndex", "toIndex", "subList", "(II)Ljava/util/List;", "T", "", "array", "toArray", "([Ljava/lang/Object;)[Ljava/lang/Object;", "()[Ljava/lang/Object;", "equals", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "backing", "[Ljava/lang/Object;", SessionDescription.ATTR_LENGTH, "I", "isReadOnly", "Z", "getSize", PlayAudioData.TAG_SIZE, "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "b", "BuilderSubList", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ListBuilder<E> extends k3 implements List<E>, RandomAccess, Serializable, te5 {
    private static final a Companion = new a(null);
    private static final ListBuilder Empty;
    private E[] backing;
    private boolean isReadOnly;
    private int length;

    @Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u001e\n\u0002\b\u0016\n\u0002\u0010)\n\u0002\b\u0002\n\u0002\u0010+\n\u0002\b\u0019\n\u0002\u0010\u000e\n\u0002\b\u000b\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u00022\u00060\u0003j\u0002`\u00042\b\u0012\u0004\u0012\u00028\u00010\u00052\u00060\u0006j\u0002`\u0007:\u0001aBC\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00010\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\n\u0012\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0000\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00010\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0018\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0019\u0010\u0017J\u001b\u0010\u001d\u001a\u00020\u001c2\n\u0010\u001b\u001a\u0006\u0012\u0002\b\u00030\u001aH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u001f\u0010!\u001a\u00020\u00152\u0006\u0010\u001f\u001a\u00020\n2\u0006\u0010 \u001a\u00028\u0001H\u0002¢\u0006\u0004\b!\u0010\"J-\u0010&\u001a\u00020\u00152\u0006\u0010\u001f\u001a\u00020\n2\f\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00010#2\u0006\u0010%\u001a\u00020\nH\u0002¢\u0006\u0004\b&\u0010'J\u0017\u0010(\u001a\u00028\u00012\u0006\u0010\u001f\u001a\u00020\nH\u0002¢\u0006\u0004\b(\u0010)J\u001f\u0010,\u001a\u00020\u00152\u0006\u0010*\u001a\u00020\n2\u0006\u0010+\u001a\u00020\nH\u0002¢\u0006\u0004\b,\u0010-J5\u0010/\u001a\u00020\n2\u0006\u0010*\u001a\u00020\n2\u0006\u0010+\u001a\u00020\n2\f\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00010#2\u0006\u0010.\u001a\u00020\u001cH\u0002¢\u0006\u0004\b/\u00100J\u000f\u00101\u001a\u00020\u001cH\u0016¢\u0006\u0004\b1\u00102J\u0018\u00104\u001a\u00028\u00012\u0006\u00103\u001a\u00020\nH\u0096\u0002¢\u0006\u0004\b4\u0010)J \u00105\u001a\u00028\u00012\u0006\u00103\u001a\u00020\n2\u0006\u0010 \u001a\u00028\u0001H\u0096\u0002¢\u0006\u0004\b5\u00106J\u0017\u00107\u001a\u00020\n2\u0006\u0010 \u001a\u00028\u0001H\u0016¢\u0006\u0004\b7\u00108J\u0017\u00109\u001a\u00020\n2\u0006\u0010 \u001a\u00028\u0001H\u0016¢\u0006\u0004\b9\u00108J\u0016\u0010;\u001a\b\u0012\u0004\u0012\u00028\u00010:H\u0096\u0002¢\u0006\u0004\b;\u0010<J\u0015\u0010>\u001a\b\u0012\u0004\u0012\u00028\u00010=H\u0016¢\u0006\u0004\b>\u0010?J\u001d\u0010>\u001a\b\u0012\u0004\u0012\u00028\u00010=2\u0006\u00103\u001a\u00020\nH\u0016¢\u0006\u0004\b>\u0010@J\u0017\u0010A\u001a\u00020\u001c2\u0006\u0010 \u001a\u00028\u0001H\u0016¢\u0006\u0004\bA\u0010BJ\u001f\u0010A\u001a\u00020\u00152\u0006\u00103\u001a\u00020\n2\u0006\u0010 \u001a\u00028\u0001H\u0016¢\u0006\u0004\bA\u0010\"J\u001d\u0010C\u001a\u00020\u001c2\f\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00010#H\u0016¢\u0006\u0004\bC\u0010DJ%\u0010C\u001a\u00020\u001c2\u0006\u00103\u001a\u00020\n2\f\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00010#H\u0016¢\u0006\u0004\bC\u0010EJ\u000f\u0010F\u001a\u00020\u0015H\u0016¢\u0006\u0004\bF\u0010\u0017J\u0017\u0010G\u001a\u00028\u00012\u0006\u00103\u001a\u00020\nH\u0016¢\u0006\u0004\bG\u0010)J\u0017\u0010H\u001a\u00020\u001c2\u0006\u0010 \u001a\u00028\u0001H\u0016¢\u0006\u0004\bH\u0010BJ\u001d\u0010I\u001a\u00020\u001c2\f\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00010#H\u0016¢\u0006\u0004\bI\u0010DJ\u001d\u0010J\u001a\u00020\u001c2\f\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00010#H\u0016¢\u0006\u0004\bJ\u0010DJ%\u0010M\u001a\b\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010K\u001a\u00020\n2\u0006\u0010L\u001a\u00020\nH\u0016¢\u0006\u0004\bM\u0010NJ)\u0010Q\u001a\b\u0012\u0004\u0012\u00028\u00020\b\"\u0004\b\u0002\u0010O2\f\u0010P\u001a\b\u0012\u0004\u0012\u00028\u00020\bH\u0016¢\u0006\u0004\bQ\u0010RJ\u0017\u0010Q\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\bH\u0016¢\u0006\u0004\bQ\u0010SJ\u001a\u0010T\u001a\u00020\u001c2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0012H\u0096\u0002¢\u0006\u0004\bT\u0010BJ\u000f\u0010U\u001a\u00020\nH\u0016¢\u0006\u0004\bU\u0010VJ\u000f\u0010X\u001a\u00020WH\u0016¢\u0006\u0004\bX\u0010YR\u001c\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010ZR\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010[R\u0016\u0010\f\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010[R\u001c\u0010\r\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\\R\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00010\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010]R\u0014\u0010^\u001a\u00020\u001c8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b^\u00102R\u0014\u0010`\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b_\u0010V¨\u0006b"}, d2 = {"Lkotlin/collections/builders/ListBuilder$BuilderSubList;", ExifInterface.LONGITUDE_EAST, "", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "Lk3;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "backing", "", TypedValues.CycleType.S_WAVE_OFFSET, SessionDescription.ATTR_LENGTH, "parent", "Lkotlin/collections/builders/ListBuilder;", "root", MethodDecl.initName, "([Ljava/lang/Object;IILkotlin/collections/builders/ListBuilder$BuilderSubList;Lkotlin/collections/builders/ListBuilder;)V", "", "writeReplace", "()Ljava/lang/Object;", "Lzfb;", "registerModification", "()V", "checkForComodification", "checkIsMutable", "", "other", "", "contentEquals", "(Ljava/util/List;)Z", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "element", "addAtInternal", "(ILjava/lang/Object;)V", "", "elements", "n", "addAllInternal", "(ILjava/util/Collection;I)V", "removeAtInternal", "(I)Ljava/lang/Object;", "rangeOffset", "rangeLength", "removeRangeInternal", "(II)V", "retain", "retainOrRemoveAllInternal", "(IILjava/util/Collection;Z)I", "isEmpty", "()Z", "index", "get", "set", "(ILjava/lang/Object;)Ljava/lang/Object;", "indexOf", "(Ljava/lang/Object;)I", "lastIndexOf", "", "iterator", "()Ljava/util/Iterator;", "", "listIterator", "()Ljava/util/ListIterator;", "(I)Ljava/util/ListIterator;", "add", "(Ljava/lang/Object;)Z", "addAll", "(Ljava/util/Collection;)Z", "(ILjava/util/Collection;)Z", "clear", "removeAt", "remove", "removeAll", "retainAll", "fromIndex", "toIndex", "subList", "(II)Ljava/util/List;", "T", "array", "toArray", "([Ljava/lang/Object;)[Ljava/lang/Object;", "()[Ljava/lang/Object;", "equals", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "[Ljava/lang/Object;", "I", "Lkotlin/collections/builders/ListBuilder$BuilderSubList;", "Lkotlin/collections/builders/ListBuilder;", "isReadOnly", "getSize", PlayAudioData.TAG_SIZE, CmcdData.OBJECT_TYPE_AUDIO_ONLY, "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class BuilderSubList<E> extends k3 implements List<E>, RandomAccess, Serializable, te5 {
        private E[] backing;
        private int length;
        private final int offset;
        private final BuilderSubList<E> parent;
        private final ListBuilder<E> root;

        public static final class a implements ListIterator, qe5 {
            public final BuilderSubList b;
            public int c;
            public int d;
            public int e;

            public a(BuilderSubList builderSubList, int i) {
                y45.j(builderSubList, "list");
                this.b = builderSubList;
                this.c = i;
                this.d = -1;
                this.e = ((AbstractList) builderSubList).modCount;
            }

            @Override
            public void add(Object obj) {
                b();
                BuilderSubList builderSubList = this.b;
                int i = this.c;
                this.c = i + 1;
                builderSubList.add(i, obj);
                this.d = -1;
                this.e = ((AbstractList) this.b).modCount;
            }

            public final void b() {
                if (((AbstractList) this.b.root).modCount != this.e) {
                    throw new ConcurrentModificationException();
                }
            }

            @Override
            public boolean hasNext() {
                return this.c < this.b.length;
            }

            @Override
            public boolean hasPrevious() {
                return this.c > 0;
            }

            @Override
            public Object next() {
                b();
                if (this.c >= this.b.length) {
                    throw new NoSuchElementException();
                }
                int i = this.c;
                this.c = i + 1;
                this.d = i;
                return this.b.backing[this.b.offset + this.d];
            }

            @Override
            public int nextIndex() {
                return this.c;
            }

            @Override
            public Object previous() {
                b();
                int i = this.c;
                if (i <= 0) {
                    throw new NoSuchElementException();
                }
                int i2 = i - 1;
                this.c = i2;
                this.d = i2;
                return this.b.backing[this.b.offset + this.d];
            }

            @Override
            public int previousIndex() {
                return this.c - 1;
            }

            @Override
            public void remove() {
                b();
                int i = this.d;
                if (i == -1) {
                    throw new IllegalStateException("Call next() or previous() before removing element from the iterator.");
                }
                this.b.remove(i);
                this.c = this.d;
                this.d = -1;
                this.e = ((AbstractList) this.b).modCount;
            }

            @Override
            public void set(Object obj) {
                b();
                int i = this.d;
                if (i == -1) {
                    throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.");
                }
                this.b.set(i, obj);
            }
        }

        public BuilderSubList(E[] eArr, int i, int i2, BuilderSubList<E> builderSubList, ListBuilder<E> listBuilder) {
            y45.j(eArr, "backing");
            y45.j(listBuilder, "root");
            this.backing = eArr;
            this.offset = i;
            this.length = i2;
            this.parent = builderSubList;
            this.root = listBuilder;
            ((AbstractList) this).modCount = ((AbstractList) listBuilder).modCount;
        }

        private final void addAllInternal(int i, Collection<? extends E> elements, int n) {
            registerModification();
            BuilderSubList<E> builderSubList = this.parent;
            if (builderSubList != null) {
                builderSubList.addAllInternal(i, elements, n);
            } else {
                this.root.addAllInternal(i, elements, n);
            }
            this.backing = (E[]) ((ListBuilder) this.root).backing;
            this.length += n;
        }

        private final void addAtInternal(int i, E element) {
            registerModification();
            BuilderSubList<E> builderSubList = this.parent;
            if (builderSubList != null) {
                builderSubList.addAtInternal(i, element);
            } else {
                this.root.addAtInternal(i, element);
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
            return ol5.h(this.backing, this.offset, this.length, other);
        }

        private final boolean isReadOnly() {
            return ((ListBuilder) this.root).isReadOnly;
        }

        private final void registerModification() {
            ((AbstractList) this).modCount++;
        }

        private final E removeAtInternal(int i) {
            registerModification();
            BuilderSubList<E> builderSubList = this.parent;
            E eRemoveAtInternal = builderSubList != null ? builderSubList.removeAtInternal(i) : (E) this.root.removeAtInternal(i);
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
            y45.j(elements, "elements");
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
            g3.Companion.b(index, this.length);
            return this.backing[this.offset + index];
        }

        @Override
        public int getLength() {
            checkForComodification();
            return this.length;
        }

        @Override
        public int hashCode() {
            checkForComodification();
            return ol5.i(this.backing, this.offset, this.length);
        }

        @Override
        public int indexOf(Object element) {
            checkForComodification();
            for (int i = 0; i < this.length; i++) {
                if (y45.e(this.backing[this.offset + i], element)) {
                    return i;
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
            for (int i = this.length - 1; i >= 0; i--) {
                if (y45.e(this.backing[this.offset + i], element)) {
                    return i;
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
        public boolean removeAll(Collection<? extends Object> elements) {
            y45.j(elements, "elements");
            checkIsMutable();
            checkForComodification();
            return retainOrRemoveAllInternal(this.offset, this.length, elements, false) > 0;
        }

        @Override
        public E removeAt(int index) {
            checkIsMutable();
            checkForComodification();
            g3.Companion.b(index, this.length);
            return removeAtInternal(this.offset + index);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean retainAll(Collection<? extends Object> elements) {
            y45.j(elements, "elements");
            checkIsMutable();
            checkForComodification();
            return retainOrRemoveAllInternal(this.offset, this.length, elements, true) > 0;
        }

        @Override
        public E set(int index, E element) {
            checkIsMutable();
            checkForComodification();
            g3.Companion.b(index, this.length);
            E[] eArr = this.backing;
            int i = this.offset;
            E e = eArr[i + index];
            eArr[i + index] = element;
            return e;
        }

        @Override
        public List<E> subList(int fromIndex, int toIndex) {
            g3.Companion.d(fromIndex, toIndex, this.length);
            return new BuilderSubList(this.backing, this.offset + fromIndex, toIndex - fromIndex, this, this.root);
        }

        @Override
        public <T> T[] toArray(T[] array) {
            y45.j(array, "array");
            checkForComodification();
            int length = array.length;
            int i = this.length;
            if (length >= i) {
                E[] eArr = this.backing;
                int i2 = this.offset;
                fi.l(eArr, array, 0, i2, i + i2);
                return (T[]) x71.f(this.length, array);
            }
            E[] eArr2 = this.backing;
            int i3 = this.offset;
            T[] tArr = (T[]) Arrays.copyOfRange(eArr2, i3, i + i3, array.getClass());
            y45.i(tArr, "copyOfRange(...)");
            return tArr;
        }

        @Override
        public String toString() {
            checkForComodification();
            return ol5.j(this.backing, this.offset, this.length, this);
        }

        @Override
        public ListIterator<E> listIterator(int index) {
            checkForComodification();
            g3.Companion.c(index, this.length);
            return new a(this, index);
        }

        @Override
        public void add(int index, E element) {
            checkIsMutable();
            checkForComodification();
            g3.Companion.c(index, this.length);
            addAtInternal(this.offset + index, element);
        }

        @Override
        public boolean addAll(int index, Collection<? extends E> elements) {
            y45.j(elements, "elements");
            checkIsMutable();
            checkForComodification();
            g3.Companion.c(index, this.length);
            int size = elements.size();
            addAllInternal(this.offset + index, elements, size);
            return size > 0;
        }

        @Override
        public Object[] toArray() {
            checkForComodification();
            E[] eArr = this.backing;
            int i = this.offset;
            return fi.s(eArr, i, this.length + i);
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public static final class b implements ListIterator, qe5 {
        public final ListBuilder b;
        public int c;
        public int d;
        public int e;

        public b(ListBuilder listBuilder, int i) {
            y45.j(listBuilder, "list");
            this.b = listBuilder;
            this.c = i;
            this.d = -1;
            this.e = ((AbstractList) listBuilder).modCount;
        }

        private final void b() {
            if (((AbstractList) this.b).modCount != this.e) {
                throw new ConcurrentModificationException();
            }
        }

        @Override
        public void add(Object obj) {
            b();
            ListBuilder listBuilder = this.b;
            int i = this.c;
            this.c = i + 1;
            listBuilder.add(i, obj);
            this.d = -1;
            this.e = ((AbstractList) this.b).modCount;
        }

        @Override
        public boolean hasNext() {
            return this.c < this.b.length;
        }

        @Override
        public boolean hasPrevious() {
            return this.c > 0;
        }

        @Override
        public Object next() {
            b();
            if (this.c >= this.b.length) {
                throw new NoSuchElementException();
            }
            int i = this.c;
            this.c = i + 1;
            this.d = i;
            return this.b.backing[this.d];
        }

        @Override
        public int nextIndex() {
            return this.c;
        }

        @Override
        public Object previous() {
            b();
            int i = this.c;
            if (i <= 0) {
                throw new NoSuchElementException();
            }
            int i2 = i - 1;
            this.c = i2;
            this.d = i2;
            return this.b.backing[this.d];
        }

        @Override
        public int previousIndex() {
            return this.c - 1;
        }

        @Override
        public void remove() {
            b();
            int i = this.d;
            if (i == -1) {
                throw new IllegalStateException("Call next() or previous() before removing element from the iterator.");
            }
            this.b.remove(i);
            this.c = this.d;
            this.d = -1;
            this.e = ((AbstractList) this.b).modCount;
        }

        @Override
        public void set(Object obj) {
            b();
            int i = this.d;
            if (i == -1) {
                throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.");
            }
            this.b.set(i, obj);
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

    public final void addAllInternal(int i, Collection<? extends E> elements, int n) {
        registerModification();
        insertAtInternal(i, n);
        Iterator<? extends E> it = elements.iterator();
        for (int i2 = 0; i2 < n; i2++) {
            this.backing[i + i2] = it.next();
        }
    }

    public final void addAtInternal(int i, E element) {
        registerModification();
        insertAtInternal(i, 1);
        this.backing[i] = element;
    }

    private final void checkIsMutable() {
        if (this.isReadOnly) {
            throw new UnsupportedOperationException();
        }
    }

    private final boolean contentEquals(List<?> other) {
        return ol5.h(this.backing, 0, this.length, other);
    }

    private final void ensureCapacityInternal(int minCapacity) {
        if (minCapacity < 0) {
            throw new OutOfMemoryError();
        }
        E[] eArr = this.backing;
        if (minCapacity > eArr.length) {
            this.backing = (E[]) ol5.e(this.backing, g3.Companion.e(eArr.length, minCapacity));
        }
    }

    private final void ensureExtraCapacity(int n) {
        ensureCapacityInternal(this.length + n);
    }

    private final void insertAtInternal(int i, int n) {
        ensureExtraCapacity(n);
        E[] eArr = this.backing;
        fi.l(eArr, eArr, i + n, i, this.length);
        this.length += n;
    }

    private final void registerModification() {
        ((AbstractList) this).modCount++;
    }

    public final E removeAtInternal(int i) {
        registerModification();
        E[] eArr = this.backing;
        E e = eArr[i];
        fi.l(eArr, eArr, i, i + 1, this.length);
        ol5.f(this.backing, this.length - 1);
        this.length--;
        return e;
    }

    public final void removeRangeInternal(int rangeOffset, int rangeLength) {
        if (rangeLength > 0) {
            registerModification();
        }
        E[] eArr = this.backing;
        fi.l(eArr, eArr, rangeOffset, rangeOffset + rangeLength, this.length);
        E[] eArr2 = this.backing;
        int i = this.length;
        ol5.g(eArr2, i - rangeLength, i);
        this.length -= rangeLength;
    }

    public final int retainOrRemoveAllInternal(int rangeOffset, int rangeLength, Collection<? extends E> elements, boolean retain) {
        int i = 0;
        int i2 = 0;
        while (i < rangeLength) {
            int i3 = rangeOffset + i;
            if (elements.contains(this.backing[i3]) == retain) {
                E[] eArr = this.backing;
                i++;
                eArr[i2 + rangeOffset] = eArr[i3];
                i2++;
            } else {
                i++;
            }
        }
        int i4 = rangeLength - i2;
        E[] eArr2 = this.backing;
        fi.l(eArr2, eArr2, rangeOffset + i2, rangeLength + rangeOffset, this.length);
        E[] eArr3 = this.backing;
        int i5 = this.length;
        ol5.g(eArr3, i5 - i4, i5);
        if (i4 > 0) {
            registerModification();
        }
        this.length -= i4;
        return i4;
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
        y45.j(elements, "elements");
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
        g3.Companion.b(index, this.length);
        return this.backing[index];
    }

    @Override
    public int getLength() {
        return this.length;
    }

    @Override
    public int hashCode() {
        return ol5.i(this.backing, 0, this.length);
    }

    @Override
    public int indexOf(Object element) {
        for (int i = 0; i < this.length; i++) {
            if (y45.e(this.backing[i], element)) {
                return i;
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
        for (int i = this.length - 1; i >= 0; i--) {
            if (y45.e(this.backing[i], element)) {
                return i;
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
    public boolean removeAll(Collection<? extends Object> elements) {
        y45.j(elements, "elements");
        checkIsMutable();
        return retainOrRemoveAllInternal(0, this.length, elements, false) > 0;
    }

    @Override
    public E removeAt(int index) {
        checkIsMutable();
        g3.Companion.b(index, this.length);
        return removeAtInternal(index);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean retainAll(Collection<? extends Object> elements) {
        y45.j(elements, "elements");
        checkIsMutable();
        return retainOrRemoveAllInternal(0, this.length, elements, true) > 0;
    }

    @Override
    public E set(int index, E element) {
        checkIsMutable();
        g3.Companion.b(index, this.length);
        E[] eArr = this.backing;
        E e = eArr[index];
        eArr[index] = element;
        return e;
    }

    @Override
    public List<E> subList(int fromIndex, int toIndex) {
        g3.Companion.d(fromIndex, toIndex, this.length);
        return new BuilderSubList(this.backing, fromIndex, toIndex - fromIndex, null, this);
    }

    @Override
    public <T> T[] toArray(T[] array) {
        y45.j(array, "array");
        int length = array.length;
        int i = this.length;
        if (length >= i) {
            fi.l(this.backing, array, 0, 0, i);
            return (T[]) x71.f(this.length, array);
        }
        T[] tArr = (T[]) Arrays.copyOfRange(this.backing, 0, i, array.getClass());
        y45.i(tArr, "copyOfRange(...)");
        return tArr;
    }

    @Override
    public String toString() {
        return ol5.j(this.backing, 0, this.length, this);
    }

    public ListBuilder(int i) {
        this.backing = (E[]) ol5.d(i);
    }

    @Override
    public ListIterator<E> listIterator(int index) {
        g3.Companion.c(index, this.length);
        return new b(this, index);
    }

    @Override
    public void add(int index, E element) {
        checkIsMutable();
        g3.Companion.c(index, this.length);
        addAtInternal(index, element);
    }

    public ListBuilder(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 10 : i);
    }

    @Override
    public boolean addAll(int index, Collection<? extends E> elements) {
        y45.j(elements, "elements");
        checkIsMutable();
        g3.Companion.c(index, this.length);
        int size = elements.size();
        addAllInternal(index, elements, size);
        return size > 0;
    }

    @Override
    public Object[] toArray() {
        return fi.s(this.backing, 0, this.length);
    }
}
