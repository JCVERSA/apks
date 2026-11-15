.class public final synthetic Luya;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Z

.field public final synthetic e:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luya;->a:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    iput-object p2, p0, Luya;->b:Ljava/lang/String;

    iput-object p3, p0, Luya;->c:Ljava/lang/String;

    iput-boolean p4, p0, Luya;->d:Z

    iput-object p5, p0, Luya;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Luya;->a:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    iget-object v1, p0, Luya;->b:Ljava/lang/String;

    iget-object v2, p0, Luya;->c:Ljava/lang/String;

    iget-boolean v3, p0, Luya;->d:Z

    iget-object p0, p0, Luya;->e:Ljava/util/List;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->z(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
