.class Lcom/hunantv/media/widget/debug/DebugPanel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoPTSListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/widget/debug/DebugPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/widget/debug/DebugPanel;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/widget/debug/DebugPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/debug/DebugPanel$1;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoPTS(Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;)V
    .locals 1

    new-instance v0, Lcom/hunantv/media/widget/debug/DebugPanel$1$1;

    invoke-direct {v0, p0, p1}, Lcom/hunantv/media/widget/debug/DebugPanel$1$1;-><init>(Lcom/hunantv/media/widget/debug/DebugPanel$1;Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;)V

    invoke-static {v0}, Lcom/hunantv/media/player/utils/ThreadUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
