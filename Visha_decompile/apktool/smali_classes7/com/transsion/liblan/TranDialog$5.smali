.class Lcom/transsion/liblan/TranDialog$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/liblan/TranDialog;->cancelDialogFromNative(Lcom/transsion/liblan/TranDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$tranDialog:Lcom/transsion/liblan/TranDialog;


# direct methods
.method public constructor <init>(Lcom/transsion/liblan/TranDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/liblan/TranDialog$5;->val$tranDialog:Lcom/transsion/liblan/TranDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/liblan/TranDialog$5;->val$tranDialog:Lcom/transsion/liblan/TranDialog;

    instance-of v1, v0, Lcom/transsion/liblan/TranDialog$IdTranDialog;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/liblan/TranDialog$IdTranDialog;

    invoke-virtual {v0}, Lcom/transsion/liblan/TranDialog$IdTranDialog;->dismiss()V

    :cond_0
    invoke-static {}, Lcom/transsion/liblan/TranDialog;->a()Lcom/transsion/liblan/TranDialog$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/liblan/TranDialog$5;->val$tranDialog:Lcom/transsion/liblan/TranDialog;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/transsion/liblan/TranDialog;->a()Lcom/transsion/liblan/TranDialog$Callbacks;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/liblan/TranDialog$5;->val$tranDialog:Lcom/transsion/liblan/TranDialog;

    invoke-interface {v0, p0}, Lcom/transsion/liblan/TranDialog$Callbacks;->onCanceled(Lcom/transsion/liblan/TranDialog;)V

    :cond_1
    return-void
.end method
