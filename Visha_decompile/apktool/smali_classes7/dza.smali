.class public final synthetic Ldza;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldza;->a:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    iput-object p2, p0, Ldza;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ldza;->a:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    iget-object p0, p0, Ldza;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->v(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
