.class public abstract Lcom/yandex/mobile/ads/impl/h42;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private c:Lcom/yandex/mobile/ads/impl/k42;

.field private d:J


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/h42;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 2
    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/h42;->a:Ljava/lang/String;

    .line 5
    iput-boolean p2, p0, Lcom/yandex/mobile/ads/impl/h42;->b:Z

    const-wide/16 p1, -0x1

    .line 6
    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/h42;->d:J

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    .line 6
    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/h42;->d:J

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/k42;)V
    .locals 1

    .line 2
    const-string v0, "queue"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/h42;->c:Lcom/yandex/mobile/ads/impl/k42;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 4
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/h42;->c:Lcom/yandex/mobile/ads/impl/k42;

    return-void

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "task is in multiple queues"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final a()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/h42;->b:Z

    return p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/h42;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/h42;->d:J

    return-wide v0
.end method

.method public final d()Lcom/yandex/mobile/ads/impl/k42;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/h42;->c:Lcom/yandex/mobile/ads/impl/k42;

    return-object p0
.end method

.method public abstract e()J
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/h42;->a:Ljava/lang/String;

    return-object p0
.end method
