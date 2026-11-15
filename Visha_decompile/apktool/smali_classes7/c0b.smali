.class public final synthetic Lc0b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

.field public final synthetic b:I

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc0b;->a:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

    iput p2, p0, Lc0b;->b:I

    iput-boolean p3, p0, Lc0b;->c:Z

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lc0b;->a:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

    iget v1, p0, Lc0b;->b:I

    iget-boolean p0, p0, Lc0b;->c:Z

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->a(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;IZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
