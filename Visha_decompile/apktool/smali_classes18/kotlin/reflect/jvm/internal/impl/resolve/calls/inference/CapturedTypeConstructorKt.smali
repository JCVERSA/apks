.class public abstract Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(Lmcb;Lhcb;)Lmcb;
    .locals 0

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorKt;->b(Lmcb;Lhcb;)Lmcb;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lmcb;Lhcb;)Lmcb;
    .locals 3

    if-eqz p1, :cond_3

    invoke-interface {p0}, Lmcb;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lhcb;->h()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p1

    invoke-interface {p0}, Lmcb;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v0

    if-ne p1, v0, :cond_2

    invoke-interface {p0}, Lmcb;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Locb;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->e:Lvx9;

    const-string v2, "NO_LOCKS"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorKt$createCapturedIfNeeded$1;

    invoke-direct {v2, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorKt$createCapturedIfNeeded$1;-><init>(Lmcb;)V

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;-><init>(Lvx9;Lc74;)V

    invoke-direct {p1, v0}, Locb;-><init>(Leh5;)V

    goto :goto_0

    :cond_1
    new-instance p1, Locb;

    invoke-interface {p0}, Lmcb;->getType()Leh5;

    move-result-object p0

    invoke-direct {p1, p0}, Locb;-><init>(Leh5;)V

    :goto_0
    return-object p1

    :cond_2
    new-instance p1, Locb;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorKt;->c(Lmcb;)Leh5;

    move-result-object p0

    invoke-direct {p1, p0}, Locb;-><init>(Leh5;)V

    return-object p1

    :cond_3
    :goto_1
    return-object p0
.end method

.method public static final c(Lmcb;)Leh5;
    .locals 8

    const-string v0, "typeProjection"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lnr0;

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lnr0;-><init>(Lmcb;Lor0;ZLkotlin/reflect/jvm/internal/impl/types/j;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final d(Leh5;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Leh5;->I0()Lsbb;

    move-result-object p0

    instance-of p0, p0, Lor0;

    return p0
.end method

.method public static final e(Lkotlin/reflect/jvm/internal/impl/types/l;Z)Lkotlin/reflect/jvm/internal/impl/types/l;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Llz4;

    if-eqz v0, :cond_1

    check-cast p0, Llz4;

    invoke-virtual {p0}, Llz4;->j()[Lhcb;

    move-result-object v0

    invoke-virtual {p0}, Llz4;->i()[Lmcb;

    move-result-object v1

    invoke-virtual {p0}, Llz4;->j()[Lhcb;

    move-result-object p0

    invoke-static {v1, p0}, Lhi;->s1([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmcb;

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhcb;

    invoke-static {v3, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorKt;->b(Lmcb;Lhcb;)Lmcb;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Lmcb;

    invoke-interface {v1, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lmcb;

    new-instance v1, Llz4;

    invoke-direct {v1, v0, p0, p1}, Llz4;-><init>([Lhcb;[Lmcb;Z)V

    goto :goto_1

    :cond_1
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorKt$a;

    invoke-direct {v1, p0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorKt$a;-><init>(Lkotlin/reflect/jvm/internal/impl/types/l;Z)V

    :goto_1
    return-object v1
.end method

.method public static synthetic f(Lkotlin/reflect/jvm/internal/impl/types/l;ZILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/types/l;
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorKt;->e(Lkotlin/reflect/jvm/internal/impl/types/l;Z)Lkotlin/reflect/jvm/internal/impl/types/l;

    move-result-object p0

    return-object p0
.end method
