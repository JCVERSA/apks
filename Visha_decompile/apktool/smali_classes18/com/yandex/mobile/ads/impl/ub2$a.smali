.class public final Lcom/yandex/mobile/ads/impl/ub2$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/ub2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/u70;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/l62;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ub2$a;->a:Ljava/util/List;

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ub2$a;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lcom/yandex/mobile/ads/impl/ub2$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/u70;",
            ">;)",
            "Lcom/yandex/mobile/ads/impl/ub2$a;"
        }
    .end annotation

    .line 1
    const-string v0, "extensions"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ub2$a;->a:Ljava/util/List;

    return-object p0
.end method

.method public final a()Lcom/yandex/mobile/ads/impl/ub2;
    .locals 3

    .line 3
    new-instance v0, Lcom/yandex/mobile/ads/impl/ub2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ub2$a;->a:Ljava/util/List;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ub2$a;->b:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/yandex/mobile/ads/impl/ub2;-><init>(Ljava/util/List;Ljava/util/List;I)V

    return-object v0
.end method

.method public final b(Ljava/util/List;)Lcom/yandex/mobile/ads/impl/ub2$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/l62;",
            ">;)",
            "Lcom/yandex/mobile/ads/impl/ub2$a;"
        }
    .end annotation

    const-string v0, "trackingEvents"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ub2$a;->b:Ljava/util/List;

    return-object p0
.end method
