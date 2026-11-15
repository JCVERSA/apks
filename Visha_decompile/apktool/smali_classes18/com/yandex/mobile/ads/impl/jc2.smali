.class final Lcom/yandex/mobile/ads/impl/jc2;
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

.field final synthetic c:Lcom/yandex/mobile/ads/impl/dq1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/dq1<",
            "Lcom/yandex/mobile/ads/impl/ki2;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/yandex/mobile/ads/impl/oi2;

.field final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/lc2;Lcom/yandex/mobile/ads/impl/sm0;Lcom/yandex/mobile/ads/impl/oi2;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/jc2;->b:Lcom/yandex/mobile/ads/impl/lc2;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/jc2;->c:Lcom/yandex/mobile/ads/impl/dq1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/jc2;->d:Lcom/yandex/mobile/ads/impl/oi2;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/jc2;->e:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    new-instance v5, Lcom/yandex/mobile/ads/impl/qi2;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jc2;->b:Lcom/yandex/mobile/ads/impl/lc2;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/lc2;->b(Lcom/yandex/mobile/ads/impl/lc2;)Lcom/yandex/mobile/ads/impl/g5;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/jc2;->c:Lcom/yandex/mobile/ads/impl/dq1;

    invoke-direct {v5, v0, v1}, Lcom/yandex/mobile/ads/impl/qi2;-><init>(Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/dq1;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jc2;->b:Lcom/yandex/mobile/ads/impl/lc2;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/lc2;->b(Lcom/yandex/mobile/ads/impl/lc2;)Lcom/yandex/mobile/ads/impl/g5;

    move-result-object v0

    sget-object v1, Lcom/yandex/mobile/ads/impl/f5;->y:Lcom/yandex/mobile/ads/impl/f5;

    const-string v2, "adLoadingPhaseType"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v1, v3}, Lcom/yandex/mobile/ads/impl/bk;->a(Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/f5;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/f5;Lcom/yandex/mobile/ads/impl/ha2;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jc2;->b:Lcom/yandex/mobile/ads/impl/lc2;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/lc2;->g(Lcom/yandex/mobile/ads/impl/lc2;)Lcom/yandex/mobile/ads/impl/ec2;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/jc2;->b:Lcom/yandex/mobile/ads/impl/lc2;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/lc2;->c(Lcom/yandex/mobile/ads/impl/lc2;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/jc2;->b:Lcom/yandex/mobile/ads/impl/lc2;

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lc2;->a(Lcom/yandex/mobile/ads/impl/lc2;)Lcom/yandex/mobile/ads/impl/o3;

    move-result-object v2

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/jc2;->d:Lcom/yandex/mobile/ads/impl/oi2;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/jc2;->e:Ljava/lang/Object;

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/ec2;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/oi2;Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/qi2;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
