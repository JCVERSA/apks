.class Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener$1;
.super Lcom/blankj/utilcode/util/ThreadUtils$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener$1;->this$1:Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;

    invoke-direct {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener$1;->this$1:Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->c:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->l(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->t(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener$1;->doInBackground()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onFail(Ljava/lang/Throwable;)V
    .locals 1

    const-string p0, "DeleteListener"

    const-string v0, "delete hls video file failed"

    invoke-static {p0, v0, p1}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Boolean;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete hls video file result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DeleteListener"

    invoke-static {v0, p1}, Lvmb;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener$1;->this$1:Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;

    invoke-static {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;->h(Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener$1;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
