.class public final synthetic Lw3b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw3b;->a:Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;

    iput-object p2, p0, Lw3b;->b:Ljava/lang/String;

    iput p3, p0, Lw3b;->c:I

    iput-boolean p4, p0, Lw3b;->d:Z

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lw3b;->a:Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;

    iget-object v1, p0, Lw3b;->b:Ljava/lang/String;

    iget v2, p0, Lw3b;->c:I

    iget-boolean p0, p0, Lw3b;->d:Z

    invoke-static {v0, v1, v2, p0}, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->a(Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;Ljava/lang/String;IZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
