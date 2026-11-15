.class public final Lcom/yandex/mobile/ads/impl/ma2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/cd2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/cd2;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/mg2;

.field private final b:Lcom/yandex/mobile/ads/impl/wc2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/wc2<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/mobile/ads/impl/tg2;

.field private d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/sg2;Lcom/yandex/mobile/ads/impl/ng2;Lcom/yandex/mobile/ads/impl/wc2;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/tg2;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/tg2;-><init>(Lcom/yandex/mobile/ads/impl/sg2;)V

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yandex/mobile/ads/impl/ma2;-><init>(Lcom/yandex/mobile/ads/impl/sg2;Lcom/yandex/mobile/ads/impl/ng2;Lcom/yandex/mobile/ads/impl/wc2;Lcom/yandex/mobile/ads/impl/tg2;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/sg2;Lcom/yandex/mobile/ads/impl/ng2;Lcom/yandex/mobile/ads/impl/wc2;Lcom/yandex/mobile/ads/impl/tg2;)V
    .locals 1

    .line 3
    const-string v0, "videoViewProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoTracker"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoAdPlayer"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "singlePercentAreaValidator"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ma2;->a:Lcom/yandex/mobile/ads/impl/mg2;

    .line 6
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ma2;->b:Lcom/yandex/mobile/ads/impl/wc2;

    .line 7
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/ma2;->c:Lcom/yandex/mobile/ads/impl/tg2;

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 2

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/ma2;->d:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long p3, p3, v0

    if-lez p3, :cond_0

    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/ma2;->c:Lcom/yandex/mobile/ads/impl/tg2;

    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/tg2;->a()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/yandex/mobile/ads/impl/ma2;->d:Z

    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/ma2;->a:Lcom/yandex/mobile/ads/impl/mg2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ma2;->b:Lcom/yandex/mobile/ads/impl/wc2;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/wc2;->getVolume()F

    move-result p0

    invoke-interface {p3, p0, p1, p2}, Lcom/yandex/mobile/ads/impl/mg2;->a(FJ)V

    :cond_0
    return-void
.end method
