.class public final Lcom/transsion/commercialization/task/TaskCenterProvider$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lim/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/task/TaskCenterProvider;->m(Lwj/g;Lcom/transsion/memberapi/MemberCheckResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/commercialization/task/TaskCenterProvider;

.field final synthetic b:Lwj/g;


# direct methods
.method constructor <init>(Lcom/transsion/commercialization/task/TaskCenterProvider;Lwj/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$b;->a:Lcom/transsion/commercialization/task/TaskCenterProvider;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$b;->b:Lwj/g;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    sget-object v0, Lwj/h;->a:Lwj/h;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$b;->a:Lcom/transsion/commercialization/task/TaskCenterProvider;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/transsion/commercialization/task/TaskCenterProvider;->j()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " --> showMemberPage() --> checkMember() --> onFailed() --> \u5f00\u901a\u4f1a\u5458\u5931\u8d25"

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lwj/h;->a(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$b;->b:Lwj/g;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-interface {v0}, Lwj/g;->onFail()V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 1
    sget-object v0, Lwj/h;->a:Lwj/h;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$b;->a:Lcom/transsion/commercialization/task/TaskCenterProvider;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/transsion/commercialization/task/TaskCenterProvider;->j()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " --> showMemberPage() --> checkMember() --> onSuccess() --> \u5f00\u901a\u4f1a\u5458\u6210\u529f\uff0c\u76f4\u63a5\u4e0b\u8f7d\u4e0d\u9700\u8981\u505a\u4efb\u52a1\u4e86"

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lwj/h;->a(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$b;->b:Lwj/g;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-interface {v0}, Lwj/g;->onSuccess()V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method
