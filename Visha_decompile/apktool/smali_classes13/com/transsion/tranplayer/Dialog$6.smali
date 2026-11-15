.class final Lcom/transsion/tranplayer/Dialog$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tranplayer/Dialog;->updateProgressFromNative(Lcom/transsion/tranplayer/Dialog;FLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Lcom/transsion/tranplayer/Dialog;

.field final synthetic val$position:F

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/tranplayer/Dialog;FLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tranplayer/Dialog$6;->val$dialog:Lcom/transsion/tranplayer/Dialog;

    iput p2, p0, Lcom/transsion/tranplayer/Dialog$6;->val$position:F

    iput-object p3, p0, Lcom/transsion/tranplayer/Dialog$6;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/tranplayer/Dialog$6;->val$dialog:Lcom/transsion/tranplayer/Dialog;

    invoke-virtual {v0}, Lcom/transsion/tranplayer/Dialog;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/tranplayer/Dialog$6;->val$dialog:Lcom/transsion/tranplayer/Dialog;

    check-cast v0, Lcom/transsion/tranplayer/Dialog$ProgressDialog;

    iget v1, p0, Lcom/transsion/tranplayer/Dialog$6;->val$position:F

    iget-object p0, p0, Lcom/transsion/tranplayer/Dialog$6;->val$text:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/transsion/tranplayer/Dialog$ProgressDialog;->access$500(Lcom/transsion/tranplayer/Dialog$ProgressDialog;FLjava/lang/String;)V

    invoke-static {}, Lcom/transsion/tranplayer/Dialog;->access$100()Lcom/transsion/tranplayer/Dialog$Callbacks;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/transsion/tranplayer/Dialog;->access$100()Lcom/transsion/tranplayer/Dialog$Callbacks;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/transsion/tranplayer/Dialog$Callbacks;->onProgressUpdate(Lcom/transsion/tranplayer/Dialog$ProgressDialog;)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "dialog is not a progress dialog"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
