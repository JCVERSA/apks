.class public final synthetic Lo3b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3b;->a:Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;

    iput p2, p0, Lo3b;->b:I

    iput p3, p0, Lo3b;->c:I

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lo3b;->a:Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;

    iget v1, p0, Lo3b;->b:I

    iget p0, p0, Lo3b;->c:I

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->a(Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
