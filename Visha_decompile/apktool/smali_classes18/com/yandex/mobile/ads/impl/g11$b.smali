.class final Lcom/yandex/mobile/ads/impl/g11$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ov1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/g11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/g11;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/g11;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/g11$b;->a:Lcom/yandex/mobile/ads/impl/g11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/jc;Lcom/yandex/mobile/ads/impl/o50;)V
    .locals 1

    .line 5
    const-string v0, "advertisingConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "environmentConfiguration"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/yandex/mobile/ads/impl/g11;->b()Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/g11$b;->a:Lcom/yandex/mobile/ads/impl/g11;

    monitor-enter p1

    :try_start_0
    sget-object v0, Lcom/yandex/mobile/ads/impl/g11$c;->d:Lcom/yandex/mobile/ads/impl/g11$c;

    invoke-static {p2, v0}, Lcom/yandex/mobile/ads/impl/g11;->a(Lcom/yandex/mobile/ads/impl/g11;Lcom/yandex/mobile/ads/impl/g11$c;)V

    sget-object p2, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    .line 7
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g11$b;->a:Lcom/yandex/mobile/ads/impl/g11;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/g11;->a(Lcom/yandex/mobile/ads/impl/g11;)Lcom/yandex/mobile/ads/impl/f11;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/f11;->a()V

    return-void

    :catchall_0
    move-exception p0

    .line 8
    monitor-exit p1

    throw p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/w3;)V
    .locals 2

    .line 1
    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/yandex/mobile/ads/impl/g11;->b()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/g11$b;->a:Lcom/yandex/mobile/ads/impl/g11;

    monitor-enter p1

    :try_start_0
    sget-object v1, Lcom/yandex/mobile/ads/impl/g11$c;->b:Lcom/yandex/mobile/ads/impl/g11$c;

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/impl/g11;->a(Lcom/yandex/mobile/ads/impl/g11;Lcom/yandex/mobile/ads/impl/g11$c;)V

    sget-object v0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g11$b;->a:Lcom/yandex/mobile/ads/impl/g11;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/g11;->a(Lcom/yandex/mobile/ads/impl/g11;)Lcom/yandex/mobile/ads/impl/f11;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/f11;->a()V

    return-void

    :catchall_0
    move-exception p0

    .line 4
    monitor-exit p1

    throw p0
.end method
