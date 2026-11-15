.class public final Lcom/yandex/mobile/ads/impl/af;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/yandex/mobile/ads/impl/ze;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/yandex/mobile/ads/impl/ze;

    new-instance v1, Lcom/yandex/mobile/ads/impl/ye;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/ye;-><init>()V

    new-instance v2, Lcom/yandex/mobile/ads/impl/bf;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/bf;-><init>()V

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/mobile/ads/impl/ze;-><init>(Lcom/yandex/mobile/ads/impl/ye;Lcom/yandex/mobile/ads/impl/bf;Landroid/os/Handler;)V

    sput-object v0, Lcom/yandex/mobile/ads/impl/af;->a:Lcom/yandex/mobile/ads/impl/ze;

    return-void
.end method

.method public static final a()Lcom/yandex/mobile/ads/impl/ze;
    .locals 1

    sget-object v0, Lcom/yandex/mobile/ads/impl/af;->a:Lcom/yandex/mobile/ads/impl/ze;

    return-object v0
.end method
