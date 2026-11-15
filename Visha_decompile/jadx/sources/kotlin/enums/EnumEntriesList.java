package kotlin.enums;

import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.hubsdk.api.provider.TranSearchIndexablesContract;
import defpackage.db3;
import defpackage.g3;
import defpackage.hi;
import defpackage.y45;
import java.io.Serializable;
import java.lang.Enum;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\n\b\u0003\u0018\u0000*\u000e\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00000\u00012\b\u0012\u0004\u0012\u00028\u00000\u00032\b\u0012\u0004\u0012\u00028\u00000\u00042\u00060\u0005j\u0002`\u0006B\u0015\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0018\u0010\u0010\u001a\u00028\u00002\u0006\u0010\u000f\u001a\u00020\u000eH\u0096\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0018\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0018\u0010\u0017R\u001a\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0019R\u0014\u0010\u001c\u001a\u00020\u000e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001b¨\u0006\u001d"}, d2 = {"Lkotlin/enums/EnumEntriesList;", "", "T", "Ldb3;", "Lg3;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", TranSearchIndexablesContract.TranRawData.COLUMN_ENTRIES, MethodDecl.initName, "([Ljava/lang/Enum;)V", "", "writeReplace", "()Ljava/lang/Object;", "", "index", "get", "(I)Ljava/lang/Enum;", "element", "", "contains", "(Ljava/lang/Enum;)Z", "indexOf", "(Ljava/lang/Enum;)I", "lastIndexOf", "[Ljava/lang/Enum;", "getSize", "()I", PlayAudioData.TAG_SIZE, "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class EnumEntriesList<T extends Enum<T>> extends g3 implements db3, Serializable {
    private final T[] entries;

    public EnumEntriesList(T[] tArr) {
        y45.j(tArr, TranSearchIndexablesContract.TranRawData.COLUMN_ENTRIES);
        this.entries = tArr;
    }

    private final Object writeReplace() {
        return new EnumEntriesSerializationProxy(this.entries);
    }

    @Override
    public final boolean contains(Object obj) {
        if (obj instanceof Enum) {
            return contains((Enum) obj);
        }
        return false;
    }

    @Override
    public int getSize() {
        return this.entries.length;
    }

    @Override
    public final int indexOf(Object obj) {
        if (obj instanceof Enum) {
            return indexOf((Enum) obj);
        }
        return -1;
    }

    @Override
    public final int lastIndexOf(Object obj) {
        if (obj instanceof Enum) {
            return lastIndexOf((Enum) obj);
        }
        return -1;
    }

    public boolean contains(T element) {
        y45.j(element, "element");
        return ((Enum) hi.f0(this.entries, element.ordinal())) == element;
    }

    @Override
    public T get(int index) {
        g3.Companion.b(index, this.entries.length);
        return this.entries[index];
    }

    public int indexOf(T element) {
        y45.j(element, "element");
        int iOrdinal = element.ordinal();
        if (((Enum) hi.f0(this.entries, iOrdinal)) == element) {
            return iOrdinal;
        }
        return -1;
    }

    public int lastIndexOf(T element) {
        y45.j(element, "element");
        return indexOf((Object) element);
    }
}
