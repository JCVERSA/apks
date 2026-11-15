.class Lcom/transsion/video_edit/EditBaseActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/video_edit/EditBaseActivity;->W0()V
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

    iput-object p1, p0, Lcom/transsion/video_edit/EditBaseActivity$6;->this$0:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity$6;->this$0:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-static {v0}, Lcom/transsion/video_edit/EditBaseActivity;->K0(Lcom/transsion/video_edit/EditBaseActivity;)Landroidx/media3/transformer/Transformer;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity$6;->this$0:Lcom/transsion/video_edit/EditBaseActivity;

    iget-object v1, v0, Lcom/transsion/video_edit/EditBaseActivity;->h0:Lcom/transsion/widgetslib/dialog/c;

    if-eqz v1, :cond_5

    iget-object v0, v0, Lcom/transsion/video_edit/EditBaseActivity;->i0:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity$6;->this$0:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-static {v0}, Lcom/transsion/video_edit/EditBaseActivity;->K0(Lcom/transsion/video_edit/EditBaseActivity;)Landroidx/media3/transformer/Transformer;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/video_edit/EditBaseActivity$6;->this$0:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-static {v1}, Lcom/transsion/video_edit/EditBaseActivity;->L0(Lcom/transsion/video_edit/EditBaseActivity;)Landroidx/media3/transformer/ProgressHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/transformer/Transformer;->getProgress(Landroidx/media3/transformer/ProgressHolder;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity$6;->this$0:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-static {v0}, Lcom/transsion/video_edit/EditBaseActivity;->L0(Lcom/transsion/video_edit/EditBaseActivity;)Landroidx/media3/transformer/ProgressHolder;

    move-result-object v0

    iget v0, v0, Landroidx/media3/transformer/ProgressHolder;->progress:I

    if-gez v0, :cond_2

    const/4 v0, 0x0

    :cond_2
    const/16 v1, 0x64

    if-le v0, v1, :cond_3

    move v0, v1

    :cond_3
    iget-object v1, p0, Lcom/transsion/video_edit/EditBaseActivity$6;->this$0:Lcom/transsion/video_edit/EditBaseActivity;

    iget-object v1, v1, Lcom/transsion/video_edit/EditBaseActivity;->h0:Lcom/transsion/widgetslib/dialog/c;

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/dialog/c;->h(I)Lcom/transsion/widgetslib/dialog/c;

    :cond_4
    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity$6;->this$0:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-static {v0}, Lcom/transsion/video_edit/EditBaseActivity;->I0(Lcom/transsion/video_edit/EditBaseActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_0
    return-void
.end method
