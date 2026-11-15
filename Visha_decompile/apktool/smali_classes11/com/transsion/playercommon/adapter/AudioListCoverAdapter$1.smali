.class Lcom/transsion/playercommon/adapter/AudioListCoverAdapter$1;
.super Lcom/transsion/arch/threads/TaskExecutor$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;-><init>(ILandroid/content/Context;)V
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
.field final synthetic this$0:Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter$1;->this$0:Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;

    invoke-direct {p0}, Lcom/transsion/arch/threads/TaskExecutor$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBackground()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter$1;->onBackground()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public onBackground()Ljava/lang/Void;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter$1;->this$0:Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;

    invoke-static {v0}, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;->l(Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter$1;->this$0:Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    invoke-virtual {v0}, Lao;->w()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;->q:Ljava/util/List;

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter$1;->onResult(Ljava/lang/Void;)V

    return-void
.end method

.method public onResult(Ljava/lang/Void;)V
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter$1;->this$0:Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;

    invoke-static {p1}, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;->r(Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter$1;->this$0:Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;

    invoke-static {p1}, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;->s(Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance v0, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter$1$1;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter$1$1;-><init>(Lcom/transsion/playercommon/adapter/AudioListCoverAdapter$1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    invoke-static {}, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;->t()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\u5f53\u524dAdapter\u672a\u521d\u59cb\u5316\u5b8c\u6210\uff0c\u65e0\u6cd5\u5237\u65b0\u6570\u636e "

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
