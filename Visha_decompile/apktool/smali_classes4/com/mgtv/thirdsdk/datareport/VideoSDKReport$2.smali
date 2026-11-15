.class Lcom/mgtv/thirdsdk/datareport/VideoSDKReport$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(ILjava/lang/String;Ljava/lang/Throwable;Lcom/hunantv/imgo/net/entity/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/hunantv/imgo/net/entity/b;

.field final synthetic e:Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;


# direct methods
.method public constructor <init>(Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;Ljava/lang/Throwable;ILjava/lang/String;Lcom/hunantv/imgo/net/entity/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport$2;->e:Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    iput-object p2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport$2;->a:Ljava/lang/Throwable;

    iput p3, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport$2;->b:I

    iput-object p4, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport$2;->d:Lcom/hunantv/imgo/net/entity/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    new-instance v0, Lcom/mgtv/thirdsdk/playcore/b/a;

    invoke-direct {v0}, Lcom/mgtv/thirdsdk/playcore/b/a;-><init>()V

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport$2;->a:Ljava/lang/Throwable;

    const-string v1, "101"

    if-eqz v0, :cond_2

    instance-of v2, v0, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_0

    const-string v0, "103000"

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    instance-of v0, v0, Lcom/mgtv/task/http/HttpFormatException;

    if-eqz v0, :cond_1

    const-string v0, "102000"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport$2;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport$2;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport$2;->e:Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport$2;->c:Ljava/lang/String;

    iget v5, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport$2;->b:I

    iget-object v6, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport$2;->d:Lcom/hunantv/imgo/net/entity/b;

    const/4 v4, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Ljava/lang/String;ZILcom/hunantv/imgo/net/entity/b;)V

    :cond_3
    return-void
.end method
