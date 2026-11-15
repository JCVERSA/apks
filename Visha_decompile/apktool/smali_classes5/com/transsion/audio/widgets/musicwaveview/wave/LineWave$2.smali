.class Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->setPauseDraw(Z)V
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

    iput-object p1, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave$2;->this$0:Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave$2;->this$0:Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;

    invoke-static {p0}, Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;->b(Lcom/transsion/audio/widgets/musicwaveview/wave/LineWave;)Lcom/transsion/audio/widgets/musicwaveview/WaveDataManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/musicwaveview/WaveDataManager;->clearData()V

    return-void
.end method
