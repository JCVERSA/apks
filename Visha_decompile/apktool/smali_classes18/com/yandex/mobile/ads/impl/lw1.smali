.class public final Lcom/yandex/mobile/ads/impl/lw1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/dd0;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/bv1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/bv1;)V
    .locals 1

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/lw1;->a:Lcom/yandex/mobile/ads/impl/bv1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/jd0;)Lcom/yandex/mobile/ads/impl/cd0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/jd0<",
            "Lcom/yandex/mobile/ads/impl/up0;",
            ">;)",
            "Lcom/yandex/mobile/ads/impl/cd0<",
            "Lcom/yandex/mobile/ads/impl/up0;",
            ">;"
        }
    .end annotation

    const-string v0, "loadController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/mw1;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lw1;->a:Lcom/yandex/mobile/ads/impl/bv1;

    invoke-direct {v0, p1, p0}, Lcom/yandex/mobile/ads/impl/mw1;-><init>(Lcom/yandex/mobile/ads/impl/jd0;Lcom/yandex/mobile/ads/impl/bv1;)V

    return-object v0
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/jd0;)Lcom/yandex/mobile/ads/impl/cd0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/jd0<",
            "Lcom/yandex/mobile/ads/impl/bs1;",
            ">;)",
            "Lcom/yandex/mobile/ads/impl/cd0<",
            "Lcom/yandex/mobile/ads/impl/bs1;",
            ">;"
        }
    .end annotation

    const-string v0, "loadController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/nw1;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lw1;->a:Lcom/yandex/mobile/ads/impl/bv1;

    new-instance v1, Lcom/yandex/mobile/ads/impl/d61;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/d61;-><init>()V

    invoke-direct {v0, p1, p0, v1}, Lcom/yandex/mobile/ads/impl/nw1;-><init>(Lcom/yandex/mobile/ads/impl/jd0;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/d61;)V

    return-object v0
.end method

.method public final c(Lcom/yandex/mobile/ads/impl/jd0;)Lcom/yandex/mobile/ads/impl/cd0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/jd0<",
            "Lcom/yandex/mobile/ads/impl/uf;",
            ">;)",
            "Lcom/yandex/mobile/ads/impl/cd0<",
            "Lcom/yandex/mobile/ads/impl/uf;",
            ">;"
        }
    .end annotation

    const-string v0, "loadController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/mw1;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lw1;->a:Lcom/yandex/mobile/ads/impl/bv1;

    invoke-direct {v0, p1, p0}, Lcom/yandex/mobile/ads/impl/mw1;-><init>(Lcom/yandex/mobile/ads/impl/jd0;Lcom/yandex/mobile/ads/impl/bv1;)V

    return-object v0
.end method
