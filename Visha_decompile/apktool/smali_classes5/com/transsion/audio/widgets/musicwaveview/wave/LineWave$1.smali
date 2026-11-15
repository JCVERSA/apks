.class Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->setWaveData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave$1;->this$0:Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave$1;->this$0:Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;

    invoke-static {v0}, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->access$000(Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave$1;->this$0:Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;

    invoke-static {v0}, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->access$100(Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave$1;->this$0:Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;

    invoke-static {v0}, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->b(Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;)Lcom/transsion/audio/widgets/musicwaveview/WaveDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave$1;->this$0:Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;

    invoke-static {v1}, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->d(Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave$1;->this$0:Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;

    invoke-static {v2}, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->c(Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;)[F

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave$1;->this$0:Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;

    invoke-static {v3}, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->access$200(Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    iget-object p0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave$1;->this$0:Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;

    invoke-static {p0}, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->access$300(Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/audio/widgets/musicwaveview/WaveDataManager;->fill([B[FF)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave$1;->this$0:Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;

    invoke-static {p0}, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->a(Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;)Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave$DataThread;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave$DataThread;->dataHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/os/Looper;->quit()V

    :cond_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    :goto_1
    return-void
.end method
