.class public final Lcom/yandex/mobile/ads/impl/vo0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/sg2;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/cn0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/cn0;)V
    .locals 1

    const-string v0, "instreamAdViewsHolderManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/vo0;->a:Lcom/yandex/mobile/ads/impl/cn0;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/xb2;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vo0;->a:Lcom/yandex/mobile/ads/impl/cn0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/cn0;->a()Lcom/yandex/mobile/ads/impl/bn0;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/bn0;->a()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vo0;->a:Lcom/yandex/mobile/ads/impl/cn0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/cn0;->a()Lcom/yandex/mobile/ads/impl/bn0;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/bn0;->b()Lcom/yandex/mobile/ads/impl/t70;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
