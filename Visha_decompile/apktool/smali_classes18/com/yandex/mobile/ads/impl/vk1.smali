.class public final Lcom/yandex/mobile/ads/impl/vk1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/b30;

.field private final b:Lcom/yandex/div/core/view2/Div2View;

.field private final c:Lcom/yandex/mobile/ads/impl/uo;

.field private final d:Lcom/yandex/mobile/ads/impl/v20;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/b30;Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/mobile/ads/impl/uo;Lcom/yandex/mobile/ads/impl/v20;)V
    .locals 1

    const-string v0, "divKitDesign"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preloadedDivView"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickConnector"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickHandler"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/vk1;->a:Lcom/yandex/mobile/ads/impl/b30;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/vk1;->b:Lcom/yandex/div/core/view2/Div2View;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/vk1;->c:Lcom/yandex/mobile/ads/impl/uo;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/vk1;->d:Lcom/yandex/mobile/ads/impl/v20;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/uo;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vk1;->c:Lcom/yandex/mobile/ads/impl/uo;

    return-object p0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/v20;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vk1;->d:Lcom/yandex/mobile/ads/impl/v20;

    return-object p0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/b30;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vk1;->a:Lcom/yandex/mobile/ads/impl/b30;

    return-object p0
.end method

.method public final d()Lcom/yandex/div/core/view2/Div2View;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vk1;->b:Lcom/yandex/div/core/view2/Div2View;

    return-object p0
.end method
