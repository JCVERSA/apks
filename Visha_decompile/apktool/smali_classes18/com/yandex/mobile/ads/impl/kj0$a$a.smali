.class public final Lcom/yandex/mobile/ads/impl/kj0$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/oj0$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/kj0$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/kj0$a;

.field final synthetic b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/yandex/mobile/ads/impl/xj0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/kj0$a;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/xj0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/kj0$a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/xj0;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/kj0$a$a;->a:Lcom/yandex/mobile/ads/impl/kj0$a;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/kj0$a$a;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/kj0$a$a;->c:Lcom/yandex/mobile/ads/impl/xj0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/oj0$c;Z)V
    .locals 1

    .line 4
    const-string p2, "response"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/kj0$a$a;->c:Lcom/yandex/mobile/ads/impl/xj0;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/xj0;->f()Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/oj0$c;->b()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 7
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/kj0$a$a;->b:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/kj0$a$a;->a:Lcom/yandex/mobile/ads/impl/kj0$a;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/kj0$a;->a(Lcom/yandex/mobile/ads/impl/kj0$a;)Lcom/yandex/mobile/ads/impl/gk0;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lcom/yandex/mobile/ads/impl/gk0;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/kj0$a$a;->a:Lcom/yandex/mobile/ads/impl/kj0$a;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/kj0$a$a;->b:Ljava/util/Map;

    invoke-static {p1, p0}, Lcom/yandex/mobile/ads/impl/kj0$a;->a(Lcom/yandex/mobile/ads/impl/kj0$a;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/si2;)V
    .locals 1

    .line 1
    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/sp0;->a([Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/kj0$a$a;->a:Lcom/yandex/mobile/ads/impl/kj0$a;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/kj0$a$a;->b:Ljava/util/Map;

    invoke-static {p1, p0}, Lcom/yandex/mobile/ads/impl/kj0$a;->a(Lcom/yandex/mobile/ads/impl/kj0$a;Ljava/util/Map;)V

    return-void
.end method
