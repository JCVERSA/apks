.class public Lcom/transsion/video_edit/EditBaseActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/video_edit/EditBaseActivity;->W0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/video_edit/EditBaseActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/video_edit/EditBaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/video_edit/EditBaseActivity$c;->b:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcom/transsion/video_edit/EditBaseActivity$c;->b:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-static {p1}, Lcom/transsion/video_edit/EditBaseActivity;->K0(Lcom/transsion/video_edit/EditBaseActivity;)Landroidx/media3/transformer/Transformer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/video_edit/EditBaseActivity$c;->b:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-static {p1}, Lcom/transsion/video_edit/EditBaseActivity;->K0(Lcom/transsion/video_edit/EditBaseActivity;)Landroidx/media3/transformer/Transformer;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/transformer/Transformer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "EditMainActivity"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/transsion/video_edit/EditBaseActivity$c;->b:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-static {p1}, Lcom/transsion/video_edit/EditBaseActivity;->M0(Lcom/transsion/video_edit/EditBaseActivity;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/video_edit/EditBaseActivity$c;->b:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-static {p1}, Lcom/transsion/video_edit/EditBaseActivity;->I0(Lcom/transsion/video_edit/EditBaseActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/video_edit/EditBaseActivity$c;->b:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-static {p2}, Lcom/transsion/video_edit/EditBaseActivity;->M0(Lcom/transsion/video_edit/EditBaseActivity;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/video_edit/EditBaseActivity$c;->b:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-static {p1}, Lcom/transsion/video_edit/EditBaseActivity;->O0(Lcom/transsion/video_edit/EditBaseActivity;)V

    iget-object p1, p0, Lcom/transsion/video_edit/EditBaseActivity$c;->b:Lcom/transsion/video_edit/EditBaseActivity;

    iget-object p1, p1, Lcom/transsion/video_edit/EditBaseActivity;->i0:Lcom/transsion/widgetslib/dialog/d;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/video_edit/EditBaseActivity$c;->b:Lcom/transsion/video_edit/EditBaseActivity;

    iget-object p1, p1, Lcom/transsion/video_edit/EditBaseActivity;->i0:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p0, p0, Lcom/transsion/video_edit/EditBaseActivity$c;->b:Lcom/transsion/video_edit/EditBaseActivity;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/video_edit/EditBaseActivity;->i0:Lcom/transsion/widgetslib/dialog/d;

    :cond_2
    return-void
.end method
