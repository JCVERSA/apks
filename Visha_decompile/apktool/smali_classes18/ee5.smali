.class public final Lee5;
.super Lpf1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lee5$b;,
        Lee5$a;
    }
.end annotation


# static fields
.field public static final b:Lee5$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lee5$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lee5$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lee5;->b:Lee5$a;

    return-void
.end method

.method public constructor <init>(Lee5$b;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lpf1;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lxw0;I)V
    .locals 1

    const-string v0, "classId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lzw0;

    invoke-direct {v0, p1, p2}, Lzw0;-><init>(Lxw0;I)V

    invoke-direct {p0, v0}, Lee5;-><init>(Lzw0;)V

    return-void
.end method

.method public constructor <init>(Lzw0;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lee5$b$b;

    invoke-direct {v0, p1}, Lee5$b$b;-><init>(Lzw0;)V

    invoke-direct {p0, v0}, Lee5;-><init>(Lee5$b;)V

    return-void
.end method


# virtual methods
.method public a(Lqq6;)Leh5;
    .locals 3

    const-string v0, "module"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/j;->c:Lkotlin/reflect/jvm/internal/impl/types/j$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/j$a;->h()Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object v0

    invoke-interface {p1}, Lqq6;->o()Lkotlin/reflect/jvm/internal/impl/builtins/d;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->E()Lqw0;

    move-result-object v1

    const-string v2, "module.builtIns.kClass"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Locb;

    invoke-virtual {p0, p1}, Lee5;->c(Lqq6;)Leh5;

    move-result-object p0

    invoke-direct {v2, p0}, Locb;-><init>(Leh5;)V

    invoke-static {v2}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->g(Lkotlin/reflect/jvm/internal/impl/types/j;Lqw0;Ljava/util/List;)Lsm9;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lqq6;)Leh5;
    .locals 4

    const-string v0, "module"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lpf1;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lee5$b;

    instance-of v1, v0, Lee5$b$a;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lpf1;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lee5$b$a;

    invoke-virtual {p0}, Lee5$b$a;->a()Leh5;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, v0, Lee5$b$b;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lpf1;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lee5$b$b;

    invoke-virtual {p0}, Lee5$b$b;->c()Lzw0;

    move-result-object p0

    invoke-virtual {p0}, Lzw0;->a()Lxw0;

    move-result-object v0

    invoke-virtual {p0}, Lzw0;->b()I

    move-result p0

    invoke-static {p1, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt;->a(Lqq6;Lxw0;)Lqw0;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->UNRESOLVED_KCLASS_CONSTANT_VALUE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    invoke-virtual {v0}, Lxw0;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "classId.toString()"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lid3;->d(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;[Ljava/lang/String;)Lgd3;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {v1}, Lqw0;->q()Lsm9;

    move-result-object v0

    const-string v1, "descriptor.defaultType"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->y(Leh5;)Leh5;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_2

    invoke-interface {p1}, Lqq6;->o()Lkotlin/reflect/jvm/internal/impl/builtins/d;

    move-result-object v2

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {v2, v3, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->l(Lkotlin/reflect/jvm/internal/impl/types/Variance;Leh5;)Lsm9;

    move-result-object v0

    const-string v2, "module.builtIns.getArray\u2026Variance.INVARIANT, type)"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
