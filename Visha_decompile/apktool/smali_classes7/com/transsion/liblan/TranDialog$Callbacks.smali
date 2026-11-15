.class public interface abstract Lcom/transsion/liblan/TranDialog$Callbacks;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/liblan/TranDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract onCanceled(Lcom/transsion/liblan/TranDialog;)V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract onDisplay(Lcom/transsion/liblan/TranDialog$ErrorMessage;)V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract onDisplay(Lcom/transsion/liblan/TranDialog$LoginTranDialog;)V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract onDisplay(Lcom/transsion/liblan/TranDialog$ProgressTranDialog;)V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract onDisplay(Lcom/transsion/liblan/TranDialog$QuestionTranDialog;)V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract onProgressUpdate(Lcom/transsion/liblan/TranDialog$ProgressTranDialog;)V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method
