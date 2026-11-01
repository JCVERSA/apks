.class public Lcom/wandoujia/download/model/SegmentInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2753987013f3d1f8L


# instance fields
.field private crc:Ljava/lang/String;

.field private md5:Ljava/lang/String;

.field private seq:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCrc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/model/SegmentInfo;->crc:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/model/SegmentInfo;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getSeq()J
    .locals 2

    iget-wide v0, p0, Lcom/wandoujia/download/model/SegmentInfo;->seq:J

    return-wide v0
.end method
