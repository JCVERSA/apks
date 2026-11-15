.class Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$1;
.super Lcom/transsion/arch/threads/TaskExecutor$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->T(Landroid/content/Context;)V
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
.field final synthetic this$0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$1;->this$0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-direct {p0}, Lcom/transsion/arch/threads/TaskExecutor$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBackground()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$1;->onBackground()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public onBackground()Ljava/lang/Void;
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$1;->this$0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    invoke-virtual {v0}, Lao;->w()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->A(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;Ljava/util/List;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$1;->onResult(Ljava/lang/Void;)V

    return-void
.end method

.method public onResult(Ljava/lang/Void;)V
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$1;->this$0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->x(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$1;->this$0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->v(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->loadAudioCover(Lcom/transsion/dbdata/beans/media/AudioItem;Landroid/widget/ImageView;)V

    return-void
.end method
