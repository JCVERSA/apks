.class Lcom/transsion/video_edit/EditBaseActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/video_edit/EditBaseActivity;->onCompleted(Landroidx/media3/transformer/Composition;Landroidx/media3/transformer/ExportResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/video_edit/EditBaseActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/video_edit/EditBaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/video_edit/EditBaseActivity$7;->this$0:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity$7;->this$0:Lcom/transsion/video_edit/EditBaseActivity;

    iget-object v0, v0, Lcom/transsion/video_edit/EditBaseActivity;->h0:Lcom/transsion/widgetslib/dialog/c;

    if-eqz v0, :cond_0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/c;->h(I)Lcom/transsion/widgetslib/dialog/c;

    :cond_0
    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity$7;->this$0:Lcom/transsion/video_edit/EditBaseActivity;

    iget-object v0, v0, Lcom/transsion/video_edit/EditBaseActivity;->i0:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity$7;->this$0:Lcom/transsion/video_edit/EditBaseActivity;

    iget-object v0, v0, Lcom/transsion/video_edit/EditBaseActivity;->i0:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity$7;->this$0:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-static {v0}, Lcom/transsion/video_edit/EditBaseActivity;->M0(Lcom/transsion/video_edit/EditBaseActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity$7;->this$0:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-static {v0}, Lcom/transsion/video_edit/EditBaseActivity;->I0(Lcom/transsion/video_edit/EditBaseActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/video_edit/EditBaseActivity$7;->this$0:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-static {v1}, Lcom/transsion/video_edit/EditBaseActivity;->M0(Lcom/transsion/video_edit/EditBaseActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/video_edit/EditBaseActivity$7;->this$0:Lcom/transsion/video_edit/EditBaseActivity;

    sget v2, Lcom/transsion/video_edit/R$string;->edit_video_save_notice:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/video_edit/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/utils/ToastUtils;->w(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/transsion/video_edit/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/video_edit/EditBaseActivity$7;->this$0:Lcom/transsion/video_edit/EditBaseActivity;

    iget-object v2, v2, Lcom/transsion/video_edit/EditBaseActivity;->Y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "mp4"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/transsion/video_edit/EditBaseActivity$7$a;

    invoke-direct {v3, p0}, Lcom/transsion/video_edit/EditBaseActivity$7$a;-><init>(Lcom/transsion/video_edit/EditBaseActivity$7;)V

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    const-string p0, "vd_save_successful"

    const-wide v0, 0xd91af27346L

    const/4 v2, 0x0

    invoke-static {v2, p0, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
