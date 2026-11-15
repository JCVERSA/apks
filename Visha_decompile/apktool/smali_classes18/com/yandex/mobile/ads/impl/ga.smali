.class public final Lcom/yandex/mobile/ads/impl/ga;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/r81;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/gc0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/gc0;)V
    .locals 1

    const-string v0, "noticeForceClickController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ga;->a:Lcom/yandex/mobile/ads/impl/gc0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/pk0;)V
    .locals 1

    const-string v0, "eventsObservable"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ga;->a:Lcom/yandex/mobile/ads/impl/gc0;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/gc0;->a(Lcom/yandex/mobile/ads/impl/hc0;)V

    return-void
.end method
