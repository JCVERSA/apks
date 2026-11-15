.class public final Lcom/yandex/mobile/ads/impl/pa0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/z;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/z<",
        "Lcom/yandex/mobile/ads/impl/oa0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ya0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ya0;)V
    .locals 1

    const-string v0, "feedbackRenderer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/pa0;->a:Lcom/yandex/mobile/ads/impl/ya0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/yandex/mobile/ads/impl/x;)Lcom/yandex/mobile/ads/impl/gf0;
    .locals 1

    check-cast p2, Lcom/yandex/mobile/ads/impl/oa0;

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pa0;->a:Lcom/yandex/mobile/ads/impl/ya0;

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/ya0;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/oa0;)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/gf0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/gf0;-><init>(Z)V

    return-object p0
.end method
