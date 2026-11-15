.class public final Lcom/yandex/mobile/ads/impl/mv1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ov1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/mv1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/ov1;

.field final synthetic b:Lcom/yandex/mobile/ads/impl/mv1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ov1;Lcom/yandex/mobile/ads/impl/mv1;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/mv1$a;->a:Lcom/yandex/mobile/ads/impl/ov1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/mv1$a;->b:Lcom/yandex/mobile/ads/impl/mv1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/jc;Lcom/yandex/mobile/ads/impl/o50;)V
    .locals 2

    .line 4
    const-string v0, "advertisingConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "environmentConfiguration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/yandex/mobile/ads/impl/mv1;->a()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/mv1$a;->a:Lcom/yandex/mobile/ads/impl/ov1;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mv1$a;->b:Lcom/yandex/mobile/ads/impl/mv1;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/mv1;->a(Lcom/yandex/mobile/ads/impl/mv1;)Lcom/yandex/mobile/ads/impl/ov1$a;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/ov1$a;->a(Lcom/yandex/mobile/ads/impl/jc;Lcom/yandex/mobile/ads/impl/o50;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/w3;)V
    .locals 2

    .line 1
    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/yandex/mobile/ads/impl/mv1;->a()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/mv1$a;->a:Lcom/yandex/mobile/ads/impl/ov1;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mv1$a;->b:Lcom/yandex/mobile/ads/impl/mv1;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/mv1;->a(Lcom/yandex/mobile/ads/impl/mv1;)Lcom/yandex/mobile/ads/impl/ov1$a;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/ov1$a;->a(Lcom/yandex/mobile/ads/impl/w3;)V

    return-void
.end method
