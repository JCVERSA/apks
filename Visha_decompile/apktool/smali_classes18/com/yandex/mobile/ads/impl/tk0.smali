.class public final Lcom/yandex/mobile/ads/impl/tk0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/o3;

.field private final c:Lcom/yandex/mobile/ads/impl/t4;

.field private final d:Lcom/yandex/mobile/ads/impl/sp1;

.field private final e:Lcom/yandex/mobile/ads/impl/ju1;

.field private final f:Lcom/yandex/mobile/ads/impl/wq;

.field private final g:Lcom/yandex/mobile/ads/impl/id;

.field private h:Lcom/yandex/mobile/ads/impl/x71;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/t4;)V
    .locals 11

    .line 1
    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/bv1;->f()V

    sget-object v0, Lcom/yandex/mobile/ads/impl/jn2;->a:Lcom/yandex/mobile/ads/impl/jn2;

    .line 2
    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

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

    .line 6
    new-instance v10, Lcom/yandex/mobile/ads/impl/id;

    invoke-direct {v10, p1}, Lcom/yandex/mobile/ads/impl/id;-><init>(Landroid/content/Context;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 7
    invoke-direct/range {v2 .. v10}, Lcom/yandex/mobile/ads/impl/tk0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/t4;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/ju1;Lcom/yandex/mobile/ads/impl/wq;Lcom/yandex/mobile/ads/impl/id;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/t4;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/ju1;Lcom/yandex/mobile/ads/impl/wq;Lcom/yandex/mobile/ads/impl/id;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "Lcom/yandex/mobile/ads/impl/t4;",
            "Lcom/yandex/mobile/ads/impl/sp1;",
            "Lcom/yandex/mobile/ads/impl/ju1;",
            "Lcom/yandex/mobile/ads/impl/wq;",
            "Lcom/yandex/mobile/ads/impl/id;",
            ")V"
        }
    .end annotation

    .line 8
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adResponse"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adConfiguration"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "metricaReporter"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "commonReportDataProvider"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "metricaLibraryEventReporter"

    invoke-static {p8, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/tk0;->a:Lcom/yandex/mobile/ads/impl/o8;

    .line 11
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/tk0;->b:Lcom/yandex/mobile/ads/impl/o3;

    .line 12
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/tk0;->c:Lcom/yandex/mobile/ads/impl/t4;

    .line 13
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/tk0;->d:Lcom/yandex/mobile/ads/impl/sp1;

    .line 14
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/tk0;->e:Lcom/yandex/mobile/ads/impl/ju1;

    .line 15
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/tk0;->f:Lcom/yandex/mobile/ads/impl/wq;

    .line 16
    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/tk0;->g:Lcom/yandex/mobile/ads/impl/id;

    return-void
.end method

.method private final a()Lcom/yandex/mobile/ads/impl/pp1;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/tk0;->f:Lcom/yandex/mobile/ads/impl/wq;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/tk0;->a:Lcom/yandex/mobile/ads/impl/o8;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/tk0;->b:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/wq;->a(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/yandex/mobile/ads/impl/op1$a;->a:Ljava/lang/String;

    const-string v2, "adapter"

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/tk0;->b:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o3;->r()Lcom/yandex/mobile/ads/impl/gz1;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/gz1;->a()Lcom/yandex/mobile/ads/impl/gz1$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/gz1$a;->a()Ljava/lang/String;

    move-result-object v2

    .line 5
    const-string v3, "size_type"

    invoke-virtual {v0, v2, v3}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/gz1;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "width"

    invoke-virtual {v0, v2, v3}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/gz1;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "height"

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/tk0;->e:Lcom/yandex/mobile/ads/impl/ju1;

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ju1;->m()Ljava/lang/String;

    move-result-object v1

    .line 10
    const-string v2, "banner_size_calculation_type"

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    :cond_1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/tk0;->h:Lcom/yandex/mobile/ads/impl/x71;

    if-eqz p0, :cond_2

    .line 12
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/x71;->a()Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/yandex/mobile/ads/impl/qp1;->a(Lcom/yandex/mobile/ads/impl/pp1;Lcom/yandex/mobile/ads/impl/pp1;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object v0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/o8;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;)V"
        }
    .end annotation

    .line 38
    const-string v0, "adResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/tk0;->a:Lcom/yandex/mobile/ads/impl/o8;

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/op1$b;)V
    .locals 3

    .line 30
    const-string v0, "reportType"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/tk0;->a()Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/yandex/mobile/ads/impl/op1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/pp1;->b()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/pp1;->a()Lcom/yandex/mobile/ads/impl/f;

    move-result-object v0

    invoke-direct {v1, p1, v2, v0}, Lcom/yandex/mobile/ads/impl/op1;-><init>(Lcom/yandex/mobile/ads/impl/op1$b;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/f;)V

    .line 33
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/tk0;->d:Lcom/yandex/mobile/ads/impl/sp1;

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/sp1;->a(Lcom/yandex/mobile/ads/impl/op1;)V

    .line 34
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/tk0;->g:Lcom/yandex/mobile/ads/impl/id;

    .line 35
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/op1;->b()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/yandex/mobile/ads/impl/op1$a;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/tk0;->c:Lcom/yandex/mobile/ads/impl/t4;

    invoke-virtual {v0, p1, v1, v2, p0}, Lcom/yandex/mobile/ads/impl/id;->a(Lcom/yandex/mobile/ads/impl/op1$b;Ljava/util/Map;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/t4;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/op1$b;Lcom/yandex/mobile/ads/impl/n92;)V
    .locals 3

    .line 13
    const-string v0, "reportType"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "validationResult"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/tk0;->a()Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object v0

    .line 15
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/n92;->b()Lcom/yandex/mobile/ads/impl/n92$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/n92$a;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "reason"

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/n92;->a()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 17
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 18
    const-string v1, "asset_name"

    invoke-virtual {v0, p2, v1}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    :cond_0
    new-instance p2, Lcom/yandex/mobile/ads/impl/op1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/pp1;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/pp1;->a()Lcom/yandex/mobile/ads/impl/f;

    move-result-object v0

    invoke-direct {p2, p1, v1, v0}, Lcom/yandex/mobile/ads/impl/op1;-><init>(Lcom/yandex/mobile/ads/impl/op1$b;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/f;)V

    .line 20
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/tk0;->d:Lcom/yandex/mobile/ads/impl/sp1;

    invoke-interface {v0, p2}, Lcom/yandex/mobile/ads/impl/sp1;->a(Lcom/yandex/mobile/ads/impl/op1;)V

    .line 21
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/tk0;->g:Lcom/yandex/mobile/ads/impl/id;

    .line 22
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/op1;->b()Ljava/util/Map;

    move-result-object p2

    sget-object v1, Lcom/yandex/mobile/ads/impl/op1$a;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/tk0;->c:Lcom/yandex/mobile/ads/impl/t4;

    invoke-virtual {v0, p1, p2, v1, p0}, Lcom/yandex/mobile/ads/impl/id;->a(Lcom/yandex/mobile/ads/impl/op1$b;Ljava/util/Map;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/t4;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/op1$b;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/op1$b;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 23
    const-string v0, "reportType"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalReportData"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/tk0;->a()Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object v0

    .line 25
    invoke-virtual {v0, p2}, Lcom/yandex/mobile/ads/impl/pp1;->a(Ljava/util/Map;)V

    .line 26
    new-instance p2, Lcom/yandex/mobile/ads/impl/op1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/pp1;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/pp1;->a()Lcom/yandex/mobile/ads/impl/f;

    move-result-object v0

    invoke-direct {p2, p1, v1, v0}, Lcom/yandex/mobile/ads/impl/op1;-><init>(Lcom/yandex/mobile/ads/impl/op1$b;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/f;)V

    .line 27
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/tk0;->d:Lcom/yandex/mobile/ads/impl/sp1;

    invoke-interface {v0, p2}, Lcom/yandex/mobile/ads/impl/sp1;->a(Lcom/yandex/mobile/ads/impl/op1;)V

    .line 28
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/tk0;->g:Lcom/yandex/mobile/ads/impl/id;

    .line 29
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/op1;->b()Ljava/util/Map;

    move-result-object p2

    sget-object v1, Lcom/yandex/mobile/ads/impl/op1$a;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/tk0;->c:Lcom/yandex/mobile/ads/impl/t4;

    invoke-virtual {v0, p1, p2, v1, p0}, Lcom/yandex/mobile/ads/impl/id;->a(Lcom/yandex/mobile/ads/impl/op1$b;Ljava/util/Map;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/t4;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/x71;)V
    .locals 1

    .line 36
    const-string v0, "reportParameterManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/tk0;->h:Lcom/yandex/mobile/ads/impl/x71;

    return-void
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/op1$b;Lcom/yandex/mobile/ads/impl/n92;)V
    .locals 3

    const-string v0, "reportType"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "validationResult"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/tk0;->a()Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/n92;->b()Lcom/yandex/mobile/ads/impl/n92$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/n92$a;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "reason"

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/n92;->a()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "asset_name"

    invoke-virtual {v0, p2, v1}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    new-instance p2, Lcom/yandex/mobile/ads/impl/op1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/pp1;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/pp1;->a()Lcom/yandex/mobile/ads/impl/f;

    move-result-object v0

    invoke-direct {p2, p1, v1, v0}, Lcom/yandex/mobile/ads/impl/op1;-><init>(Lcom/yandex/mobile/ads/impl/op1$b;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/f;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/tk0;->d:Lcom/yandex/mobile/ads/impl/sp1;

    invoke-interface {v0, p2}, Lcom/yandex/mobile/ads/impl/sp1;->a(Lcom/yandex/mobile/ads/impl/op1;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/tk0;->g:Lcom/yandex/mobile/ads/impl/id;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/op1;->b()Ljava/util/Map;

    move-result-object p2

    sget-object v1, Lcom/yandex/mobile/ads/impl/op1$a;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/tk0;->c:Lcom/yandex/mobile/ads/impl/t4;

    invoke-virtual {v0, p1, p2, v1, p0}, Lcom/yandex/mobile/ads/impl/id;->a(Lcom/yandex/mobile/ads/impl/op1$b;Ljava/util/Map;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/t4;)V

    return-void
.end method
