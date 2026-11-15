.class public final Lcom/yandex/mobile/ads/impl/xg2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ap;


# instance fields
.field private final a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/xg2;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/vr0;Lcom/yandex/mobile/ads/impl/cp;)V
    .locals 3

    const-string v0, "link"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListenerCreator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/xg2;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, p1}, Lcom/yandex/mobile/ads/impl/cp;->a(Lcom/yandex/mobile/ads/impl/vr0;)Landroid/view/View$OnClickListener;

    move-result-object p1

    new-instance p2, Lcom/yandex/mobile/ads/impl/e71;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    new-instance v1, Lcom/yandex/mobile/ads/impl/to;

    invoke-direct {v1, v0, p1}, Lcom/yandex/mobile/ads/impl/to;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    sget v2, Lcom/yandex/mobile/ads/impl/y51;->e:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/y51$a;->a()Lcom/yandex/mobile/ads/impl/y51;

    move-result-object v2

    invoke-direct {p2, v0, p1, v1, v2}, Lcom/yandex/mobile/ads/impl/e71;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Lcom/yandex/mobile/ads/impl/to;Lcom/yandex/mobile/ads/impl/y51;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/xg2;->a:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xg2;->a:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
