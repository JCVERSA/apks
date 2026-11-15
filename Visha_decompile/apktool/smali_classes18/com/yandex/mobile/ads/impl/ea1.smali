.class public final Lcom/yandex/mobile/ads/impl/ea1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/ea1$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/zr1;

.field private final b:Lcom/yandex/mobile/ads/impl/yc0;

.field private c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/o52;Lcom/yandex/mobile/ads/impl/n91;Lcom/yandex/mobile/ads/impl/f52;)V
    .locals 6

    .line 1
    new-instance v4, Lcom/yandex/mobile/ads/impl/as1;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/as1;-><init>()V

    .line 2
    new-instance v5, Lcom/yandex/mobile/ads/impl/zr1;

    invoke-direct {v5, p1}, Lcom/yandex/mobile/ads/impl/zr1;-><init>(Lcom/yandex/mobile/ads/impl/o52;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/ea1;-><init>(Lcom/yandex/mobile/ads/impl/o52;Lcom/yandex/mobile/ads/impl/n91;Lcom/yandex/mobile/ads/impl/f52;Lcom/yandex/mobile/ads/impl/as1;Lcom/yandex/mobile/ads/impl/zr1;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o52;Lcom/yandex/mobile/ads/impl/n91;Lcom/yandex/mobile/ads/impl/f52;Lcom/yandex/mobile/ads/impl/as1;Lcom/yandex/mobile/ads/impl/zr1;)V
    .locals 1

    .line 4
    const-string v0, "timerViewProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeMediaContent"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "timeProviderContainer"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "rewardViewControllerProvider"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "rewardTimerViewController"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/ea1;->a:Lcom/yandex/mobile/ads/impl/zr1;

    .line 7
    new-instance p1, Lcom/yandex/mobile/ads/impl/ea1$a;

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/ea1$a;-><init>(Lcom/yandex/mobile/ads/impl/ea1;)V

    .line 8
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, p3}, Lcom/yandex/mobile/ads/impl/as1;->a(Lcom/yandex/mobile/ads/impl/yl1;Lcom/yandex/mobile/ads/impl/n91;Lcom/yandex/mobile/ads/impl/f52;)Lcom/yandex/mobile/ads/impl/yc0;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ea1;->b:Lcom/yandex/mobile/ads/impl/yc0;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/ea1;)Lcom/yandex/mobile/ads/impl/zr1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ea1;->a:Lcom/yandex/mobile/ads/impl/zr1;

    return-object p0
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/ea1;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ea1;->c:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ea1;->c:Landroid/view/View;

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ea1;->b:Lcom/yandex/mobile/ads/impl/yc0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/yc0;->invalidate()V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ea1;->c:Landroid/view/View;

    .line 5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ea1;->b:Lcom/yandex/mobile/ads/impl/yc0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/yc0;->start()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ea1;->b:Lcom/yandex/mobile/ads/impl/yc0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/yc0;->pause()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ea1;->b:Lcom/yandex/mobile/ads/impl/yc0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/yc0;->resume()V

    :cond_0
    return-void
.end method
