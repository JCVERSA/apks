.class public Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/amazonaws/event/ProgressListener;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/ProgressListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/event/ProgressEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public b()Lcom/amazonaws/services/s3/model/ProgressListener;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method
