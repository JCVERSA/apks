.class public final Lcom/yandex/mobile/ads/impl/d91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/jj0$a;


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o8;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "adResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o8;->E()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/yandex/mobile/ads/impl/c91;->c:Lcom/yandex/mobile/ads/impl/c91;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/c91;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o8;->E()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/yandex/mobile/ads/impl/c91;->d:Lcom/yandex/mobile/ads/impl/c91;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/c91;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/d91;->a:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/d91;->a:Z

    return p0
.end method
