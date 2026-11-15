.class public final synthetic Ln3b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;

.field public final synthetic b:Lcom/transsion/hubsdk/api/view/inputmethod/ITranGlobalWritingListener;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;Lcom/transsion/hubsdk/api/view/inputmethod/ITranGlobalWritingListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3b;->a:Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;

    iput-object p2, p0, Ln3b;->b:Lcom/transsion/hubsdk/api/view/inputmethod/ITranGlobalWritingListener;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ln3b;->a:Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;

    iget-object p0, p0, Ln3b;->b:Lcom/transsion/hubsdk/api/view/inputmethod/ITranGlobalWritingListener;

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->e(Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;Lcom/transsion/hubsdk/api/view/inputmethod/ITranGlobalWritingListener;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
