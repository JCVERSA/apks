.class Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession$1;
.super Landroid/os/Handler;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;-><init>(Lcom/cicada/player/utils/media/DrmSessionManager;Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;

.field final synthetic val$this$0:Lcom/cicada/player/utils/media/DrmSessionManager;


# direct methods
.method constructor <init>(Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;Landroid/os/Looper;Lcom/cicada/player/utils/media/DrmSessionManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession$1;->this$1:Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession$1;->val$this$0:Lcom/cicada/player/utils/media/DrmSessionManager;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession$1;->this$1:Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->access$000(Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-ne v0, v1, :cond_2

    .line 17
    .line 18
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession$1;->this$1:Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->access$100(Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;)V
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession$1;->this$1:Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->access$000(Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
