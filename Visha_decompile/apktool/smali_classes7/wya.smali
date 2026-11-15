.class public final synthetic Lwya;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwya;->a:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    iput p2, p0, Lwya;->b:I

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lwya;->a:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    iget p0, p0, Lwya;->b:I

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->r(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
