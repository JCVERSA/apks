.class public final Lcom/yandex/mobile/ads/impl/ep;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/tp1;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/o3;

.field private final c:Lcom/yandex/mobile/ads/impl/z41;

.field private final d:Lcom/yandex/mobile/ads/impl/sp1;

.field private final e:Lcom/yandex/mobile/ads/impl/wq;

.field private final f:Lcom/yandex/mobile/ads/impl/id;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/z41;)V
    .locals 10

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
    new-instance v8, Lcom/yandex/mobile/ads/impl/wq;

    invoke-direct {v8}, Lcom/yandex/mobile/ads/impl/wq;-><init>()V

    .line 5
    new-instance v9, Lcom/yandex/mobile/ads/impl/id;

    invoke-direct {v9, p1}, Lcom/yandex/mobile/ads/impl/id;-><init>(Landroid/content/Context;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 6
    invoke-direct/range {v2 .. v9}, Lcom/yandex/mobile/ads/impl/ep;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/z41;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/wq;Lcom/yandex/mobile/ads/impl/id;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/z41;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/wq;Lcom/yandex/mobile/ads/impl/id;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "Lcom/yandex/mobile/ads/impl/z41;",
            "Lcom/yandex/mobile/ads/impl/sp1;",
            "Lcom/yandex/mobile/ads/impl/wq;",
            "Lcom/yandex/mobile/ads/impl/id;",
            ")V"
        }
    .end annotation

    .line 7
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adResponse"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adConfiguration"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "metricaReporter"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "commonReportDataProvider"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "metricaLibraryEventReporter"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ep;->a:Lcom/yandex/mobile/ads/impl/o8;

    .line 10
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ep;->b:Lcom/yandex/mobile/ads/impl/o3;

    .line 11
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/ep;->c:Lcom/yandex/mobile/ads/impl/z41;

    .line 12
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/ep;->d:Lcom/yandex/mobile/ads/impl/sp1;

    .line 13
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/ep;->e:Lcom/yandex/mobile/ads/impl/wq;

    .line 14
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/ep;->f:Lcom/yandex/mobile/ads/impl/id;

    return-void
.end method

.method private final a(Lcom/yandex/mobile/ads/impl/op1$b;Ljava/util/HashMap;)Lcom/yandex/mobile/ads/impl/op1;
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/pp1;

    const/4 v1, 0x2

    invoke-direct {v0, p2, v1}, Lcom/yandex/mobile/ads/impl/pp1;-><init>(Ljava/util/Map;I)V

    .line 2
    sget-object p2, Lcom/yandex/mobile/ads/impl/op1$a;->a:Ljava/lang/String;

    const-string v1, "adapter"

    invoke-virtual {v0, p2, v1}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/ep;->e:Lcom/yandex/mobile/ads/impl/wq;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ep;->a:Lcom/yandex/mobile/ads/impl/o8;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ep;->b:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {p2, v1, v2}, Lcom/yandex/mobile/ads/impl/wq;->a(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object p2

    .line 4
    invoke-static {v0, p2}, Lcom/yandex/mobile/ads/impl/qp1;->a(Lcom/yandex/mobile/ads/impl/pp1;Lcom/yandex/mobile/ads/impl/pp1;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ep;->b:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/o3;->r()Lcom/yandex/mobile/ads/impl/gz1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/gz1;->a()Lcom/yandex/mobile/ads/impl/gz1$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/gz1$a;->a()Ljava/lang/String;

    move-result-object v1

    .line 7
    const-string v2, "size_type"

    invoke-virtual {p2, v1, v2}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/gz1;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "width"

    invoke-virtual {p2, v1, v2}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/gz1;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "height"

    invoke-virtual {p2, v0, v1}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ep;->c:Lcom/yandex/mobile/ads/impl/z41;

    if-eqz p0, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/z41;->a()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/yandex/mobile/ads/impl/pp1;->a(Ljava/util/Map;)V

    .line 12
    :cond_1
    new-instance p0, Lcom/yandex/mobile/ads/impl/op1;

    .line 13
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/pp1;->b()Ljava/util/Map;

    move-result-object v0

    .line 14
    const-string v1, "reportType"

    const-string v2, "reportData"

    invoke-static {p2, p1, v1, v0, v2}, Lcom/yandex/mobile/ads/impl/df1;->a(Lcom/yandex/mobile/ads/impl/pp1;Lcom/yandex/mobile/ads/impl/op1$b;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/f;

    move-result-object p2

    .line 15
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/op1$b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lkotlin/collections/a;->C(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/yandex/mobile/ads/impl/op1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/f;)V

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/op1$b;)V
    .locals 1

    .line 16
    const-string v0, "reportType"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/ep;->a(Lcom/yandex/mobile/ads/impl/op1$b;Ljava/util/HashMap;)Lcom/yandex/mobile/ads/impl/op1;

    move-result-object p1

    .line 18
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ep;->d:Lcom/yandex/mobile/ads/impl/sp1;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/sp1;->a(Lcom/yandex/mobile/ads/impl/op1;)V

    return-void
.end method

.method public final a(Ljava/util/HashMap;)V
    .locals 3

    .line 19
    sget-object v0, Lcom/yandex/mobile/ads/impl/op1$b;->C:Lcom/yandex/mobile/ads/impl/op1$b;

    const-string v1, "reportType"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "reportData"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, v0, p1}, Lcom/yandex/mobile/ads/impl/ep;->a(Lcom/yandex/mobile/ads/impl/op1$b;Ljava/util/HashMap;)Lcom/yandex/mobile/ads/impl/op1;

    move-result-object p1

    .line 21
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ep;->d:Lcom/yandex/mobile/ads/impl/sp1;

    invoke-interface {v1, p1}, Lcom/yandex/mobile/ads/impl/sp1;->a(Lcom/yandex/mobile/ads/impl/op1;)V

    .line 22
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ep;->f:Lcom/yandex/mobile/ads/impl/id;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/op1;->b()Ljava/util/Map;

    move-result-object p1

    sget-object v1, Lcom/yandex/mobile/ads/impl/op1$a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    .line 23
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/yandex/mobile/ads/impl/id;->a(Lcom/yandex/mobile/ads/impl/op1$b;Ljava/util/Map;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/t4;)V

    return-void
.end method
