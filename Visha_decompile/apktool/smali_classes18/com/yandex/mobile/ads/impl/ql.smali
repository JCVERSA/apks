.class public final Lcom/yandex/mobile/ads/impl/ql;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/mobile/ads/impl/ml;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ml;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ql;->a:Lcom/yandex/mobile/ads/impl/ml;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/ml;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ql;->a:Lcom/yandex/mobile/ads/impl/ml;

    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ml;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ql;->a:Lcom/yandex/mobile/ads/impl/ml;

    return-void
.end method

.method public final b()Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ql;->a:Lcom/yandex/mobile/ads/impl/ml;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ql;->a:Lcom/yandex/mobile/ads/impl/ml;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ml;->b()V

    :cond_0
    return-void
.end method
