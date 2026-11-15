.class public final Lcom/yandex/mobile/ads/impl/vx0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/q51;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/vx0$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/vx0$a;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/vx0$a;)V
    .locals 1

    const-string v0, "createEventControllerListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/vx0;->a:Lcom/yandex/mobile/ads/impl/vx0$a;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;)Lcom/yandex/mobile/ads/impl/p51;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/p51;

    invoke-direct {v0, p1, p3, p2}, Lcom/yandex/mobile/ads/impl/p51;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vx0;->a:Lcom/yandex/mobile/ads/impl/vx0$a;

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/vx0$a;->a(Lcom/yandex/mobile/ads/impl/p51;)V

    return-object v0
.end method
