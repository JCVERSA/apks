.class public final Lcom/yandex/mobile/ads/impl/c82;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/bn0;

.field private final b:Lcom/yandex/mobile/ads/impl/a82;

.field private final c:Lcom/yandex/mobile/ads/impl/zb2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/mobile/ads/impl/jo0;

.field private final e:Lcom/yandex/mobile/ads/impl/io0;

.field private f:Lcom/yandex/mobile/ads/impl/ln0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/bn0;Lcom/yandex/mobile/ads/impl/a82;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/ko0;Lcom/yandex/mobile/ads/impl/aj1;Lcom/yandex/mobile/ads/impl/co0;Lcom/yandex/mobile/ads/impl/jo0;Lcom/yandex/mobile/ads/impl/io0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/bn0;",
            "Lcom/yandex/mobile/ads/impl/a82;",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/ko0;",
            "Lcom/yandex/mobile/ads/impl/aj1;",
            "Lcom/yandex/mobile/ads/impl/co0;",
            "Lcom/yandex/mobile/ads/impl/jo0;",
            "Lcom/yandex/mobile/ads/impl/io0;",
            ")V"
        }
    .end annotation

    const-string v0, "instreamAdViewsHolder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiElementBinder"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoAdInfo"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoAdControlsStateStorage"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "playerVolumeProvider"

    invoke-static {p5, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "instreamVastAdPlayer"

    invoke-static {p6, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "videoAdControlsStateProvider"

    invoke-static {p7, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "instreamVideoAdControlsStateManager"

    invoke-static {p8, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/c82;->a:Lcom/yandex/mobile/ads/impl/bn0;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/c82;->b:Lcom/yandex/mobile/ads/impl/a82;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/c82;->c:Lcom/yandex/mobile/ads/impl/zb2;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/c82;->d:Lcom/yandex/mobile/ads/impl/jo0;

    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/c82;->e:Lcom/yandex/mobile/ads/impl/io0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/c82;->a:Lcom/yandex/mobile/ads/impl/bn0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/bn0;->b()Lcom/yandex/mobile/ads/impl/t70;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/c82;->f:Lcom/yandex/mobile/ads/impl/ln0;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/c82;->d:Lcom/yandex/mobile/ads/impl/jo0;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/c82;->c:Lcom/yandex/mobile/ads/impl/zb2;

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/jo0;->a(Lcom/yandex/mobile/ads/impl/zb2;)Lcom/yandex/mobile/ads/impl/ln0;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/c82;->b:Lcom/yandex/mobile/ads/impl/a82;

    invoke-interface {v2, v0, v1}, Lcom/yandex/mobile/ads/impl/a82;->a(Lcom/yandex/mobile/ads/impl/t70;Lcom/yandex/mobile/ads/impl/ln0;)V

    .line 5
    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/c82;->f:Lcom/yandex/mobile/ads/impl/ln0;

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/zb2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;)V"
        }
    .end annotation

    .line 6
    const-string v0, "nextVideo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/c82;->a:Lcom/yandex/mobile/ads/impl/bn0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/bn0;->b()Lcom/yandex/mobile/ads/impl/t70;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/c82;->f:Lcom/yandex/mobile/ads/impl/ln0;

    if-eqz v1, :cond_0

    .line 9
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/c82;->e:Lcom/yandex/mobile/ads/impl/io0;

    invoke-virtual {p0, p1, v0, v1}, Lcom/yandex/mobile/ads/impl/io0;->a(Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/t70;Lcom/yandex/mobile/ads/impl/ln0;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/c82;->a:Lcom/yandex/mobile/ads/impl/bn0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/bn0;->b()Lcom/yandex/mobile/ads/impl/t70;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/c82;->f:Lcom/yandex/mobile/ads/impl/ln0;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/c82;->e:Lcom/yandex/mobile/ads/impl/io0;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/c82;->c:Lcom/yandex/mobile/ads/impl/zb2;

    invoke-virtual {v2, v3, v0, v1}, Lcom/yandex/mobile/ads/impl/io0;->b(Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/t70;Lcom/yandex/mobile/ads/impl/ln0;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/c82;->f:Lcom/yandex/mobile/ads/impl/ln0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/c82;->b:Lcom/yandex/mobile/ads/impl/a82;

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/a82;->a(Lcom/yandex/mobile/ads/impl/t70;)V

    :cond_0
    return-void
.end method
