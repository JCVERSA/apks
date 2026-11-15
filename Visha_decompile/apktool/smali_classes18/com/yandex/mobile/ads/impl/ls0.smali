.class public final Lcom/yandex/mobile/ads/impl/ls0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/ls0$a;,
        Lcom/yandex/mobile/ads/impl/ls0$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/oi2;

.field private final b:Lcom/yandex/mobile/ads/impl/fm0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/oi2;Lcom/yandex/mobile/ads/impl/fm0;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sdkEnvironmentModule"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "vmapRequestConfig"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "instreamAdLoadingController"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ls0;->a:Lcom/yandex/mobile/ads/impl/oi2;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/ls0;->b:Lcom/yandex/mobile/ads/impl/fm0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ls0;->b:Lcom/yandex/mobile/ads/impl/fm0;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/fm0;->a(Lcom/yandex/mobile/ads/impl/jt;)V

    return-void
.end method

.method public final a(Landroid/view/ViewGroup;Ljava/util/List;Lcom/yandex/mobile/ads/impl/ls0$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/xb2;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/ls0$b;",
            ")V"
        }
    .end annotation

    .line 2
    const-string v0, "adViewGroup"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "friendlyOverlays"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadListener"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/yandex/mobile/ads/impl/ls0$a;

    invoke-direct {v0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/ls0$a;-><init>(Landroid/view/ViewGroup;Ljava/util/List;Lcom/yandex/mobile/ads/impl/ls0$b;)V

    .line 4
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/ls0;->b:Lcom/yandex/mobile/ads/impl/fm0;

    .line 5
    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/fm0;->a(Lcom/yandex/mobile/ads/impl/jt;)V

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ls0;->a:Lcom/yandex/mobile/ads/impl/oi2;

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/fm0;->a(Lcom/yandex/mobile/ads/impl/oi2;)V

    return-void
.end method
