.class final Lcom/yandex/mobile/ads/impl/dx$x;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/dx;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lc74;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/yandex/mobile/ads/impl/dx;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/dx;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/dx$x;->b:Lcom/yandex/mobile/ads/impl/dx;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    new-instance v7, Lcom/yandex/mobile/ads/impl/os0;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dx$x;->b:Lcom/yandex/mobile/ads/impl/dx;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/dx;->b(Lcom/yandex/mobile/ads/impl/dx;)Lcom/yandex/mobile/ads/impl/qe;

    move-result-object v1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dx$x;->b:Lcom/yandex/mobile/ads/impl/dx;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/dx;->z(Lcom/yandex/mobile/ads/impl/dx;)Lcom/yandex/mobile/ads/impl/xv1;

    move-result-object v2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dx$x;->b:Lcom/yandex/mobile/ads/impl/dx;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/dx;->t(Lcom/yandex/mobile/ads/impl/dx;)Lcom/yandex/mobile/ads/impl/b01;

    move-result-object v3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dx$x;->b:Lcom/yandex/mobile/ads/impl/dx;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/dx;->c(Lcom/yandex/mobile/ads/impl/dx;)Lcom/yandex/mobile/ads/impl/ur;

    move-result-object v4

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dx$x;->b:Lcom/yandex/mobile/ads/impl/dx;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/dx;->d(Lcom/yandex/mobile/ads/impl/dx;)Lcom/yandex/mobile/ads/impl/bw;

    move-result-object v5

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dx$x;->b:Lcom/yandex/mobile/ads/impl/dx;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/dx;->o(Lcom/yandex/mobile/ads/impl/dx;)Lcom/yandex/mobile/ads/impl/ft0;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/os0;-><init>(Lcom/yandex/mobile/ads/impl/qe;Lcom/yandex/mobile/ads/impl/xv1;Lcom/yandex/mobile/ads/impl/b01;Lcom/yandex/mobile/ads/impl/ur;Lcom/yandex/mobile/ads/impl/bw;Lcom/yandex/mobile/ads/impl/ft0;)V

    return-object v7
.end method
