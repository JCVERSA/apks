.class public final Lcom/yandex/mobile/ads/impl/yg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ff1;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/yandex/mobile/ads/impl/mg2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ff1;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/mg2;)V
    .locals 1

    const-string v0, "adClickHandler"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetName"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoTracker"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/yg;->a:Lcom/yandex/mobile/ads/impl/ff1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/yg;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/yg;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/yg;->d:Lcom/yandex/mobile/ads/impl/mg2;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/yg;->d:Lcom/yandex/mobile/ads/impl/mg2;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/yg;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/yandex/mobile/ads/impl/mg2;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/yg;->a:Lcom/yandex/mobile/ads/impl/ff1;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yg;->b:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/yandex/mobile/ads/impl/ff1;->a(Ljava/lang/String;)V

    return-void
.end method
