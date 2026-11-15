.class Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider$3;
.super Lcom/blankj/utilcode/util/ThreadUtils$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->j(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;

.field final synthetic val$email:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider$3;->this$0:Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;

    iput-object p2, p0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider$3;->val$email:Ljava/lang/String;

    invoke-direct {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider$3;->this$0:Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;

    invoke-static {v0}, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->b(Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider$3;->val$email:Ljava/lang/String;

    invoke-static {v1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->f()Ljava/lang/String;

    move-result-object p0

    const-string v1, "email is empty"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider$3;->val$email:Ljava/lang/String;

    invoke-static {v1}, Lg;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->f()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encrypted email: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Decrypted email: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider$3;->this$0:Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;

    invoke-static {v2}, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->a(Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;)Lcom/transsion/privateroom/privateroom/beans/PrivateSecurityInfo;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider$3;->this$0:Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;

    invoke-virtual {v2}, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->i()V

    :cond_1
    iget-object v2, p0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider$3;->this$0:Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;

    invoke-static {v2}, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->a(Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;)Lcom/transsion/privateroom/privateroom/beans/PrivateSecurityInfo;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider$3;->this$0:Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;

    new-instance v3, Lcom/transsion/privateroom/privateroom/beans/PrivateSecurityInfo;

    invoke-direct {v3}, Lcom/transsion/privateroom/privateroom/beans/PrivateSecurityInfo;-><init>()V

    invoke-static {v2, v3}, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->c(Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;Lcom/transsion/privateroom/privateroom/beans/PrivateSecurityInfo;)V

    :cond_2
    iget-object v2, p0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider$3;->this$0:Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;

    invoke-static {v2}, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->a(Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;)Lcom/transsion/privateroom/privateroom/beans/PrivateSecurityInfo;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/transsion/privateroom/privateroom/beans/PrivateSecurityInfo;->setEncryptedEmail(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider$3;->this$0:Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;

    invoke-static {p0}, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->a(Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;)Lcom/transsion/privateroom/privateroom/beans/PrivateSecurityInfo;

    move-result-object p0

    invoke-static {p0}, Lek4;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/transsion/privateroom/privateroom/a;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Lkq3;->h(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_4

    :cond_3
    invoke-static {}, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->f()Ljava/lang/String;

    move-result-object p0

    const-string v1, "save email failed"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onFail(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
