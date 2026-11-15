.class public final Lcom/yandex/mobile/ads/impl/qd1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/hc0;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/sd1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/e31;)V
    .locals 1

    const-string v0, "noticeTrackingManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/qd1;->a:Lcom/yandex/mobile/ads/impl/sd1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qd1;->a:Lcom/yandex/mobile/ads/impl/sd1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/sd1;->c()V

    return-void
.end method
