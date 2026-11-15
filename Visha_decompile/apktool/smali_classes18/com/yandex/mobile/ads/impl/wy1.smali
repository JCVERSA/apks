.class public final Lcom/yandex/mobile/ads/impl/wy1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/x8;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/wy1$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/u2;

.field private b:Lcom/yandex/mobile/ads/impl/y8;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/ym0;Lcom/yandex/mobile/ads/impl/cn0;Lcom/yandex/mobile/ads/impl/z2;Lcom/yandex/mobile/ads/impl/u2;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adBreak"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "instreamAdPlayerController"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "interfaceElementsManager"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "instreamAdViewsHolderManager"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adBreakStatusController"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adBreakPlaybackController"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/wy1;->a:Lcom/yandex/mobile/ads/impl/u2;

    new-instance p1, Lcom/yandex/mobile/ads/impl/wy1$a;

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/wy1$a;-><init>(Lcom/yandex/mobile/ads/impl/wy1;)V

    invoke-virtual {p7, p1}, Lcom/yandex/mobile/ads/impl/u2;->a(Lcom/yandex/mobile/ads/impl/v2;)V

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/wy1;)Lcom/yandex/mobile/ads/impl/y8;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wy1;->b:Lcom/yandex/mobile/ads/impl/y8;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/lo0;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wy1;->a:Lcom/yandex/mobile/ads/impl/u2;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/u2;->a(Lcom/yandex/mobile/ads/impl/lo0;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/y8;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/wy1;->b:Lcom/yandex/mobile/ads/impl/y8;

    return-void
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wy1;->a:Lcom/yandex/mobile/ads/impl/u2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/u2;->b()V

    return-void
.end method

.method public final f()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wy1;->a:Lcom/yandex/mobile/ads/impl/u2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/u2;->c()V

    return-void
.end method

.method public final prepare()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wy1;->a:Lcom/yandex/mobile/ads/impl/u2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/u2;->d()V

    return-void
.end method

.method public final resume()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wy1;->a:Lcom/yandex/mobile/ads/impl/u2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/u2;->f()V

    return-void
.end method

.method public final start()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wy1;->a:Lcom/yandex/mobile/ads/impl/u2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/u2;->g()V

    return-void
.end method
