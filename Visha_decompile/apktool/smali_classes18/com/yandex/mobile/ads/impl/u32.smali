.class public final Lcom/yandex/mobile/ads/impl/u32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/tq0;


# instance fields
.field private final b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/yf1;)V
    .locals 1

    const-string v0, "htmlWebView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/u32;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u32;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result p0

    sget-object v0, Lhz9;->a:Lhz9;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "supports: {inlineVideo: %s}"

    const-string v1, "format(...)"

    const/4 v2, 0x1

    invoke-static {p0, v2, v0, v1}, Lcom/yandex/mobile/ads/impl/z0;->a([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
