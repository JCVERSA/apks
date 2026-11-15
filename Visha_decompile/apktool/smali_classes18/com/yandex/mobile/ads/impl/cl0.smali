.class public final Lcom/yandex/mobile/ads/impl/cl0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/n92$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/dl0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/yandex/mobile/ads/impl/n92$a;->c:Lcom/yandex/mobile/ads/impl/n92$a;

    sget-object v1, Lcom/yandex/mobile/ads/impl/n92$a;->d:Lcom/yandex/mobile/ads/impl/n92$a;

    sget-object v2, Lcom/yandex/mobile/ads/impl/n92$a;->i:Lcom/yandex/mobile/ads/impl/n92$a;

    filled-new-array {v0, v1, v2}, [Lcom/yandex/mobile/ads/impl/n92$a;

    move-result-object v0

    invoke-static {v0}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/cl0;->b:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/dl0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/dl0;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/cl0;-><init>(Lcom/yandex/mobile/ads/impl/dl0;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/dl0;)V
    .locals 1

    .line 3
    const-string v0, "renderer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/cl0;->a:Lcom/yandex/mobile/ads/impl/dl0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/FrameLayout;)V
    .locals 1

    .line 1
    const-string v0, "adView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cl0;->a:Lcom/yandex/mobile/ads/impl/dl0;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/dl0;->a(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/n92;Landroid/widget/FrameLayout;)V
    .locals 2

    .line 3
    const-string v0, "validationResult"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adView"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/n92;->b()Lcom/yandex/mobile/ads/impl/n92$a;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/yandex/mobile/ads/impl/cl0;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cl0;->a:Lcom/yandex/mobile/ads/impl/dl0;

    invoke-virtual {p0, p2, p1, v0}, Lcom/yandex/mobile/ads/impl/dl0;->a(Landroid/widget/FrameLayout;Lcom/yandex/mobile/ads/impl/n92;Z)V

    return-void
.end method
