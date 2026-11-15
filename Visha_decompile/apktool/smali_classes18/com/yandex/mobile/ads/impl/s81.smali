.class public final Lcom/yandex/mobile/ads/impl/s81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/w51;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ic0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/sa1;)V
    .locals 1

    const-string v0, "forcePausablePlayer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/s81;->a:Lcom/yandex/mobile/ads/impl/ic0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s81;->a:Lcom/yandex/mobile/ads/impl/ic0;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/ic0;->d()V

    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s81;->a:Lcom/yandex/mobile/ads/impl/ic0;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/ic0;->f()V

    return-void
.end method
