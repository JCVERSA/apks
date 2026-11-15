.class Lcom/transsion/playercommon/utils/storage/FileOperateUtils$9;
.super Lcom/blankj/utilcode/util/ThreadUtils$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c0(ILjava/lang/String;)V
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
.field final synthetic this$0:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

.field final synthetic val$mt:Lcom/transsion/dbdata/beans/media/MediaItem;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$9;->this$0:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    iput-object p2, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$9;->val$mt:Lcom/transsion/dbdata/beans/media/MediaItem;

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
    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$9;->this$0:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$9;->val$mt:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {v0, p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->t(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;Lcom/transsion/dbdata/beans/media/MediaItem;)Z

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
    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$9;->doInBackground()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onFail(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/Boolean;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete others file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "visha_FileOperateUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$9;->this$0:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->h(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$9;->this$0:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->h(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;->d()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$9;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
