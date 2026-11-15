.class public Lcom/amazonaws/services/s3/model/ListVersionsRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "source.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Integer;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->setBucketName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->e(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->d(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p4}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->g(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, p5}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->b(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, p6}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->setMaxResults(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public h(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->c(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMaxResults(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->f:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method
