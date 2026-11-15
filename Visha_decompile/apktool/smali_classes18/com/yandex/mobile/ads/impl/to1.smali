.class public final Lcom/yandex/mobile/ads/impl/to1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/qo1$b;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/s4;

.field private final b:Lcom/yandex/mobile/ads/impl/cp1;

.field private final c:Lcom/yandex/mobile/ads/impl/wo1;

.field private final d:Lcom/yandex/mobile/ads/impl/so1;

.field private final e:Lcom/yandex/mobile/ads/impl/qo1;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/u7;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/s9;Lcom/yandex/mobile/ads/impl/s4;Lcom/yandex/mobile/ads/impl/cp1;Lcom/yandex/mobile/ads/impl/wo1;Lcom/yandex/mobile/ads/impl/so1;)V
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "renderingValidator"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adResponse"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adConfiguration"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adStructureType"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adIdStorageManager"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "renderingImpressionTrackingListener"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "renderTracker"

    invoke-static {p9, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/to1;->a:Lcom/yandex/mobile/ads/impl/s4;

    .line 4
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/to1;->b:Lcom/yandex/mobile/ads/impl/cp1;

    .line 5
    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/to1;->c:Lcom/yandex/mobile/ads/impl/wo1;

    .line 6
    iput-object p9, p0, Lcom/yandex/mobile/ads/impl/to1;->d:Lcom/yandex/mobile/ads/impl/so1;

    .line 7
    new-instance p1, Lcom/yandex/mobile/ads/impl/qo1;

    invoke-direct {p1, p2, p0}, Lcom/yandex/mobile/ads/impl/qo1;-><init>(Lcom/yandex/mobile/ads/impl/u7;Lcom/yandex/mobile/ads/impl/qo1$b;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/to1;->e:Lcom/yandex/mobile/ads/impl/qo1;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/u7;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/s9;Lcom/yandex/mobile/ads/impl/s4;Lcom/yandex/mobile/ads/impl/cp1;Lcom/yandex/mobile/ads/impl/wo1;Ljava/util/List;)V
    .locals 10

    .line 8
    new-instance v9, Lcom/yandex/mobile/ads/impl/so1;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p9

    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/so1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/s9;Ljava/util/List;)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 9
    invoke-direct/range {v0 .. v9}, Lcom/yandex/mobile/ads/impl/to1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/u7;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/s9;Lcom/yandex/mobile/ads/impl/s4;Lcom/yandex/mobile/ads/impl/cp1;Lcom/yandex/mobile/ads/impl/wo1;Lcom/yandex/mobile/ads/impl/so1;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/to1;->c:Lcom/yandex/mobile/ads/impl/wo1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/wo1;->a()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/to1;->d:Lcom/yandex/mobile/ads/impl/so1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/so1;->a()V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/to1;->a:Lcom/yandex/mobile/ads/impl/s4;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/s4;->b()V

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/to1;->b:Lcom/yandex/mobile/ads/impl/cp1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/cp1;->f()V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/u91;)V
    .locals 1

    .line 5
    const-string v0, "reportParameterManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/to1;->d:Lcom/yandex/mobile/ads/impl/so1;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/so1;->a(Lcom/yandex/mobile/ads/impl/u91;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/to1;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/to1;->f:Z

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/to1;->e:Lcom/yandex/mobile/ads/impl/qo1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/qo1;->a()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/to1;->f:Z

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/to1;->e:Lcom/yandex/mobile/ads/impl/qo1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/qo1;->b()V

    return-void
.end method
