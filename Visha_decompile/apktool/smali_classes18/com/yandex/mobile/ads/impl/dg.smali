.class public final Lcom/yandex/mobile/ads/impl/dg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final f:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/impl/bv1;

.field private final c:Lcom/yandex/mobile/ads/impl/pw1;

.field private final d:Lcom/yandex/mobile/ads/impl/sp1;

.field private final e:Lcom/yandex/mobile/ads/impl/p80;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/yandex/mobile/ads/impl/dg;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;)V
    .locals 7

    .line 1
    sget v0, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v4

    .line 2
    invoke-interface {p2}, Lcom/yandex/mobile/ads/impl/bv1;->c()Lcom/yandex/mobile/ads/impl/s01;

    move-result-object v5

    .line 3
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/p80$a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/p80;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 4
    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/dg;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/pw1;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/p80;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/pw1;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/p80;)V
    .locals 1

    .line 5
    const-string v0, "appContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricaReporter"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "falseClickDataStorage"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/dg;->a:Landroid/content/Context;

    .line 8
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/dg;->b:Lcom/yandex/mobile/ads/impl/bv1;

    .line 9
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/dg;->c:Lcom/yandex/mobile/ads/impl/pw1;

    .line 10
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/dg;->d:Lcom/yandex/mobile/ads/impl/sp1;

    .line 11
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/dg;->e:Lcom/yandex/mobile/ads/impl/p80;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dg;->c:Lcom/yandex/mobile/ads/impl/pw1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/dg;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ju1;->r0()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/yandex/mobile/ads/impl/dg;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dg;->e:Lcom/yandex/mobile/ads/impl/p80;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/p80;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/n80;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/n80;->d()Lcom/yandex/mobile/ads/impl/m80;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/n80;->d()Lcom/yandex/mobile/ads/impl/m80;

    move-result-object v2

    new-instance v3, Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/n80;->c()Lcom/yandex/mobile/ads/impl/ts;

    move-result-object v4

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/dg;->b:Lcom/yandex/mobile/ads/impl/bv1;

    invoke-direct {v3, v4, v5}, Lcom/yandex/mobile/ads/impl/o3;-><init>(Lcom/yandex/mobile/ads/impl/ts;Lcom/yandex/mobile/ads/impl/bv1;)V

    new-instance v4, Lcom/yandex/mobile/ads/impl/t80;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/dg;->a:Landroid/content/Context;

    invoke-direct {v4, v5, v3, v2}, Lcom/yandex/mobile/ads/impl/t80;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/m80;)V

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/m80;->c()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lcom/yandex/mobile/ads/impl/t80;->a(J)V

    :cond_0
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/dg;->e:Lcom/yandex/mobile/ads/impl/p80;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/n80;->f()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/yandex/mobile/ads/impl/p80;->a(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/n80;->f()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/n80;->e()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/a;->C(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v2, v3}, Lcom/yandex/mobile/ads/impl/gq0;->a(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "interval"

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/yandex/mobile/ads/impl/op1;

    sget-object v3, Lcom/yandex/mobile/ads/impl/op1$b;->M:Lcom/yandex/mobile/ads/impl/op1$b;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/n80;->a()Lcom/yandex/mobile/ads/impl/f;

    move-result-object v1

    const-string v5, "reportType"

    invoke-static {v3, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "reportData"

    invoke-static {v4, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/op1$b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Lkotlin/collections/a;->C(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lcom/yandex/mobile/ads/impl/op1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/f;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/dg;->d:Lcom/yandex/mobile/ads/impl/sp1;

    invoke-interface {v1, v2}, Lcom/yandex/mobile/ads/impl/sp1;->a(Lcom/yandex/mobile/ads/impl/op1;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dg;->e:Lcom/yandex/mobile/ads/impl/p80;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/p80;->a()V

    :cond_2
    return-void
.end method
