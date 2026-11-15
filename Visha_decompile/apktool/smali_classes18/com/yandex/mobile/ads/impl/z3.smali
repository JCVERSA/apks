.class public final Lcom/yandex/mobile/ads/impl/z3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/yandex/mobile/ads/impl/ck;)Lcom/yandex/mobile/ads/impl/y3;
    .locals 3

    const-string v0, "loadController"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/y3;

    sget v1, Lcom/yandex/mobile/ads/impl/gq1;->c:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/gq1$a;->a()Lcom/yandex/mobile/ads/impl/gq1;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/yandex/mobile/ads/impl/y3;-><init>(Lcom/yandex/mobile/ads/impl/ck;Lcom/yandex/mobile/ads/impl/gq1;Ljava/lang/ref/WeakReference;)V

    return-object v0
.end method
