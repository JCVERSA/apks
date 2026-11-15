.class public final Lcom/yandex/mobile/ads/impl/wt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/MainThread;
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/bv1;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/yandex/mobile/ads/impl/i61;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/en2;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getApplicationContext(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/i61;

    invoke-direct {v1, v0, p2}, Lcom/yandex/mobile/ads/impl/i61;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/en2;)V

    .line 3
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/yandex/mobile/ads/impl/wt;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/en2;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/i61;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/en2;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/i61;)V
    .locals 1

    .line 4
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sdkEnvironmentModule"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "appContext"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adLoadingController"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/wt;->a:Lcom/yandex/mobile/ads/impl/bv1;

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/wt;->b:Landroid/content/Context;

    .line 8
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/wt;->c:Lcom/yandex/mobile/ads/impl/i61;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wt;->c:Lcom/yandex/mobile/ads/impl/i61;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/i61;->a()V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/hn2;)V
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wt;->c:Lcom/yandex/mobile/ads/impl/i61;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/i61;->a(Lcom/yandex/mobile/ads/impl/hn2;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/v7;)V
    .locals 3

    .line 2
    const-string v0, "adRequestData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/yandex/mobile/ads/impl/v61;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/wt;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/wt;->a:Lcom/yandex/mobile/ads/impl/bv1;

    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/bv1;->c()Lcom/yandex/mobile/ads/impl/s01;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/v61;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;)V

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wt;->c:Lcom/yandex/mobile/ads/impl/i61;

    sget-object v1, Lcom/yandex/mobile/ads/impl/ca1;->c:Lcom/yandex/mobile/ads/impl/ca1;

    sget-object v1, Lcom/yandex/mobile/ads/impl/fa1;->c:Lcom/yandex/mobile/ads/impl/fa1;

    invoke-virtual {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/i61;->a(Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/v61;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/v7;I)V
    .locals 3

    .line 5
    const-string v0, "adRequestData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/yandex/mobile/ads/impl/v61;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/wt;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/wt;->a:Lcom/yandex/mobile/ads/impl/bv1;

    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/bv1;->c()Lcom/yandex/mobile/ads/impl/s01;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/v61;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;)V

    .line 7
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wt;->c:Lcom/yandex/mobile/ads/impl/i61;

    .line 8
    sget-object v1, Lcom/yandex/mobile/ads/impl/ca1;->c:Lcom/yandex/mobile/ads/impl/ca1;

    sget-object v1, Lcom/yandex/mobile/ads/impl/fa1;->c:Lcom/yandex/mobile/ads/impl/fa1;

    .line 9
    invoke-virtual {p0, p1, v0, p2}, Lcom/yandex/mobile/ads/impl/i61;->a(Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/v61;I)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/vt;)V
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wt;->c:Lcom/yandex/mobile/ads/impl/i61;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/i61;->a(Lcom/yandex/mobile/ads/impl/vt;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ym2;)V
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wt;->c:Lcom/yandex/mobile/ads/impl/i61;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/i61;->a(Lcom/yandex/mobile/ads/impl/ym2;)V

    return-void
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/v7;)V
    .locals 3

    const-string v0, "adRequestData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/v61;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/wt;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/wt;->a:Lcom/yandex/mobile/ads/impl/bv1;

    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/bv1;->c()Lcom/yandex/mobile/ads/impl/s01;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/v61;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wt;->c:Lcom/yandex/mobile/ads/impl/i61;

    sget-object v1, Lcom/yandex/mobile/ads/impl/ca1;->c:Lcom/yandex/mobile/ads/impl/ca1;

    sget-object v1, Lcom/yandex/mobile/ads/impl/fa1;->c:Lcom/yandex/mobile/ads/impl/fa1;

    invoke-virtual {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/i61;->b(Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/v61;)V

    return-void
.end method
