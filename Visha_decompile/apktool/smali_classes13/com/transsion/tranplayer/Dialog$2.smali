.class final Lcom/transsion/tranplayer/Dialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tranplayer/Dialog;->displayLoginFromNative(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/transsion/tranplayer/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Lcom/transsion/tranplayer/Dialog$LoginDialog;


# direct methods
.method public constructor <init>(Lcom/transsion/tranplayer/Dialog$LoginDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tranplayer/Dialog$2;->val$dialog:Lcom/transsion/tranplayer/Dialog$LoginDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/transsion/tranplayer/Dialog;->access$100()Lcom/transsion/tranplayer/Dialog$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/tranplayer/Dialog;->access$100()Lcom/transsion/tranplayer/Dialog$Callbacks;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/tranplayer/Dialog$2;->val$dialog:Lcom/transsion/tranplayer/Dialog$LoginDialog;

    invoke-interface {v0, p0}, Lcom/transsion/tranplayer/Dialog$Callbacks;->onDisplay(Lcom/transsion/tranplayer/Dialog$LoginDialog;)V

    :cond_0
    return-void
.end method
