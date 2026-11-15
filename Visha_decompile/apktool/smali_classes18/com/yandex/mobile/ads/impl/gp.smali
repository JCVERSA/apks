.class public final Lcom/yandex/mobile/ads/impl/gp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ns1;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ps1;

.field private final b:Lcom/yandex/mobile/ads/impl/ow1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/hp;Lcom/yandex/mobile/ads/impl/ps1;Lcom/yandex/mobile/ads/impl/ow1;)V
    .locals 1

    const-string v0, "clientSideReward"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "rewardedListener"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "reward"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/gp;->a:Lcom/yandex/mobile/ads/impl/ps1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/gp;->b:Lcom/yandex/mobile/ads/impl/ow1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/gp;->a:Lcom/yandex/mobile/ads/impl/ps1;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gp;->b:Lcom/yandex/mobile/ads/impl/ow1;

    invoke-interface {v0, p0}, Lcom/yandex/mobile/ads/impl/ps1;->a(Lcom/yandex/mobile/ads/impl/ow1;)V

    return-void
.end method
