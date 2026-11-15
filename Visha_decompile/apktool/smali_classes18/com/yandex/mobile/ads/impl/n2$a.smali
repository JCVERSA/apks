.class public final Lcom/yandex/mobile/ads/impl/n2$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/n2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/n2$a;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/n2;
    .locals 3

    sget v0, Lcom/yandex/mobile/ads/impl/n2;->e:I

    sget v0, Lcom/yandex/mobile/ads/impl/m2;->d:I

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/m2$a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/m2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/m2;->c()Lcom/yandex/mobile/ads/impl/l2;

    move-result-object v0

    const-string v1, "context"

    invoke-static {p0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "adBlockerStateStorage"

    invoke-static {v0, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/yandex/mobile/ads/impl/n2;->a()Lcom/yandex/mobile/ads/impl/n2;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/yandex/mobile/ads/impl/n2;->b()Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/yandex/mobile/ads/impl/n2;->a()Lcom/yandex/mobile/ads/impl/n2;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/yandex/mobile/ads/impl/n2;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/yandex/mobile/ads/impl/n2;-><init>(Lcom/yandex/mobile/ads/impl/l2;I)V

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/n2;->a(Lcom/yandex/mobile/ads/impl/n2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    move-object p0, v1

    goto :goto_2

    :goto_1
    monitor-exit p0

    throw v0

    :cond_1
    :goto_2
    return-object p0
.end method
