.class public final Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0000\n\u0002\u0008\u000c\u0008\u0087\u0008\u0018\u0000 ,2\u00020\u0001:\u0001,B3\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\r\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\r\u0010\r\u001a\u00020\n\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001d\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\r\u0010\u0017\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0019\u0010\u000fJ\u0010\u0010\u001a\u001a\u00020\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0010\u0010\u001c\u001a\u00020\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001c\u0010\u001bJ\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001d\u0010\u000fJ<\u0010\u001e\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00042\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0010\u0010 \u001a\u00020\u0012H\u00d6\u0001\u00a2\u0006\u0004\u0008 \u0010\u0018J\u001a\u0010#\u001a\u00020\n2\u0008\u0010\"\u001a\u0004\u0018\u00010!H\u00d6\u0003\u00a2\u0006\u0004\u0008#\u0010$R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010%\u001a\u0004\u0008&\u0010\u000fR\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\'\u001a\u0004\u0008(\u0010\u001bR\u0017\u0010\u0006\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\'\u001a\u0004\u0008)\u0010\u001bR\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010%\u001a\u0004\u0008*\u0010\u000fR\u0014\u0010+\u001a\u00020\u00028\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008+\u0010%\u00a8\u0006-"
    }
    d2 = {
        "Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;",
        "Landroid/os/Parcelable;",
        "",
        "videoUrl",
        "",
        "size",
        "duration",
        "resolution",
        "<init>",
        "(Ljava/lang/String;JJLjava/lang/String;)V",
        "",
        "isUrlValid",
        "()Z",
        "isUrlExpired",
        "toString",
        "()Ljava/lang/String;",
        "Landroid/os/Parcel;",
        "dest",
        "",
        "flags",
        "Lzfb;",
        "writeToParcel",
        "(Landroid/os/Parcel;I)V",
        "describeContents",
        "()I",
        "component1",
        "component2",
        "()J",
        "component3",
        "component4",
        "copy",
        "(Ljava/lang/String;JJLjava/lang/String;)Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;",
        "hashCode",
        "",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/String;",
        "getVideoUrl",
        "J",
        "getSize",
        "getDuration",
        "getResolution",
        "TAG",
        "Companion",
        "dbdata_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo$Companion;

.field public static final URL_EXPIRED_STATUS_CODE:I = 0x193


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final duration:J

.field private final resolution:Ljava/lang/String;

.field private final size:J

.field private final videoUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->Companion:Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo$Companion;

    new-instance v0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo$Creator;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo$Creator;-><init>()V

    sput-object v0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 1
    const/16 v7, 0xf

    const/4 v8, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;-><init>(Ljava/lang/String;JJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJLjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->videoUrl:Ljava/lang/String;

    .line 4
    iput-wide p2, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->size:J

    .line 5
    iput-wide p4, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->duration:J

    .line 6
    iput-object p6, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->resolution:Ljava/lang/String;

    .line 7
    const-string p1, "MIMediaVideoPlayItemInfo"

    iput-object p1, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    const-wide/16 v1, 0x0

    if-eqz p8, :cond_1

    move-wide p2, v1

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move-wide p4, v1

    :cond_2
    and-int/lit8 p7, p7, 0x8

    if-eqz p7, :cond_3

    move-object p6, v0

    .line 8
    :cond_3
    invoke-direct/range {p0 .. p6}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;Ljava/lang/String;JJLjava/lang/String;ILjava/lang/Object;)Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->videoUrl:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-wide p2, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->size:J

    :cond_1
    move-wide v0, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-wide p4, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->duration:J

    :cond_2
    move-wide v2, p4

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p6, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->resolution:Ljava/lang/String;

    :cond_3
    move-object p8, p6

    move-object p2, p0

    move-object p3, p1

    move-wide p4, v0

    move-wide p6, v2

    invoke-virtual/range {p2 .. p8}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->copy(Ljava/lang/String;JJLjava/lang/String;)Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->videoUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->size:J

    return-wide v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->duration:J

    return-wide v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->resolution:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;JJLjava/lang/String;)Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;
    .locals 7

    new-instance p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    return-object p0
.end method

.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->videoUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->videoUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->size:J

    iget-wide v5, p1, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->size:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->duration:J

    iget-wide v5, p1, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->duration:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->resolution:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->resolution:Ljava/lang/String;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->duration:J

    return-wide v0
.end method

.method public final getResolution()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->resolution:Ljava/lang/String;

    return-object p0
.end method

.method public final getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->size:J

    return-wide v0
.end method

.method public final getVideoUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->videoUrl:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->videoUrl:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->size:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->duration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->resolution:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final isUrlExpired()Z
    .locals 10

    const-string v0, "expires="

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->videoUrl:Ljava/lang/String;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v0, v1, v4, v5}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v2, v0, v5, v4, v5}, Lj1a;->X0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "&"

    invoke-static {v0, v2, v5, v4, v5}, Lj1a;->e1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf1a;->t(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/16 v0, 0x3e8

    int-to-long v8, v0

    div-long/2addr v6, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p0, v4, v6

    if-gez p0, :cond_2

    :cond_1
    move v1, v3

    goto :goto_2

    :goto_1
    iget-object p0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to check URL expiration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    :cond_2
    :goto_2
    return v1
.end method

.method public final isUrlValid()Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->videoUrl:Ljava/lang/String;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v0

    :goto_1
    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->videoUrl:Ljava/lang/String;

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->size:J

    iget-wide v3, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->duration:J

    iget-object p0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->resolution:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MIMediaVideoPlayItemInfo(videoUrl="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", size="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", duration="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", resolution="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "dest"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->videoUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->resolution:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
