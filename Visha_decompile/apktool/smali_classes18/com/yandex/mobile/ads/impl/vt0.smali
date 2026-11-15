.class public final Lcom/yandex/mobile/ads/impl/vt0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/wt0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/en2;Lcom/yandex/mobile/ads/impl/et;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instreamAd"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/wt0;

    invoke-direct {v0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/wt0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/en2;Lcom/yandex/mobile/ads/impl/et;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/vt0;->a:Lcom/yandex/mobile/ads/impl/wt0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/pt0;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/ut0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/pt0<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/yandex/mobile/ads/impl/ut0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "manualAdBreakFactory"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vt0;->a:Lcom/yandex/mobile/ads/impl/wt0;

    invoke-virtual {p0, p2}, Lcom/yandex/mobile/ads/impl/wt0;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    new-instance p2, Ljava/util/ArrayDeque;

    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/qt0;

    invoke-interface {p1, v0}, Lcom/yandex/mobile/ads/impl/pt0;->a(Lcom/yandex/mobile/ads/impl/qt0;)Lcom/yandex/mobile/ads/impl/wn0;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/yandex/mobile/ads/impl/ut0;

    invoke-direct {p0, p2}, Lcom/yandex/mobile/ads/impl/ut0;-><init>(Ljava/util/Queue;)V

    return-object p0
.end method
