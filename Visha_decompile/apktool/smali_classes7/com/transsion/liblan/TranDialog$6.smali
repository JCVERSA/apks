.class Lcom/transsion/liblan/TranDialog$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/liblan/TranDialog;->updateProgressFromNative(Lcom/transsion/liblan/TranDialog;FLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$position:F

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$tranDialog:Lcom/transsion/liblan/TranDialog;


# direct methods
.method public constructor <init>(Lcom/transsion/liblan/TranDialog;FLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/liblan/TranDialog$6;->val$tranDialog:Lcom/transsion/liblan/TranDialog;

    iput p2, p0, Lcom/transsion/liblan/TranDialog$6;->val$position:F

    iput-object p3, p0, Lcom/transsion/liblan/TranDialog$6;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/liblan/TranDialog$6;->val$tranDialog:Lcom/transsion/liblan/TranDialog;

    invoke-virtual {v0}, Lcom/transsion/liblan/TranDialog;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/liblan/TranDialog$6;->val$tranDialog:Lcom/transsion/liblan/TranDialog;

    check-cast v0, Lcom/transsion/liblan/TranDialog$ProgressTranDialog;

    iget v1, p0, Lcom/transsion/liblan/TranDialog$6;->val$position:F

    iget-object p0, p0, Lcom/transsion/liblan/TranDialog$6;->val$text:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/transsion/liblan/TranDialog$ProgressTranDialog;->b(Lcom/transsion/liblan/TranDialog$ProgressTranDialog;FLjava/lang/String;)V

    invoke-static {}, Lcom/transsion/liblan/TranDialog;->a()Lcom/transsion/liblan/TranDialog$Callbacks;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/transsion/liblan/TranDialog;->a()Lcom/transsion/liblan/TranDialog$Callbacks;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/transsion/liblan/TranDialog$Callbacks;->onProgressUpdate(Lcom/transsion/liblan/TranDialog$ProgressTranDialog;)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "dialog is not a progress dialog"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
