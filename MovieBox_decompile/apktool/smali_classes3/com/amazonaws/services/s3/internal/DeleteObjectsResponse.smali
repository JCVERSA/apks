.class public Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/S3RequesterChargedResult;


# instance fields
.field private a:Ljava/util/List;

.field private b:Ljava/util/List;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->a:Ljava/util/List;

    .line 4
    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public setRequesterCharged(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->c:Z

    .line 2
    .line 3
    return-void
.end method
