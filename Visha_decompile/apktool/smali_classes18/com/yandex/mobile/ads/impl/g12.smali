.class public final Lcom/yandex/mobile/ads/impl/g12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/i12;

.field private final b:Lcom/yandex/mobile/ads/impl/y82;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/i12;Lcom/yandex/mobile/ads/impl/y82;)V
    .locals 1

    const-string v0, "socialAdInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "urlViewerLauncher"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/g12;->a:Lcom/yandex/mobile/ads/impl/i12;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/g12;->b:Lcom/yandex/mobile/ads/impl/y82;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/g12;->a:Lcom/yandex/mobile/ads/impl/i12;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/i12;->a()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g12;->b:Lcom/yandex/mobile/ads/impl/y82;

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/y82;->a(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method
