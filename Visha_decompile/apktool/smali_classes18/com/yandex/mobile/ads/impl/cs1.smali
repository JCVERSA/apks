.class public final Lcom/yandex/mobile/ads/impl/cs1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/td0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/td0<",
        "Lcom/yandex/mobile/ads/impl/bs1;",
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

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/cs1;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/cd0;)Lcom/yandex/mobile/ads/impl/zd0;
    .locals 11

    const-string v0, "adResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fullScreenController"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/bs1;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/cs1;->a:Landroid/content/Context;

    new-instance v6, Lcom/yandex/mobile/ads/impl/um1;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/um1;-><init>()V

    new-instance v7, Lcom/yandex/mobile/ads/impl/os1;

    invoke-direct {v7, v6}, Lcom/yandex/mobile/ads/impl/os1;-><init>(Lcom/yandex/mobile/ads/impl/um1;)V

    new-instance v8, Lcom/yandex/mobile/ads/impl/sg0;

    invoke-direct {v8}, Lcom/yandex/mobile/ads/impl/sg0;-><init>()V

    new-instance v9, Lcom/yandex/mobile/ads/impl/vc0;

    invoke-direct {v9}, Lcom/yandex/mobile/ads/impl/vc0;-><init>()V

    new-instance v10, Lcom/yandex/mobile/ads/impl/xt1;

    invoke-direct {v10, p2}, Lcom/yandex/mobile/ads/impl/xt1;-><init>(Lcom/yandex/mobile/ads/impl/o3;)V

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v10}, Lcom/yandex/mobile/ads/impl/bs1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/cd0;Lcom/yandex/mobile/ads/impl/um1;Lcom/yandex/mobile/ads/impl/os1;Lcom/yandex/mobile/ads/impl/sg0;Lcom/yandex/mobile/ads/impl/vc0;Lcom/yandex/mobile/ads/impl/xt1;)V

    return-object v0
.end method
