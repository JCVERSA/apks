.class public final Lcom/yandex/mobile/ads/impl/p80$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/p80;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/yandex/mobile/ads/impl/p80;


# direct methods
.method public static final declared-synchronized a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/p80;
    .locals 3

    const-class v0, Lcom/yandex/mobile/ads/impl/p80$a;

    monitor-enter v0

    :try_start_0
    const-string v1, "context"

    invoke-static {p0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/yandex/mobile/ads/impl/p80$a;->a:Lcom/yandex/mobile/ads/impl/p80;

    if-nez v1, :cond_0

    new-instance v1, Lcom/yandex/mobile/ads/impl/p80;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/yandex/mobile/ads/impl/p80;-><init>(Landroid/content/Context;I)V

    sput-object v1, Lcom/yandex/mobile/ads/impl/p80$a;->a:Lcom/yandex/mobile/ads/impl/p80;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
