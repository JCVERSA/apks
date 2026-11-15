.class Lcom/mgtv/ssp/play/PlayerCore$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/play/PlayerCore;->getCurrentVideoInfo()Lcom/mgtv/ssp/play/playsdk/PlayerVideoInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mgtv/ssp/play/PlayerCore;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/play/PlayerCore;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore$10;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;)I
    .locals 0

    .line 2
    iget p0, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    iget p1, p2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    if-le p0, p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    check-cast p2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/ssp/play/PlayerCore$10;->compare(Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;)I

    move-result p0

    return p0
.end method
