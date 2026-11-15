.class public final synthetic Lvza;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvza;->a:Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;

    iput-boolean p2, p0, Lvza;->b:Z

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lvza;->a:Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;

    iget-boolean p0, p0, Lvza;->b:Z

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;->b(Lcom/transsion/hubsdk/core/app/TranThubActivityOptions;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
