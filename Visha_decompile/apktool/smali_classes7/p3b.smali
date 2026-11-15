.class public final synthetic Lp3b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;

.field public final synthetic b:Landroid/view/KeyEvent;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;Landroid/view/KeyEvent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp3b;->a:Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;

    iput-object p2, p0, Lp3b;->b:Landroid/view/KeyEvent;

    iput-object p3, p0, Lp3b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lp3b;->a:Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;

    iget-object v1, p0, Lp3b;->b:Landroid/view/KeyEvent;

    iget-object p0, p0, Lp3b;->c:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->c(Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;Landroid/view/KeyEvent;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
