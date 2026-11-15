.class Lcom/cloud/hisavana/sdk/v$b;
.super Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/v;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;IZLcom/cloud/hisavana/sdk/h4;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/v$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic e:Lcom/cloud/hisavana/sdk/h4;

.field final synthetic f:Lcom/cloud/hisavana/sdk/v$d;

.field final synthetic g:Lcom/cloud/hisavana/sdk/v;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/v;ZLjava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/h4;Lcom/cloud/hisavana/sdk/v$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/v$b;->g:Lcom/cloud/hisavana/sdk/v;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/cloud/hisavana/sdk/v$b;->b:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/hisavana/sdk/v$b;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/hisavana/sdk/v$b;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/cloud/hisavana/sdk/v$b;->e:Lcom/cloud/hisavana/sdk/h4;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/cloud/hisavana/sdk/v$b;->f:Lcom/cloud/hisavana/sdk/v$d;

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/v$b;->g:Lcom/cloud/hisavana/sdk/v;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/v$b;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/v$b;->e:Lcom/cloud/hisavana/sdk/h4;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/v$b;->f:Lcom/cloud/hisavana/sdk/v$d;

    .line 8
    .line 9
    invoke-static {p1, v0, v1, v2}, Lcom/cloud/hisavana/sdk/v;->d(Lcom/cloud/hisavana/sdk/v;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/h4;Lcom/cloud/hisavana/sdk/v$d;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lcom/cloud/hisavana/sdk/v$b;->b:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/v$b;->g:Lcom/cloud/hisavana/sdk/v;

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getFilePath()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/v$b;->c:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {p1, p2, v0}, Lcom/cloud/hisavana/sdk/v;->c(Lcom/cloud/hisavana/sdk/v;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/v$b;->g:Lcom/cloud/hisavana/sdk/v;

    .line 19
    .line 20
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/v$b;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/v$b;->e:Lcom/cloud/hisavana/sdk/h4;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/v$b;->f:Lcom/cloud/hisavana/sdk/v$d;

    .line 25
    .line 26
    invoke-static {p1, p2, v0, v1}, Lcom/cloud/hisavana/sdk/v;->d(Lcom/cloud/hisavana/sdk/v;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/h4;Lcom/cloud/hisavana/sdk/v$d;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
