.class public final Lcom/yandex/mobile/ads/impl/uq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/mobile/ads/impl/o50;

.field private b:Lcom/yandex/mobile/ads/impl/jc;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/o50;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/o50;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/jc;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/jc;-><init>()V

    .line 3
    invoke-direct {p0, v1, v0}, Lcom/yandex/mobile/ads/impl/uq;-><init>(Lcom/yandex/mobile/ads/impl/jc;Lcom/yandex/mobile/ads/impl/o50;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/jc;Lcom/yandex/mobile/ads/impl/o50;)V
    .locals 1

    .line 4
    const-string v0, "environmentConfiguration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "advertisingConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/uq;->a:Lcom/yandex/mobile/ads/impl/o50;

    .line 7
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/uq;->b:Lcom/yandex/mobile/ads/impl/jc;

    .line 8
    const-string p1, "medium"

    const-string p2, "large"

    const-string v0, "small"

    filled-new-array {v0, p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/uq;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/jc;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uq;->b:Lcom/yandex/mobile/ads/impl/jc;

    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/jc;)V
    .locals 1

    .line 2
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/uq;->b:Lcom/yandex/mobile/ads/impl/jc;

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/o50;)V
    .locals 1

    .line 4
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/uq;->a:Lcom/yandex/mobile/ads/impl/o50;

    return-void
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/o50;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uq;->a:Lcom/yandex/mobile/ads/impl/o50;

    return-object p0
.end method

.method public final c()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uq;->c:Ljava/util/List;

    return-object p0
.end method
