.class Lcom/transsion/audio/fragments/AudioDragBaseFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragments/AudioDragBaseFragment;->g2(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field mRetryCount:I

.field final synthetic this$0:Lcom/transsion/audio/fragments/AudioDragBaseFragment;

.field final synthetic val$data:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/fragments/AudioDragBaseFragment;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$6;->this$0:Lcom/transsion/audio/fragments/AudioDragBaseFragment;

    iput-object p2, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$6;->val$data:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$6;->mRetryCount:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$6;->this$0:Lcom/transsion/audio/fragments/AudioDragBaseFragment;

    iget-object v1, v0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->W:Lcom/transsion/playercommon/adapter/AudioStackAdapter;

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->X:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$6;->this$0:Lcom/transsion/audio/fragments/AudioDragBaseFragment;

    iget-object v0, v0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->X:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$6;->mRetryCount:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$6;->mRetryCount:I

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$6;->this$0:Lcom/transsion/audio/fragments/AudioDragBaseFragment;

    iget-object v0, v0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->X:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$6;->this$0:Lcom/transsion/audio/fragments/AudioDragBaseFragment;

    iget-object v0, v0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->W:Lcom/transsion/playercommon/adapter/AudioStackAdapter;

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$6;->val$data:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/adapter/AudioStackAdapter;->s(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAudioStackDataSafely: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AudioDragBaseFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method
