.class final Lcom/yandex/mobile/ads/impl/mw1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/dr1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/mw1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field final synthetic c:Lcom/yandex/mobile/ads/impl/mw1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/mw1<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/mw1;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/mw1$a;->c:Lcom/yandex/mobile/ads/impl/mw1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/mw1$a;->a:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/mw1$a;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/w3;)V
    .locals 4

    .line 1
    const-string v0, "adRequestError"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/mw1$a;->c:Lcom/yandex/mobile/ads/impl/mw1;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/mw1;->e(Lcom/yandex/mobile/ads/impl/mw1;)Lcom/yandex/mobile/ads/impl/xt1;

    move-result-object p1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/mw1$a;->b:Landroid/content/Context;

    const-string v1, "context"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/mw1$a;->a:Lcom/yandex/mobile/ads/impl/o8;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/mw1$a;->c:Lcom/yandex/mobile/ads/impl/mw1;

    invoke-static {v3}, Lcom/yandex/mobile/ads/impl/mw1;->c(Lcom/yandex/mobile/ads/impl/mw1;)Lcom/yandex/mobile/ads/impl/t71;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v3}, Lcom/yandex/mobile/ads/impl/xt1;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/t71;)V

    .line 3
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/mw1$a;->c:Lcom/yandex/mobile/ads/impl/mw1;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/mw1;->e(Lcom/yandex/mobile/ads/impl/mw1;)Lcom/yandex/mobile/ads/impl/xt1;

    move-result-object p1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/mw1$a;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mw1$a;->a:Lcom/yandex/mobile/ads/impl/o8;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Lcom/yandex/mobile/ads/impl/xt1;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/u71;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/y61;)V
    .locals 5

    .line 4
    const-string v0, "nativeAdResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/yandex/mobile/ads/impl/u71;

    .line 6
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/mw1$a;->a:Lcom/yandex/mobile/ads/impl/o8;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/mw1$a;->c:Lcom/yandex/mobile/ads/impl/mw1;

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/mw1;->a(Lcom/yandex/mobile/ads/impl/mw1;)Lcom/yandex/mobile/ads/impl/o3;

    move-result-object v2

    .line 7
    invoke-direct {v0, v1, p1, v2}, Lcom/yandex/mobile/ads/impl/u71;-><init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/y61;Lcom/yandex/mobile/ads/impl/o3;)V

    .line 8
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/mw1$a;->c:Lcom/yandex/mobile/ads/impl/mw1;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/mw1;->e(Lcom/yandex/mobile/ads/impl/mw1;)Lcom/yandex/mobile/ads/impl/xt1;

    move-result-object p1

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/mw1$a;->b:Landroid/content/Context;

    const-string v2, "context"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/mw1$a;->a:Lcom/yandex/mobile/ads/impl/o8;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/mw1$a;->c:Lcom/yandex/mobile/ads/impl/mw1;

    invoke-static {v4}, Lcom/yandex/mobile/ads/impl/mw1;->c(Lcom/yandex/mobile/ads/impl/mw1;)Lcom/yandex/mobile/ads/impl/t71;

    move-result-object v4

    invoke-virtual {p1, v1, v3, v4}, Lcom/yandex/mobile/ads/impl/xt1;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/t71;)V

    .line 9
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/mw1$a;->c:Lcom/yandex/mobile/ads/impl/mw1;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/mw1;->e(Lcom/yandex/mobile/ads/impl/mw1;)Lcom/yandex/mobile/ads/impl/xt1;

    move-result-object p1

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/mw1$a;->b:Landroid/content/Context;

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mw1$a;->a:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {p1, v1, p0, v0}, Lcom/yandex/mobile/ads/impl/xt1;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/u71;)V

    return-void
.end method
