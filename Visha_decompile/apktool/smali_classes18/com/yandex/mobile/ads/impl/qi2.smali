.class public final Lcom/yandex/mobile/ads/impl/qi2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/dq1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/dq1<",
        "Lcom/yandex/mobile/ads/impl/ki2;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/g5;

.field private final b:Lcom/yandex/mobile/ads/impl/dq1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/dq1<",
            "Lcom/yandex/mobile/ads/impl/ki2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/dq1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/g5;",
            "Lcom/yandex/mobile/ads/impl/dq1<",
            "Lcom/yandex/mobile/ads/impl/ki2;",
            ">;)V"
        }
    .end annotation

    const-string v0, "adLoadingPhasesManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/qi2;->a:Lcom/yandex/mobile/ads/impl/g5;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/qi2;->b:Lcom/yandex/mobile/ads/impl/dq1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/sb2;)V
    .locals 2

    .line 1
    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qi2;->a:Lcom/yandex/mobile/ads/impl/g5;

    sget-object v1, Lcom/yandex/mobile/ads/impl/f5;->y:Lcom/yandex/mobile/ads/impl/f5;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/g5;->a(Lcom/yandex/mobile/ads/impl/f5;)V

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qi2;->b:Lcom/yandex/mobile/ads/impl/dq1;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/dq1;->a(Lcom/yandex/mobile/ads/impl/sb2;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2

    .line 4
    check-cast p1, Lcom/yandex/mobile/ads/impl/ki2;

    .line 5
    const-string v0, "vmap"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qi2;->a:Lcom/yandex/mobile/ads/impl/g5;

    sget-object v1, Lcom/yandex/mobile/ads/impl/f5;->y:Lcom/yandex/mobile/ads/impl/f5;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/g5;->a(Lcom/yandex/mobile/ads/impl/f5;)V

    .line 7
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qi2;->b:Lcom/yandex/mobile/ads/impl/dq1;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/dq1;->a(Ljava/lang/Object;)V

    return-void
.end method
