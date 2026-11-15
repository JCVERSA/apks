.class final Lcom/cloud/hisavana/sdk/manager/b$d;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/manager/b;->h(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Ls74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lnk1;",
        "Lzfb;",
        "<anonymous>",
        "(Lnk1;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation runtime Lnt1;
    c = "com.cloud.hisavana.sdk.manager.RetryTrackingManager$addTrackingBean$1"
    f = "RetryTrackingManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/cloud/hisavana/sdk/manager/b;

.field final synthetic c:Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/manager/b;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/hisavana/sdk/manager/b;",
            "Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;",
            "Lwh1<",
            "-",
            "Lcom/cloud/hisavana/sdk/manager/b$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/manager/b$d;->b:Lcom/cloud/hisavana/sdk/manager/b;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/manager/b$d;->c:Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final a(Lnk1;Lwh1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnk1;",
            "Lwh1<",
            "-",
            "Lzfb;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/manager/b$d;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/cloud/hisavana/sdk/manager/b$d;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/manager/b$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lwh1<",
            "*>;)",
            "Lwh1<",
            "Lzfb;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/cloud/hisavana/sdk/manager/b$d;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/manager/b$d;->b:Lcom/cloud/hisavana/sdk/manager/b;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/manager/b$d;->c:Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    invoke-direct {p1, v0, p0, p2}, Lcom/cloud/hisavana/sdk/manager/b$d;-><init>(Lcom/cloud/hisavana/sdk/manager/b;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/manager/b$d;->a(Lnk1;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/cloud/hisavana/sdk/manager/b$d;->a:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/manager/b$d;->b:Lcom/cloud/hisavana/sdk/manager/b;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/manager/b;->g(Lcom/cloud/hisavana/sdk/manager/b;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addTrackingBean "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/manager/b$d;->c:Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/hisavana/sdk/Y0;->e:Lcom/cloud/hisavana/sdk/Y0$a;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/Y0$a;->a()Lcom/cloud/hisavana/sdk/Y0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/Y0;->i()V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/Y0$a;->a()Lcom/cloud/hisavana/sdk/Y0;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/manager/b$d;->c:Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->getUuid()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, ""

    :cond_1
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/Y0;->f(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/Y0$a;->a()Lcom/cloud/hisavana/sdk/Y0;

    move-result-object p1

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/manager/b$d;->c:Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    invoke-virtual {p1, p0}, Lcom/cloud/hisavana/sdk/Y0;->h(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V

    :cond_2
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
