.class public final Lcom/yandex/mobile/ads/impl/f4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/b4;

.field private final b:Lcom/yandex/mobile/ads/impl/ym0;

.field private final c:Lcom/yandex/mobile/ads/impl/j4;

.field private final d:Lcom/yandex/mobile/ads/impl/h4;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/b4;Lcom/yandex/mobile/ads/impl/ym0;Lcom/yandex/mobile/ads/impl/j4;Lcom/yandex/mobile/ads/impl/h4;)V
    .locals 1

    const-string v0, "adGroupController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiElementsManager"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adGroupPlaybackEventsListener"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adGroupPlaybackController"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/f4;->a:Lcom/yandex/mobile/ads/impl/b4;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/f4;->b:Lcom/yandex/mobile/ads/impl/ym0;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/f4;->c:Lcom/yandex/mobile/ads/impl/j4;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/f4;->d:Lcom/yandex/mobile/ads/impl/h4;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/f4;->a:Lcom/yandex/mobile/ads/impl/b4;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/b4;->c()Lcom/yandex/mobile/ads/impl/do0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/do0;->a()V

    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/f4;->a:Lcom/yandex/mobile/ads/impl/b4;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/b4;->f()Lcom/yandex/mobile/ads/impl/k4;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/f4;->b:Lcom/yandex/mobile/ads/impl/ym0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/k4;->c()Lcom/yandex/mobile/ads/impl/zb2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/ym0;->a(Lcom/yandex/mobile/ads/impl/zb2;)V

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/k4;->b()Lcom/yandex/mobile/ads/impl/qd2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qd2;->a()Lcom/yandex/mobile/ads/impl/pd2;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/f4;->c:Lcom/yandex/mobile/ads/impl/j4;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/j4;->b()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/f4;->d:Lcom/yandex/mobile/ads/impl/h4;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/h4;->f()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/f4;->a()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/f4;->c:Lcom/yandex/mobile/ads/impl/j4;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/j4;->a()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/f4;->d:Lcom/yandex/mobile/ads/impl/h4;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/h4;->d()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/f4;->d:Lcom/yandex/mobile/ads/impl/h4;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/h4;->b()V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/f4;->b:Lcom/yandex/mobile/ads/impl/ym0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ym0;->a()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/f4;->c:Lcom/yandex/mobile/ads/impl/j4;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/j4;->c()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/f4;->d:Lcom/yandex/mobile/ads/impl/h4;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/h4;->b()V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/f4;->b:Lcom/yandex/mobile/ads/impl/ym0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ym0;->a()V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/f4;->c:Lcom/yandex/mobile/ads/impl/j4;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/j4;->c()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/f4;->d:Lcom/yandex/mobile/ads/impl/h4;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/h4;->e()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/f4;->b:Lcom/yandex/mobile/ads/impl/ym0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ym0;->a()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/f4;->c:Lcom/yandex/mobile/ads/impl/j4;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/j4;->g()V

    :goto_0
    return-void
.end method
