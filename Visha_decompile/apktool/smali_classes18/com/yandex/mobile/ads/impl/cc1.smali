.class public final Lcom/yandex/mobile/ads/impl/cc1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/sg2;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/rg2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/rg2;)V
    .locals 1

    const-string v0, "videoViewAdapter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/cc1;->a:Lcom/yandex/mobile/ads/impl/rg2;

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

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cc1;->a:Lcom/yandex/mobile/ads/impl/rg2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vg2;->b()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
