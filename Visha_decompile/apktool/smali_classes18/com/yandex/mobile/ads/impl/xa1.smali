.class public final Lcom/yandex/mobile/ads/impl/xa1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ai1;

.field private final b:Lcom/yandex/mobile/ads/impl/qf2;

.field private final c:Lcom/yandex/mobile/ads/impl/gi2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/rg2;Lcom/yandex/mobile/ads/impl/sa1;Lcom/yandex/mobile/ads/impl/cc1;Lcom/yandex/mobile/ads/impl/jb1;)V
    .locals 1

    const-string v0, "viewAdapter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeVideoAdPlayer"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoViewProvider"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/ua1;

    invoke-direct {v0, p2}, Lcom/yandex/mobile/ads/impl/ua1;-><init>(Lcom/yandex/mobile/ads/impl/sa1;)V

    new-instance p2, Lcom/yandex/mobile/ads/impl/ai1;

    invoke-direct {p2, p4}, Lcom/yandex/mobile/ads/impl/ai1;-><init>(Lcom/yandex/mobile/ads/impl/jb1;)V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/xa1;->a:Lcom/yandex/mobile/ads/impl/ai1;

    new-instance p2, Lcom/yandex/mobile/ads/impl/qf2;

    invoke-direct {p2, p1}, Lcom/yandex/mobile/ads/impl/qf2;-><init>(Lcom/yandex/mobile/ads/impl/rg2;)V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/xa1;->b:Lcom/yandex/mobile/ads/impl/qf2;

    new-instance p1, Lcom/yandex/mobile/ads/impl/gi2;

    invoke-direct {p1, v0, p3}, Lcom/yandex/mobile/ads/impl/gi2;-><init>(Lcom/yandex/mobile/ads/impl/ua1;Lcom/yandex/mobile/ads/impl/cc1;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/xa1;->c:Lcom/yandex/mobile/ads/impl/gi2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/dd2;)V
    .locals 4

    const-string v0, "progressEventsObservable"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/xa1;->a:Lcom/yandex/mobile/ads/impl/ai1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/xa1;->b:Lcom/yandex/mobile/ads/impl/qf2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xa1;->c:Lcom/yandex/mobile/ads/impl/gi2;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/yandex/mobile/ads/impl/cd2;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object p0, v2, v0

    invoke-virtual {p1, v2}, Lcom/yandex/mobile/ads/impl/dd2;->a([Lcom/yandex/mobile/ads/impl/cd2;)V

    return-void
.end method
