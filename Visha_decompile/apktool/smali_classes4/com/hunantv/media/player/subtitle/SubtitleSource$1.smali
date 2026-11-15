.class Lcom/hunantv/media/player/subtitle/SubtitleSource$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/player/subtitle/SubtitleSource;->asyncReadSource(Lcom/hunantv/media/player/subtitle/d;Lcom/hunantv/media/player/subtitle/SubtitleSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/player/subtitle/SubtitleSource;

.field final synthetic val$source:Lcom/hunantv/media/player/subtitle/SubtitleSource;

.field final synthetic val$thread:Landroid/os/HandlerThread;

.field final synthetic val$track:Lcom/hunantv/media/player/subtitle/d;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/subtitle/SubtitleSource;Lcom/hunantv/media/player/subtitle/SubtitleSource;Lcom/hunantv/media/player/subtitle/d;Landroid/os/HandlerThread;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource$1;->this$0:Lcom/hunantv/media/player/subtitle/SubtitleSource;

    iput-object p2, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource$1;->val$source:Lcom/hunantv/media/player/subtitle/SubtitleSource;

    iput-object p3, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource$1;->val$track:Lcom/hunantv/media/player/subtitle/d;

    iput-object p4, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource$1;->val$thread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addTrack()V
    .locals 2

    const-string v0, "addTrack in"

    const-string v1, "subtitle"

    invoke-static {v1, v0}, Lcom/hunantv/media/player/subtitle/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource$1;->val$source:Lcom/hunantv/media/player/subtitle/SubtitleSource;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource$1;->val$track:Lcom/hunantv/media/player/subtitle/d;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "before new Scanner"

    invoke-static {v1, v0}, Lcom/hunantv/media/player/subtitle/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource$1;->val$source:Lcom/hunantv/media/player/subtitle/SubtitleSource;

    invoke-static {v0}, Lcom/hunantv/media/player/subtitle/SubtitleSource;->access$100(Lcom/hunantv/media/player/subtitle/SubtitleSource;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/media/utils/ByteUtil;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource$1;->this$0:Lcom/hunantv/media/player/subtitle/SubtitleSource;

    invoke-static {v0}, Lcom/hunantv/media/player/subtitle/SubtitleSource;->access$000(Lcom/hunantv/media/player/subtitle/SubtitleSource;)Lcom/hunantv/media/player/subtitle/SubtitleSource$SubtitleSourceCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource$1;->this$0:Lcom/hunantv/media/player/subtitle/SubtitleSource;

    invoke-static {p0}, Lcom/hunantv/media/player/subtitle/SubtitleSource;->access$000(Lcom/hunantv/media/player/subtitle/SubtitleSource;)Lcom/hunantv/media/player/subtitle/SubtitleSource$SubtitleSourceCallback;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/hunantv/media/player/subtitle/SubtitleSource$SubtitleSourceCallback;->onFailed(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource$1;->this$0:Lcom/hunantv/media/player/subtitle/SubtitleSource;

    invoke-static {v0}, Lcom/hunantv/media/player/subtitle/SubtitleSource;->access$000(Lcom/hunantv/media/player/subtitle/SubtitleSource;)Lcom/hunantv/media/player/subtitle/SubtitleSource$SubtitleSourceCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource$1;->this$0:Lcom/hunantv/media/player/subtitle/SubtitleSource;

    invoke-static {v0}, Lcom/hunantv/media/player/subtitle/SubtitleSource;->access$000(Lcom/hunantv/media/player/subtitle/SubtitleSource;)Lcom/hunantv/media/player/subtitle/SubtitleSource$SubtitleSourceCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource$1;->val$track:Lcom/hunantv/media/player/subtitle/d;

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource$1;->val$source:Lcom/hunantv/media/player/subtitle/SubtitleSource;

    invoke-interface {v0, v1, p0}, Lcom/hunantv/media/player/subtitle/SubtitleSource$SubtitleSourceCallback;->onSuccess(Lcom/hunantv/media/player/subtitle/d;Lcom/hunantv/media/player/subtitle/SubtitleSource;)V

    :cond_3
    return-void

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource$1;->this$0:Lcom/hunantv/media/player/subtitle/SubtitleSource;

    invoke-static {v0}, Lcom/hunantv/media/player/subtitle/SubtitleSource;->access$000(Lcom/hunantv/media/player/subtitle/SubtitleSource;)Lcom/hunantv/media/player/subtitle/SubtitleSource$SubtitleSourceCallback;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource$1;->this$0:Lcom/hunantv/media/player/subtitle/SubtitleSource;

    invoke-static {p0}, Lcom/hunantv/media/player/subtitle/SubtitleSource;->access$000(Lcom/hunantv/media/player/subtitle/SubtitleSource;)Lcom/hunantv/media/player/subtitle/SubtitleSource$SubtitleSourceCallback;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/hunantv/media/player/subtitle/SubtitleSource$SubtitleSourceCallback;->onFailed(I)V

    :cond_5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-direct {p0}, Lcom/hunantv/media/player/subtitle/SubtitleSource$1;->addTrack()V

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource$1;->this$0:Lcom/hunantv/media/player/subtitle/SubtitleSource;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hunantv/media/player/subtitle/SubtitleSource;->access$202(Lcom/hunantv/media/player/subtitle/SubtitleSource;Z)Z

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource$1;->this$0:Lcom/hunantv/media/player/subtitle/SubtitleSource;

    invoke-static {v0}, Lcom/hunantv/media/player/subtitle/SubtitleSource;->access$300(Lcom/hunantv/media/player/subtitle/SubtitleSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource$1;->this$0:Lcom/hunantv/media/player/subtitle/SubtitleSource;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hunantv/media/player/subtitle/SubtitleSource;->access$002(Lcom/hunantv/media/player/subtitle/SubtitleSource;Lcom/hunantv/media/player/subtitle/SubtitleSource$SubtitleSourceCallback;)Lcom/hunantv/media/player/subtitle/SubtitleSource$SubtitleSourceCallback;

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource$1;->val$thread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {p0}, Lcom/hunantv/media/player/utils/ThreadUtil;->quit(Landroid/os/Looper;)V

    return-void
.end method
