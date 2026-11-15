.class Lcom/transsion/video_edit/EditBaseActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/video_edit/EditBaseActivity;->onError(Landroidx/media3/transformer/Composition;Landroidx/media3/transformer/ExportResult;Landroidx/media3/transformer/ExportException;)V
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

    iput-object p1, p0, Lcom/transsion/video_edit/EditBaseActivity$8;->this$0:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget v0, Lcom/transsion/video_edit/R$string;->edit_export_error:I

    invoke-static {v0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity$8;->this$0:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-static {v0}, Lcom/transsion/video_edit/EditBaseActivity;->O0(Lcom/transsion/video_edit/EditBaseActivity;)V

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity$8;->this$0:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-static {v0}, Lcom/transsion/video_edit/EditBaseActivity;->M0(Lcom/transsion/video_edit/EditBaseActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity$8;->this$0:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-static {v0}, Lcom/transsion/video_edit/EditBaseActivity;->I0(Lcom/transsion/video_edit/EditBaseActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/video_edit/EditBaseActivity$8;->this$0:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-static {v1}, Lcom/transsion/video_edit/EditBaseActivity;->M0(Lcom/transsion/video_edit/EditBaseActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity$8;->this$0:Lcom/transsion/video_edit/EditBaseActivity;

    iget-object v0, v0, Lcom/transsion/video_edit/EditBaseActivity;->i0:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/video_edit/EditBaseActivity$8;->this$0:Lcom/transsion/video_edit/EditBaseActivity;

    iget-object p0, p0, Lcom/transsion/video_edit/EditBaseActivity;->i0:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method
