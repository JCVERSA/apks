.class public final synthetic Lq3b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq3b;->a:Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;

    iput-boolean p2, p0, Lq3b;->b:Z

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lq3b;->a:Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;

    iget-boolean p0, p0, Lq3b;->b:Z

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->b(Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
