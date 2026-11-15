.class public Lcom/transsion/dbdata/beans/media/MediaInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public cnt:I

.field public vd_format:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaInfo;->vd_format:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p2, p0, Lcom/transsion/dbdata/beans/media/MediaInfo;->cnt:I

    .line 5
    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/MediaInfo;->vd_format:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/transsion/dbdata/beans/media/MediaInfo;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaInfo;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaInfo;->vd_format:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaInfo;->vd_format:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
