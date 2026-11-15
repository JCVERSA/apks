.class public final Lcom/yandex/mobile/ads/impl/bs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;"
        }
    .end annotation
.end field

.field private b:Lcom/yandex/mobile/ads/impl/k3;

.field private c:Lcom/yandex/mobile/ads/impl/n91;

.field private d:Lcom/yandex/mobile/ads/impl/f52;

.field private final e:Lcom/yandex/mobile/ads/impl/b30;

.field private final f:Lcom/yandex/mobile/ads/impl/yl1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/k3;Lcom/yandex/mobile/ads/impl/n91;Lcom/yandex/mobile/ads/impl/f52;Lcom/yandex/mobile/ads/impl/b30;Lcom/yandex/mobile/ads/impl/ur0;)V
    .locals 1

    const-string v0, "adResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adCompleteListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeMediaContent"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeProviderContainer"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progressListener"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/bs;->a:Lcom/yandex/mobile/ads/impl/o8;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/bs;->b:Lcom/yandex/mobile/ads/impl/k3;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/bs;->c:Lcom/yandex/mobile/ads/impl/n91;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/bs;->d:Lcom/yandex/mobile/ads/impl/f52;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/bs;->e:Lcom/yandex/mobile/ads/impl/b30;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/bs;->f:Lcom/yandex/mobile/ads/impl/yl1;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/yc0;
    .locals 7

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/bs;->c:Lcom/yandex/mobile/ads/impl/n91;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/n91;->a()Lcom/yandex/mobile/ads/impl/db1;

    move-result-object v3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/bs;->c:Lcom/yandex/mobile/ads/impl/n91;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/n91;->b()Lcom/yandex/mobile/ads/impl/ic1;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/bs;->e:Lcom/yandex/mobile/ads/impl/b30;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/b30;->e()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/yandex/mobile/ads/impl/h10;->d:Lcom/yandex/mobile/ads/impl/h10;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/h10;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/yandex/mobile/ads/impl/q81;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/bs;->b:Lcom/yandex/mobile/ads/impl/k3;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/bs;->d:Lcom/yandex/mobile/ads/impl/f52;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bs;->f:Lcom/yandex/mobile/ads/impl/yl1;

    invoke-direct {v0, v1, v2, p0}, Lcom/yandex/mobile/ads/impl/q81;-><init>(Lcom/yandex/mobile/ads/impl/k3;Lcom/yandex/mobile/ads/impl/f52;Lcom/yandex/mobile/ads/impl/yl1;)V

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    new-instance v0, Lcom/yandex/mobile/ads/impl/cb1;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/bs;->a:Lcom/yandex/mobile/ads/impl/o8;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/bs;->b:Lcom/yandex/mobile/ads/impl/k3;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/bs;->f:Lcom/yandex/mobile/ads/impl/yl1;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/o8;->K()Ljava/lang/Long;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/cb1;-><init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/db1;Lcom/yandex/mobile/ads/impl/k3;Lcom/yandex/mobile/ads/impl/yl1;Ljava/lang/Long;)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    new-instance v1, Lcom/yandex/mobile/ads/impl/hc1;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bs;->b:Lcom/yandex/mobile/ads/impl/k3;

    invoke-direct {v1, v0, p0}, Lcom/yandex/mobile/ads/impl/hc1;-><init>(Lcom/yandex/mobile/ads/impl/ic1;Lcom/yandex/mobile/ads/impl/k3;)V

    move-object v0, v1

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/yandex/mobile/ads/impl/q81;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/bs;->b:Lcom/yandex/mobile/ads/impl/k3;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/bs;->d:Lcom/yandex/mobile/ads/impl/f52;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bs;->f:Lcom/yandex/mobile/ads/impl/yl1;

    invoke-direct {v0, v1, v2, p0}, Lcom/yandex/mobile/ads/impl/q81;-><init>(Lcom/yandex/mobile/ads/impl/k3;Lcom/yandex/mobile/ads/impl/f52;Lcom/yandex/mobile/ads/impl/yl1;)V

    :goto_1
    return-object v0
.end method
