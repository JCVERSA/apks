.class public final Lkotlin/reflect/jvm/internal/impl/types/j;
.super Lfl;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lqe5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/types/j$a;
    }
.end annotation


# static fields
.field public static final c:Lkotlin/reflect/jvm/internal/impl/types/j$a;

.field public static final d:Lkotlin/reflect/jvm/internal/impl/types/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/j$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/j;->c:Lkotlin/reflect/jvm/internal/impl/types/j$a;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/j;

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/j;-><init>(Ljava/util/List;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/j;->d:Lkotlin/reflect/jvm/internal/impl/types/j;

    return-void
.end method

.method public constructor <init>(Libb;)V
    .locals 0

    .line 5
    invoke-static {p1}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/j;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lfl;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Libb;

    .line 4
    invoke-virtual {v0}, Libb;->b()Lde5;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lfl;->f(Lde5;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/j;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic k()Lkotlin/reflect/jvm/internal/impl/types/j;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/j;->d:Lkotlin/reflect/jvm/internal/impl/types/j;

    return-object v0
.end method


# virtual methods
.method public c()Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry;
    .locals 0

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/j;->c:Lkotlin/reflect/jvm/internal/impl/types/j$a;

    return-object p0
.end method

.method public final l(Lkotlin/reflect/jvm/internal/impl/types/j;)Lkotlin/reflect/jvm/internal/impl/types/j;
    .locals 5

    const-string v0, "other"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ln2;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ln2;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/j;->c:Lkotlin/reflect/jvm/internal/impl/types/j$a;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/j$a;->f(Lkotlin/reflect/jvm/internal/impl/types/j$a;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lfl;->b()Lah;

    move-result-object v3

    invoke-virtual {v3, v2}, Lah;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Libb;

    invoke-virtual {p1}, Lfl;->b()Lah;

    move-result-object v4

    invoke-virtual {v4, v2}, Lah;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Libb;

    if-nez v3, :cond_2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v3}, Libb;->a(Libb;)Libb;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v2}, Libb;->a(Libb;)Libb;

    move-result-object v2

    :goto_1
    invoke-static {v0, v2}, Lv71;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/j;->c:Lkotlin/reflect/jvm/internal/impl/types/j$a;

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/j$a;->g(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public final m(Libb;)Z
    .locals 1

    const-string v0, "attribute"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/j;->c:Lkotlin/reflect/jvm/internal/impl/types/j$a;

    invoke-virtual {p1}, Libb;->b()Lde5;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry;->d(Lde5;)I

    move-result p1

    invoke-virtual {p0}, Lfl;->b()Lah;

    move-result-object p0

    invoke-virtual {p0, p1}, Lah;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final n(Lkotlin/reflect/jvm/internal/impl/types/j;)Lkotlin/reflect/jvm/internal/impl/types/j;
    .locals 5

    const-string v0, "other"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ln2;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ln2;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/j;->c:Lkotlin/reflect/jvm/internal/impl/types/j$a;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/j$a;->f(Lkotlin/reflect/jvm/internal/impl/types/j$a;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lfl;->b()Lah;

    move-result-object v3

    invoke-virtual {v3, v2}, Lah;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Libb;

    invoke-virtual {p1}, Lfl;->b()Lah;

    move-result-object v4

    invoke-virtual {v4, v2}, Lah;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Libb;

    if-nez v3, :cond_2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v3}, Libb;->c(Libb;)Libb;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v2}, Libb;->c(Libb;)Libb;

    move-result-object v2

    :goto_1
    invoke-static {v0, v2}, Lv71;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/j;->c:Lkotlin/reflect/jvm/internal/impl/types/j$a;

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/j$a;->g(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public final o(Libb;)Lkotlin/reflect/jvm/internal/impl/types/j;
    .locals 1

    const-string v0, "attribute"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/j;->m(Libb;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ln2;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lkotlin/reflect/jvm/internal/impl/types/j;

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/j;-><init>(Libb;)V

    return-object p0

    :cond_1
    invoke-static {p0}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0, p1}, Li81;->K0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/j;->c:Lkotlin/reflect/jvm/internal/impl/types/j$a;

    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/impl/types/j$a;->g(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object p0

    return-object p0
.end method

.method public final p(Libb;)Lkotlin/reflect/jvm/internal/impl/types/j;
    .locals 4

    const-string v0, "attribute"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ln2;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lfl;->b()Lah;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Libb;

    invoke-static {v3, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0}, Lfl;->b()Lah;

    move-result-object v0

    invoke-virtual {v0}, Lah;->b()I

    move-result v0

    if-ne p1, v0, :cond_3

    return-object p0

    :cond_3
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/j;->c:Lkotlin/reflect/jvm/internal/impl/types/j$a;

    invoke-virtual {p0, v1}, Lkotlin/reflect/jvm/internal/impl/types/j$a;->g(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object p0

    return-object p0
.end method
