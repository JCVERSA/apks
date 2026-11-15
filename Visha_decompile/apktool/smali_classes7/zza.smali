.class public final synthetic Lzza;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzza;->a:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

    iput-object p2, p0, Lzza;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lzza;->a:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

    iget-object p0, p0, Lzza;->b:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->g(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
