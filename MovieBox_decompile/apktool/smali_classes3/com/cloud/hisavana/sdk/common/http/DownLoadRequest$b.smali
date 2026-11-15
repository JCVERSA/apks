.class Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$b;
.super Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$b;->c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public i(I[BLjava/lang/Throwable;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "DownLoadRequest --> onFailure statusCode "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, " e"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, " url "

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$b;->c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    .line 32
    .line 33
    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->f(Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "ssp"

    .line 45
    .line 46
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$b;->c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    .line 50
    .line 51
    const/16 v1, 0x100

    .line 52
    .line 53
    if-ne p1, v1, :cond_0

    .line 54
    .line 55
    const/4 v1, 0x2

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const/4 v1, 0x1

    .line 58
    :goto_0
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->g(Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;I)I

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$b;->c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/cloud/hisavana/sdk/common/http/d;->b:Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;

    .line 64
    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    check-cast v0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    .line 68
    .line 69
    invoke-virtual {v0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->d(I[BLjava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$b;->c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    .line 73
    .line 74
    iput p1, p2, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->f:I

    .line 75
    .line 76
    return-void
.end method

.method public l(Lokhttp3/Headers;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->l(Lokhttp3/Headers;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    invoke-virtual {p1}, Lokhttp3/Headers;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-lez v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-virtual {p1}, Lokhttp3/Headers;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-ge v0, v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "x-response-cdn"

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_0

    .line 48
    .line 49
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$b;->c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    .line 50
    .line 51
    iput-object v1, v2, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->d:Ljava/lang/String;

    .line 52
    .line 53
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    return-void
.end method

.method public n(I[B)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "DownLoadRequest --> onSuccess statusCode "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, " url "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$b;->c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    .line 24
    .line 25
    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->f(Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "DownLoadRequest"

    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$b;->c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    .line 42
    .line 43
    const/16 v1, 0xfa

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    if-ne p1, v1, :cond_0

    .line 47
    .line 48
    const/4 v1, 0x2

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move v1, v2

    .line 51
    :goto_0
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->g(Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;I)I

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$b;->c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    .line 55
    .line 56
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/http/d;->b:Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;

    .line 57
    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    instance-of v3, v1, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    .line 61
    .line 62
    if-eqz v3, :cond_1

    .line 63
    .line 64
    check-cast v1, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    .line 65
    .line 66
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->h(Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    const/4 v3, 0x0

    .line 71
    invoke-virtual {v1, v0, p1, p2, v3}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;->h(II[BLjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    if-eqz p2, :cond_2

    .line 75
    .line 76
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$b;->c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    .line 77
    .line 78
    array-length p2, p2

    .line 79
    int-to-long v0, p2

    .line 80
    iput-wide v0, p1, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->c:J

    .line 81
    .line 82
    :cond_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$b;->c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    .line 83
    .line 84
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->i(Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;)I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    const/4 p2, 0x3

    .line 89
    if-ne p1, p2, :cond_3

    .line 90
    .line 91
    sput-boolean v2, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->q:Z

    .line 92
    .line 93
    :cond_3
    return-void
.end method

.method public o(I[BLjava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "DownLoadRequest --> onSuccess statusCode "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, " filePath "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, " url"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$b;->c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    .line 32
    .line 33
    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->f(Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "ssp"

    .line 45
    .line 46
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$b;->c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    .line 50
    .line 51
    const/16 v1, 0xfa

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    if-ne p1, v1, :cond_0

    .line 55
    .line 56
    const/4 v1, 0x2

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move v1, v2

    .line 59
    :goto_0
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->g(Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;I)I

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$b;->c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    .line 63
    .line 64
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/http/d;->b:Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;

    .line 65
    .line 66
    if-eqz v1, :cond_1

    .line 67
    .line 68
    instance-of v3, v1, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    .line 69
    .line 70
    if-eqz v3, :cond_1

    .line 71
    .line 72
    check-cast v1, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->h(Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;->h(II[BLjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    if-eqz p2, :cond_2

    .line 82
    .line 83
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$b;->c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    .line 84
    .line 85
    array-length p2, p2

    .line 86
    int-to-long p2, p2

    .line 87
    iput-wide p2, p1, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->c:J

    .line 88
    .line 89
    :cond_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$b;->c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    .line 90
    .line 91
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->i(Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;)I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    const/4 p2, 0x3

    .line 96
    if-ne p1, p2, :cond_3

    .line 97
    .line 98
    sput-boolean v2, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->q:Z

    .line 99
    .line 100
    :cond_3
    return-void
.end method
