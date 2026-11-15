.class final Lcom/transsion/tranplayer/Dialog$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tranplayer/Dialog;->cancelFromNative(Lcom/transsion/tranplayer/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Lcom/transsion/tranplayer/Dialog;


# direct methods
.method public constructor <init>(Lcom/transsion/tranplayer/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tranplayer/Dialog$5;->val$dialog:Lcom/transsion/tranplayer/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/tranplayer/Dialog$5;->val$dialog:Lcom/transsion/tranplayer/Dialog;

    instance-of v1, v0, Lcom/transsion/tranplayer/Dialog$IdDialog;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/tranplayer/Dialog$IdDialog;

    invoke-virtual {v0}, Lcom/transsion/tranplayer/Dialog$IdDialog;->dismiss()V

    :cond_0
    invoke-static {}, Lcom/transsion/tranplayer/Dialog;->access$100()Lcom/transsion/tranplayer/Dialog$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/tranplayer/Dialog$5;->val$dialog:Lcom/transsion/tranplayer/Dialog;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/transsion/tranplayer/Dialog;->access$100()Lcom/transsion/tranplayer/Dialog$Callbacks;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/tranplayer/Dialog$5;->val$dialog:Lcom/transsion/tranplayer/Dialog;

    invoke-interface {v0, p0}, Lcom/transsion/tranplayer/Dialog$Callbacks;->onCanceled(Lcom/transsion/tranplayer/Dialog;)V

    :cond_1
    return-void
.end method
