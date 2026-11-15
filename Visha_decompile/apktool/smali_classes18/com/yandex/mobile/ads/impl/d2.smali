.class public final Lcom/yandex/mobile/ads/impl/d2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:J


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/yandex/mobile/ads/impl/d2;->b:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/d2;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/i2;)Z
    .locals 7

    const-string v0, "adBlockerState"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/d2;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ju1;->a()Z

    move-result v0

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/i2;->d()Z

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/i2;->c()Lcom/yandex/mobile/ads/impl/g2;

    move-result-object v0

    sget-object v3, Lcom/yandex/mobile/ads/impl/g2;->c:Lcom/yandex/mobile/ads/impl/g2;

    if-ne v0, v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/i2;->b()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sget-wide v5, Lcom/yandex/mobile/ads/impl/d2;->b:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/i2;->d()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/i2;->a()I

    move-result p1

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/d2;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ju1;->b()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x5

    :goto_0
    if-lt p1, p0, :cond_3

    :goto_1
    move v1, v2

    :cond_3
    return v1
.end method
