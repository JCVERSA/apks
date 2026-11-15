.class public final Lcom/yandex/mobile/ads/impl/fo1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/sp1;

.field private final c:Lcom/yandex/mobile/ads/impl/ah;

.field private d:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/y4;Lcom/yandex/mobile/ads/impl/ts;Lcom/yandex/mobile/ads/impl/o8;Ljava/lang/String;)V
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

    move-object v3, p1

    .line 3
    invoke-static {p1, v0, v1}, Lcom/yandex/mobile/ads/impl/nd;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/t92;Lcom/yandex/mobile/ads/impl/ie;)Lcom/yandex/mobile/ads/impl/s01;

    move-result-object v9

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    .line 4
    invoke-direct/range {v2 .. v9}, Lcom/yandex/mobile/ads/impl/fo1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/y4;Lcom/yandex/mobile/ads/impl/ts;Lcom/yandex/mobile/ads/impl/o8;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/sp1;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/y4;Lcom/yandex/mobile/ads/impl/ts;Lcom/yandex/mobile/ads/impl/o8;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/sp1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "Lcom/yandex/mobile/ads/impl/y4;",
            "Lcom/yandex/mobile/ads/impl/ts;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/yandex/mobile/ads/impl/sp1;",
            ")V"
        }
    .end annotation

    .line 5
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adConfiguration"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adInfoReportDataProviderFactory"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adType"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adResponse"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "metricaReporter"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/fo1;->a:Lcom/yandex/mobile/ads/impl/o8;

    .line 8
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/fo1;->b:Lcom/yandex/mobile/ads/impl/sp1;

    .line 9
    new-instance p1, Lcom/yandex/mobile/ads/impl/ah;

    invoke-direct {p1, p3, p4, p6}, Lcom/yandex/mobile/ads/impl/ah;-><init>(Lcom/yandex/mobile/ads/impl/y4;Lcom/yandex/mobile/ads/impl/ts;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fo1;->c:Lcom/yandex/mobile/ads/impl/ah;

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/fo1;->d:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/fo1;->d:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fo1;->c:Lcom/yandex/mobile/ads/impl/ah;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ah;->a()Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/fo1;->a:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o8;->s()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/pp1;->a(Ljava/util/Map;)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/fo1;->a:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o8;->a()Lcom/yandex/mobile/ads/impl/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/pp1;->a(Lcom/yandex/mobile/ads/impl/f;)V

    .line 6
    new-instance v1, Lcom/yandex/mobile/ads/impl/op1;

    .line 7
    sget-object v2, Lcom/yandex/mobile/ads/impl/op1$b;->J:Lcom/yandex/mobile/ads/impl/op1$b;

    .line 8
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/pp1;->b()Ljava/util/Map;

    move-result-object v3

    .line 9
    const-string v4, "reportType"

    const-string v5, "reportData"

    invoke-static {v0, v2, v4, v3, v5}, Lcom/yandex/mobile/ads/impl/df1;->a(Lcom/yandex/mobile/ads/impl/pp1;Lcom/yandex/mobile/ads/impl/op1$b;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/f;

    move-result-object v0

    .line 10
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/op1$b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Lkotlin/collections/a;->C(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/yandex/mobile/ads/impl/op1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/f;)V

    .line 11
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fo1;->b:Lcom/yandex/mobile/ads/impl/sp1;

    invoke-interface {p0, v1}, Lcom/yandex/mobile/ads/impl/sp1;->a(Lcom/yandex/mobile/ads/impl/op1;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/fo1;->d:Z

    :goto_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/x71;)V
    .locals 1

    .line 13
    const-string v0, "reportParameterManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fo1;->c:Lcom/yandex/mobile/ads/impl/ah;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/ah;->a(Lcom/yandex/mobile/ads/impl/x71;)V

    return-void
.end method
