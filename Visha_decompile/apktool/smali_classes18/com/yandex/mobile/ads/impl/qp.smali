.class public final Lcom/yandex/mobile/ads/impl/qp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/xc0;

.field private final b:Lcom/yandex/mobile/ads/impl/gd0;

.field private final c:Lcom/yandex/mobile/ads/impl/dw;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/xc0;Lcom/yandex/mobile/ads/impl/gd0;Lcom/yandex/mobile/ads/impl/dw;)V
    .locals 1

    const-string v0, "fullScreenCloseButtonListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fullScreenHtmlWebViewAdapter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugEventsReporter"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/qp;->a:Lcom/yandex/mobile/ads/impl/xc0;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/qp;->b:Lcom/yandex/mobile/ads/impl/gd0;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/qp;->c:Lcom/yandex/mobile/ads/impl/dw;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/qp;->b:Lcom/yandex/mobile/ads/impl/gd0;

    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/gd0;->a()V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/qp;->a:Lcom/yandex/mobile/ads/impl/xc0;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/xc0;->c()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qp;->c:Lcom/yandex/mobile/ads/impl/dw;

    sget-object p1, Lcom/yandex/mobile/ads/impl/cw;->c:Lcom/yandex/mobile/ads/impl/cw;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/dw;->a(Lcom/yandex/mobile/ads/impl/cw;)V

    return-void
.end method
