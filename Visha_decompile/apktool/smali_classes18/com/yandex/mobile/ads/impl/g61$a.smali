.class public final Lcom/yandex/mobile/ads/impl/g61$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/g51;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/g61;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/g61;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/g61;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/g61$a;->a:Lcom/yandex/mobile/ads/impl/g61;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/k81;)V
    .locals 1

    .line 10
    const-string v0, "sliderAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/g61$a;->a:Lcom/yandex/mobile/ads/impl/g61;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ck;->t()V

    .line 12
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g61$a;->a:Lcom/yandex/mobile/ads/impl/g61;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/g61;->a(Lcom/yandex/mobile/ads/impl/g61;)Lcom/yandex/mobile/ads/impl/p61;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/p61;->a(Lcom/yandex/mobile/ads/impl/k81;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/q61;)V
    .locals 1

    .line 4
    const-string v0, "nativeAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/g61$a;->a:Lcom/yandex/mobile/ads/impl/g61;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ck;->t()V

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g61$a;->a:Lcom/yandex/mobile/ads/impl/g61;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/g61;->a(Lcom/yandex/mobile/ads/impl/g61;)Lcom/yandex/mobile/ads/impl/p61;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/p61;->a(Lcom/yandex/mobile/ads/impl/q61;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/w3;)V
    .locals 2

    .line 1
    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/g61$a;->a:Lcom/yandex/mobile/ads/impl/g61;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ck;->i()Lcom/yandex/mobile/ads/impl/g5;

    move-result-object v0

    sget-object v1, Lcom/yandex/mobile/ads/impl/f5;->e:Lcom/yandex/mobile/ads/impl/f5;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/g5;->a(Lcom/yandex/mobile/ads/impl/f5;)V

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g61$a;->a:Lcom/yandex/mobile/ads/impl/g61;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/ck;->b(Lcom/yandex/mobile/ads/impl/w3;)V

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 1

    .line 7
    const-string v0, "nativeAds"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/g61$a;->a:Lcom/yandex/mobile/ads/impl/g61;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ck;->t()V

    .line 9
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g61$a;->a:Lcom/yandex/mobile/ads/impl/g61;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/g61;->a(Lcom/yandex/mobile/ads/impl/g61;)Lcom/yandex/mobile/ads/impl/p61;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/p61;->a(Ljava/util/ArrayList;)V

    return-void
.end method
