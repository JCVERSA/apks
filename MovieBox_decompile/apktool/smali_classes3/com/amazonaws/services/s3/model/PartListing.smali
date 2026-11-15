.class public Lcom/amazonaws/services/s3/model/PartListing;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/S3RequesterChargedResult;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/Integer;

.field private f:Ljava/lang/String;

.field private g:Lcom/amazonaws/services/s3/model/Owner;

.field private h:Lcom/amazonaws/services/s3/model/Owner;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Ljava/lang/Integer;

.field private l:Ljava/util/List;

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->l:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->l:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->l:Ljava/util/List;

    .line 13
    .line 14
    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public d(Lcom/amazonaws/services/s3/model/Owner;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->h:Lcom/amazonaws/services/s3/model/Owner;

    .line 2
    .line 3
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public f(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->d:Ljava/lang/Integer;

    .line 6
    .line 7
    return-void
.end method

.method public g(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->k:Ljava/lang/Integer;

    .line 6
    .line 7
    return-void
.end method

.method public h(Lcom/amazonaws/services/s3/model/Owner;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->g:Lcom/amazonaws/services/s3/model/Owner;

    .line 2
    .line 3
    return-void
.end method

.method public i(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->e:Ljava/lang/Integer;

    .line 6
    .line 7
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public k(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->j:Z

    .line 2
    .line 3
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRequesterCharged(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->m:Z

    .line 2
    .line 3
    return-void
.end method
