.class public final Lcom/yandex/mobile/ads/impl/s62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/od1;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/tk0;

.field private final b:Lcom/yandex/mobile/ads/impl/vk0;

.field private c:Z

.field private d:I

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/tk0;Lcom/yandex/mobile/ads/impl/vk0;)V
    .locals 1

    const-string v0, "impressionReporter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "impressionTrackingReportTypes"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/s62;->a:Lcom/yandex/mobile/ads/impl/tk0;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/s62;->b:Lcom/yandex/mobile/ads/impl/vk0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/fy1;)V
    .locals 1

    .line 20
    const-string v0, "showNoticeType"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-boolean p1, p0, Lcom/yandex/mobile/ads/impl/s62;->c:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/s62;->c:Z

    .line 23
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/s62;->a:Lcom/yandex/mobile/ads/impl/tk0;

    .line 24
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s62;->b:Lcom/yandex/mobile/ads/impl/vk0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vk0;->c()Lcom/yandex/mobile/ads/impl/op1$b;

    move-result-object p0

    .line 25
    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/tk0;->a(Lcom/yandex/mobile/ads/impl/op1$b;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/fy1;Lcom/yandex/mobile/ads/impl/n92;)V
    .locals 2

    .line 1
    const-string v0, "showNoticeType"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "validationResult"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget p1, p0, Lcom/yandex/mobile/ads/impl/s62;->d:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/yandex/mobile/ads/impl/s62;->d:I

    const/16 v1, 0x14

    if-ne p1, v1, :cond_0

    .line 3
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/s62;->e:Z

    .line 4
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/s62;->a:Lcom/yandex/mobile/ads/impl/tk0;

    .line 5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s62;->b:Lcom/yandex/mobile/ads/impl/vk0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vk0;->b()Lcom/yandex/mobile/ads/impl/op1$b;

    move-result-object p0

    .line 6
    invoke-virtual {p1, p0, p2}, Lcom/yandex/mobile/ads/impl/tk0;->b(Lcom/yandex/mobile/ads/impl/op1$b;Lcom/yandex/mobile/ads/impl/n92;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/fy1;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/fy1;",
            "Ljava/util/List<",
            "+",
            "Lcom/yandex/mobile/ads/impl/fy1;",
            ">;)V"
        }
    .end annotation

    .line 13
    const-string v0, "showNoticeType"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "notTrackedShowNoticeTypes"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-boolean p1, p0, Lcom/yandex/mobile/ads/impl/s62;->f:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/s62;->f:Z

    .line 16
    iget-boolean p1, p0, Lcom/yandex/mobile/ads/impl/s62;->e:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "failure_tracked"

    invoke-static {p2, p1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lky5;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 17
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/s62;->a:Lcom/yandex/mobile/ads/impl/tk0;

    .line 18
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s62;->b:Lcom/yandex/mobile/ads/impl/vk0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vk0;->d()Lcom/yandex/mobile/ads/impl/op1$b;

    move-result-object p0

    .line 19
    invoke-virtual {p2, p0, p1}, Lcom/yandex/mobile/ads/impl/tk0;->a(Lcom/yandex/mobile/ads/impl/op1$b;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/o8;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;)V"
        }
    .end annotation

    .line 26
    const-string v0, "adResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s62;->a:Lcom/yandex/mobile/ads/impl/tk0;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/tk0;->a(Lcom/yandex/mobile/ads/impl/o8;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/ud1;",
            ">;)V"
        }
    .end annotation

    .line 7
    const-string v0, "forcedFailures"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {p1}, Li81;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/mobile/ads/impl/ud1;

    if-nez p1, :cond_0

    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/s62;->a:Lcom/yandex/mobile/ads/impl/tk0;

    .line 10
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s62;->b:Lcom/yandex/mobile/ads/impl/vk0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vk0;->a()Lcom/yandex/mobile/ads/impl/op1$b;

    move-result-object p0

    .line 11
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ud1;->b()Lcom/yandex/mobile/ads/impl/n92;

    move-result-object p1

    .line 12
    invoke-virtual {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/tk0;->a(Lcom/yandex/mobile/ads/impl/op1$b;Lcom/yandex/mobile/ads/impl/n92;)V

    return-void
.end method

.method public final invalidate()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/s62;->c:Z

    iput v0, p0, Lcom/yandex/mobile/ads/impl/s62;->d:I

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/s62;->e:Z

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/s62;->f:Z

    return-void
.end method
