.class public final Lcom/yandex/mobile/ads/impl/kb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/z;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/z<",
        "Lcom/yandex/mobile/ads/impl/jb;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/yb;

.field private final b:Lcom/yandex/mobile/ads/impl/v9;

.field private final c:Lcom/yandex/mobile/ads/impl/tp1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/yb;Lcom/yandex/mobile/ads/impl/v9;Lcom/yandex/mobile/ads/impl/tp1;)V
    .locals 1

    const-string v0, "adtuneRenderer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adTracker"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reporter"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/kb;->a:Lcom/yandex/mobile/ads/impl/yb;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/kb;->b:Lcom/yandex/mobile/ads/impl/v9;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/kb;->c:Lcom/yandex/mobile/ads/impl/tp1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/yandex/mobile/ads/impl/x;)Lcom/yandex/mobile/ads/impl/gf0;
    .locals 4

    check-cast p2, Lcom/yandex/mobile/ads/impl/jb;

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/jb;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/kb;->b:Lcom/yandex/mobile/ads/impl/v9;

    sget-object v3, Lcom/yandex/mobile/ads/impl/z62;->b:Lcom/yandex/mobile/ads/impl/z62;

    invoke-virtual {v2, v1, v3}, Lcom/yandex/mobile/ads/impl/v9;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/z62;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/kb;->a:Lcom/yandex/mobile/ads/impl/yb;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/yb;->a(Landroid/view/View;Lcom/yandex/mobile/ads/impl/jb;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/kb;->c:Lcom/yandex/mobile/ads/impl/tp1;

    sget-object p1, Lcom/yandex/mobile/ads/impl/op1$b;->j:Lcom/yandex/mobile/ads/impl/op1$b;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/tp1;->a(Lcom/yandex/mobile/ads/impl/op1$b;)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/gf0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/gf0;-><init>(Z)V

    return-object p0
.end method
