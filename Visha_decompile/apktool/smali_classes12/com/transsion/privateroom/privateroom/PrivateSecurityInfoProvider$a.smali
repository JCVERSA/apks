.class public Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider$a;
.super Lcom/transsion/retrofit/callback/CallbackWithState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->l(Lcom/transsion/privateroom/api/beans/PrivateCodeVerifyInfoBean;Lsv4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lsv4;

.field public final synthetic c:Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;


# direct methods
.method public constructor <init>(Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;Lsv4;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider$a;->c:Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;

    iput-object p2, p0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider$a;->b:Lsv4;

    invoke-direct {p0}, Lcom/transsion/retrofit/callback/CallbackWithState;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailture(Lcom/transsion/retrofit/reponse/ResponseUtil$State;)V
    .locals 4

    invoke-static {}, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send private verify code failed,error code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/transsion/retrofit/reponse/ResponseUtil$State;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/transsion/retrofit/reponse/ResponseUtil$State;->errMsg:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider$a;->c:Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->d(Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;Z)V

    iget-object p0, p0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider$a;->b:Lsv4;

    invoke-interface {p0}, Lsv4;->d()V

    return-void
.end method

.method public onSuccess(Lgu8;)V
    .locals 1

    invoke-static {}, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->f()Ljava/lang/String;

    move-result-object p1

    const-string v0, "send private verify code success"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider$a;->c:Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->d(Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;Z)V

    iget-object p0, p0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider$a;->b:Lsv4;

    invoke-interface {p0}, Lsv4;->b()V

    return-void
.end method
