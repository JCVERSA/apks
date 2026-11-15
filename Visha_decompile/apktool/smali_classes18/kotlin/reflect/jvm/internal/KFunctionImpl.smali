.class public final Lkotlin/reflect/jvm/internal/KFunctionImpl;
.super Lkotlin/reflect/jvm/internal/KCallableImpl;
.source "SourceFile"

# interfaces
.implements Lg84;
.implements Lle5;
.implements Lkotlin/reflect/jvm/internal/b;


# static fields
.field public static final synthetic m:[Laf5;


# instance fields
.field public final g:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/Object;

.field public final j:Lkotlin/reflect/jvm/internal/e$a;

.field public final k:Lyi5;

.field public final l:Lyi5;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Lkotlin/reflect/jvm/internal/KFunctionImpl;

    invoke-static {v1}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v1

    const-string v2, "descriptor"

    const-string v3, "getDescriptor()Lorg/jetbrains/kotlin/descriptors/FunctionDescriptor;"

    invoke-direct {v0, v1, v2, v3}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lke5;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lxq8;->j(Lkotlin/jvm/internal/PropertyReference1;)Lcf5;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Laf5;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lkotlin/reflect/jvm/internal/KFunctionImpl;->m:[Laf5;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    const-string v0, "container"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signature"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    .line 10
    invoke-direct/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/KFunctionImpl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/descriptors/e;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/descriptors/e;Ljava/lang/Object;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;-><init>()V

    .line 4
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KFunctionImpl;->g:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    .line 5
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/KFunctionImpl;->h:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lkotlin/reflect/jvm/internal/KFunctionImpl;->i:Ljava/lang/Object;

    .line 7
    new-instance p1, Lkotlin/reflect/jvm/internal/KFunctionImpl$descriptor$2;

    invoke-direct {p1, p0, p2}, Lkotlin/reflect/jvm/internal/KFunctionImpl$descriptor$2;-><init>(Lkotlin/reflect/jvm/internal/KFunctionImpl;Ljava/lang/String;)V

    invoke-static {p4, p1}, Lkotlin/reflect/jvm/internal/e;->d(Ljava/lang/Object;Lc74;)Lkotlin/reflect/jvm/internal/e$a;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KFunctionImpl;->j:Lkotlin/reflect/jvm/internal/e$a;

    .line 8
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lkotlin/reflect/jvm/internal/KFunctionImpl$caller$2;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl$caller$2;-><init>(Lkotlin/reflect/jvm/internal/KFunctionImpl;)V

    invoke-static {p1, p2}, Lkotlin/b;->b(Lkotlin/LazyThreadSafetyMode;Lc74;)Lyi5;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/KFunctionImpl;->k:Lyi5;

    .line 9
    new-instance p2, Lkotlin/reflect/jvm/internal/KFunctionImpl$defaultCaller$2;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl$defaultCaller$2;-><init>(Lkotlin/reflect/jvm/internal/KFunctionImpl;)V

    invoke-static {p1, p2}, Lkotlin/b;->b(Lkotlin/LazyThreadSafetyMode;Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KFunctionImpl;->l:Lyi5;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/descriptors/e;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    .line 1
    sget-object p5, Lkotlin/jvm/internal/CallableReference;->NO_RECEIVER:Ljava/lang/Object;

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/KFunctionImpl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/descriptors/e;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/e;)V
    .locals 9

    const-string v0, "container"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {p2}, Lgy6;->getName()Lby6;

    move-result-object v0

    invoke-virtual {v0}, Lby6;->b()Ljava/lang/String;

    move-result-object v3

    const-string v0, "descriptor.name.asString()"

    invoke-static {v3, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object v0, Lkotlin/reflect/jvm/internal/f;->a:Lkotlin/reflect/jvm/internal/f;

    invoke-virtual {v0, p2}, Lkotlin/reflect/jvm/internal/f;->g(Lkotlin/reflect/jvm/internal/impl/descriptors/e;)Lkotlin/reflect/jvm/internal/JvmFunctionSignature;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/JvmFunctionSignature;->a()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    .line 13
    invoke-direct/range {v1 .. v8}, Lkotlin/reflect/jvm/internal/KFunctionImpl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/descriptors/e;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public static final synthetic D(Lkotlin/reflect/jvm/internal/KFunctionImpl;Ljava/lang/reflect/Constructor;Lkotlin/reflect/jvm/internal/impl/descriptors/e;Z)Lkotlin/reflect/jvm/internal/calls/b;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->I(Ljava/lang/reflect/Constructor;Lkotlin/reflect/jvm/internal/impl/descriptors/e;Z)Lkotlin/reflect/jvm/internal/calls/b;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic E(Lkotlin/reflect/jvm/internal/KFunctionImpl;Ljava/lang/reflect/Method;)Lkotlin/reflect/jvm/internal/calls/b$h;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->J(Ljava/lang/reflect/Method;)Lkotlin/reflect/jvm/internal/calls/b$h;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic F(Lkotlin/reflect/jvm/internal/KFunctionImpl;Ljava/lang/reflect/Method;)Lkotlin/reflect/jvm/internal/calls/b$h;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->K(Ljava/lang/reflect/Method;)Lkotlin/reflect/jvm/internal/calls/b$h;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic G(Lkotlin/reflect/jvm/internal/KFunctionImpl;Ljava/lang/reflect/Method;)Lkotlin/reflect/jvm/internal/calls/b$h;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->L(Ljava/lang/reflect/Method;)Lkotlin/reflect/jvm/internal/calls/b$h;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic H(Lkotlin/reflect/jvm/internal/KFunctionImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KFunctionImpl;->h:Ljava/lang/String;

    return-object p0
.end method

.method private final M()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KFunctionImpl;->i:Ljava/lang/Object;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->N()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object p0

    invoke-static {v0, p0}, Lc05;->a(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic A()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->N()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object p0

    return-object p0
.end method

.method public C()Z
    .locals 1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KFunctionImpl;->i:Ljava/lang/Object;

    sget-object v0, Lkotlin/jvm/internal/CallableReference;->NO_RECEIVER:Ljava/lang/Object;

    invoke-static {p0, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final I(Ljava/lang/reflect/Constructor;Lkotlin/reflect/jvm/internal/impl/descriptors/e;Z)Lkotlin/reflect/jvm/internal/calls/b;
    .locals 0

    if-nez p3, :cond_1

    invoke-static {p2}, Lf05;->f(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->C()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lkotlin/reflect/jvm/internal/calls/b$a;

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->M()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lkotlin/reflect/jvm/internal/calls/b$a;-><init>(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lkotlin/reflect/jvm/internal/calls/b$b;

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/calls/b$b;-><init>(Ljava/lang/reflect/Constructor;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->C()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Lkotlin/reflect/jvm/internal/calls/b$c;

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->M()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lkotlin/reflect/jvm/internal/calls/b$c;-><init>(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance p2, Lkotlin/reflect/jvm/internal/calls/b$e;

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/calls/b$e;-><init>(Ljava/lang/reflect/Constructor;)V

    :goto_0
    return-object p2
.end method

.method public final J(Ljava/lang/reflect/Method;)Lkotlin/reflect/jvm/internal/calls/b$h;
    .locals 1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lkotlin/reflect/jvm/internal/calls/b$h$a;

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->M()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lkotlin/reflect/jvm/internal/calls/b$h$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/calls/b$h$d;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/calls/b$h$d;-><init>(Ljava/lang/reflect/Method;)V

    :goto_0
    return-object v0
.end method

.method public final K(Ljava/lang/reflect/Method;)Lkotlin/reflect/jvm/internal/calls/b$h;
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->C()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lkotlin/reflect/jvm/internal/calls/b$h$b;

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/calls/b$h$b;-><init>(Ljava/lang/reflect/Method;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/reflect/jvm/internal/calls/b$h$e;

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/calls/b$h$e;-><init>(Ljava/lang/reflect/Method;)V

    :goto_0
    return-object p0
.end method

.method public final L(Ljava/lang/reflect/Method;)Lkotlin/reflect/jvm/internal/calls/b$h;
    .locals 1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lkotlin/reflect/jvm/internal/calls/b$h$c;

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->M()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lkotlin/reflect/jvm/internal/calls/b$h$c;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/calls/b$h$f;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/calls/b$h$f;-><init>(Ljava/lang/reflect/Method;)V

    :goto_0
    return-object v0
.end method

.method public N()Lkotlin/reflect/jvm/internal/impl/descriptors/e;
    .locals 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KFunctionImpl;->j:Lkotlin/reflect/jvm/internal/e$a;

    sget-object v1, Lkotlin/reflect/jvm/internal/KFunctionImpl;->m:[Laf5;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lkotlin/reflect/jvm/internal/e$c;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-descriptor>(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    invoke-static {p1}, Lclb;->c(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/KFunctionImpl;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->y()Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    move-result-object v1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->y()Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    move-result-object v2

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KFunctionImpl;->h:Ljava/lang/String;

    iget-object v2, p1, Lkotlin/reflect/jvm/internal/KFunctionImpl;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KFunctionImpl;->i:Ljava/lang/Object;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/KFunctionImpl;->i:Ljava/lang/Object;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public getArity()I
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->x()Lkotlin/reflect/jvm/internal/calls/a;

    move-result-object p0

    invoke-static {p0}, Lwq0;->a(Lkotlin/reflect/jvm/internal/calls/a;)I

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->N()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object p0

    invoke-interface {p0}, Lgy6;->getName()Lby6;

    move-result-object p0

    invoke-virtual {p0}, Lby6;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "descriptor.name.asString()"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->y()Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KFunctionImpl;->h:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/b$a;->a(Lkotlin/reflect/jvm/internal/b;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/b$a;->b(Lkotlin/reflect/jvm/internal/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/b$a;->c(Lkotlin/reflect/jvm/internal/b;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4
    invoke-static {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/b$a;->d(Lkotlin/reflect/jvm/internal/b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5
    invoke-static {p0, p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/b$a;->e(Lkotlin/reflect/jvm/internal/b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-static/range {p0 .. p5}, Lkotlin/reflect/jvm/internal/b$a;->f(Lkotlin/reflect/jvm/internal/b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-static/range {p0 .. p6}, Lkotlin/reflect/jvm/internal/b$a;->g(Lkotlin/reflect/jvm/internal/b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-static/range {p0 .. p7}, Lkotlin/reflect/jvm/internal/b$a;->h(Lkotlin/reflect/jvm/internal/b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public isExternal()Z
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->N()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object p0

    invoke-interface {p0}, Lbn6;->isExternal()Z

    move-result p0

    return p0
.end method

.method public isInfix()Z
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->N()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->isInfix()Z

    move-result p0

    return p0
.end method

.method public isInline()Z
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->N()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->isInline()Z

    move-result p0

    return p0
.end method

.method public isOperator()Z
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->N()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->isOperator()Z

    move-result p0

    return p0
.end method

.method public isSuspend()Z
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->N()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->isSuspend()Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;->a:Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;->N()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/e;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public x()Lkotlin/reflect/jvm/internal/calls/a;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KFunctionImpl;->k:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/calls/a;

    return-object p0
.end method

.method public y()Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KFunctionImpl;->g:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    return-object p0
.end method

.method public z()Lkotlin/reflect/jvm/internal/calls/a;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KFunctionImpl;->l:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/calls/a;

    return-object p0
.end method
