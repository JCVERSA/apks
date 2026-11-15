.class public final Lh84$b;
.super Lp2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh84;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh84$b$a;
    }
.end annotation


# instance fields
.field public final synthetic d:Lh84;


# direct methods
.method public constructor <init>(Lh84;)V
    .locals 0

    iput-object p1, p0, Lh84$b;->d:Lh84;

    invoke-static {p1}, Lh84;->K0(Lh84;)Lvx9;

    move-result-object p1

    invoke-direct {p0, p1}, Lp2;-><init>(Lvx9;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c()Lpx0;
    .locals 0

    invoke-virtual {p0}, Lh84$b;->w()Lh84;

    move-result-object p0

    return-object p0
.end method

.method public d()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getParameters()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lh84$b;->d:Lh84;

    invoke-static {p0}, Lh84;->J0(Lh84;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public j()Ljava/util/Collection;
    .locals 9

    iget-object v0, p0, Lh84$b;->d:Lh84;

    invoke-virtual {v0}, Lh84;->P0()Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

    move-result-object v0

    sget-object v1, Lh84$b$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-static {}, Lh84;->I0()Lxw0;

    move-result-object v0

    new-instance v1, Lxw0;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/e;->n:Lo54;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;->SuspendFunction:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

    iget-object v4, p0, Lh84$b;->d:Lh84;

    invoke-virtual {v4}, Lh84;->L0()I

    move-result v4

    invoke-virtual {v3, v4}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;->numberedClassName(I)Lby6;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lxw0;-><init>(Lo54;Lby6;)V

    filled-new-array {v0, v1}, [Lxw0;

    move-result-object v0

    invoke-static {v0}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    invoke-static {}, Lh84;->H0()Lxw0;

    move-result-object v0

    invoke-static {v0}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lh84;->I0()Lxw0;

    move-result-object v0

    new-instance v1, Lxw0;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/e;->v:Lo54;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;->Function:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

    iget-object v4, p0, Lh84$b;->d:Lh84;

    invoke-virtual {v4}, Lh84;->L0()I

    move-result v4

    invoke-virtual {v3, v4}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;->numberedClassName(I)Lby6;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lxw0;-><init>(Lo54;Lby6;)V

    filled-new-array {v0, v1}, [Lxw0;

    move-result-object v0

    invoke-static {v0}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {}, Lh84;->H0()Lxw0;

    move-result-object v0

    invoke-static {v0}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lh84$b;->d:Lh84;

    invoke-static {v1}, Lh84;->G0(Lh84;)Ldv7;

    move-result-object v1

    invoke-interface {v1}, Ldv7;->b()Lqq6;

    move-result-object v1

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lxw0;

    invoke-static {v1, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt;->a(Lqq6;Lxw0;)Lqw0;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lh84$b;->getParameters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v5}, Lpx0;->m()Lsbb;

    move-result-object v6

    invoke-interface {v6}, Lsbb;->getParameters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v4, v6}, Li81;->V0(Ljava/util/List;I)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v4, v3}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lhcb;

    new-instance v8, Locb;

    invoke-interface {v7}, Lpx0;->q()Lsm9;

    move-result-object v7

    invoke-direct {v8, v7}, Locb;-><init>(Leh5;)V

    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/j;->c:Lkotlin/reflect/jvm/internal/impl/types/j$a;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/types/j$a;->h()Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object v4

    invoke-static {v4, v5, v6}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->g(Lkotlin/reflect/jvm/internal/impl/types/j;Lqw0;Ljava/util/List;)Lsm9;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Built-in class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-static {v2}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public p()Lt6a;
    .locals 0

    sget-object p0, Lt6a$a;->a:Lt6a$a;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lh84$b;->w()Lh84;

    move-result-object p0

    invoke-virtual {p0}, Lh84;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic v()Lqw0;
    .locals 0

    invoke-virtual {p0}, Lh84$b;->w()Lh84;

    move-result-object p0

    return-object p0
.end method

.method public w()Lh84;
    .locals 0

    iget-object p0, p0, Lh84$b;->d:Lh84;

    return-object p0
.end method
