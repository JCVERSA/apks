.class public final Lcom/yandex/mobile/ads/impl/tr1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/j1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/j1;)V
    .locals 1

    const-string v0, "adActivityListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/tr1;->a:Lcom/yandex/mobile/ads/impl/j1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/tr1;->a:Lcom/yandex/mobile/ads/impl/j1;

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/j1;->a(ILandroid/os/Bundle;)V

    return-void
.end method
