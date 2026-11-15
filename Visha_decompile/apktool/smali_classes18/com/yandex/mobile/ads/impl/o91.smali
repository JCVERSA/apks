.class public final Lcom/yandex/mobile/ads/impl/o91;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/vg;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/vg;)V
    .locals 1

    const-string v0, "assetValueProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o91;->a:Lcom/yandex/mobile/ads/impl/vg;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/n91;
    .locals 2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/o91;->a:Lcom/yandex/mobile/ads/impl/vg;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vg;->a()Lcom/yandex/mobile/ads/impl/ex0;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ex0;->c()Lcom/yandex/mobile/ads/impl/lb2;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/yandex/mobile/ads/impl/db1;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/db1;-><init>()V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ex0;->b()Lcom/yandex/mobile/ads/impl/wu0;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v0, Lcom/yandex/mobile/ads/impl/ic1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/ic1;-><init>()V

    :cond_1
    move-object p0, v0

    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object p0, v0

    :goto_1
    new-instance v1, Lcom/yandex/mobile/ads/impl/n91;

    invoke-direct {v1, v0, p0}, Lcom/yandex/mobile/ads/impl/n91;-><init>(Lcom/yandex/mobile/ads/impl/db1;Lcom/yandex/mobile/ads/impl/ic1;)V

    return-object v1
.end method
