.class abstract Lcom/amazonaws/services/s3/model/transform/AbstractSSEHandler;
.super Lcom/amazonaws/services/s3/model/transform/AbstractHandler;
.source "source.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected abstract f()Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;
.end method

.method public final setSSEAlgorithm(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractSSEHandler;->f()Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;->setSSEAlgorithm(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final setSSECustomerAlgorithm(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractSSEHandler;->f()Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;->setSSECustomerAlgorithm(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final setSSECustomerKeyMd5(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractSSEHandler;->f()Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;->setSSECustomerKeyMd5(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
