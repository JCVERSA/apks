.class public final Lcom/yandex/mobile/ads/impl/u8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/y8;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/x8;

.field private final b:Lcom/yandex/mobile/ads/impl/a9;

.field private final c:Lcom/yandex/mobile/ads/impl/nb2;

.field private d:Lcom/yandex/mobile/ads/impl/y8;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/x8;Lcom/yandex/mobile/ads/impl/a9;Lcom/yandex/mobile/ads/impl/nb2;)V
    .locals 1

    const-string v0, "adSectionPlaybackController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adSectionStatusController"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adCreativePlaybackProxyListener"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/u8;->a:Lcom/yandex/mobile/ads/impl/x8;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/u8;->b:Lcom/yandex/mobile/ads/impl/a9;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/u8;->c:Lcom/yandex/mobile/ads/impl/nb2;

    invoke-interface {p1, p0}, Lcom/yandex/mobile/ads/impl/x8;->a(Lcom/yandex/mobile/ads/impl/y8;)V

    invoke-interface {p1, p3}, Lcom/yandex/mobile/ads/impl/x8;->a(Lcom/yandex/mobile/ads/impl/lo0;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u8;->b:Lcom/yandex/mobile/ads/impl/a9;

    sget-object v1, Lcom/yandex/mobile/ads/impl/z8;->f:Lcom/yandex/mobile/ads/impl/z8;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/a9;->a(Lcom/yandex/mobile/ads/impl/z8;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u8;->d:Lcom/yandex/mobile/ads/impl/y8;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/y8;->a()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/lo0;)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u8;->c:Lcom/yandex/mobile/ads/impl/nb2;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/nb2;->a(Lcom/yandex/mobile/ads/impl/lo0;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/y8;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/u8;->d:Lcom/yandex/mobile/ads/impl/y8;

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u8;->b:Lcom/yandex/mobile/ads/impl/a9;

    sget-object v1, Lcom/yandex/mobile/ads/impl/z8;->c:Lcom/yandex/mobile/ads/impl/z8;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/a9;->a(Lcom/yandex/mobile/ads/impl/z8;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u8;->d:Lcom/yandex/mobile/ads/impl/y8;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/y8;->b()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u8;->b:Lcom/yandex/mobile/ads/impl/a9;

    sget-object v1, Lcom/yandex/mobile/ads/impl/z8;->e:Lcom/yandex/mobile/ads/impl/z8;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/a9;->a(Lcom/yandex/mobile/ads/impl/z8;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u8;->d:Lcom/yandex/mobile/ads/impl/y8;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/y8;->c()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u8;->b:Lcom/yandex/mobile/ads/impl/a9;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/a9;->a()Lcom/yandex/mobile/ads/impl/z8;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u8;->a:Lcom/yandex/mobile/ads/impl/x8;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/x8;->c()V

    :goto_0
    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u8;->b:Lcom/yandex/mobile/ads/impl/a9;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/a9;->a()Lcom/yandex/mobile/ads/impl/z8;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u8;->a:Lcom/yandex/mobile/ads/impl/x8;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/x8;->f()V

    :goto_0
    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u8;->b:Lcom/yandex/mobile/ads/impl/a9;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/a9;->a()Lcom/yandex/mobile/ads/impl/z8;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u8;->d:Lcom/yandex/mobile/ads/impl/y8;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/y8;->a()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u8;->d:Lcom/yandex/mobile/ads/impl/y8;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/y8;->b()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u8;->a:Lcom/yandex/mobile/ads/impl/x8;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/x8;->prepare()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u8;->b:Lcom/yandex/mobile/ads/impl/a9;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/a9;->a()Lcom/yandex/mobile/ads/impl/z8;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u8;->d:Lcom/yandex/mobile/ads/impl/y8;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/y8;->a()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u8;->d:Lcom/yandex/mobile/ads/impl/y8;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/y8;->c()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u8;->a:Lcom/yandex/mobile/ads/impl/x8;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/x8;->resume()V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u8;->a:Lcom/yandex/mobile/ads/impl/x8;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/x8;->prepare()V

    :cond_4
    :goto_0
    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u8;->b:Lcom/yandex/mobile/ads/impl/a9;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/a9;->a()Lcom/yandex/mobile/ads/impl/z8;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u8;->d:Lcom/yandex/mobile/ads/impl/y8;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/y8;->a()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u8;->d:Lcom/yandex/mobile/ads/impl/y8;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/y8;->c()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u8;->a:Lcom/yandex/mobile/ads/impl/x8;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/x8;->resume()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u8;->b:Lcom/yandex/mobile/ads/impl/a9;

    sget-object v1, Lcom/yandex/mobile/ads/impl/z8;->d:Lcom/yandex/mobile/ads/impl/z8;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/a9;->a(Lcom/yandex/mobile/ads/impl/z8;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u8;->a:Lcom/yandex/mobile/ads/impl/x8;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/x8;->start()V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u8;->a:Lcom/yandex/mobile/ads/impl/x8;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/x8;->prepare()V

    :cond_5
    :goto_0
    return-void
.end method
