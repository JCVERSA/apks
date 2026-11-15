.class public final Lcom/yandex/mobile/ads/impl/r1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/m1;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/yandex/mobile/ads/impl/c1;

.field private final c:Lcom/yandex/mobile/ads/impl/u0;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/yandex/mobile/ads/impl/c1;Lcom/yandex/mobile/ads/impl/u0;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adActivityData"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityResultRegistrar"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/r1;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/r1;->b:Lcom/yandex/mobile/ads/impl/c1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/r1;->c:Lcom/yandex/mobile/ads/impl/u0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/r1;->c:Lcom/yandex/mobile/ads/impl/u0;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/r1;->a:Landroid/app/Activity;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/r1;->b:Lcom/yandex/mobile/ads/impl/c1;

    invoke-virtual {v0, v1, p0}, Lcom/yandex/mobile/ads/impl/u0;->a(Landroid/app/Activity;Lcom/yandex/mobile/ads/impl/c1;)V

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final onAdClosed()V
    .locals 0

    return-void
.end method
