.class public final Lkotlin/reflect/jvm/internal/impl/types/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/types/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/types/k$a;-><init>()V

    return-void
.end method

.method public static synthetic e(Lkotlin/reflect/jvm/internal/impl/types/k$a;Ljava/util/Map;ZILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/types/k;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/k$a;->d(Ljava/util/Map;Z)Lkotlin/reflect/jvm/internal/impl/types/k;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Leh5;)Lkotlin/reflect/jvm/internal/impl/types/l;
    .locals 1

    const-string v0, "kotlinType"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Leh5;->I0()Lsbb;

    move-result-object v0

    invoke-virtual {p1}, Leh5;->G0()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lkotlin/reflect/jvm/internal/impl/types/k$a;->b(Lsbb;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/l;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lsbb;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/l;
    .locals 4

    const-string v0, "typeConstructor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lsbb;->getParameters()Ljava/util/List;

    move-result-object v0

    const-string v1, "typeConstructor.parameters"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Li81;->C0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhcb;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lhcb;->A()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-interface {p1}, Lsbb;->getParameters()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhcb;

    invoke-interface {v1}, Lhcb;->m()Lsbb;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    check-cast p2, Ljava/lang/Iterable;

    invoke-static {v0, p2}, Li81;->l1(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/a;->y(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p2, v0}, Lkotlin/reflect/jvm/internal/impl/types/k$a;->e(Lkotlin/reflect/jvm/internal/impl/types/k$a;Ljava/util/Map;ZILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/types/k;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Llz4;

    invoke-direct {p0, v0, p2}, Llz4;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method public final c(Ljava/util/Map;)Lkotlin/reflect/jvm/internal/impl/types/k;
    .locals 3

    const-string v0, "map"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/k$a;->e(Lkotlin/reflect/jvm/internal/impl/types/k$a;Ljava/util/Map;ZILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/types/k;

    move-result-object p0

    return-object p0
.end method

.method public final d(Ljava/util/Map;Z)Lkotlin/reflect/jvm/internal/impl/types/k;
    .locals 0

    const-string p0, "map"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lkotlin/reflect/jvm/internal/impl/types/k$a$a;

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/k$a$a;-><init>(Ljava/util/Map;Z)V

    return-object p0
.end method
