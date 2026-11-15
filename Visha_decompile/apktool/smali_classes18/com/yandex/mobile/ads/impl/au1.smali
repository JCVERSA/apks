.class public final Lcom/yandex/mobile/ads/impl/au1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/fj;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/bv1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/bv1;)V
    .locals 1

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/au1;->a:Lcom/yandex/mobile/ads/impl/bv1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/aj;)Lcom/yandex/mobile/ads/impl/ej;
    .locals 9

    const-string v0, "loadController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/zt1;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/au1;->a:Lcom/yandex/mobile/ads/impl/bv1;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ck;->f()Lcom/yandex/mobile/ads/impl/o3;

    move-result-object v4

    new-instance v5, Lcom/yandex/mobile/ads/impl/cj;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/impl/cj;-><init>()V

    new-instance v6, Lcom/yandex/mobile/ads/impl/cu1;

    invoke-direct {v6, v3, v4, p1}, Lcom/yandex/mobile/ads/impl/cu1;-><init>(Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/aj;)V

    new-instance v7, Lcom/yandex/mobile/ads/impl/jv1;

    invoke-direct {v7, v4, v5, v6}, Lcom/yandex/mobile/ads/impl/jv1;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/j9;Lcom/yandex/mobile/ads/impl/iv1;)V

    new-instance v8, Lcom/yandex/mobile/ads/impl/xt1;

    invoke-direct {v8, v4}, Lcom/yandex/mobile/ads/impl/xt1;-><init>(Lcom/yandex/mobile/ads/impl/o3;)V

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/yandex/mobile/ads/impl/zt1;-><init>(Lcom/yandex/mobile/ads/impl/aj;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/cj;Lcom/yandex/mobile/ads/impl/cu1;Lcom/yandex/mobile/ads/impl/jv1;Lcom/yandex/mobile/ads/impl/xt1;)V

    return-object v0
.end method
