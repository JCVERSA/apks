.class public final Lcom/yandex/mobile/ads/impl/yt1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/dj;


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/zt1$a;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/zt1$a;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/yt1;->a:Lcom/yandex/mobile/ads/impl/zt1$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yt1;->a:Lcom/yandex/mobile/ads/impl/zt1$a;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/zt1$a;->a(Lcom/yandex/mobile/ads/impl/zt1$a;)Lcom/yandex/mobile/ads/impl/aj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/aj;->u()V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/w3;)V
    .locals 1

    .line 2
    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yt1;->a:Lcom/yandex/mobile/ads/impl/zt1$a;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/zt1$a;->a(Lcom/yandex/mobile/ads/impl/zt1$a;)Lcom/yandex/mobile/ads/impl/aj;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/ko1;->b(Lcom/yandex/mobile/ads/impl/w3;)V

    return-void
.end method
