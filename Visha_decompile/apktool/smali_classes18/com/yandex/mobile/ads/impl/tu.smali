.class public final Lcom/yandex/mobile/ads/impl/tu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/tl1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/tl1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/tl1;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/tu;-><init>(Lcom/yandex/mobile/ads/impl/tl1;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/tl1;)V
    .locals 1

    .line 3
    const-string v0, "progressDisplayTimeFormatter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/tu;->a:Lcom/yandex/mobile/ads/impl/tl1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/TextView;JJ)V
    .locals 1

    const-string v0, "countDownProgress"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sub-long/2addr p2, p4

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/tu;->a:Lcom/yandex/mobile/ads/impl/tl1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p3}, Lcom/yandex/mobile/ads/impl/tl1;->a(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
