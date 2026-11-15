.class public final synthetic Ly4b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/core/app/TranThubUiModeManager;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/app/TranThubUiModeManager;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly4b;->a:Lcom/transsion/hubsdk/core/app/TranThubUiModeManager;

    iput-boolean p2, p0, Ly4b;->b:Z

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ly4b;->a:Lcom/transsion/hubsdk/core/app/TranThubUiModeManager;

    iget-boolean p0, p0, Ly4b;->b:Z

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/core/app/TranThubUiModeManager;->a(Lcom/transsion/hubsdk/core/app/TranThubUiModeManager;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
