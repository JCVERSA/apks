.class public final Lcom/yandex/mobile/ads/impl/l90;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/k90;

.field private final b:Lcom/yandex/mobile/ads/impl/sp1;

.field private final c:Lcom/yandex/mobile/ads/impl/v10;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/k90;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/v10;)V
    .locals 1

    const-string v0, "feedDivContextFactory"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reporter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div2ViewFactory"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/l90;->a:Lcom/yandex/mobile/ads/impl/k90;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/l90;->b:Lcom/yandex/mobile/ads/impl/sp1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/l90;->c:Lcom/yandex/mobile/ads/impl/v10;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/b30;Lcom/yandex/mobile/ads/impl/b02;)Lcom/yandex/mobile/ads/impl/vk1;
    .locals 10

    const-string v0, "divKitDesign"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ad"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/yandex/mobile/ads/impl/uo;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/uo;-><init>()V

    new-instance v2, Lcom/yandex/mobile/ads/impl/v20;

    invoke-direct {v2, v1}, Lcom/yandex/mobile/ads/impl/v20;-><init>(Lcom/yandex/mobile/ads/impl/uo;)V

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/l90;->a:Lcom/yandex/mobile/ads/impl/k90;

    invoke-virtual {v3, v2}, Lcom/yandex/mobile/ads/impl/k90;->a(Lcom/yandex/mobile/ads/impl/v20;)Lcom/yandex/mobile/ads/impl/j90;

    move-result-object v5

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/b30;->b()Lcom/yandex/div2/DivData;

    move-result-object v3

    invoke-virtual {v5, v3, p2}, Lcom/yandex/mobile/ads/impl/j90;->a(Lcom/yandex/div2/DivData;Lcom/yandex/mobile/ads/impl/b02;)V

    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/l90;->c:Lcom/yandex/mobile/ads/impl/v10;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "div2Context"

    invoke-static {v5, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/yandex/div/core/view2/Div2View;

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p2

    invoke-direct/range {v4 .. v9}, Lcom/yandex/div/core/view2/Div2View;-><init>(Lcom/yandex/div/core/Div2Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/b30;->b()Lcom/yandex/div2/DivData;

    move-result-object v3

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/b30;->c()Lei2;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Lcom/yandex/div/core/view2/Div2View;->setData(Lcom/yandex/div2/DivData;Lei2;)Z

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p2, v3, v3}, Landroid/view/View;->measure(II)V

    new-instance v3, Lcom/yandex/mobile/ads/impl/vk1;

    invoke-direct {v3, p1, p2, v1, v2}, Lcom/yandex/mobile/ads/impl/vk1;-><init>(Lcom/yandex/mobile/ads/impl/b30;Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/mobile/ads/impl/uo;Lcom/yandex/mobile/ads/impl/v20;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/l90;->b:Lcom/yandex/mobile/ads/impl/sp1;

    const-string p2, "Failed to preload feed view"

    invoke-interface {p0, p2, p1}, Lcom/yandex/mobile/ads/impl/sp1;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    :goto_0
    return-object v3
.end method
