.class public Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "source.java"


# static fields
.field private static final g:[Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v4, "response-content-type"

    .line 2
    .line 3
    const-string v5, "response-expires"

    .line 4
    .line 5
    const-string v0, "response-cache-control"

    .line 6
    .line 7
    const-string v1, "response-content-disposition"

    .line 8
    .line 9
    const-string v2, "response-content-encoding"

    .line 10
    .line 11
    const-string v3, "response-content-language"

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->g:[Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
