.class public Lcom/amazonaws/services/s3/S3ClientOptions;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/S3ClientOptions$Builder;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private final c:Z

.field private final d:Z

.field private final e:Z

.field private final f:Z


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->a:Z

    .line 4
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->b:Z

    .line 5
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->c:Z

    .line 6
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->d:Z

    .line 7
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->e:Z

    .line 8
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->f:Z

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/s3/S3ClientOptions;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iget-boolean v0, p1, Lcom/amazonaws/services/s3/S3ClientOptions;->a:Z

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->a:Z

    .line 11
    iget-boolean v0, p1, Lcom/amazonaws/services/s3/S3ClientOptions;->b:Z

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->b:Z

    .line 12
    iget-boolean v0, p1, Lcom/amazonaws/services/s3/S3ClientOptions;->c:Z

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->c:Z

    .line 13
    iget-boolean v0, p1, Lcom/amazonaws/services/s3/S3ClientOptions;->d:Z

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->d:Z

    .line 14
    iget-boolean v0, p1, Lcom/amazonaws/services/s3/S3ClientOptions;->e:Z

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->e:Z

    .line 15
    iget-boolean p1, p1, Lcom/amazonaws/services/s3/S3ClientOptions;->f:Z

    iput-boolean p1, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->f:Z

    return-void
.end method

.method private constructor <init>(ZZZZZZ)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->a:Z

    .line 18
    iput-boolean p2, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->b:Z

    .line 19
    iput-boolean p3, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->c:Z

    .line 20
    iput-boolean p4, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->d:Z

    .line 21
    iput-boolean p5, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->e:Z

    .line 22
    iput-boolean p6, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->f:Z

    return-void
.end method

.method synthetic constructor <init>(ZZZZZZLcom/amazonaws/services/s3/S3ClientOptions$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/amazonaws/services/s3/S3ClientOptions;-><init>(ZZZZZZ)V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/s3/S3ClientOptions$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;-><init>(Lcom/amazonaws/services/s3/S3ClientOptions$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->b:Z

    .line 2
    .line 3
    return v0
.end method
