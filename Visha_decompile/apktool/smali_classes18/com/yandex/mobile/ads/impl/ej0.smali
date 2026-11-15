.class public final Lcom/yandex/mobile/ads/impl/ej0;
.super Lcom/yandex/mobile/ads/impl/fz;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/y00;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yandex/mobile/ads/impl/fz<",
        "TV;TT;>;",
        "Lcom/yandex/mobile/ads/impl/y00<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/vg2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/vg2<",
            "TV;TT;>;)V"
        }
    .end annotation

    const-string v0, "viewAdapter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/fz;-><init>(Lcom/yandex/mobile/ads/impl/vg2;)V

    return-void
.end method
