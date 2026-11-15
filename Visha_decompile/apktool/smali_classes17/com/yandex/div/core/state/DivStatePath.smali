.class public final Lcom/yandex/div/core/state/DivStatePath;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/state/DivStatePath$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/yandex/div/core/state/DivStatePath$a;


# instance fields
.field public final a:J

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/List;

.field public final d:Lyi5;

.field public final e:Lyi5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div/core/state/DivStatePath$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/core/state/DivStatePath$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/core/state/DivStatePath;->f:Lcom/yandex/div/core/state/DivStatePath$a;

    return-void
.end method

.method public constructor <init>(JLjava/util/List;Ljava/util/List;)V
    .locals 1

    const-string v0, "states"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/yandex/div/core/state/DivStatePath;->a:J

    .line 3
    iput-object p3, p0, Lcom/yandex/div/core/state/DivStatePath;->b:Ljava/util/List;

    .line 4
    iput-object p4, p0, Lcom/yandex/div/core/state/DivStatePath;->c:Ljava/util/List;

    .line 5
    new-instance p1, Lcom/yandex/div/core/state/DivStatePath$fullPath$2;

    invoke-direct {p1, p0}, Lcom/yandex/div/core/state/DivStatePath$fullPath$2;-><init>(Lcom/yandex/div/core/state/DivStatePath;)V

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/core/state/DivStatePath;->d:Lyi5;

    .line 6
    new-instance p1, Lcom/yandex/div/core/state/DivStatePath$statesString$2;

    invoke-direct {p1, p0}, Lcom/yandex/div/core/state/DivStatePath$statesString$2;-><init>(Lcom/yandex/div/core/state/DivStatePath;)V

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/core/state/DivStatePath;->e:Lyi5;

    return-void
.end method

