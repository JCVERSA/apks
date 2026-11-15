.class public final Lcom/yandex/mobile/ads/impl/ro1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o3;

.field private final b:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/mobile/ads/impl/s9;

.field private final d:Lcom/yandex/mobile/ads/impl/sp1;

.field private final e:Lcom/yandex/mobile/ads/impl/ju1;

.field private final f:Lcom/yandex/mobile/ads/impl/wq;

.field private g:Lcom/yandex/mobile/ads/impl/u91;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/s9;)V
    .locals 10

    .line 1
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/bv1;->f()V

    sget-object v0, Lcom/yandex/mobile/ads/impl/jn2;->a:Lcom/yandex/mobile/ads/impl/jn2;

    .line 2
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/bv1;->b()Lcom/yandex/mobile/ads/impl/ol2;

    move-result-object v1

    .line 3
    invoke-static {p1, v0, v1}, Lcom/yandex/mobile/ads/impl/nd;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/t92;Lcom/yandex/mobile/ads/impl/ie;)Lcom/yandex/mobile/ads/impl/s01;

    move-result-object v7

    .line 4
    sget v0, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v8

    .line 5
    new-instance v9, Lcom/yandex/mobile/ads/impl/wq;

    invoke-direct {v9}, Lcom/yandex/mobile/ads/impl/wq;-><init>()V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 6
    invoke-direct/range {v2 .. v9}, Lcom/yandex/mobile/ads/impl/ro1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/s9;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/ju1;Lcom/yandex/mobile/ads/impl/wq;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/s9;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/ju1;Lcom/yandex/mobile/ads/impl/wq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/s9;",
            "Lcom/yandex/mobile/ads/impl/sp1;",
            "Lcom/yandex/mobile/ads/impl/ju1;",
            "Lcom/yandex/mobile/ads/impl/wq;",
            ")V"
        }
    .end annotation

    .line 7
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adConfiguration"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adResponse"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adStructureType"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "metricaReporter"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "commonReportDataProvider"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ro1;->a:Lcom/yandex/mobile/ads/impl/o3;

    .line 10
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ro1;->b:Lcom/yandex/mobile/ads/impl/o8;

    .line 11
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/ro1;->c:Lcom/yandex/mobile/ads/impl/s9;

    .line 12
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/ro1;->d:Lcom/yandex/mobile/ads/impl/sp1;

    .line 13
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/ro1;->e:Lcom/yandex/mobile/ads/impl/ju1;

    .line 14
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/ro1;->f:Lcom/yandex/mobile/ads/impl/wq;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ro1;->f:Lcom/yandex/mobile/ads/impl/wq;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ro1;->b:Lcom/yandex/mobile/ads/impl/o8;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ro1;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/wq;->a(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/yandex/mobile/ads/impl/op1$a;->a:Ljava/lang/String;

    const-string v2, "adapter"

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ro1;->g:Lcom/yandex/mobile/ads/impl/u91;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/u91;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/pp1;->a(Ljava/util/Map;)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ro1;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o3;->r()Lcom/yandex/mobile/ads/impl/gz1;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/gz1;->a()Lcom/yandex/mobile/ads/impl/gz1$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/gz1$a;->a()Ljava/lang/String;

    move-result-object v2

    .line 7
    const-string v3, "size_type"

    invoke-virtual {v0, v2, v3}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/gz1;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "width"

    invoke-virtual {v0, v2, v3}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/gz1;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "height"

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ro1;->e:Lcom/yandex/mobile/ads/impl/ju1;

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ju1;->m()Ljava/lang/String;

    move-result-object v1

    .line 12
    const-string v2, "banner_size_calculation_type"

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ro1;->c:Lcom/yandex/mobile/ads/impl/s9;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 15
    sget-object v1, Lcom/yandex/mobile/ads/impl/op1$b;->v:Lcom/yandex/mobile/ads/impl/op1$b;

    invoke-static {v1}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 16
    :cond_4
    sget-object v1, Lcom/yandex/mobile/ads/impl/op1$b;->w:Lcom/yandex/mobile/ads/impl/op1$b;

    invoke-static {v1}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 17
    :cond_5
    sget-object v1, Lcom/yandex/mobile/ads/impl/op1$b;->w:Lcom/yandex/mobile/ads/impl/op1$b;

    sget-object v2, Lcom/yandex/mobile/ads/impl/op1$b;->v:Lcom/yandex/mobile/ads/impl/op1$b;

    filled-new-array {v1, v2}, [Lcom/yandex/mobile/ads/impl/op1$b;

    move-result-object v1

    invoke-static {v1}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 18
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/mobile/ads/impl/op1$b;

    .line 19
    new-instance v3, Lcom/yandex/mobile/ads/impl/op1;

    .line 20
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/pp1;->b()Ljava/util/Map;

    move-result-object v4

    .line 21
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/pp1;->a()Lcom/yandex/mobile/ads/impl/f;

    move-result-object v5

    .line 22
    invoke-direct {v3, v2, v4, v5}, Lcom/yandex/mobile/ads/impl/op1;-><init>(Lcom/yandex/mobile/ads/impl/op1$b;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/f;)V

    .line 23
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ro1;->d:Lcom/yandex/mobile/ads/impl/sp1;

    invoke-interface {v2, v3}, Lcom/yandex/mobile/ads/impl/sp1;->a(Lcom/yandex/mobile/ads/impl/op1;)V

    goto :goto_1

    :cond_6
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/u91;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ro1;->g:Lcom/yandex/mobile/ads/impl/u91;

    return-void
.end method
