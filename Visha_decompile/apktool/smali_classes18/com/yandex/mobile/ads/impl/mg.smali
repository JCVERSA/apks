.class public final Lcom/yandex/mobile/ads/impl/mg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/zb2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/ff1;

.field private final c:Lcom/yandex/mobile/ads/impl/mg2;

.field private final d:Lcom/yandex/mobile/ads/impl/no0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/ff1;Lcom/yandex/mobile/ads/impl/mg2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/ff1;",
            "Lcom/yandex/mobile/ads/impl/mg2;",
            ")V"
        }
    .end annotation

    const-string v0, "videoAdInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adClickHandler"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoTracker"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/mg;->a:Lcom/yandex/mobile/ads/impl/zb2;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/mg;->b:Lcom/yandex/mobile/ads/impl/ff1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/mg;->c:Lcom/yandex/mobile/ads/impl/mg2;

    new-instance p1, Lcom/yandex/mobile/ads/impl/no0;

    new-instance p2, Lcom/yandex/mobile/ads/impl/vu;

    invoke-direct {p2}, Lcom/yandex/mobile/ads/impl/vu;-><init>()V

    invoke-direct {p1, p2}, Lcom/yandex/mobile/ads/impl/no0;-><init>(Lcom/yandex/mobile/ads/impl/vu;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/mg;->d:Lcom/yandex/mobile/ads/impl/no0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/yandex/mobile/ads/impl/ig;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/yandex/mobile/ads/impl/ig<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/ig;->e()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/mg;->d:Lcom/yandex/mobile/ads/impl/no0;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/mg;->a:Lcom/yandex/mobile/ads/impl/zb2;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/zb2;->b()Lcom/yandex/mobile/ads/impl/uu;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/ig;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/no0;->a(Lcom/yandex/mobile/ads/impl/uu;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/he2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/he2;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/yandex/mobile/ads/impl/yg;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/mg;->b:Lcom/yandex/mobile/ads/impl/ff1;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/ig;->b()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mg;->c:Lcom/yandex/mobile/ads/impl/mg2;

    invoke-direct {v1, v2, v0, p2, p0}, Lcom/yandex/mobile/ads/impl/yg;-><init>(Lcom/yandex/mobile/ads/impl/ff1;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/mg2;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
