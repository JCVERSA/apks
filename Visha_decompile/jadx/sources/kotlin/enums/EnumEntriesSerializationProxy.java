package kotlin.enums;

import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.hubsdk.api.provider.TranSearchIndexablesContract;
import defpackage.y45;
import java.io.Serializable;
import java.lang.Enum;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000 \u000f*\u000e\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00000\u00012\u00060\u0003j\u0002`\u0004:\u0001\u0010B\u0015\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\n\u0010\u000bR\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0011"}, d2 = {"Lkotlin/enums/EnumEntriesSerializationProxy;", "", ExifInterface.LONGITUDE_EAST, "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", TranSearchIndexablesContract.TranRawData.COLUMN_ENTRIES, MethodDecl.initName, "([Ljava/lang/Enum;)V", "", "readResolve", "()Ljava/lang/Object;", "Ljava/lang/Class;", "c", "Ljava/lang/Class;", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class EnumEntriesSerializationProxy<E extends Enum<E>> implements Serializable {
    private static final a Companion = new a(null);
    private static final long serialVersionUID = 0;
    private final Class<E> c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public EnumEntriesSerializationProxy(E[] eArr) {
        y45.j(eArr, TranSearchIndexablesContract.TranRawData.COLUMN_ENTRIES);
        Class<E> cls = (Class<E>) eArr.getClass().getComponentType();
        y45.g(cls);
        this.c = cls;
    }

    private final Object readResolve() {
        E[] enumConstants = this.c.getEnumConstants();
        y45.i(enumConstants, "getEnumConstants(...)");
        return kotlin.enums.a.a(enumConstants);
    }
}
