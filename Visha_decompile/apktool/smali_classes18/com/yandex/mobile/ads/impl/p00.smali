.class public final Lcom/yandex/mobile/ads/impl/p00;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/p00$a;
    }
.end annotation


# static fields
.field static final synthetic e:[Laf5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Laf5;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/lz1;

.field private final b:J

.field private final c:Lcom/yandex/mobile/ads/impl/mg1;

.field private final d:Lcom/yandex/mobile/ads/impl/go1;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "getWeakSkipButton()Landroid/view/View;"

    const/4 v1, 0x0

    const-class v2, Lcom/yandex/mobile/ads/impl/p00;

    const-string v3, "weakSkipButton"

    invoke-static {v2, v3, v0, v1}, Lcom/yandex/mobile/ads/impl/ta;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcf5;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Laf5;

    aput-object v0, v2, v1

    sput-object v2, Lcom/yandex/mobile/ads/impl/p00;->e:[Laf5;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/yandex/mobile/ads/impl/lz1;JLcom/yandex/mobile/ads/impl/mg1;)V
    .locals 1

    const-string v0, "skipButton"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "skipAppearanceController"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pausableTimer"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/p00;->a:Lcom/yandex/mobile/ads/impl/lz1;

    iput-wide p3, p0, Lcom/yandex/mobile/ads/impl/p00;->b:J

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/p00;->c:Lcom/yandex/mobile/ads/impl/mg1;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/ho1;->a(Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/go1;

    move-result-object p3

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/p00;->d:Lcom/yandex/mobile/ads/impl/go1;

    invoke-interface {p2, p1}, Lcom/yandex/mobile/ads/impl/lz1;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p00;->c:Lcom/yandex/mobile/ads/impl/mg1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/mg1;->invalidate()V

    return-void
.end method

.method public final b()V
    .locals 6

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/p00;->d:Lcom/yandex/mobile/ads/impl/go1;

    sget-object v1, Lcom/yandex/mobile/ads/impl/p00;->e:[Laf5;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/yandex/mobile/ads/impl/p00$a;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/p00;->a:Lcom/yandex/mobile/ads/impl/lz1;

    invoke-direct {v1, v0, v2}, Lcom/yandex/mobile/ads/impl/p00$a;-><init>(Landroid/view/View;Lcom/yandex/mobile/ads/impl/lz1;)V

    iget-wide v2, p0, Lcom/yandex/mobile/ads/impl/p00;->b:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p00;->a:Lcom/yandex/mobile/ads/impl/lz1;

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/lz1;->b(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p00;->c:Lcom/yandex/mobile/ads/impl/mg1;

    invoke-interface {p0, v2, v3, v1}, Lcom/yandex/mobile/ads/impl/mg1;->a(JLcom/yandex/mobile/ads/impl/og1;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p00;->c:Lcom/yandex/mobile/ads/impl/mg1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/mg1;->pause()V

    return-void
.end method

.method public final d()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p00;->c:Lcom/yandex/mobile/ads/impl/mg1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/mg1;->resume()V

    return-void
.end method
