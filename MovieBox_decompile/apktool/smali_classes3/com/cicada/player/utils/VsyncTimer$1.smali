.class Lcom/cicada/player/utils/VsyncTimer$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cicada/player/utils/VsyncTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cicada/player/utils/VsyncTimer;


# direct methods
.method constructor <init>(Lcom/cicada/player/utils/VsyncTimer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cicada/player/utils/VsyncTimer$1;->this$0:Lcom/cicada/player/utils/VsyncTimer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cicada/player/utils/VsyncTimer$1;->this$0:Lcom/cicada/player/utils/VsyncTimer;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cicada/player/utils/VsyncTimer;->access$000(Lcom/cicada/player/utils/VsyncTimer;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-static {v0, v1, v2, p1, p2}, Lcom/cicada/player/utils/VsyncTimer;->access$100(Lcom/cicada/player/utils/VsyncTimer;JJ)I

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
