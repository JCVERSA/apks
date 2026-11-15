.class public final enum Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

.field public static final Companion:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind$a;

.field public static final enum Function:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

.field public static final enum KFunction:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

.field public static final enum KSuspendFunction:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

.field public static final enum SuspendFunction:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;


# instance fields
.field private final classNamePrefix:Ljava/lang/String;

.field private final isReflectType:Z

.field private final isSuspendType:Z

.field private final packageFqName:Lo54;


# direct methods
.method private static final synthetic $values()[Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;
    .locals 4

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;->Function:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;->SuspendFunction:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;->KFunction:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;->KSuspendFunction:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

    filled-new-array {v0, v1, v2, v3}, [Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 15

    new-instance v7, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/e;->v:Lo54;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, "Function"

    const/4 v2, 0x0

    const-string v4, "Function"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;-><init>(Ljava/lang/String;ILo54;Ljava/lang/String;ZZ)V

    sput-object v7, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;->Function:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/builtins/e;->n:Lo54;

    const/4 v13, 0x1

    const/4 v14, 0x0

    const-string v9, "SuspendFunction"

    const/4 v10, 0x1

    const-string v12, "SuspendFunction"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;-><init>(Ljava/lang/String;ILo54;Ljava/lang/String;ZZ)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;->SuspendFunction:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/builtins/e;->s:Lo54;

    const/4 v7, 0x1

    const-string v2, "KFunction"

    const/4 v3, 0x2

    const-string v5, "KFunction"

    move-object v1, v0

    move-object v4, v8

    invoke-direct/range {v1 .. v7}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;-><init>(Ljava/lang/String;ILo54;Ljava/lang/String;ZZ)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;->KFunction:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

    const/4 v6, 0x1

    const-string v2, "KSuspendFunction"

    const/4 v3, 0x3

    const-string v5, "KSuspendFunction"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;-><init>(Ljava/lang/String;ILo54;Ljava/lang/String;ZZ)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;->KSuspendFunction:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;->$values()[Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;->Companion:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILo54;Ljava/lang/String;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo54;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;->packageFqName:Lo54;

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;->classNamePrefix:Ljava/lang/String;

    iput-boolean p5, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;->isSuspendType:Z

    iput-boolean p6, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;->isReflectType:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;
    .locals 1

    const-class v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

    return-object v0
.end method


# virtual methods
.method public final getClassNamePrefix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;->classNamePrefix:Ljava/lang/String;

    return-object p0
.end method

.method public final getPackageFqName()Lo54;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;->packageFqName:Lo54;

    return-object p0
.end method

.method public final numberedClassName(I)Lby6;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;->classNamePrefix:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lby6;->g(Ljava/lang/String;)Lby6;

    move-result-object p0

    const-string p1, "identifier(\"$classNamePrefix$arity\")"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
