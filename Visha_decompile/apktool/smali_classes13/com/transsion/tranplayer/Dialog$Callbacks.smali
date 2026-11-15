.class public interface abstract Lcom/transsion/tranplayer/Dialog$Callbacks;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/tranplayer/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract onCanceled(Lcom/transsion/tranplayer/Dialog;)V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract onDisplay(Lcom/transsion/tranplayer/Dialog$ErrorMessage;)V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract onDisplay(Lcom/transsion/tranplayer/Dialog$LoginDialog;)V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract onDisplay(Lcom/transsion/tranplayer/Dialog$ProgressDialog;)V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract onDisplay(Lcom/transsion/tranplayer/Dialog$QuestionDialog;)V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract onProgressUpdate(Lcom/transsion/tranplayer/Dialog$ProgressDialog;)V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method
