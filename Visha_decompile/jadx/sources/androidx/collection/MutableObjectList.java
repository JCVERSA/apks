package androidx.collection;

import androidx.annotation.IntRange;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.dbdata.beans.media.PlayAudioData;
import defpackage.e74;
import defpackage.fi;
import defpackage.hi;
import defpackage.i81;
import defpackage.pc9;
import defpackage.qe5;
import defpackage.r71;
import defpackage.te5;
import defpackage.u15;
import defpackage.wn8;
import defpackage.y45;
import defpackage.y71;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0003GHIB\u0011\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00028\u0000¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\t\u001a\u00020\f2\b\b\u0001\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00028\u0000¢\u0006\u0004\b\t\u0010\rJ%\u0010\u0010\u001a\u00020\b2\b\b\u0001\u0010\u000b\u001a\u00020\u00032\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000e¢\u0006\u0004\b\u0010\u0010\u0011J%\u0010\u0010\u001a\u00020\b2\b\b\u0001\u0010\u000b\u001a\u00020\u00032\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0012¢\u0006\u0004\b\u0010\u0010\u0013J%\u0010\u0010\u001a\u00020\b2\b\b\u0001\u0010\u000b\u001a\u00020\u00032\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002¢\u0006\u0004\b\u0010\u0010\u0014J\u001b\u0010\u0010\u001a\u00020\b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002¢\u0006\u0004\b\u0010\u0010\u0015J\u001b\u0010\u0010\u001a\u00020\b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016¢\u0006\u0004\b\u0010\u0010\u0017J\u001b\u0010\u0010\u001a\u00020\b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000e¢\u0006\u0004\b\u0010\u0010\u0018J\u001b\u0010\u0010\u001a\u00020\b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0019¢\u0006\u0004\b\u0010\u0010\u001aJ\u001b\u0010\u0010\u001a\u00020\b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u001b¢\u0006\u0004\b\u0010\u0010\u001cJ\u001b\u0010\u0010\u001a\u00020\b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u001d¢\u0006\u0004\b\u0010\u0010\u001eJ\u001e\u0010\u001f\u001a\u00020\f2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0086\u0002¢\u0006\u0004\b\u001f\u0010 J\u001e\u0010\u001f\u001a\u00020\f2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016H\u0086\u0002¢\u0006\u0004\b\u001f\u0010!J\u001e\u0010\u001f\u001a\u00020\f2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000eH\u0086\u0002¢\u0006\u0004\b\u001f\u0010\"J\u001e\u0010\u001f\u001a\u00020\f2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0019H\u0086\u0002¢\u0006\u0004\b\u001f\u0010#J\u001e\u0010\u001f\u001a\u00020\f2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u001bH\u0086\u0002¢\u0006\u0004\b\u001f\u0010$J\u001e\u0010\u001f\u001a\u00020\f2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u001dH\u0086\u0002¢\u0006\u0004\b\u001f\u0010%J\r\u0010&\u001a\u00020\f¢\u0006\u0004\b&\u0010'J\u0017\u0010)\u001a\u00020\f2\b\b\u0002\u0010(\u001a\u00020\u0003¢\u0006\u0004\b)\u0010\u0006J\u0015\u0010+\u001a\u00020\f2\u0006\u0010*\u001a\u00020\u0003¢\u0006\u0004\b+\u0010\u0006J\u0018\u0010\u001f\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00028\u0000H\u0086\n¢\u0006\u0004\b\u001f\u0010,J\u0018\u0010-\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00028\u0000H\u0086\n¢\u0006\u0004\b-\u0010,J\u0015\u0010.\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00028\u0000¢\u0006\u0004\b.\u0010\nJ'\u00101\u001a\u00020\f2\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\b0/H\u0086\bø\u0001\u0000¢\u0006\u0004\b1\u00102J\u001b\u00103\u001a\u00020\b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000e¢\u0006\u0004\b3\u0010\u0018J\u001b\u00103\u001a\u00020\b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002¢\u0006\u0004\b3\u0010\u0015J\u001b\u00103\u001a\u00020\b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016¢\u0006\u0004\b3\u0010\u0017J\u001b\u00103\u001a\u00020\b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0019¢\u0006\u0004\b3\u0010\u001aJ\u001b\u00103\u001a\u00020\b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u001b¢\u0006\u0004\b3\u0010\u001cJ\u001b\u00103\u001a\u00020\b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u001d¢\u0006\u0004\b3\u0010\u001eJ\u001e\u0010-\u001a\u00020\f2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000eH\u0086\u0002¢\u0006\u0004\b-\u0010\"J\u001e\u0010-\u001a\u00020\f2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0086\u0002¢\u0006\u0004\b-\u0010 J\u001e\u0010-\u001a\u00020\f2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016H\u0086\u0002¢\u0006\u0004\b-\u0010!J\u001e\u0010-\u001a\u00020\f2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0019H\u0086\u0002¢\u0006\u0004\b-\u0010#J\u001e\u0010-\u001a\u00020\f2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u001bH\u0086\u0002¢\u0006\u0004\b-\u0010$J\u001e\u0010-\u001a\u00020\f2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u001dH\u0086\u0002¢\u0006\u0004\b-\u0010%J\u0017\u00104\u001a\u00028\u00002\b\b\u0001\u0010\u000b\u001a\u00020\u0003¢\u0006\u0004\b4\u00105J!\u00108\u001a\u00020\f2\b\b\u0001\u00106\u001a\u00020\u00032\b\b\u0001\u00107\u001a\u00020\u0003¢\u0006\u0004\b8\u00109J\u001b\u0010:\u001a\u00020\b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000e¢\u0006\u0004\b:\u0010\u0018J\u001b\u0010:\u001a\u00020\b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002¢\u0006\u0004\b:\u0010\u0015J\u001b\u0010:\u001a\u00020\b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0012¢\u0006\u0004\b:\u0010;J\u001b\u0010:\u001a\u00020\b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u001b¢\u0006\u0004\b:\u0010\u001cJ\u001b\u0010:\u001a\u00020\b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u001d¢\u0006\u0004\b:\u0010\u001eJ\"\u0010<\u001a\u00028\u00002\b\b\u0001\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00028\u0000H\u0086\u0002¢\u0006\u0004\b<\u0010=J\u0015\u0010>\u001a\b\u0012\u0004\u0012\u00028\u00000\u0019H\u0016¢\u0006\u0004\b>\u0010?J\u0013\u0010A\u001a\b\u0012\u0004\u0012\u00028\u00000@¢\u0006\u0004\bA\u0010?R\u001e\u0010C\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010B8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u0012\u0010*\u001a\u00020\u00038Æ\u0002¢\u0006\u0006\u001a\u0004\bE\u0010F\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006J"}, d2 = {"Landroidx/collection/MutableObjectList;", ExifInterface.LONGITUDE_EAST, "Landroidx/collection/ObjectList;", "", "initialCapacity", MethodDecl.initName, "(I)V", "element", "", "add", "(Ljava/lang/Object;)Z", "index", "Lzfb;", "(ILjava/lang/Object;)V", "", "elements", "addAll", "(I[Ljava/lang/Object;)Z", "", "(ILjava/util/Collection;)Z", "(ILandroidx/collection/ObjectList;)Z", "(Landroidx/collection/ObjectList;)Z", "Landroidx/collection/ScatterSet;", "(Landroidx/collection/ScatterSet;)Z", "([Ljava/lang/Object;)Z", "", "(Ljava/util/List;)Z", "", "(Ljava/lang/Iterable;)Z", "Lpc9;", "(Lpc9;)Z", "plusAssign", "(Landroidx/collection/ObjectList;)V", "(Landroidx/collection/ScatterSet;)V", "([Ljava/lang/Object;)V", "(Ljava/util/List;)V", "(Ljava/lang/Iterable;)V", "(Lpc9;)V", "clear", "()V", "minCapacity", "trim", "capacity", "ensureCapacity", "(Ljava/lang/Object;)V", "minusAssign", "remove", "Lkotlin/Function1;", "predicate", "removeIf", "(Le74;)V", "removeAll", "removeAt", "(I)Ljava/lang/Object;", TtmlNode.START, TtmlNode.END, "removeRange", "(II)V", "retainAll", "(Ljava/util/Collection;)Z", "set", "(ILjava/lang/Object;)Ljava/lang/Object;", "asList", "()Ljava/util/List;", "", "asMutableList", "Landroidx/collection/MutableObjectList$ObjectListMutableList;", "list", "Landroidx/collection/MutableObjectList$ObjectListMutableList;", "getCapacity", "()I", "MutableObjectListIterator", "ObjectListMutableList", "SubList", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class MutableObjectList<E> extends ObjectList<E> {
    private ObjectListMutableList<E> list;

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010+\n\u0002\u0010!\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u0002B\u001d\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\n\u001a\u00020\tH\u0096\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00028\u0001H\u0096\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0011\u0010\u000bJ\u000f\u0010\u0012\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u0014\u0010\rJ\u000f\u0010\u0015\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0015\u0010\u0013J\u0017\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u0019\u0010\u0018R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u001aR\u0016\u0010\u001b\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006\u001d"}, d2 = {"Landroidx/collection/MutableObjectList$MutableObjectListIterator;", "T", "", "", "list", "", "index", MethodDecl.initName, "(Ljava/util/List;I)V", "", "hasNext", "()Z", ES6Iterator.NEXT_METHOD, "()Ljava/lang/Object;", "Lzfb;", "remove", "()V", "hasPrevious", "nextIndex", "()I", "previous", "previousIndex", "element", "add", "(Ljava/lang/Object;)V", "set", "Ljava/util/List;", "prevIndex", "I", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class MutableObjectListIterator<T> implements ListIterator<T>, qe5 {
        private final List<T> list;
        private int prevIndex;

        public MutableObjectListIterator(List<T> list, int i) {
            y45.j(list, "list");
            this.list = list;
            this.prevIndex = i - 1;
        }

        @Override
        public void add(T element) {
            List<T> list = this.list;
            int i = this.prevIndex + 1;
            this.prevIndex = i;
            list.add(i, element);
        }

        @Override
        public boolean hasNext() {
            return this.prevIndex < this.list.size() - 1;
        }

        @Override
        public boolean hasPrevious() {
            return this.prevIndex >= 0;
        }

        @Override
        public T next() {
            List<T> list = this.list;
            int i = this.prevIndex + 1;
            this.prevIndex = i;
            return list.get(i);
        }

        @Override
        public int nextIndex() {
            return this.prevIndex + 1;
        }

        @Override
        public T previous() {
            List<T> list = this.list;
            int i = this.prevIndex;
            this.prevIndex = i - 1;
            return list.get(i);
        }

        @Override
        public int previousIndex() {
            return this.prevIndex;
        }

        @Override
        public void remove() {
            this.list.remove(this.prevIndex);
            this.prevIndex--;
        }

        @Override
        public void set(T element) {
            this.list.set(this.prevIndex, element);
        }
    }

    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010)\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010+\n\u0002\b\u0012\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u0002B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00028\u0001H\u0096\u0002¢\u0006\u0004\b\t\u0010\nJ\u001d\u0010\r\u001a\u00020\b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00010\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0018\u0010\u0011\u001a\u00028\u00012\u0006\u0010\u0010\u001a\u00020\u000fH\u0096\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0016\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00010\u0017H\u0096\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u001a\u0010\u0014J\u0017\u0010\u001b\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u001b\u0010\nJ\u001f\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u001b\u0010\u001dJ%\u0010\u001e\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000f2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00010\u000bH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u001d\u0010\u001e\u001a\u00020\b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00010\u000bH\u0016¢\u0006\u0004\b\u001e\u0010\u000eJ\u000f\u0010 \u001a\u00020\u001cH\u0016¢\u0006\u0004\b \u0010!J\u0015\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00010\"H\u0016¢\u0006\u0004\b#\u0010$J\u001d\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00010\"2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b#\u0010%J\u0017\u0010&\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00028\u0001H\u0016¢\u0006\u0004\b&\u0010\nJ\u001d\u0010'\u001a\u00020\b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00010\u000bH\u0016¢\u0006\u0004\b'\u0010\u000eJ\u0017\u0010(\u001a\u00028\u00012\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b(\u0010\u0012J\u001d\u0010)\u001a\u00020\b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00010\u000bH\u0016¢\u0006\u0004\b)\u0010\u000eJ \u0010*\u001a\u00028\u00012\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00028\u0001H\u0096\u0002¢\u0006\u0004\b*\u0010+J%\u0010.\u001a\b\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010,\u001a\u00020\u000f2\u0006\u0010-\u001a\u00020\u000fH\u0016¢\u0006\u0004\b.\u0010/R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u00100R\u0014\u00103\u001a\u00020\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b1\u00102¨\u00064"}, d2 = {"Landroidx/collection/MutableObjectList$ObjectListMutableList;", "T", "", "Landroidx/collection/MutableObjectList;", "objectList", MethodDecl.initName, "(Landroidx/collection/MutableObjectList;)V", "element", "", "contains", "(Ljava/lang/Object;)Z", "", "elements", "containsAll", "(Ljava/util/Collection;)Z", "", "index", "get", "(I)Ljava/lang/Object;", "indexOf", "(Ljava/lang/Object;)I", "isEmpty", "()Z", "", "iterator", "()Ljava/util/Iterator;", "lastIndexOf", "add", "Lzfb;", "(ILjava/lang/Object;)V", "addAll", "(ILjava/util/Collection;)Z", "clear", "()V", "", "listIterator", "()Ljava/util/ListIterator;", "(I)Ljava/util/ListIterator;", "remove", "removeAll", "removeAt", "retainAll", "set", "(ILjava/lang/Object;)Ljava/lang/Object;", "fromIndex", "toIndex", "subList", "(II)Ljava/util/List;", "Landroidx/collection/MutableObjectList;", "getSize", "()I", PlayAudioData.TAG_SIZE, "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class ObjectListMutableList<T> implements List<T>, te5 {
        private final MutableObjectList<T> objectList;

        public ObjectListMutableList(MutableObjectList<T> mutableObjectList) {
            y45.j(mutableObjectList, "objectList");
            this.objectList = mutableObjectList;
        }

        @Override
        public boolean add(T element) {
            return this.objectList.add(element);
        }

        @Override
        public boolean addAll(int index, Collection<? extends T> elements) {
            y45.j(elements, "elements");
            return this.objectList.addAll(index, elements);
        }

        @Override
        public void clear() {
            this.objectList.clear();
        }

        @Override
        public boolean contains(Object element) {
            return this.objectList.contains(element);
        }

        @Override
        public boolean containsAll(Collection<? extends Object> elements) {
            y45.j(elements, "elements");
            return this.objectList.containsAll(elements);
        }

        @Override
        public T get(int index) {
            ObjectListKt.checkIndex(this, index);
            return this.objectList.get(index);
        }

        public int getSize() {
            return this.objectList.getSize();
        }

        @Override
        public int indexOf(Object element) {
            return this.objectList.indexOf(element);
        }

        @Override
        public boolean isEmpty() {
            return this.objectList.isEmpty();
        }

        @Override
        public Iterator<T> iterator() {
            return new MutableObjectListIterator(this, 0);
        }

        @Override
        public int lastIndexOf(Object element) {
            return this.objectList.lastIndexOf(element);
        }

        @Override
        public ListIterator<T> listIterator() {
            return new MutableObjectListIterator(this, 0);
        }

        @Override
        public final T remove(int i) {
            return removeAt(i);
        }

        @Override
        public boolean removeAll(Collection<? extends Object> elements) {
            y45.j(elements, "elements");
            return this.objectList.removeAll(elements);
        }

        public T removeAt(int index) {
            ObjectListKt.checkIndex(this, index);
            return this.objectList.removeAt(index);
        }

        @Override
        public boolean retainAll(Collection<? extends Object> elements) {
            y45.j(elements, "elements");
            return this.objectList.retainAll((Collection<? extends T>) elements);
        }

        @Override
        public T set(int index, T element) {
            ObjectListKt.checkIndex(this, index);
            return this.objectList.set(index, element);
        }

        @Override
        public final int size() {
            return getSize();
        }

        @Override
        public List<T> subList(int fromIndex, int toIndex) {
            ObjectListKt.checkSubIndex(this, fromIndex, toIndex);
            return new SubList(this, fromIndex, toIndex);
        }

        @Override
        public Object[] toArray() {
            return r71.a(this);
        }

        @Override
        public void add(int index, T element) {
            this.objectList.add(index, element);
        }

        @Override
        public boolean addAll(Collection<? extends T> elements) {
            y45.j(elements, "elements");
            return this.objectList.addAll(elements);
        }

        @Override
        public ListIterator<T> listIterator(int index) {
            return new MutableObjectListIterator(this, index);
        }

        @Override
        public boolean remove(Object element) {
            return this.objectList.remove(element);
        }

        @Override
        public <T> T[] toArray(T[] tArr) {
            y45.j(tArr, "array");
            return (T[]) r71.b(this, tArr);
        }
    }

    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\n\n\u0002\u0010)\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010+\n\u0002\b\u0013\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u0002B%\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u0018\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00028\u0001H\u0096\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u001d\u0010\u000f\u001a\u00020\n2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00010\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0018\u0010\u0012\u001a\u00028\u00012\u0006\u0010\u0011\u001a\u00020\u0004H\u0096\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0014\u001a\u00020\u00042\u0006\u0010\t\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0016\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00010\u0018H\u0096\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u001b\u0010\u0015J\u0017\u0010\u001c\u001a\u00020\n2\u0006\u0010\t\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u001c\u0010\fJ\u001f\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\t\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u001c\u0010\u001eJ%\u0010\u001f\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00042\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00010\rH\u0016¢\u0006\u0004\b\u001f\u0010 J\u001d\u0010\u001f\u001a\u00020\n2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00010\rH\u0016¢\u0006\u0004\b\u001f\u0010\u0010J\u000f\u0010!\u001a\u00020\u001dH\u0016¢\u0006\u0004\b!\u0010\"J\u0015\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00010#H\u0016¢\u0006\u0004\b$\u0010%J\u001d\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00010#2\u0006\u0010\u0011\u001a\u00020\u0004H\u0016¢\u0006\u0004\b$\u0010&J\u0017\u0010'\u001a\u00020\n2\u0006\u0010\t\u001a\u00028\u0001H\u0016¢\u0006\u0004\b'\u0010\fJ\u001d\u0010(\u001a\u00020\n2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00010\rH\u0016¢\u0006\u0004\b(\u0010\u0010J\u0017\u0010)\u001a\u00028\u00012\u0006\u0010\u0011\u001a\u00020\u0004H\u0016¢\u0006\u0004\b)\u0010\u0013J\u001d\u0010*\u001a\u00020\n2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00010\rH\u0016¢\u0006\u0004\b*\u0010\u0010J \u0010+\u001a\u00028\u00012\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\t\u001a\u00028\u0001H\u0096\u0002¢\u0006\u0004\b+\u0010,J%\u0010/\u001a\b\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010-\u001a\u00020\u00042\u0006\u0010.\u001a\u00020\u0004H\u0016¢\u0006\u0004\b/\u00100R\u001a\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00010\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u00101R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u00102R\u0016\u0010\u0006\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u00102R\u0014\u00105\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b3\u00104¨\u00066"}, d2 = {"Landroidx/collection/MutableObjectList$SubList;", "T", "", "list", "", TtmlNode.START, TtmlNode.END, MethodDecl.initName, "(Ljava/util/List;II)V", "element", "", "contains", "(Ljava/lang/Object;)Z", "", "elements", "containsAll", "(Ljava/util/Collection;)Z", "index", "get", "(I)Ljava/lang/Object;", "indexOf", "(Ljava/lang/Object;)I", "isEmpty", "()Z", "", "iterator", "()Ljava/util/Iterator;", "lastIndexOf", "add", "Lzfb;", "(ILjava/lang/Object;)V", "addAll", "(ILjava/util/Collection;)Z", "clear", "()V", "", "listIterator", "()Ljava/util/ListIterator;", "(I)Ljava/util/ListIterator;", "remove", "removeAll", "removeAt", "retainAll", "set", "(ILjava/lang/Object;)Ljava/lang/Object;", "fromIndex", "toIndex", "subList", "(II)Ljava/util/List;", "Ljava/util/List;", "I", "getSize", "()I", PlayAudioData.TAG_SIZE, "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class SubList<T> implements List<T>, te5 {
        private int end;
        private final List<T> list;
        private final int start;

        public SubList(List<T> list, int i, int i2) {
            y45.j(list, "list");
            this.list = list;
            this.start = i;
            this.end = i2;
        }

        @Override
        public boolean add(T element) {
            List<T> list = this.list;
            int i = this.end;
            this.end = i + 1;
            list.add(i, element);
            return true;
        }

        @Override
        public boolean addAll(int index, Collection<? extends T> elements) {
            y45.j(elements, "elements");
            this.list.addAll(index + this.start, elements);
            this.end += elements.size();
            return elements.size() > 0;
        }

        @Override
        public void clear() {
            int i = this.end - 1;
            int i2 = this.start;
            if (i2 <= i) {
                while (true) {
                    this.list.remove(i);
                    if (i == i2) {
                        break;
                    } else {
                        i--;
                    }
                }
            }
            this.end = this.start;
        }

        @Override
        public boolean contains(Object element) {
            int i = this.end;
            for (int i2 = this.start; i2 < i; i2++) {
                if (y45.e(this.list.get(i2), element)) {
                    return true;
                }
            }
            return false;
        }

        @Override
        public boolean containsAll(Collection<? extends Object> elements) {
            y45.j(elements, "elements");
            Iterator<T> it = elements.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public T get(int index) {
            ObjectListKt.checkIndex(this, index);
            return this.list.get(index + this.start);
        }

        public int getSize() {
            return this.end - this.start;
        }

        @Override
        public int indexOf(Object element) {
            int i = this.end;
            for (int i2 = this.start; i2 < i; i2++) {
                if (y45.e(this.list.get(i2), element)) {
                    return i2 - this.start;
                }
            }
            return -1;
        }

        @Override
        public boolean isEmpty() {
            return this.end == this.start;
        }

        @Override
        public Iterator<T> iterator() {
            return new MutableObjectListIterator(this, 0);
        }

        @Override
        public int lastIndexOf(Object element) {
            int i = this.end - 1;
            int i2 = this.start;
            if (i2 > i) {
                return -1;
            }
            while (!y45.e(this.list.get(i), element)) {
                if (i == i2) {
                    return -1;
                }
                i--;
            }
            return i - this.start;
        }

        @Override
        public ListIterator<T> listIterator() {
            return new MutableObjectListIterator(this, 0);
        }

        @Override
        public final T remove(int i) {
            return removeAt(i);
        }

        @Override
        public boolean removeAll(Collection<? extends Object> elements) {
            y45.j(elements, "elements");
            int i = this.end;
            Iterator<T> it = elements.iterator();
            while (it.hasNext()) {
                remove(it.next());
            }
            return i != this.end;
        }

        public T removeAt(int index) {
            ObjectListKt.checkIndex(this, index);
            T tRemove = this.list.remove(index + this.start);
            this.end--;
            return tRemove;
        }

        @Override
        public boolean retainAll(Collection<? extends Object> elements) {
            y45.j(elements, "elements");
            int i = this.end;
            int i2 = i - 1;
            int i3 = this.start;
            if (i3 <= i2) {
                while (true) {
                    if (!elements.contains(this.list.get(i2))) {
                        this.list.remove(i2);
                        this.end--;
                    }
                    if (i2 == i3) {
                        break;
                    }
                    i2--;
                }
            }
            return i != this.end;
        }

        @Override
        public T set(int index, T element) {
            ObjectListKt.checkIndex(this, index);
            return this.list.set(index + this.start, element);
        }

        @Override
        public final int size() {
            return getSize();
        }

        @Override
        public List<T> subList(int fromIndex, int toIndex) {
            ObjectListKt.checkSubIndex(this, fromIndex, toIndex);
            return new SubList(this, fromIndex, toIndex);
        }

        @Override
        public Object[] toArray() {
            return r71.a(this);
        }

        @Override
        public void add(int index, T element) {
            this.list.add(index + this.start, element);
            this.end++;
        }

        @Override
        public ListIterator<T> listIterator(int index) {
            return new MutableObjectListIterator(this, index);
        }

        @Override
        public boolean remove(Object element) {
            int i = this.end;
            for (int i2 = this.start; i2 < i; i2++) {
                if (y45.e(this.list.get(i2), element)) {
                    this.list.remove(i2);
                    this.end--;
                    return true;
                }
            }
            return false;
        }

        @Override
        public <T> T[] toArray(T[] tArr) {
            y45.j(tArr, "array");
            return (T[]) r71.b(this, tArr);
        }

        @Override
        public boolean addAll(Collection<? extends T> elements) {
            y45.j(elements, "elements");
            this.list.addAll(this.end, elements);
            this.end += elements.size();
            return elements.size() > 0;
        }
    }

    public MutableObjectList() {
        this(0, 1, null);
    }

    public static void trim$default(MutableObjectList mutableObjectList, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = mutableObjectList._size;
        }
        mutableObjectList.trim(i);
    }

    public final boolean add(E element) {
        ensureCapacity(this._size + 1);
        Object[] objArr = this.content;
        int i = this._size;
        objArr[i] = element;
        this._size = i + 1;
        return true;
    }

    public final boolean addAll(@IntRange(from = 0) int index, E[] elements) {
        int i;
        y45.j(elements, "elements");
        if (index < 0 || index > (i = this._size)) {
            throw new IndexOutOfBoundsException("Index " + index + " must be in 0.." + this._size);
        }
        if (elements.length == 0) {
            return false;
        }
        ensureCapacity(i + elements.length);
        Object[] objArr = this.content;
        int i2 = this._size;
        if (index != i2) {
            fi.l(objArr, objArr, elements.length + index, index, i2);
        }
        fi.q(elements, objArr, index, 0, 0, 12, null);
        this._size += elements.length;
        return true;
    }

    @Override
    public List<E> asList() {
        return asMutableList();
    }

    public final List<E> asMutableList() {
        ObjectListMutableList<E> objectListMutableList = this.list;
        if (objectListMutableList != null) {
            return objectListMutableList;
        }
        ObjectListMutableList<E> objectListMutableList2 = new ObjectListMutableList<>(this);
        this.list = objectListMutableList2;
        return objectListMutableList2;
    }

    public final void clear() {
        fi.v(this.content, null, 0, this._size);
        this._size = 0;
    }

    public final void ensureCapacity(int capacity) {
        Object[] objArr = this.content;
        if (objArr.length < capacity) {
            Object[] objArrCopyOf = Arrays.copyOf(objArr, Math.max(capacity, (objArr.length * 3) / 2));
            y45.i(objArrCopyOf, "copyOf(this, newSize)");
            this.content = objArrCopyOf;
        }
    }

    public final int getCapacity() {
        return this.content.length;
    }

    public final void minusAssign(E element) {
        remove(element);
    }

    public final void plusAssign(ObjectList<E> elements) {
        y45.j(elements, "elements");
        if (elements.isEmpty()) {
            return;
        }
        ensureCapacity(this._size + elements._size);
        fi.l(elements.content, this.content, this._size, 0, elements._size);
        this._size += elements._size;
    }

    public final boolean remove(E element) {
        int iIndexOf = indexOf(element);
        if (iIndexOf < 0) {
            return false;
        }
        removeAt(iIndexOf);
        return true;
    }

    public final boolean removeAll(E[] elements) {
        y45.j(elements, "elements");
        int i = this._size;
        for (E e : elements) {
            remove(e);
        }
        return i != this._size;
    }

    public final E removeAt(@IntRange(from = 0) int index) {
        int i;
        if (index < 0 || index >= (i = this._size)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Index ");
            sb.append(index);
            sb.append(" must be in 0..");
            sb.append(this._size - 1);
            throw new IndexOutOfBoundsException(sb.toString());
        }
        Object[] objArr = this.content;
        E e = (E) objArr[index];
        if (index != i - 1) {
            fi.l(objArr, objArr, index, index + 1, i);
        }
        int i2 = this._size - 1;
        this._size = i2;
        objArr[i2] = null;
        return e;
    }

    public final void removeIf(e74 predicate) {
        y45.j(predicate, "predicate");
        int i = this._size;
        Object[] objArr = this.content;
        int i2 = 0;
        u15 u15VarQ = wn8.q(0, i);
        int iB = u15VarQ.b();
        int iC = u15VarQ.c();
        if (iB <= iC) {
            while (true) {
                objArr[iB - i2] = objArr[iB];
                if (((Boolean) predicate.invoke(objArr[iB])).booleanValue()) {
                    i2++;
                }
                if (iB == iC) {
                    break;
                } else {
                    iB++;
                }
            }
        }
        fi.v(objArr, null, i - i2, i);
        this._size -= i2;
    }

    public final void removeRange(@IntRange(from = 0) int start, @IntRange(from = 0) int end) {
        int i;
        if (start < 0 || start > (i = this._size) || end < 0 || end > i) {
            throw new IndexOutOfBoundsException("Start (" + start + ") and end (" + end + ") must be in 0.." + this._size);
        }
        if (end < start) {
            throw new IllegalArgumentException("Start (" + start + ") is more than end (" + end + ')');
        }
        if (end != start) {
            if (end < i) {
                Object[] objArr = this.content;
                fi.l(objArr, objArr, start, end, i);
            }
            int i2 = this._size;
            int i3 = i2 - (end - start);
            fi.v(this.content, null, i3, i2);
            this._size = i3;
        }
    }

    public final boolean retainAll(E[] elements) {
        y45.j(elements, "elements");
        int i = this._size;
        Object[] objArr = this.content;
        for (int i2 = i - 1; -1 < i2; i2--) {
            if (hi.k0(elements, objArr[i2]) < 0) {
                removeAt(i2);
            }
        }
        return i != this._size;
    }

    public final E set(@IntRange(from = 0) int index, E element) {
        if (index >= 0 && index < this._size) {
            Object[] objArr = this.content;
            E e = (E) objArr[index];
            objArr[index] = element;
            return e;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("set index ");
        sb.append(index);
        sb.append(" must be between 0 .. ");
        sb.append(this._size - 1);
        throw new IndexOutOfBoundsException(sb.toString());
    }

    public final void trim(int minCapacity) {
        int iMax = Math.max(minCapacity, this._size);
        Object[] objArr = this.content;
        if (objArr.length > iMax) {
            Object[] objArrCopyOf = Arrays.copyOf(objArr, iMax);
            y45.i(objArrCopyOf, "copyOf(this, newSize)");
            this.content = objArrCopyOf;
        }
    }

    public MutableObjectList(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 16 : i);
    }

    public final void minusAssign(List<? extends E> elements) {
        y45.j(elements, "elements");
        int size = elements.size();
        for (int i = 0; i < size; i++) {
            remove(elements.get(i));
        }
    }

    public MutableObjectList(int i) {
        super(i, null);
    }

    public final void add(@IntRange(from = 0) int index, E element) {
        int i;
        if (index >= 0 && index <= (i = this._size)) {
            ensureCapacity(i + 1);
            Object[] objArr = this.content;
            int i2 = this._size;
            if (index != i2) {
                fi.l(objArr, objArr, index + 1, index, i2);
            }
            objArr[index] = element;
            this._size++;
            return;
        }
        throw new IndexOutOfBoundsException("Index " + index + " must be in 0.." + this._size);
    }

    public final void minusAssign(E[] elements) {
        y45.j(elements, "elements");
        for (E e : elements) {
            remove(e);
        }
    }

    public final boolean removeAll(ObjectList<E> elements) {
        y45.j(elements, "elements");
        int i = this._size;
        minusAssign((ObjectList) elements);
        return i != this._size;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void minusAssign(ObjectList<E> elements) {
        y45.j(elements, "elements");
        Object[] objArr = elements.content;
        int i = elements._size;
        for (int i2 = 0; i2 < i; i2++) {
            remove(objArr[i2]);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean retainAll(ObjectList<E> elements) {
        y45.j(elements, "elements");
        int i = this._size;
        Object[] objArr = this.content;
        for (int i2 = i - 1; -1 < i2; i2--) {
            if (!elements.contains(objArr[i2])) {
                removeAt(i2);
            }
        }
        return i != this._size;
    }

    public final boolean removeAll(ScatterSet<E> elements) {
        y45.j(elements, "elements");
        int i = this._size;
        minusAssign((ScatterSet) elements);
        return i != this._size;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void plusAssign(ScatterSet<E> elements) {
        y45.j(elements, "elements");
        if (elements.isEmpty()) {
            return;
        }
        ensureCapacity(this._size + elements.get_size());
        Object[] objArr = elements.elements;
        long[] jArr = elements.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        add(objArr[(i << 3) + i3]);
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return;
                }
            }
            if (i == length) {
                return;
            } else {
                i++;
            }
        }
    }

    public final boolean addAll(@IntRange(from = 0) int index, Collection<? extends E> elements) {
        y45.j(elements, "elements");
        if (index >= 0 && index <= this._size) {
            int i = 0;
            if (elements.isEmpty()) {
                return false;
            }
            ensureCapacity(this._size + elements.size());
            Object[] objArr = this.content;
            if (index != this._size) {
                fi.l(objArr, objArr, elements.size() + index, index, this._size);
            }
            for (Object obj : elements) {
                int i2 = i + 1;
                if (i < 0) {
                    y71.u();
                }
                objArr[i + index] = obj;
                i = i2;
            }
            this._size += elements.size();
            return true;
        }
        throw new IndexOutOfBoundsException("Index " + index + " must be in 0.." + this._size);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void minusAssign(ScatterSet<E> elements) {
        y45.j(elements, "elements");
        Object[] objArr = elements.elements;
        long[] jArr = elements.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        remove(objArr[(i << 3) + i3]);
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return;
                }
            }
            if (i == length) {
                return;
            } else {
                i++;
            }
        }
    }

    public final boolean removeAll(List<? extends E> elements) {
        y45.j(elements, "elements");
        int i = this._size;
        minusAssign((List) elements);
        return i != this._size;
    }

    public final boolean retainAll(Collection<? extends E> elements) {
        y45.j(elements, "elements");
        int i = this._size;
        Object[] objArr = this.content;
        for (int i2 = i - 1; -1 < i2; i2--) {
            if (!elements.contains(objArr[i2])) {
                removeAt(i2);
            }
        }
        return i != this._size;
    }

    public final boolean removeAll(Iterable<? extends E> elements) {
        y45.j(elements, "elements");
        int i = this._size;
        minusAssign((Iterable) elements);
        return i != this._size;
    }

    public final void minusAssign(Iterable<? extends E> elements) {
        y45.j(elements, "elements");
        Iterator<? extends E> it = elements.iterator();
        while (it.hasNext()) {
            remove(it.next());
        }
    }

    public final void plusAssign(E[] elements) {
        y45.j(elements, "elements");
        if (elements.length == 0) {
            return;
        }
        ensureCapacity(this._size + elements.length);
        fi.q(elements, this.content, this._size, 0, 0, 12, null);
        this._size += elements.length;
    }

    public final boolean removeAll(pc9 elements) {
        y45.j(elements, "elements");
        int i = this._size;
        minusAssign(elements);
        return i != this._size;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void minusAssign(pc9 elements) {
        y45.j(elements, "elements");
        Iterator it = elements.iterator();
        while (it.hasNext()) {
            remove(it.next());
        }
    }

    public final boolean retainAll(Iterable<? extends E> elements) {
        y45.j(elements, "elements");
        int i = this._size;
        Object[] objArr = this.content;
        for (int i2 = i - 1; -1 < i2; i2--) {
            if (!i81.d0(elements, objArr[i2])) {
                removeAt(i2);
            }
        }
        return i != this._size;
    }

    public final void plusAssign(List<? extends E> elements) {
        y45.j(elements, "elements");
        if (elements.isEmpty()) {
            return;
        }
        int i = this._size;
        ensureCapacity(elements.size() + i);
        Object[] objArr = this.content;
        int size = elements.size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i2 + i] = elements.get(i2);
        }
        this._size += elements.size();
    }

    public final boolean addAll(@IntRange(from = 0) int index, ObjectList<E> elements) {
        y45.j(elements, "elements");
        if (index >= 0 && index <= this._size) {
            if (elements.isEmpty()) {
                return false;
            }
            ensureCapacity(this._size + elements._size);
            Object[] objArr = this.content;
            int i = this._size;
            if (index != i) {
                fi.l(objArr, objArr, elements._size + index, index, i);
            }
            fi.l(elements.content, objArr, index, 0, elements._size);
            this._size += elements._size;
            return true;
        }
        throw new IndexOutOfBoundsException("Index " + index + " must be in 0.." + this._size);
    }

    public final boolean retainAll(pc9 elements) {
        y45.j(elements, "elements");
        int i = this._size;
        Object[] objArr = this.content;
        for (int i2 = i - 1; -1 < i2; i2--) {
            if (!SequencesKt___SequencesKt.z(elements, objArr[i2])) {
                removeAt(i2);
            }
        }
        return i != this._size;
    }

    public final void plusAssign(E element) {
        add(element);
    }

    public final void plusAssign(Iterable<? extends E> elements) {
        y45.j(elements, "elements");
        Iterator<? extends E> it = elements.iterator();
        while (it.hasNext()) {
            add(it.next());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void plusAssign(pc9 elements) {
        y45.j(elements, "elements");
        Iterator it = elements.iterator();
        while (it.hasNext()) {
            add(it.next());
        }
    }

    public final boolean addAll(ObjectList<E> elements) {
        y45.j(elements, "elements");
        int i = this._size;
        plusAssign((ObjectList) elements);
        return i != this._size;
    }

    public final boolean addAll(ScatterSet<E> elements) {
        y45.j(elements, "elements");
        int i = this._size;
        plusAssign((ScatterSet) elements);
        return i != this._size;
    }

    public final boolean addAll(E[] elements) {
        y45.j(elements, "elements");
        int i = this._size;
        plusAssign((Object[]) elements);
        return i != this._size;
    }

    public final boolean addAll(List<? extends E> elements) {
        y45.j(elements, "elements");
        int i = this._size;
        plusAssign((List) elements);
        return i != this._size;
    }

    public final boolean addAll(Iterable<? extends E> elements) {
        y45.j(elements, "elements");
        int i = this._size;
        plusAssign((Iterable) elements);
        return i != this._size;
    }

    public final boolean addAll(pc9 elements) {
        y45.j(elements, "elements");
        int i = this._size;
        plusAssign(elements);
        return i != this._size;
    }
}
