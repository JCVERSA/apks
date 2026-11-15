.class public final synthetic Lxza;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Ljava/lang/String;ZZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxza;->a:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

    iput-object p2, p0, Lxza;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lxza;->c:Z

    iput-boolean p4, p0, Lxza;->d:Z

    iput-wide p5, p0, Lxza;->e:J

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lxza;->a:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

    iget-object v1, p0, Lxza;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lxza;->c:Z

    iget-boolean v3, p0, Lxza;->d:Z

    iget-wide v4, p0, Lxza;->e:J

    invoke-static/range {v0 .. v5}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->b(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Ljava/lang/String;ZZJ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
