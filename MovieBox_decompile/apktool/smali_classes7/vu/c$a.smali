.class public final Lvu/c$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvu/c;->l(Lcom/transsion/upload/bean/UploadFileType;Ljava/lang/String;ZLuu/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvu/c;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Luu/a;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lvu/c;Ljava/lang/String;Luu/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvu/c$a;->a:Lvu/c;

    .line 2
    .line 3
    iput-object p2, p0, Lvu/c$a;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lvu/c$a;->c:Luu/a;

    .line 6
    .line 7
    iput-object p4, p0, Lvu/c$a;->d:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V
    .locals 2

    .line 1
    sget-object p1, Lwu/a;->a:Lwu/a;

    .line 2
    .line 3
    iget-object v0, p0, Lvu/c$a;->a:Lvu/c;

    .line 4
    .line 5
    invoke-virtual {v0}, Lvu/a;->d()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, " --> OSSCompletedCallback() --> onFailure() --> clientException = "

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, " --> serviceException = "

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Lwu/a;->c(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lvu/c$a;->c:Luu/a;

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    iget-object v0, p0, Lvu/c$a;->d:Ljava/lang/String;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    if-eqz p2, :cond_0

    .line 48
    .line 49
    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/ClientException;->getMessage()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    move-object p2, v1

    .line 55
    :goto_0
    if-eqz p3, :cond_1

    .line 56
    .line 57
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    :cond_1
    iget-object p3, p0, Lvu/c$a;->a:Lvu/c;

    .line 62
    .line 63
    invoke-virtual {p3}, Lvu/c;->f()Lcom/transsion/upload/bean/UploadTstTokenStorageType;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    invoke-interface {p1, v0, p2, v1, p3}, Luu/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/upload/bean/UploadTstTokenStorageType;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    return-void
.end method

.method public b(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/model/PutObjectResult;)V
    .locals 3

    .line 1
    const-string v0, "result"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p2, Lwu/a;->a:Lwu/a;

    .line 7
    .line 8
    iget-object v0, p0, Lvu/c$a;->a:Lvu/c;

    .line 9
    .line 10
    invoke-virtual {v0}, Lvu/a;->d()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lvu/c$a;->b:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, " --> OSSCompletedCallback() --> onSuccess() --> remotePath = "

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p2, v0}, Lwu/a;->b(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object p2, p0, Lvu/c$a;->c:Luu/a;

    .line 40
    .line 41
    if-eqz p2, :cond_2

    .line 42
    .line 43
    iget-object v0, p0, Lvu/c$a;->d:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v1, p0, Lvu/c$a;->b:Ljava/lang/String;

    .line 46
    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getBucketName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/4 p1, 0x0

    .line 55
    :goto_0
    if-nez p1, :cond_1

    .line 56
    .line 57
    const-string p1, ""

    .line 58
    .line 59
    :cond_1
    invoke-interface {p2, v0, v1, p1}, Luu/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    return-void
.end method

.method public bridge synthetic onFailure(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lvu/c$a;->a(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/model/OSSResult;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;

    .line 2
    .line 3
    check-cast p2, Lcom/alibaba/sdk/android/oss/model/PutObjectResult;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lvu/c$a;->b(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/model/PutObjectResult;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
