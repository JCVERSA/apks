.class public final Lcom/yandex/mobile/ads/impl/ld0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/r11;
.implements Lcom/yandex/mobile/ads/impl/s11;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/mobile/ads/impl/t8;

.field private final d:Lcom/yandex/mobile/ads/impl/xt1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/t8;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/t8;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResultReceiver"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ld0;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ld0;->b:Lcom/yandex/mobile/ads/impl/o8;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/ld0;->c:Lcom/yandex/mobile/ads/impl/t8;

    new-instance p1, Lcom/yandex/mobile/ads/impl/xt1;

    invoke-direct {p1, p2}, Lcom/yandex/mobile/ads/impl/xt1;-><init>(Lcom/yandex/mobile/ads/impl/o3;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ld0;->d:Lcom/yandex/mobile/ads/impl/xt1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ld0;->d:Lcom/yandex/mobile/ads/impl/xt1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ld0;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ld0;->b:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/xt1;->b(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ld0;->c:Lcom/yandex/mobile/ads/impl/t8;

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/t8;->a(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ld0;->c:Lcom/yandex/mobile/ads/impl/t8;

    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/t8;->a(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ld0;->c:Lcom/yandex/mobile/ads/impl/t8;

    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/t8;->a(ILandroid/os/Bundle;)V

    return-void
.end method
