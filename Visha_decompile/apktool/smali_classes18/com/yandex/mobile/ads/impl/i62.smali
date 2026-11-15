.class public abstract Lcom/yandex/mobile/ads/impl/i62;
.super Lcom/yandex/mobile/ads/impl/qk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yandex/mobile/ads/impl/qk<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final A:Lcom/yandex/mobile/ads/impl/id;

.field private final B:Lcom/yandex/mobile/ads/impl/e8;

.field private final x:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private final y:Lcom/yandex/mobile/ads/impl/lq1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/lq1<",
            "TR;TT;>;"
        }
    .end annotation
.end field

.field private final z:Lcom/yandex/mobile/ads/impl/sp1;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;ILjava/lang/String;Lcom/yandex/mobile/ads/impl/qk$a;Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/lq1;Lcom/yandex/mobile/ads/impl/eq1;I)V
    .locals 13

    move/from16 v0, p9

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v9, v0

    goto :goto_0

    :cond_0
    move-object/from16 v9, p8

    .line 1
    :goto_0
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/bv1;->c()Lcom/yandex/mobile/ads/impl/s01;

    move-result-object v10

    .line 2
    new-instance v11, Lcom/yandex/mobile/ads/impl/id;

    move-object v0, p1

    invoke-direct {v11, p1}, Lcom/yandex/mobile/ads/impl/id;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v12, Lcom/yandex/mobile/ads/impl/e8;

    invoke-direct {v12}, Lcom/yandex/mobile/ads/impl/e8;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 4
    invoke-direct/range {v1 .. v12}, Lcom/yandex/mobile/ads/impl/i62;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;ILjava/lang/String;Lcom/yandex/mobile/ads/impl/qk$a;Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/lq1;Lcom/yandex/mobile/ads/impl/eq1;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/id;Lcom/yandex/mobile/ads/impl/e8;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;ILjava/lang/String;Lcom/yandex/mobile/ads/impl/qk$a;Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/lq1;Lcom/yandex/mobile/ads/impl/eq1;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/id;Lcom/yandex/mobile/ads/impl/e8;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "I",
            "Ljava/lang/String;",
            "Lcom/yandex/mobile/ads/impl/qk$a<",
            "TT;>;TR;",
            "Lcom/yandex/mobile/ads/impl/lq1<",
            "TR;TT;>;",
            "Lcom/yandex/mobile/ads/impl/eq1;",
            "Lcom/yandex/mobile/ads/impl/sp1;",
            "Lcom/yandex/mobile/ads/impl/id;",
            "Lcom/yandex/mobile/ads/impl/e8;",
            ")V"
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v7, p7

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    .line 5
    const-string v0, "context"

    move-object v11, p1

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    move-object v1, p2

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    move-object/from16 v3, p4

    invoke-static {v3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    move-object/from16 v4, p5

    invoke-static {v4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestReporter"

    invoke-static {v7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricaReporter"

    invoke-static {v8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricaLibraryEventReporter"

    invoke-static {v9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequestRetryPolicyCreator"

    invoke-static {v10, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object/from16 v5, p8

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/qk;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/yandex/mobile/ads/impl/qk$a;Lcom/yandex/mobile/ads/impl/eq1;)V

    move-object/from16 v0, p6

    .line 7
    iput-object v0, v6, Lcom/yandex/mobile/ads/impl/i62;->x:Ljava/lang/Object;

    .line 8
    iput-object v7, v6, Lcom/yandex/mobile/ads/impl/i62;->y:Lcom/yandex/mobile/ads/impl/lq1;

    .line 9
    iput-object v8, v6, Lcom/yandex/mobile/ads/impl/i62;->z:Lcom/yandex/mobile/ads/impl/sp1;

    .line 10
    iput-object v9, v6, Lcom/yandex/mobile/ads/impl/i62;->A:Lcom/yandex/mobile/ads/impl/id;

    .line 11
    iput-object v10, v6, Lcom/yandex/mobile/ads/impl/i62;->B:Lcom/yandex/mobile/ads/impl/e8;

    .line 12
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/i62;->a(Landroid/content/Context;)V

    .line 13
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/up1;->r()V

    .line 14
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/up1;->s()V

    .line 15
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/i62;->y()V

    return-void
.end method

.method private final a(Landroid/content/Context;)V
    .locals 2

    .line 12
    sget v0, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ju1;->R()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Lcom/yandex/mobile/ads/impl/bi0;->a()I

    move-result v0

    .line 15
    :goto_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/i62;->B:Lcom/yandex/mobile/ads/impl/e8;

    invoke-virtual {v1, p1, v0}, Lcom/yandex/mobile/ads/impl/e8;->a(Landroid/content/Context;I)Lcom/yandex/mobile/ads/impl/m00;

    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/up1;->a(Lcom/yandex/mobile/ads/impl/m00;)V

    return-void
.end method

.method private final y()V
    .locals 4

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i62;->y:Lcom/yandex/mobile/ads/impl/lq1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/i62;->x:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/lq1;->a(Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/op1;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/i62;->z:Lcom/yandex/mobile/ads/impl/sp1;

    invoke-interface {v1, v0}, Lcom/yandex/mobile/ads/impl/sp1;->a(Lcom/yandex/mobile/ads/impl/op1;)V

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/op1;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/yandex/mobile/ads/impl/op1$b;->k:Lcom/yandex/mobile/ads/impl/op1$b;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/op1$b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i62;->A:Lcom/yandex/mobile/ads/impl/id;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/op1;->b()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1, v1}, Lcom/yandex/mobile/ads/impl/id;->a(Lcom/yandex/mobile/ads/impl/op1$b;Ljava/util/Map;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/t4;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/xc1;)Lcom/yandex/mobile/ads/impl/xq1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/xc1;",
            ")",
            "Lcom/yandex/mobile/ads/impl/xq1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const-string v0, "networkResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget v0, p1, Lcom/yandex/mobile/ads/impl/xc1;->a:I

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/i62;->a(Lcom/yandex/mobile/ads/impl/xc1;I)Lcom/yandex/mobile/ads/impl/xq1;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/i62;->y:Lcom/yandex/mobile/ads/impl/lq1;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/i62;->x:Ljava/lang/Object;

    invoke-interface {v2, v1, v0, v3}, Lcom/yandex/mobile/ads/impl/lq1;->a(Lcom/yandex/mobile/ads/impl/xq1;ILjava/lang/Object;)Lcom/yandex/mobile/ads/impl/op1;

    move-result-object v0

    .line 5
    new-instance v2, Lcom/yandex/mobile/ads/impl/pp1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/op1;->b()Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/yandex/mobile/ads/impl/pp1;-><init>(Ljava/util/Map;I)V

    .line 6
    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/xc1;->c:Ljava/util/Map;

    sget-object v4, Lcom/yandex/mobile/ads/impl/vh0;->y:Lcom/yandex/mobile/ads/impl/vh0;

    invoke-static {v3, v4}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/lang/String;

    move-result-object v3

    .line 7
    const-string v4, "server_log_id"

    invoke-virtual {v2, v3, v4}, Lcom/yandex/mobile/ads/impl/pp1;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/xc1;->c:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 9
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/p8;->a(Ljava/util/Map;)Lcom/yandex/mobile/ads/impl/f;

    move-result-object p1

    .line 10
    invoke-virtual {v2, p1}, Lcom/yandex/mobile/ads/impl/pp1;->a(Lcom/yandex/mobile/ads/impl/f;)V

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i62;->z:Lcom/yandex/mobile/ads/impl/sp1;

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/sp1;->a(Lcom/yandex/mobile/ads/impl/op1;)V

    return-object v1
.end method

.method public abstract a(Lcom/yandex/mobile/ads/impl/xc1;I)Lcom/yandex/mobile/ads/impl/xq1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/xc1;",
            "I)",
            "Lcom/yandex/mobile/ads/impl/xq1<",
            "TT;>;"
        }
    .end annotation
.end method

.method public b(Lcom/yandex/mobile/ads/impl/si2;)Lcom/yandex/mobile/ads/impl/si2;
    .locals 4

    const-string v0, "requestError"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/yandex/mobile/ads/impl/si2;->b:Lcom/yandex/mobile/ads/impl/xc1;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/yandex/mobile/ads/impl/xc1;->a:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/i62;->y:Lcom/yandex/mobile/ads/impl/lq1;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/i62;->x:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v1, v3, v0, v2}, Lcom/yandex/mobile/ads/impl/lq1;->a(Lcom/yandex/mobile/ads/impl/xq1;ILjava/lang/Object;)Lcom/yandex/mobile/ads/impl/op1;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/i62;->z:Lcom/yandex/mobile/ads/impl/sp1;

    invoke-interface {v1, v0}, Lcom/yandex/mobile/ads/impl/sp1;->a(Lcom/yandex/mobile/ads/impl/op1;)V

    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/impl/qk;->b(Lcom/yandex/mobile/ads/impl/si2;)Lcom/yandex/mobile/ads/impl/si2;

    move-result-object p0

    return-object p0
.end method
