.class public final Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$doShareFile$1$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$doShareFile$1;->invoke(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $file:Ljava/io/File;

.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$doShareFile$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$doShareFile$1$1;->$file:Ljava/io/File;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onDenied()V
    .locals 9

    .line 1
    const-string v0, "ImagePreviewActivity"

    .line 2
    .line 3
    const-string v1, "doShareFile onDenied"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget v2, Lcom/cloud/tmc/miniapp/R$string;->mini_image_select_shared_failed:I

    .line 9
    .line 10
    const/16 v7, 0xe

    .line 11
    .line 12
    const/4 v8, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    const-wide/16 v4, 0x0

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    invoke-static/range {v2 .. v8}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showToast$default(IIJZILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onGranted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$doShareFile$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$doShareFile$1$1;->$file:Ljava/io/File;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->access$systemShare(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;Ljava/io/File;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
