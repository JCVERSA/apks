.class Lcom/hisavana/mediation/config/CloudControlConfigSync$3$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/mediation/config/CloudControlConfigSync$3;->k(ILcom/hisavana/mediation/bean/CloudControlConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisavana/mediation/config/CloudControlConfigSync$3;

.field final synthetic val$cloudConfig:Lcom/hisavana/mediation/bean/CloudControlConfig;


# direct methods
.method public constructor <init>(Lcom/hisavana/mediation/config/CloudControlConfigSync$3;Lcom/hisavana/mediation/bean/CloudControlConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hisavana/mediation/config/CloudControlConfigSync$3$1;->this$0:Lcom/hisavana/mediation/config/CloudControlConfigSync$3;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/hisavana/mediation/config/CloudControlConfigSync$3$1;->val$cloudConfig:Lcom/hisavana/mediation/bean/CloudControlConfig;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/hisavana/mediation/config/CloudControlConfigSync$3$1;->val$cloudConfig:Lcom/hisavana/mediation/bean/CloudControlConfig;

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-static {v1, v2}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->e(Lcom/hisavana/mediation/bean/CloudControlConfig;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception v1

    .line 10
    goto :goto_1

    .line 11
    :catch_0
    move-exception v1

    .line 12
    :try_start_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string v3, "sdk_init"

    .line 17
    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v5, "CloudControlConfigSync --> \u4fdd\u5b58\u672c\u5730\u6570\u636e\u5931\u8d25 "

    .line 24
    .line 25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v2, v3, v1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-static {}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->h()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :goto_1
    invoke-static {}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->h()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 55
    .line 56
    .line 57
    throw v1
.end method
