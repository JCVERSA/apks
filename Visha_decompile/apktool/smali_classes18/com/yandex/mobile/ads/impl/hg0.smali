.class public final Lcom/yandex/mobile/ads/impl/hg0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ct;

.field private final b:Lcom/yandex/mobile/ads/impl/pw1;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/ct;)V
    .locals 1

    .line 1
    sget v0, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/hg0;-><init>(Lcom/yandex/mobile/ads/impl/ct;Lcom/yandex/mobile/ads/impl/pw1;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ct;Lcom/yandex/mobile/ads/impl/pw1;)V
    .locals 1

    .line 3
    const-string v0, "defaultHostAccessChecker"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkSettings"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hg0;->a:Lcom/yandex/mobile/ads/impl/ct;

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/hg0;->b:Lcom/yandex/mobile/ads/impl/pw1;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/ct;
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hg0;->b:Lcom/yandex/mobile/ads/impl/pw1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1;->c()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hg0;->a:Lcom/yandex/mobile/ads/impl/ct;

    return-object p0
.end method
