.class Lcom/hunantv/media/widget/debug/DebugPanel$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/widget/debug/DebugPanel$1;->onVideoPTS(Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hunantv/media/widget/debug/DebugPanel$1;

.field final synthetic val$clock:Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/widget/debug/DebugPanel$1;Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/debug/DebugPanel$1$1;->this$1:Lcom/hunantv/media/widget/debug/DebugPanel$1;

    iput-object p2, p0, Lcom/hunantv/media/widget/debug/DebugPanel$1$1;->val$clock:Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel$1$1;->this$1:Lcom/hunantv/media/widget/debug/DebugPanel$1;

    iget-object v0, v0, Lcom/hunantv/media/widget/debug/DebugPanel$1;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hunantv/media/widget/debug/DebugPanel$1$1;->val$clock:Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;

    iget v2, v2, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->clock_type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hunantv/media/widget/debug/DebugPanel$1$1;->val$clock:Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;

    iget-wide v2, p0, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->vframe_time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/hunantv/media/widget/debug/DebugPanel;->updatePts(Ljava/lang/String;)V

    return-void
.end method
