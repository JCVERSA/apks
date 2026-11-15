.class public final Lcom/yandex/mobile/ads/impl/os1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ps1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/um1;)V
    .locals 1

    const-string v0, "rewardedListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/os1;->a:Lcom/yandex/mobile/ads/impl/ps1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;)Lcom/yandex/mobile/ads/impl/ns1;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o8;->J()Lcom/yandex/mobile/ads/impl/ur1;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/ur1;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/ur1;->d()Lcom/yandex/mobile/ads/impl/rx1;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v0, Lcom/yandex/mobile/ads/impl/qx1;

    new-instance p2, Lcom/yandex/mobile/ads/impl/v9;

    invoke-direct {p2, p1, p3}, Lcom/yandex/mobile/ads/impl/v9;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;)V

    invoke-direct {v0, p1, p3, p0, p2}, Lcom/yandex/mobile/ads/impl/qx1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/rx1;Lcom/yandex/mobile/ads/impl/v9;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/ur1;->c()Lcom/yandex/mobile/ads/impl/hp;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/yandex/mobile/ads/impl/gp;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/os1;->a:Lcom/yandex/mobile/ads/impl/ps1;

    new-instance p2, Lcom/yandex/mobile/ads/impl/ow1;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/hp;->c()I

    move-result p3

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/hp;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, p3, v1}, Lcom/yandex/mobile/ads/impl/ow1;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, p1, p0, p2}, Lcom/yandex/mobile/ads/impl/gp;-><init>(Lcom/yandex/mobile/ads/impl/hp;Lcom/yandex/mobile/ads/impl/ps1;Lcom/yandex/mobile/ads/impl/ow1;)V

    :cond_1
    :goto_0
    return-object v0
.end method
