.class final Lcom/yandex/mobile/ads/impl/hc2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lc74;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/yandex/mobile/ads/impl/lc2;

.field final synthetic c:Lcom/yandex/mobile/ads/impl/ha2;

.field final synthetic d:Lcom/yandex/mobile/ads/impl/ia2;

.field final synthetic e:Lcom/yandex/mobile/ads/impl/dq1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/dq1<",
            "Lcom/yandex/mobile/ads/impl/z92;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/lc2;Lcom/yandex/mobile/ads/impl/ha2;Lcom/yandex/mobile/ads/impl/fo0;Lcom/yandex/mobile/ads/impl/ka2;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hc2;->b:Lcom/yandex/mobile/ads/impl/lc2;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/hc2;->c:Lcom/yandex/mobile/ads/impl/ha2;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/hc2;->d:Lcom/yandex/mobile/ads/impl/ia2;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/hc2;->e:Lcom/yandex/mobile/ads/impl/dq1;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/hc2;->f:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hc2;->b:Lcom/yandex/mobile/ads/impl/lc2;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/lc2;->e(Lcom/yandex/mobile/ads/impl/lc2;)Lcom/yandex/mobile/ads/impl/ba2;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/hc2;->b:Lcom/yandex/mobile/ads/impl/lc2;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/lc2;->c(Lcom/yandex/mobile/ads/impl/lc2;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/hc2;->c:Lcom/yandex/mobile/ads/impl/ha2;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/hc2;->d:Lcom/yandex/mobile/ads/impl/ia2;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/hc2;->e:Lcom/yandex/mobile/ads/impl/dq1;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/yandex/mobile/ads/impl/ba2;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/ha2;Lcom/yandex/mobile/ads/impl/ia2;Lcom/yandex/mobile/ads/impl/dq1;)Lcom/yandex/mobile/ads/impl/aa2;

    move-result-object v11

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hc2;->b:Lcom/yandex/mobile/ads/impl/lc2;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/lc2;->b(Lcom/yandex/mobile/ads/impl/lc2;)Lcom/yandex/mobile/ads/impl/g5;

    move-result-object v0

    sget-object v1, Lcom/yandex/mobile/ads/impl/f5;->v:Lcom/yandex/mobile/ads/impl/f5;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/hc2;->c:Lcom/yandex/mobile/ads/impl/ha2;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/g5;->a(Lcom/yandex/mobile/ads/impl/f5;Lcom/yandex/mobile/ads/impl/ha2;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hc2;->b:Lcom/yandex/mobile/ads/impl/lc2;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/lc2;->g(Lcom/yandex/mobile/ads/impl/lc2;)Lcom/yandex/mobile/ads/impl/ec2;

    move-result-object v5

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hc2;->b:Lcom/yandex/mobile/ads/impl/lc2;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/lc2;->c(Lcom/yandex/mobile/ads/impl/lc2;)Landroid/content/Context;

    move-result-object v6

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hc2;->b:Lcom/yandex/mobile/ads/impl/lc2;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/lc2;->a(Lcom/yandex/mobile/ads/impl/lc2;)Lcom/yandex/mobile/ads/impl/o3;

    move-result-object v7

    iget-object v8, p0, Lcom/yandex/mobile/ads/impl/hc2;->c:Lcom/yandex/mobile/ads/impl/ha2;

    iget-object v9, p0, Lcom/yandex/mobile/ads/impl/hc2;->d:Lcom/yandex/mobile/ads/impl/ia2;

    iget-object v10, p0, Lcom/yandex/mobile/ads/impl/hc2;->f:Ljava/lang/Object;

    invoke-virtual/range {v5 .. v11}, Lcom/yandex/mobile/ads/impl/ec2;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/ha2;Lcom/yandex/mobile/ads/impl/ia2;Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/aa2;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
