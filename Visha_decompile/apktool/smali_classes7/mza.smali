.class public final synthetic Lmza;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmza;->a:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmza;->a:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    invoke-static {p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->d(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
