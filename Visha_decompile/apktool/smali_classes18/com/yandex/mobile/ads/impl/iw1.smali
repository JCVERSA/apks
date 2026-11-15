.class public final Lcom/yandex/mobile/ads/impl/iw1;
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

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/iw1;->a:Lcom/yandex/mobile/ads/impl/bv1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/aj;)Lcom/yandex/mobile/ads/impl/ej;
    .locals 13

    const-string v0, "adViewController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/hw1;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/iw1;->a:Lcom/yandex/mobile/ads/impl/bv1;

    new-instance v4, Lcom/yandex/mobile/ads/impl/z91;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ck;->l()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ck;->f()Lcom/yandex/mobile/ads/impl/o3;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ck;->i()Lcom/yandex/mobile/ads/impl/g5;

    move-result-object v2

    invoke-direct {v4, p0, v3, v1, v2}, Lcom/yandex/mobile/ads/impl/z91;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;)V

    new-instance v5, Lcom/yandex/mobile/ads/impl/nj;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ck;->f()Lcom/yandex/mobile/ads/impl/o3;

    move-result-object p0

    invoke-direct {v5, p0}, Lcom/yandex/mobile/ads/impl/nj;-><init>(Lcom/yandex/mobile/ads/impl/o3;)V

    new-instance v6, Lcom/yandex/mobile/ads/impl/t71;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ck;->f()Lcom/yandex/mobile/ads/impl/o3;

    move-result-object p0

    invoke-direct {v6, p0}, Lcom/yandex/mobile/ads/impl/t71;-><init>(Lcom/yandex/mobile/ads/impl/o3;)V

    new-instance v7, Lcom/yandex/mobile/ads/impl/xt1;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ck;->f()Lcom/yandex/mobile/ads/impl/o3;

    move-result-object p0

    invoke-direct {v7, p0}, Lcom/yandex/mobile/ads/impl/xt1;-><init>(Lcom/yandex/mobile/ads/impl/o3;)V

    new-instance v8, Lcom/yandex/mobile/ads/impl/b81;

    invoke-direct {v8, p1}, Lcom/yandex/mobile/ads/impl/b81;-><init>(Lcom/yandex/mobile/ads/impl/aj;)V

    new-instance v9, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v9, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget p0, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v10

    new-instance v11, Lcom/yandex/mobile/ads/impl/cj;

    invoke-direct {v11}, Lcom/yandex/mobile/ads/impl/cj;-><init>()V

    new-instance v12, Lcom/yandex/mobile/ads/impl/d61;

    invoke-direct {v12}, Lcom/yandex/mobile/ads/impl/d61;-><init>()V

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v12}, Lcom/yandex/mobile/ads/impl/hw1;-><init>(Lcom/yandex/mobile/ads/impl/aj;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/z91;Lcom/yandex/mobile/ads/impl/nj;Lcom/yandex/mobile/ads/impl/t71;Lcom/yandex/mobile/ads/impl/xt1;Lcom/yandex/mobile/ads/impl/b81;Landroid/os/Handler;Lcom/yandex/mobile/ads/impl/pw1;Lcom/yandex/mobile/ads/impl/cj;Lcom/yandex/mobile/ads/impl/d61;)V

    return-object v0
.end method
