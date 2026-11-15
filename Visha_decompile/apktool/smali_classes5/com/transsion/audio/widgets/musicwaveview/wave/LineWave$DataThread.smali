.class Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave$DataThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataThread"
.end annotation


# instance fields
.field public dataHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave$DataThread;->this$0:Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDataHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave$DataThread;->dataHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave$DataThread;->dataHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave$DataThread;->dataHandler:Landroid/os/Handler;

    :cond_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
