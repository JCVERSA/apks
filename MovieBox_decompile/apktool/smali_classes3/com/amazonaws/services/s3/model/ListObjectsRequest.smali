.class public Lcom/amazonaws/services/s3/model/ListObjectsRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "source.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Integer;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->setBucketName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->e(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->setMarker(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p4}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->b(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, p5}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->d(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public d(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->e:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public g(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsRequest;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->c(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMarker(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
