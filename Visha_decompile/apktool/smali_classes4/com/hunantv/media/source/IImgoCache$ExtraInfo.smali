.class public Lcom/hunantv/media/source/IImgoCache$ExtraInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/source/IImgoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtraInfo"
.end annotation


# static fields
.field public static final NULL:I


# instance fields
.field private mManagerAddress:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/hunantv/media/source/IImgoCache$ExtraInfo;->mManagerAddress:J

    return-void
.end method


# virtual methods
.method public getDynamicIntervalBytes()J
    .locals 4

    iget-wide v0, p0, Lcom/hunantv/media/source/IImgoCache$ExtraInfo;->mManagerAddress:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    invoke-static {v0, v1}, Lcom/hunantv/media/source/jni/ImgoSourceNative;->getDynamicIntervalBytes(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v2
.end method
