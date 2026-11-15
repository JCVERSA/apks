package defpackage;

import androidx.media3.exoplayer.upstream.CmcdData;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018\u0000 \"2\u00020\u0001:\u0002\u001d\u0012B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007B3\b\u0017\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0006\u0010\u000bJ(\u0010\u0012\u001a\u00020\u00112\u0006\u0010\f\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fHÇ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0015\u001a\u00020\u0014HÖ\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0017\u0010\u0018J\u001a\u0010\u001b\u001a\u00020\u001a2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u001b\u0010\u001cR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001d\u0010\u0018R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u001e\u001a\u0004\b\u001f\u0010\u0018R\u0017\u0010\u0005\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b \u0010\u001e\u001a\u0004\b!\u0010\u0018¨\u0006#"}, d2 = {"Lrd8;", "", "", "capacity", "min", "max", MethodDecl.initName, "(III)V", "seen1", "Lmd9;", "serializationConstructorMarker", "(IIIILmd9;)V", "self", "Lid1;", "output", "Lkotlinx/serialization/descriptors/a;", "serialDesc", "Lzfb;", "b", "(Lrd8;Lid1;Lkotlinx/serialization/descriptors/a;)V", "", "toString", "()Ljava/lang/String;", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "I", "getMin", "c", "getMax", "Companion", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@ld9
public final class PreCreationModel {

    public static final Companion INSTANCE = new Companion(null);

    public final int capacity;

    public final int min;

    public final int max;

    public static final class a implements od4 {
        public static final a a;
        public static final PluginGeneratedSerialDescriptor b;

        static {
            a aVar = new a();
            a = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.yandex.div.internal.viewpool.PreCreationModel", aVar, 3);
            pluginGeneratedSerialDescriptor.k("capacity", false);
            pluginGeneratedSerialDescriptor.k("min", true);
            pluginGeneratedSerialDescriptor.k("max", true);
            b = pluginGeneratedSerialDescriptor;
        }

        @Override
        public PreCreationModel deserialize(hu1 hu1Var) {
            int i;
            int iF;
            int i2;
            int i3;
            y45.j(hu1Var, "decoder");
            kotlinx.serialization.descriptors.a descriptor = getDescriptor();
            fd1 fd1VarB = hu1Var.b(descriptor);
            if (fd1VarB.j()) {
                int iF2 = fd1VarB.f(descriptor, 0);
                int iF3 = fd1VarB.f(descriptor, 1);
                i = iF2;
                iF = fd1VarB.f(descriptor, 2);
                i2 = iF3;
                i3 = 7;
            } else {
                boolean z = true;
                int iF4 = 0;
                int iF5 = 0;
                int iF6 = 0;
                int i4 = 0;
                while (z) {
                    int iV = fd1VarB.v(descriptor);
                    if (iV == -1) {
                        z = false;
                    } else if (iV == 0) {
                        iF4 = fd1VarB.f(descriptor, 0);
                        i4 |= 1;
                    } else if (iV == 1) {
                        iF6 = fd1VarB.f(descriptor, 1);
                        i4 |= 2;
                    } else {
                        if (iV != 2) {
                            throw new UnknownFieldException(iV);
                        }
                        iF5 = fd1VarB.f(descriptor, 2);
                        i4 |= 4;
                    }
                }
                i = iF4;
                iF = iF5;
                i2 = iF6;
                i3 = i4;
            }
            fd1VarB.c(descriptor);
            return new PreCreationModel(i3, i, i2, iF, (md9) null);
        }

        @Override
        public void serialize(ca3 ca3Var, PreCreationModel preCreationModel) {
            y45.j(ca3Var, "encoder");
            y45.j(preCreationModel, ES6Iterator.VALUE_PROPERTY);
            kotlinx.serialization.descriptors.a descriptor = getDescriptor();
            id1 id1VarB = ca3Var.b(descriptor);
            PreCreationModel.b(preCreationModel, id1VarB, descriptor);
            id1VarB.c(descriptor);
        }

        @Override
        public ef5[] childSerializers() {
            v15 v15Var = v15.a;
            return new ef5[]{v15Var, v15Var, v15Var};
        }

        @Override
        public kotlinx.serialization.descriptors.a getDescriptor() {
            return b;
        }

        @Override
        public ef5[] typeParametersSerializers() {
            return od4.a.a(this);
        }
    }

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ef5 serializer() {
            return a.a;
        }

        public Companion() {
        }
    }

    public PreCreationModel(int i, int i2, int i3) {
        this.capacity = i;
        this.min = i2;
        this.max = i3;
    }

    public static final void b(PreCreationModel self, id1 output, kotlinx.serialization.descriptors.a serialDesc) {
        output.n(serialDesc, 0, self.capacity);
        if (output.r(serialDesc, 1) || self.min != 0) {
            output.n(serialDesc, 1, self.min);
        }
        if (!output.r(serialDesc, 2) && self.max == Integer.MAX_VALUE) {
            return;
        }
        output.n(serialDesc, 2, self.max);
    }

    public final int getCapacity() {
        return this.capacity;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PreCreationModel)) {
            return false;
        }
        PreCreationModel preCreationModel = (PreCreationModel) other;
        return this.capacity == preCreationModel.capacity && this.min == preCreationModel.min && this.max == preCreationModel.max;
    }

    public int hashCode() {
        return (((Integer.hashCode(this.capacity) * 31) + Integer.hashCode(this.min)) * 31) + Integer.hashCode(this.max);
    }

    public String toString() {
        return "PreCreationModel(capacity=" + this.capacity + ", min=" + this.min + ", max=" + this.max + ')';
    }

    public PreCreationModel(int i, int i2, int i3, int i4, md9 md9Var) {
        if (1 != (i & 1)) {
            bc8.a(i, 1, a.a.getDescriptor());
        }
        this.capacity = i2;
        if ((i & 2) == 0) {
            this.min = 0;
        } else {
            this.min = i3;
        }
        if ((i & 4) == 0) {
            this.max = Integer.MAX_VALUE;
        } else {
            this.max = i4;
        }
    }

    public PreCreationModel(int i, int i2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, (i4 & 2) != 0 ? 0 : i2, (i4 & 4) != 0 ? Integer.MAX_VALUE : i3);
    }
}