.method public synthetic constructor <init>(JLjava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 7
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p3

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    .line 8
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    .line 9
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/state/DivStatePath;-><init>(JLjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/div/core/state/DivStatePath;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/state/DivStatePath;->b:Ljava/util/List;

    return-object p0
.end method

.method public static final o(Ljava/lang/String;)Lcom/yandex/div/core/state/DivStatePath;
    .locals 1

    sget-object v0, Lcom/yandex/div/core/state/DivStatePath;->f:Lcom/yandex/div/core/state/DivStatePath$a;

    invoke-virtual {v0, p0}, Lcom/yandex/div/core/state/DivStatePath$a;->l(Ljava/lang/String;)Lcom/yandex/div/core/state/DivStatePath;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/div/core/state/DivStatePath;
    .locals 3

    const-string v0, "divId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateId"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yandex/div/core/state/DivStatePath;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/yandex/div/core/state/DivStatePath;->b:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {p1, p2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/yandex/div/core/state/DivStatePath;

    iget-wide v1, p0, Lcom/yandex/div/core/state/DivStatePath;->a:J

    invoke-virtual {p0, p2}, Lcom/yandex/div/core/state/DivStatePath;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, v1, v2, v0, p0}, Lcom/yandex/div/core/state/DivStatePath;-><init>(JLjava/util/List;Ljava/util/List;)V

    return-object p1
.end method

.method public final c(Ljava/lang/String;)Lcom/yandex/div/core/state/DivStatePath;
    .locals 4

    const-string v0, "divId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div/core/state/DivStatePath;

    iget-wide v1, p0, Lcom/yandex/div/core/state/DivStatePath;->a:J

    iget-object v3, p0, Lcom/yandex/div/core/state/DivStatePath;->b:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/state/DivStatePath;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/yandex/div/core/state/DivStatePath;-><init>(JLjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yandex/div/core/state/DivStatePath;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p0, p0, Lcom/yandex/div/core/state/DivStatePath;->c:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/state/DivStatePath;->d:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/div/core/state/DivStatePath;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/div/core/state/DivStatePath;

    iget-wide v3, p0, Lcom/yandex/div/core/state/DivStatePath;->a:J

    iget-wide v5, p1, Lcom/yandex/div/core/state/DivStatePath;->a:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/yandex/div/core/state/DivStatePath;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/yandex/div/core/state/DivStatePath;->b:Ljava/util/List;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/yandex/div/core/state/DivStatePath;->c:Ljava/util/List;

    iget-object p1, p1, Lcom/yandex/div/core/state/DivStatePath;->c:Ljava/util/List;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/core/state/DivStatePath;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/div/core/state/DivStatePath;->b:Ljava/util/List;

    invoke-static {p0}, Li81;->A0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    invoke-static {p0}, Luq2;->b(Lkotlin/Pair;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final g()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/state/DivStatePath;->c:Ljava/util/List;

    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/yandex/div/core/state/DivStatePath;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Lcom/yandex/div/core/state/DivStatePath;

    iget-wide v2, p0, Lcom/yandex/div/core/state/DivStatePath;->a:J

    iget-object v1, p0, Lcom/yandex/div/core/state/DivStatePath;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    invoke-interface {v1, v5, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/yandex/div/core/state/DivStatePath;-><init>(JLjava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v8}, Lcom/yandex/div/core/state/DivStatePath;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yandex/div/core/state/DivStatePath;->b:Ljava/util/List;

    invoke-static {p0}, Li81;->A0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    invoke-static {p0}, Luq2;->a(Lkotlin/Pair;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/yandex/div/core/state/DivStatePath;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/div/core/state/DivStatePath;->b:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/yandex/div/core/state/DivStatePath;->c:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final i()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/state/DivStatePath;->b:Ljava/util/List;

    return-object p0
.end method

.method public final j()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/state/DivStatePath;->e:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final k()J
    .locals 2

    iget-wide v0, p0, Lcom/yandex/div/core/state/DivStatePath;->a:J

    return-wide v0
.end method

.method public final l(Lcom/yandex/div/core/state/DivStatePath;)Z
    .locals 6

    const-string v0, "other"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/yandex/div/core/state/DivStatePath;->a:J

    iget-wide v2, p1, Lcom/yandex/div/core/state/DivStatePath;->a:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/core/state/DivStatePath;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p1, Lcom/yandex/div/core/state/DivStatePath;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/yandex/div/core/state/DivStatePath;->b:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v0, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    if-gez v0, :cond_2

    invoke-static {}, Ly71;->u()V

    :cond_2
    check-cast v2, Lkotlin/Pair;

    iget-object v4, p1, Lcom/yandex/div/core/state/DivStatePath;->b:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    invoke-static {v2}, Luq2;->a(Lkotlin/Pair;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Luq2;->a(Lkotlin/Pair;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v2}, Luq2;->b(Lkotlin/Pair;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Luq2;->b(Lkotlin/Pair;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_0

    :cond_4
    :goto_1
    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public final m()Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/state/DivStatePath;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final n()Lcom/yandex/div/core/state/DivStatePath;
    .locals 7

    invoke-virtual {p0}, Lcom/yandex/div/core/state/DivStatePath;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/core/state/DivStatePath;->b:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Li81;->e1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ly71;->m(Ljava/util/List;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    new-instance v1, Lcom/yandex/div/core/state/DivStatePath;

    iget-wide v2, p0, Lcom/yandex/div/core/state/DivStatePath;->a:J

    sget-object v4, Lcom/yandex/div/core/state/DivStatePath;->f:Lcom/yandex/div/core/state/DivStatePath$a;

    iget-object v5, p0, Lcom/yandex/div/core/state/DivStatePath;->c:Ljava/util/List;

    iget-object p0, p0, Lcom/yandex/div/core/state/DivStatePath;->b:Ljava/util/List;

    const/4 v6, 0x0

    invoke-static {v4, v5, p0, v6}, Lcom/yandex/div/core/state/DivStatePath$a;->b(Lcom/yandex/div/core/state/DivStatePath$a;Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, v2, v3, v0, p0}, Lcom/yandex/div/core/state/DivStatePath;-><init>(JLjava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/state/DivStatePath;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
