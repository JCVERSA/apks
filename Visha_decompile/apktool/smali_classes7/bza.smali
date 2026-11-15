.class public final synthetic Lbza;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbza;->a:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    iput-object p2, p0, Lbza;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbza;->a:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    iget-object p0, p0, Lbza;->b:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->y(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
