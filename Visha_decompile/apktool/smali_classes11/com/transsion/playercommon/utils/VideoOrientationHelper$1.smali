.class Lcom/transsion/playercommon/utils/VideoOrientationHelper$1;
.super Lcom/transsion/arch/threads/TaskExecutor$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/utils/VideoOrientationHelper;->d(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/playercommon/utils/VideoOrientationHelper$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/arch/threads/TaskExecutor$Task<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/transsion/playercommon/utils/VideoOrientationHelper$a;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/playercommon/utils/VideoOrientationHelper$a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/utils/VideoOrientationHelper$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/playercommon/utils/VideoOrientationHelper$1;->val$mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    iput-object p3, p0, Lcom/transsion/playercommon/utils/VideoOrientationHelper$1;->val$callback:Lcom/transsion/playercommon/utils/VideoOrientationHelper$a;

    invoke-direct {p0}, Lcom/transsion/arch/threads/TaskExecutor$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackground()Ljava/lang/Boolean;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/transsion/playercommon/utils/VideoOrientationHelper$1;->val$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/transsion/playercommon/utils/VideoOrientationHelper$1;->val$mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/MediaItem;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/playercommon/utils/VideoOrientationHelper;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onBackground()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/VideoOrientationHelper$1;->onBackground()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onResult(Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/transsion/playercommon/utils/VideoOrientationHelper$1;->val$mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/media/MediaItem;->setOrientation(I)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/utils/VideoOrientationHelper$1;->val$callback:Lcom/transsion/playercommon/utils/VideoOrientationHelper$a;

    if-eqz p0, :cond_1

    .line 4
    invoke-interface {p0}, Lcom/transsion/playercommon/utils/VideoOrientationHelper$a;->a()V

    :cond_1
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/utils/VideoOrientationHelper$1;->onResult(Ljava/lang/Boolean;)V

    return-void
.end method
