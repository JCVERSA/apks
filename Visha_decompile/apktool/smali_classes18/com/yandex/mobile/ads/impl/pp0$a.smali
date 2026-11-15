.class public final Lcom/yandex/mobile/ads/impl/pp0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/op0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/pp0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/aj;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/aj;)V
    .locals 1

    const-string v0, "viewController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/pp0$a;->a:Lcom/yandex/mobile/ads/impl/aj;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget p1, Lcom/yandex/mobile/ads/impl/oa;->b:I

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/pp0$a;->a:Lcom/yandex/mobile/ads/impl/aj;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/oa;->a(Lcom/yandex/mobile/ads/impl/ro;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pp0$a;->a:Lcom/yandex/mobile/ads/impl/aj;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ck;->w()V

    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "view"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget p1, Lcom/yandex/mobile/ads/impl/oa;->b:I

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/pp0$a;->a:Lcom/yandex/mobile/ads/impl/aj;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/oa;->a(Lcom/yandex/mobile/ads/impl/ro;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pp0$a;->a:Lcom/yandex/mobile/ads/impl/aj;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ck;->v()V

    :cond_0
    return-void
.end method
