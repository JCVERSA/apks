.class public final Lcom/yandex/mobile/ads/impl/p10;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Z


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/p2;)V
    .locals 1

    .line 1
    sget v0, Lcom/yandex/mobile/ads/impl/ao0;->g:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/ao0$a;->a()Lcom/yandex/mobile/ads/impl/ao0;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/p10;-><init>(Lcom/yandex/mobile/ads/impl/p2;Lcom/yandex/mobile/ads/impl/ao0;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/p2;Lcom/yandex/mobile/ads/impl/ao0;)V
    .locals 1

    .line 3
    const-string v0, "adBreak"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instreamSettings"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/ao0;->c()Ljava/util/Set;

    move-result-object p2

    .line 6
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/p2;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Li81;->d0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/p10;->a:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/p10;->a:Z

    return p0
.end method
