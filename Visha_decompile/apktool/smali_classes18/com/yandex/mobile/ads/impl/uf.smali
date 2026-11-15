.class public final Lcom/yandex/mobile/ads/impl/uf;
.super Lcom/yandex/mobile/ads/impl/zd0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/impl/zd0<",
        "Lcom/yandex/mobile/ads/impl/uf;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/vc0;Lcom/yandex/mobile/ads/impl/sg0;Lcom/yandex/mobile/ads/impl/cd0;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fullScreenController"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adVisibilityValidator"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "htmlAdResponseReportManager"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lcom/yandex/mobile/ads/impl/w4;

    invoke-direct {v7}, Lcom/yandex/mobile/ads/impl/w4;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/yandex/mobile/ads/impl/zd0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/vc0;Lcom/yandex/mobile/ads/impl/cd0;Lcom/yandex/mobile/ads/impl/w4;)V

    invoke-virtual {p5, p2}, Lcom/yandex/mobile/ads/impl/sg0;->a(Lcom/yandex/mobile/ads/impl/o8;)V

    invoke-virtual {p5, p3}, Lcom/yandex/mobile/ads/impl/sg0;->a(Lcom/yandex/mobile/ads/impl/o3;)V

    return-void
.end method


# virtual methods
.method public final o()Lcom/yandex/mobile/ads/impl/zd0;
    .locals 0

    return-object p0
.end method
