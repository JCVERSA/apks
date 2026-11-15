.class public final Lcom/yandex/mobile/ads/impl/w62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/r0;


# static fields
.field static final synthetic d:[Laf5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Laf5;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/v62$a;

.field private final b:Lcom/yandex/mobile/ads/impl/g0;

.field private final c:Lcom/yandex/mobile/ads/impl/go1;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "getContextReference()Landroid/content/Context;"

    const/4 v1, 0x0

    const-class v2, Lcom/yandex/mobile/ads/impl/w62;

    const-string v3, "contextReference"

    invoke-static {v2, v3, v0, v1}, Lcom/yandex/mobile/ads/impl/ta;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcf5;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Laf5;

    aput-object v0, v2, v1

    sput-object v2, Lcom/yandex/mobile/ads/impl/w62;->d:[Laf5;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/yandex/mobile/ads/impl/a91;Lcom/yandex/mobile/ads/impl/g0;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackingListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityBackgroundListener"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/w62;->a:Lcom/yandex/mobile/ads/impl/v62$a;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/w62;->b:Lcom/yandex/mobile/ads/impl/g0;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/ho1;->a(Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/go1;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/w62;->c:Lcom/yandex/mobile/ads/impl/go1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 3

    .line 1
    const-string v0, "activity"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/w62;->c:Lcom/yandex/mobile/ads/impl/go1;

    sget-object v1, Lcom/yandex/mobile/ads/impl/w62;->d:[Laf5;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/w62;->a:Lcom/yandex/mobile/ads/impl/v62$a;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/v62$a;->b()V

    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1

    .line 5
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/w62;->b:Lcom/yandex/mobile/ads/impl/g0;

    invoke-interface {v0, p1, p0}, Lcom/yandex/mobile/ads/impl/g0;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/r0;)V

    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/w62;->c:Lcom/yandex/mobile/ads/impl/go1;

    sget-object v1, Lcom/yandex/mobile/ads/impl/w62;->d:[Laf5;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/w62;->a:Lcom/yandex/mobile/ads/impl/v62$a;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/v62$a;->a()V

    :cond_0
    return-void
.end method

.method public final c(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activityContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/w62;->b:Lcom/yandex/mobile/ads/impl/g0;

    invoke-interface {v0, p1, p0}, Lcom/yandex/mobile/ads/impl/g0;->b(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/r0;)V

    return-void
.end method
