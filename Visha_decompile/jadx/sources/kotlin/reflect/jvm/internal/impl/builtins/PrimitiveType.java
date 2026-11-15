package kotlin.reflect.jvm.internal.impl.builtins;

import defpackage.by6;
import defpackage.c74;
import defpackage.o54;
import defpackage.y45;
import defpackage.ye9;
import defpackage.yi5;
import java.util.Set;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r4v0 kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType, still in use, count: 1, list:
  (r4v0 kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType) from 0x006e: FILLED_NEW_ARRAY 
  (r4v0 kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType)
  (r5v0 kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType)
  (r6v0 kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType)
  (r7v0 kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType)
  (r8v0 kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType)
  (r9v0 kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType)
  (r10v0 kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType)
 A[WRAPPED] elemType: kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType
	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class PrimitiveType {
    BOOLEAN("Boolean"),
    CHAR("Char"),
    BYTE("Byte"),
    SHORT("Short"),
    INT("Int"),
    FLOAT("Float"),
    LONG("Long"),
    DOUBLE("Double");

    public static final Set<PrimitiveType> NUMBER_TYPES = ye9.j(new PrimitiveType("Char"), new PrimitiveType("Byte"), new PrimitiveType("Short"), new PrimitiveType("Int"), new PrimitiveType("Float"), new PrimitiveType("Long"), new PrimitiveType("Double"));
    private final yi5 arrayTypeFqName$delegate;
    private final by6 arrayTypeName;
    private final yi5 typeFqName$delegate;
    private final by6 typeName;
    public static final a Companion = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    static {
    }

    private PrimitiveType(String str) {
        super(str, i);
        by6 by6VarG = by6.g(str);
        y45.i(by6VarG, "identifier(typeName)");
        this.typeName = by6VarG;
        by6 by6VarG2 = by6.g(str + "Array");
        y45.i(by6VarG2, "identifier(\"${typeName}Array\")");
        this.arrayTypeName = by6VarG2;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        this.typeFqName$delegate = kotlin.b.b(lazyThreadSafetyMode, new c74() {
            {
                super(0);
            }

            @Override
            public final o54 invoke() {
                o54 o54VarC = e.v.c(this.this$0.getTypeName());
                y45.i(o54VarC, "BUILT_INS_PACKAGE_FQ_NAME.child(this.typeName)");
                return o54VarC;
            }
        });
        this.arrayTypeFqName$delegate = kotlin.b.b(lazyThreadSafetyMode, new c74() {
            {
                super(0);
            }

            @Override
            public final o54 invoke() {
                o54 o54VarC = e.v.c(this.this$0.getArrayTypeName());
                y45.i(o54VarC, "BUILT_INS_PACKAGE_FQ_NAME.child(arrayTypeName)");
                return o54VarC;
            }
        });
    }

    public static PrimitiveType valueOf(String str) {
        return (PrimitiveType) Enum.valueOf(PrimitiveType.class, str);
    }

    public static PrimitiveType[] values() {
        return (PrimitiveType[]) $VALUES.clone();
    }

    public final o54 getArrayTypeFqName() {
        return (o54) this.arrayTypeFqName$delegate.getValue();
    }

    public final by6 getArrayTypeName() {
        return this.arrayTypeName;
    }

    public final o54 getTypeFqName() {
        return (o54) this.typeFqName$delegate.getValue();
    }

    public final by6 getTypeName() {
        return this.typeName;
    }
}
