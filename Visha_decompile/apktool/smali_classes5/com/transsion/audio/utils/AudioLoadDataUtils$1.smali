.class Lcom/transsion/audio/utils/AudioLoadDataUtils$1;
.super Lcom/transsion/arch/threads/TaskExecutor$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/utils/AudioLoadDataUtils;->g(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/arch/threads/TaskExecutor$Task<",
        "Ljava/util/ArrayList<",
        "Lcom/transsion/dbdata/beans/media/AudioItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/utils/AudioLoadDataUtils;

.field final synthetic val$audioData:Lcom/transsion/dbdata/beans/media/PlayAudioData;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/utils/AudioLoadDataUtils;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/utils/AudioLoadDataUtils$1;->this$0:Lcom/transsion/audio/utils/AudioLoadDataUtils;

    iput-object p2, p0, Lcom/transsion/audio/utils/AudioLoadDataUtils$1;->val$audioData:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    invoke-direct {p0}, Lcom/transsion/arch/threads/TaskExecutor$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBackground()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/audio/utils/AudioLoadDataUtils$1;->onBackground()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public onBackground()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBackground "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/audio/utils/AudioLoadDataUtils$1;->val$audioData:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    iget v1, v1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioLoadDataUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/transsion/audio/utils/AudioLoadDataUtils$1;->val$audioData:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    iget v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    const/16 v2, 0x1e

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 4
    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/audio/utils/AudioLoadDataUtils$1;->val$audioData:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playListId:J

    long-to-int p0, v1

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2, v3}, Lao;->Y(JLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_0
    const/16 v2, 0x21

    if-ne v1, v2, :cond_1

    .line 6
    invoke-static {}, Lao;->U()Lao;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lao;->y(Z)Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_1
    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    .line 8
    invoke-static {}, Lao;->U()Lao;

    move-result-object p0

    invoke-virtual {p0, v3}, Lao;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_2
    const/16 v2, 0x64

    if-ne v1, v2, :cond_3

    .line 10
    iget-object p0, p0, Lcom/transsion/audio/utils/AudioLoadDataUtils$1;->this$0:Lcom/transsion/audio/utils/AudioLoadDataUtils;

    invoke-static {p0, v0}, Lcom/transsion/audio/utils/AudioLoadDataUtils;->e(Lcom/transsion/audio/utils/AudioLoadDataUtils;Lcom/transsion/dbdata/beans/media/PlayAudioData;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_3
    const/16 v2, 0x14

    const/4 v4, 0x0

    if-ne v1, v2, :cond_4

    .line 11
    invoke-static {v3, v3}, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->k(Landroid/content/Context;Lcom/transsion/dbdata/engine/observer/AudioMediaObserver$b;)Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->l(Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_4
    const/16 v2, 0x13

    if-ne v1, v2, :cond_5

    .line 12
    invoke-static {v4}, Lcom/transsion/audio/utils/MVNotificationUtils;->h(Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_5
    const/16 v2, 0x18

    if-ne v1, v2, :cond_6

    .line 13
    invoke-static {}, Lao;->U()Lao;

    move-result-object p0

    invoke-virtual {p0, v3}, Lao;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_6
    const/16 v2, 0x62

    if-ne v1, v2, :cond_7

    .line 15
    invoke-static {}, Lao;->U()Lao;

    move-result-object p0

    sget-object v0, Lyx2;->l:Ljava/lang/String;

    invoke-virtual {p0, v0, v4}, Lao;->M(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 17
    :cond_7
    iget-object p0, p0, Lcom/transsion/audio/utils/AudioLoadDataUtils$1;->this$0:Lcom/transsion/audio/utils/AudioLoadDataUtils;

    invoke-static {p0, v0}, Lcom/transsion/audio/utils/AudioLoadDataUtils;->d(Lcom/transsion/audio/utils/AudioLoadDataUtils;Lcom/transsion/dbdata/beans/media/PlayAudioData;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/utils/AudioLoadDataUtils$1;->onResult(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onResult(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/utils/AudioLoadDataUtils$1;->val$audioData:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    iget-boolean v0, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->isShuffle:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/transsion/audio/utils/AudioLoadDataUtils$1;->this$0:Lcom/transsion/audio/utils/AudioLoadDataUtils;

    invoke-static {v0}, Lcom/transsion/audio/utils/AudioLoadDataUtils;->c(Lcom/transsion/audio/utils/AudioLoadDataUtils;)Lcom/transsion/audio/utils/AudioLoadDataUtils$a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    iget-object p0, p0, Lcom/transsion/audio/utils/AudioLoadDataUtils$1;->this$0:Lcom/transsion/audio/utils/AudioLoadDataUtils;

    invoke-static {p0}, Lcom/transsion/audio/utils/AudioLoadDataUtils;->c(Lcom/transsion/audio/utils/AudioLoadDataUtils;)Lcom/transsion/audio/utils/AudioLoadDataUtils$a;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/audio/utils/AudioLoadDataUtils$a;->a(Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method
