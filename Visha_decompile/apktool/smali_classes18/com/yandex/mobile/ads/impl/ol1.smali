.class public final Lcom/yandex/mobile/ads/impl/ol1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/yd;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/yd;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/yd;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/ol1;-><init>(Lcom/yandex/mobile/ads/impl/yd;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/yd;)V
    .locals 1

    .line 3
    const-string v0, "animatedProgressBarController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ol1;->a:Lcom/yandex/mobile/ads/impl/yd;

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/ProgressBar;JJ)V
    .locals 1

    const-string v0, "progressBar"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ol1;->a:Lcom/yandex/mobile/ads/impl/yd;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p4, p5, p2, p3}, Lcom/yandex/mobile/ads/impl/yd;->a(Landroid/widget/ProgressBar;JJ)V

    return-void
.end method
