.class Lcom/transsion/audio/player/MusicPlayManager$4;
.super Lcom/transsion/arch/threads/TaskExecutor$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/player/MusicPlayManager;->b1(Lcom/transsion/dbdata/beans/media/AudioItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/arch/threads/TaskExecutor$Task<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/player/MusicPlayManager;

.field final synthetic val$audioItem:Lcom/transsion/dbdata/beans/media/AudioItem;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/player/MusicPlayManager;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/player/MusicPlayManager$4;->this$0:Lcom/transsion/audio/player/MusicPlayManager;

    iput-object p2, p0, Lcom/transsion/audio/player/MusicPlayManager$4;->val$audioItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {p0}, Lcom/transsion/arch/threads/TaskExecutor$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBackground()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager$4;->onBackground()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public onBackground()Ljava/lang/Void;
    .locals 1

    .line 2
    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager$4;->val$audioItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v0, p0}, Lao;->t0(Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    const/4 p0, 0x0

    return-object p0
.end method
