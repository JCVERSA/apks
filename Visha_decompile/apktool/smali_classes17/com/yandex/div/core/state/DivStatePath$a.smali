.class public final Lcom/yandex/div/core/state/DivStatePath$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/state/DivStatePath;
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
    invoke-direct {p0}, Lcom/yandex/div/core/state/DivStatePath$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/yandex/div/core/state/DivStatePath;Lcom/yandex/div/core/state/DivStatePath;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div/core/state/DivStatePath$a;->d(Lcom/yandex/div/core/state/DivStatePath;Lcom/yandex/div/core/state/DivStatePath;)I

    move-result p0

    return p0
.end method

.method public static final synthetic b(Lcom/yandex/div/core/state/DivStatePath$a;Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/state/DivStatePath$a;->e(Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lcom/yandex/div/core/state/DivStatePath;Lcom/yandex/div/core/state/DivStatePath;)I
    .locals 6

    invoke-virtual {p0}, Lcom/yandex/div/core/state/DivStatePath;->k()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/yandex/div/core/state/DivStatePath;->k()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/core/state/DivStatePath;->k()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/yandex/div/core/state/DivStatePath;->k()J

    move-result-wide p0

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0

    :cond_0
    const-string v0, "lhs"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/yandex/div/core/state/DivStatePath;->a(Lcom/yandex/div/core/state/DivStatePath;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "rhs"

    invoke-static {p1, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/yandex/div/core/state/DivStatePath;->a(Lcom/yandex/div/core/state/DivStatePath;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-static {p0}, Lcom/yandex/div/core/state/DivStatePath;->a(Lcom/yandex/div/core/state/DivStatePath;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    invoke-static {p1}, Lcom/yandex/div/core/state/DivStatePath;->a(Lcom/yandex/div/core/state/DivStatePath;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    invoke-static {v2}, Luq2;->a(Lkotlin/Pair;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Luq2;->a(Lkotlin/Pair;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    return v4

    :cond_1
    invoke-static {v2}, Luq2;->b(Lkotlin/Pair;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Luq2;->b(Lkotlin/Pair;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/yandex/div/core/state/DivStatePath;->a(Lcom/yandex/div/core/state/DivStatePath;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p1}, Lcom/yandex/div/core/state/DivStatePath;->a(Lcom/yandex/div/core/state/DivStatePath;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public final c()Ljava/util/Comparator;
    .locals 0

    new-instance p0, Ltq2;

    invoke-direct {p0}, Ltq2;-><init>()V

    return-object p0
.end method

.method public final e(Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;
    .locals 3

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    sget-object v2, Lcom/yandex/div/core/state/DivStatePath;->f:Lcom/yandex/div/core/state/DivStatePath$a;

    invoke-virtual {v2, p1, v1, v0}, Lcom/yandex/div/core/state/DivStatePath$a;->g(Ljava/util/List;Lkotlin/Pair;I)I

    move-result v0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    invoke-interface {p1, p2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final f(Lcom/yandex/div/core/state/DivStatePath;Lcom/yandex/div/core/state/DivStatePath;)Ljava/util/List;
    .locals 4

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/yandex/div/core/state/DivStatePath;->a(Lcom/yandex/div/core/state/DivStatePath;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-gez v0, :cond_0

    invoke-static {}, Ly71;->u()V

    :cond_0
    check-cast v1, Lkotlin/Pair;

    invoke-static {p2}, Lcom/yandex/div/core/state/DivStatePath;->a(Lcom/yandex/div/core/state/DivStatePath;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v0}, Li81;->r0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    if-eqz v0, :cond_2

    invoke-static {v1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public final g(Ljava/util/List;Lkotlin/Pair;I)I
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ge p3, p0, :cond_1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2}, Luq2;->a(Lkotlin/Pair;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2}, Luq2;->b(Lkotlin/Pair;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final h(JLcom/yandex/div2/Div;)Lcom/yandex/div/core/state/DivStatePath;
    .locals 3

    const-string p0, "div"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ly71;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    instance-of v0, p3, Lcom/yandex/div2/Div$n;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yandex/div/core/state/DivPathUtils;->a:Lcom/yandex/div/core/state/DivPathUtils;

    check-cast p3, Lcom/yandex/div2/Div$n;

    invoke-virtual {p3}, Lcom/yandex/div2/Div$n;->c()Lcom/yandex/div2/DivState;

    move-result-object p3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p3, v2, v1, v2}, Lcom/yandex/div/core/state/DivPathUtils;->i(Lcom/yandex/div/core/state/DivPathUtils;Lcom/yandex/div2/DivState;Lc74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance p3, Lcom/yandex/div/core/state/DivStatePath;

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    invoke-direct {p3, p1, p2, v0, p0}, Lcom/yandex/div/core/state/DivStatePath;-><init>(JLjava/util/List;Ljava/util/List;)V

    return-object p3
.end method

.method public final i(J)Lcom/yandex/div/core/state/DivStatePath;
    .locals 7

    new-instance p0, Lcom/yandex/div/core/state/DivStatePath;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/yandex/div/core/state/DivStatePath;-><init>(JLjava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public final j(Lcom/yandex/div2/DivData$State;)Lcom/yandex/div/core/state/DivStatePath;
    .locals 2

    const-string v0, "state"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p1, Lcom/yandex/div2/DivData$State;->b:J

    iget-object p1, p1, Lcom/yandex/div2/DivData$State;->a:Lcom/yandex/div2/Div;

    invoke-virtual {p0, v0, v1, p1}, Lcom/yandex/div/core/state/DivStatePath$a;->h(JLcom/yandex/div2/Div;)Lcom/yandex/div/core/state/DivStatePath;

    move-result-object p0

    return-object p0
.end method

.method public final k(Lcom/yandex/div/core/state/DivStatePath;Lcom/yandex/div/core/state/DivStatePath;)Lcom/yandex/div/core/state/DivStatePath;
    .locals 4

    const-string v0, "somePath"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherPath"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/div/core/state/DivStatePath;->k()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/yandex/div/core/state/DivStatePath;->k()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/state/DivStatePath$a;->f(Lcom/yandex/div/core/state/DivStatePath;Lcom/yandex/div/core/state/DivStatePath;)Ljava/util/List;

    move-result-object p2

    new-instance v0, Lcom/yandex/div/core/state/DivStatePath;

    invoke-virtual {p1}, Lcom/yandex/div/core/state/DivStatePath;->k()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/yandex/div/core/state/DivStatePath;->g()Ljava/util/List;

    move-result-object p1

    const/4 v3, 0x1

    invoke-virtual {p0, p1, p2, v3}, Lcom/yandex/div/core/state/DivStatePath$a;->e(Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, v2, p2, p0}, Lcom/yandex/div/core/state/DivStatePath;-><init>(JLjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public final l(Ljava/lang/String;)Lcom/yandex/div/core/state/DivStatePath;
    .locals 7

    const-string p0, "path"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "/"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lj1a;->O0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    rem-int/2addr v3, v4

    const/4 v5, 0x1

    if-ne v3, v5, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {v5, p1}, Lwn8;->q(II)Lu15;

    move-result-object p1

    invoke-static {p1, v4}, Lwn8;->p(Ls15;I)Ls15;

    move-result-object p1

    invoke-virtual {p1}, Ls15;->b()I

    move-result v3

    invoke-virtual {p1}, Ls15;->c()I

    move-result v4

    invoke-virtual {p1}, Ls15;->f()I

    move-result p1

    if-lez p1, :cond_0

    if-le v3, v4, :cond_1

    :cond_0
    if-gez p1, :cond_2

    if-gt v4, v3, :cond_2

    :cond_1
    :goto_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v3, v4, :cond_2

    add-int/2addr v3, p1

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/yandex/div/core/state/DivStatePath;

    invoke-direct {p1, v1, v2, p0, v0}, Lcom/yandex/div/core/state/DivStatePath;-><init>(JLjava/util/List;Ljava/util/List;)V

    return-object p1

    :cond_3
    new-instance p0, Lcom/yandex/div/core/state/PathFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Must be even number of states in path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v4, v0}, Lcom/yandex/div/core/state/PathFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/yandex/div/core/state/PathFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Top level id must be number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/yandex/div/core/state/PathFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
