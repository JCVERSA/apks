package kotlinx.serialization.json;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.livecaption.constant.ICode;
import defpackage.ef5;
import defpackage.i81;
import defpackage.ld9;
import defpackage.qe5;
import defpackage.r71;
import defpackage.y45;
import defpackage.y95;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.function.UnaryOperator;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010(\n\u0002\b\u0003\n\u0002\u0010*\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\b\u0007\u0018\u0000 .2\u00020\u00012\b\u0012\u0004\u0012\u00020\u00010\u0002:\u0001/B\u0015\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0001H\u0096\u0003¢\u0006\u0004\b\b\u0010\tJ\u001e\u0010\f\u001a\u00020\u00072\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00010\nH\u0096\u0001¢\u0006\u0004\b\f\u0010\rJ\u0018\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u000eH\u0096\u0003¢\u0006\u0004\b\u0010\u0010\u0011J\u0018\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0006\u001a\u00020\u0001H\u0096\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0007H\u0096\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u0016\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00010\u0016H\u0096\u0003¢\u0006\u0004\b\u0017\u0010\u0018J\u0018\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u0006\u001a\u00020\u0001H\u0096\u0001¢\u0006\u0004\b\u0019\u0010\u0013J\u0016\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00010\u001aH\u0096\u0001¢\u0006\u0004\b\u001b\u0010\u001cJ\u001e\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00010\u001a2\u0006\u0010\u000f\u001a\u00020\u000eH\u0096\u0001¢\u0006\u0004\b\u001b\u0010\u001dJ&\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00010\u00022\u0006\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\u000eH\u0096\u0001¢\u0006\u0004\b \u0010!J\u001a\u0010$\u001a\u00020\u00072\b\u0010#\u001a\u0004\u0018\u00010\"H\u0096\u0002¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\u000eH\u0016¢\u0006\u0004\b&\u0010'J\u000f\u0010)\u001a\u00020(H\u0016¢\u0006\u0004\b)\u0010*R\u001a\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00010\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010+R\u0014\u0010-\u001a\u00020\u000e8\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b,\u0010'¨\u00060"}, d2 = {"Lkotlinx/serialization/json/a;", "Lkotlinx/serialization/json/b;", "", ICode.CALL.CALL_KEY_CONTENT, MethodDecl.initName, "(Ljava/util/List;)V", "element", "", "b", "(Lkotlinx/serialization/json/b;)Z", "", "elements", "containsAll", "(Ljava/util/Collection;)Z", "", "index", "c", "(I)Lkotlinx/serialization/json/b;", "k", "(Lkotlinx/serialization/json/b;)I", "isEmpty", "()Z", "", "iterator", "()Ljava/util/Iterator;", CmcdData.STREAM_TYPE_LIVE, "", "listIterator", "()Ljava/util/ListIterator;", "(I)Ljava/util/ListIterator;", "fromIndex", "toIndex", "subList", "(II)Ljava/util/List;", "", "other", "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "Ljava/util/List;", "f", PlayAudioData.TAG_SIZE, "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "kotlinx-serialization-json"}, k = 1, mv = {1, 8, 0}, xi = 48)
@ld9(with = y95.class)
public final class a extends b implements List<b>, qe5 {

    public static final Companion INSTANCE = new Companion(null);

    public final List content;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ef5 serializer() {
            return y95.a;
        }

        public Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(List list) {
        super(null);
        y45.j(list, ICode.CALL.CALL_KEY_CONTENT);
        this.content = list;
    }

    @Override
    public void add(int i, b bVar) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean addAll(int i, Collection<? extends b> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public boolean b(b element) {
        y45.j(element, "element");
        return this.content.contains(element);
    }

    @Override
    public b get(int index) {
        return (b) this.content.get(index);
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final boolean contains(Object obj) {
        if (obj instanceof b) {
            return b((b) obj);
        }
        return false;
    }

    @Override
    public boolean containsAll(Collection elements) {
        y45.j(elements, "elements");
        return this.content.containsAll(elements);
    }

    @Override
    public boolean equals(Object other) {
        return y45.e(this.content, other);
    }

    public int f() {
        return this.content.size();
    }

    @Override
    public int hashCode() {
        return this.content.hashCode();
    }

    @Override
    public final int indexOf(Object obj) {
        if (obj instanceof b) {
            return k((b) obj);
        }
        return -1;
    }

    @Override
    public boolean isEmpty() {
        return this.content.isEmpty();
    }

    @Override
    public Iterator iterator() {
        return this.content.iterator();
    }

    public int k(b element) {
        y45.j(element, "element");
        return this.content.indexOf(element);
    }

    public int l(b element) {
        y45.j(element, "element");
        return this.content.lastIndexOf(element);
    }

    @Override
    public final int lastIndexOf(Object obj) {
        if (obj instanceof b) {
            return l((b) obj);
        }
        return -1;
    }

    @Override
    public ListIterator<b> listIterator() {
        return this.content.listIterator();
    }

    @Override
    public b remove(int i) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public void replaceAll(UnaryOperator<b> unaryOperator) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public b set(int i, b bVar) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final int size() {
        return f();
    }

    @Override
    public void sort(Comparator<? super b> comparator) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public List<b> subList(int fromIndex, int toIndex) {
        return this.content.subList(fromIndex, toIndex);
    }

    @Override
    public Object[] toArray() {
        return r71.a(this);
    }

    public String toString() {
        return i81.y0(this.content, StringUtils.COMMA, "[", "]", 0, null, null, 56, null);
    }

    @Override
    public boolean add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean addAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public ListIterator<b> listIterator(int index) {
        return this.content.listIterator(index);
    }

    @Override
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public Object[] toArray(Object[] objArr) {
        y45.j(objArr, "array");
        return r71.b(this, objArr);
    }
}
