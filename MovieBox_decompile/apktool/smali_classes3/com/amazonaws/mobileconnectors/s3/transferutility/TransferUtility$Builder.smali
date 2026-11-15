.class public Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Lcom/amazonaws/services/s3/AmazonS3;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->a:Lcom/amazonaws/services/s3/AmazonS3;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->b:Landroid/content/Context;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    .line 19
    .line 20
    :cond_0
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->a:Lcom/amazonaws/services/s3/AmazonS3;

    .line 23
    .line 24
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->b:Landroid/content/Context;

    .line 25
    .line 26
    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->c:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    move-object v1, v0

    .line 32
    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;-><init>(Lcom/amazonaws/services/s3/AmazonS3;Landroid/content/Context;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$1;)V

    .line 33
    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    const-string v1, "Context is required please set using .context(applicationContext)"

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0

    .line 44
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    const-string v1, "AmazonS3 client is required please set using .s3Client(yourClient)"

    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0
.end method

.method public b(Landroid/content/Context;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->b:Landroid/content/Context;

    .line 6
    .line 7
    return-object p0
.end method

.method public c(Lcom/amazonaws/services/s3/AmazonS3;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->a:Lcom/amazonaws/services/s3/AmazonS3;

    .line 2
    .line 3
    return-object p0
.end method
