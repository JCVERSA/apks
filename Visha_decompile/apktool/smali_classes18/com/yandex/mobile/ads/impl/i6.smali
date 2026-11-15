.class public final Lcom/yandex/mobile/ads/impl/i6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/kp;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/g6;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/g6;I)V
    .locals 1

    const-string v0, "adPod"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/i6;->a:Lcom/yandex/mobile/ads/impl/g6;

    iput p2, p0, Lcom/yandex/mobile/ads/impl/i6;->b:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i6;->a:Lcom/yandex/mobile/ads/impl/g6;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/g6;->a()I

    move-result v0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/i6;->b:I

    if-gt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
