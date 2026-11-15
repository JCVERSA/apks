.class public final Lcom/yandex/mobile/ads/impl/vp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/td0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/td0<",
        "Lcom/yandex/mobile/ads/impl/up0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/vp0;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/cd0;)Lcom/yandex/mobile/ads/impl/zd0;
    .locals 8

    const-string v0, "adResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fullScreenController"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/up0;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/vp0;->a:Landroid/content/Context;

    new-instance v6, Lcom/yandex/mobile/ads/impl/sg0;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/sg0;-><init>()V

    new-instance v5, Lcom/yandex/mobile/ads/impl/vc0;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/impl/vc0;-><init>()V

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/yandex/mobile/ads/impl/up0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/vc0;Lcom/yandex/mobile/ads/impl/sg0;Lcom/yandex/mobile/ads/impl/cd0;)V

    return-object v0
.end method
