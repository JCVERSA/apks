.class public abstract Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;-><init>(Z)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->a:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 5
    new-instance v0, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener$a;

    invoke-direct {v0, p1}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener$a;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->a:Landroid/os/Handler;

    goto :goto_0

    .line 6
    :cond_0
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->a:Landroid/os/Handler;

    :goto_0
    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
.end method

.method public b(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    new-instance p3, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "erro msg = "

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-direct {p3, p1, p2}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p3}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->e(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public d(I[BLjava/lang/Throwable;)V
    .locals 2

    .line 1
    new-instance p3, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "erro msg = "

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-direct {p3, p1, p2}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p3}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->e(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public e(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener$1;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener$1;-><init>(Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public f(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener$2;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener$2;-><init>(Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->b(I)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method
