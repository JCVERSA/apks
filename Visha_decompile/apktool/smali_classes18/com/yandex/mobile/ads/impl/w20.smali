.class public final Lcom/yandex/mobile/ads/impl/w20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwi2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/w20$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/v20;

.field private final b:Lcom/yandex/mobile/ads/impl/y20;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/v20;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/y20;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/y20;-><init>(I)V

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/w20;-><init>(Lcom/yandex/mobile/ads/impl/v20;Lcom/yandex/mobile/ads/impl/y20;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/v20;Lcom/yandex/mobile/ads/impl/y20;)V
    .locals 1

    .line 3
    const-string v0, "clickHandler"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickExtensionParser"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/w20;->a:Lcom/yandex/mobile/ads/impl/v20;

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/w20;->b:Lcom/yandex/mobile/ads/impl/y20;

    return-void
.end method


# virtual methods
.method public bridge synthetic beforeBindView(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Log2;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lwi2;->beforeBindView(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Log2;)V

    return-void
.end method

.method public final bindView(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Log2;)V
    .locals 1

    const-string v0, "divView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "expressionResolver"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "view"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "div"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/w20;->b:Lcom/yandex/mobile/ads/impl/y20;

    invoke-virtual {p2, p4}, Lcom/yandex/mobile/ads/impl/y20;->a(Log2;)Lcom/yandex/mobile/ads/impl/x20;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance p4, Lcom/yandex/mobile/ads/impl/w20$a;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/w20;->a:Lcom/yandex/mobile/ads/impl/v20;

    invoke-direct {p4, p0, p2}, Lcom/yandex/mobile/ads/impl/w20$a;-><init>(Lcom/yandex/mobile/ads/impl/v20;Lcom/yandex/mobile/ads/impl/x20;)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/to;

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p4}, Lcom/yandex/mobile/ads/impl/to;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final matches(Log2;)Z
    .locals 1

    const-string v0, "div"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/w20;->b:Lcom/yandex/mobile/ads/impl/y20;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/y20;->a(Log2;)Lcom/yandex/mobile/ads/impl/x20;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic preprocess(Log2;Loj3;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lwi2;->preprocess(Log2;Loj3;)V

    return-void
.end method

.method public final unbindView(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Log2;)V
    .locals 0

    const-string p0, "divView"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "expressionResolver"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "view"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "div"

    invoke-static {p4, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
