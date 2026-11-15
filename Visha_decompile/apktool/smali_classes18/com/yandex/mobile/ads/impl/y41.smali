.class public final Lcom/yandex/mobile/ads/impl/y41;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o3;

.field private final b:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private d:Lcom/yandex/mobile/ads/impl/x71;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getApplicationContext(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yandex/mobile/ads/impl/y41;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adConfiguration"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adResponse"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "appContext"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/y41;->a:Lcom/yandex/mobile/ads/impl/o3;

    .line 6
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/y41;->b:Lcom/yandex/mobile/ads/impl/o8;

    .line 7
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/y41;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/ep;
    .locals 2

    .line 1
    const-string v0, "assetName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickType"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/yandex/mobile/ads/impl/z41;

    .line 3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/y41;->d:Lcom/yandex/mobile/ads/impl/x71;

    .line 4
    invoke-direct {v0, p1, p2, v1}, Lcom/yandex/mobile/ads/impl/z41;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/x71;)V

    .line 5
    new-instance p1, Lcom/yandex/mobile/ads/impl/ep;

    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/y41;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/y41;->b:Lcom/yandex/mobile/ads/impl/o8;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/y41;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-direct {p1, p2, v1, p0, v0}, Lcom/yandex/mobile/ads/impl/ep;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/z41;)V

    return-object p1
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/x71;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/y41;->d:Lcom/yandex/mobile/ads/impl/x71;

    return-void
.end method
