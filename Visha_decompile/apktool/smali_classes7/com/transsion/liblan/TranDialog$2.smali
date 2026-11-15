.class Lcom/transsion/liblan/TranDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/liblan/TranDialog;->displayLoginFromNative(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/transsion/liblan/TranDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Lcom/transsion/liblan/TranDialog$LoginTranDialog;


# direct methods
.method public constructor <init>(Lcom/transsion/liblan/TranDialog$LoginTranDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/liblan/TranDialog$2;->val$dialog:Lcom/transsion/liblan/TranDialog$LoginTranDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/transsion/liblan/TranDialog;->a()Lcom/transsion/liblan/TranDialog$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/liblan/TranDialog;->a()Lcom/transsion/liblan/TranDialog$Callbacks;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/liblan/TranDialog$2;->val$dialog:Lcom/transsion/liblan/TranDialog$LoginTranDialog;

    invoke-interface {v0, p0}, Lcom/transsion/liblan/TranDialog$Callbacks;->onDisplay(Lcom/transsion/liblan/TranDialog$LoginTranDialog;)V

    :cond_0
    return-void
.end method
