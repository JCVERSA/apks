.class public final Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;,
        Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0013\u0018\u0000 *2\u00020\u0001:\u0002*+B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003B\u0011\u0008\u0012\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0006J\r\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u000f\u0010\u000e\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u000e\u0010\u000cJ\u000f\u0010\u000f\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u000f\u0010\u000cJ\u000f\u0010\u0010\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u0010\u0010\u000cJ\u000f\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u00152\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u001f\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010\u000cR\u0016\u0010 \u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0018\u0010\"\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0018\u0010$\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010#R\u0018\u0010%\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010#R\u0018\u0010&\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010#R\u0018\u0010\'\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010#R\u0018\u0010(\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010)\u00a8\u0006,"
    }
    d2 = {
        "Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;",
        "Landroid/os/Parcelable;",
        "<init>",
        "()V",
        "Landroid/os/Parcel;",
        "source",
        "(Landroid/os/Parcel;)V",
        "",
        "isMediaNeedRecordPlayInfo",
        "()Z",
        "",
        "getMediaLibraryId",
        "()Ljava/lang/String;",
        "geMediaLibraryTitle",
        "getVideoId",
        "getCoverUri",
        "getVideoTitle",
        "Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;",
        "getMIMediaVideoPlayItemInfo",
        "()Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;",
        "itemInfo",
        "Lzfb;",
        "setMIMediaVideoPlayItemInfo",
        "(Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;)V",
        "dest",
        "",
        "flags",
        "writeToParcel",
        "(Landroid/os/Parcel;I)V",
        "describeContents",
        "()I",
        "toString",
        "mediaNeedRecordPlayInfo",
        "Z",
        "mediaLibraryId",
        "Ljava/lang/String;",
        "mediaLibraryTitle",
        "videoId",
        "coverUri",
        "videoTitle",
        "miMediaVideoPlayItemInfo",
        "Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;",
        "Companion",
        "Builder",
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
            "Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Companion;

.field private static final TAG:Ljava/lang/String; = "MIMediaInfo"


# instance fields
.field private coverUri:Ljava/lang/String;

.field private mediaLibraryId:Ljava/lang/String;

.field private mediaLibraryTitle:Ljava/lang/String;

.field private mediaNeedRecordPlayInfo:Z

.field private miMediaVideoPlayItemInfo:Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;

.field private videoId:Ljava/lang/String;

.field private videoTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->Companion:Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Companion;

    new-instance v0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Companion$CREATOR$1;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Companion$CREATOR$1;-><init>()V

    sput-object v0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;-><init>()V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->mediaNeedRecordPlayInfo:Z

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->mediaLibraryId:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->mediaLibraryTitle:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->videoId:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->coverUri:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->videoTitle:Ljava/lang/String;

    .line 11
    const-class v0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;

    .line 12
    iput-object p1, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->miMediaVideoPlayItemInfo:Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;-><init>()V

    return-void
.end method

.method public static final synthetic access$setCoverUri$p(Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->coverUri:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setMediaLibraryId$p(Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->mediaLibraryId:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setMediaLibraryTitle$p(Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->mediaLibraryTitle:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setMediaNeedRecordPlayInfo$p(Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->mediaNeedRecordPlayInfo:Z

    return-void
.end method

.method public static final synthetic access$setVideoId$p(Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->videoId:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setVideoTitle$p(Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->videoTitle:Ljava/lang/String;

    return-void
.end method

.method public static final fromIntent(Landroid/content/Intent;)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->Companion:Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Companion;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Companion;->fromIntent(Landroid/content/Intent;)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final fromMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->Companion:Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Companion;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Companion;->fromMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final fromPlayVideoData(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Landroid/os/Parcelable;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->Companion:Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Companion;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Companion;->fromPlayVideoData(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final geMediaLibraryTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->mediaLibraryTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final getCoverUri()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->coverUri:Ljava/lang/String;

    return-object p0
.end method

.method public final getMIMediaVideoPlayItemInfo()Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->miMediaVideoPlayItemInfo:Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;

    return-object p0
.end method

.method public final getMediaLibraryId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->mediaLibraryId:Ljava/lang/String;

    return-object p0
.end method

.method public final getVideoId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->videoId:Ljava/lang/String;

    return-object p0
.end method

.method public final getVideoTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->videoTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final isMediaNeedRecordPlayInfo()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->mediaNeedRecordPlayInfo:Z

    return p0
.end method

.method public final setMIMediaVideoPlayItemInfo(Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->miMediaVideoPlayItemInfo:Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->mediaNeedRecordPlayInfo:Z

    iget-object v1, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->mediaLibraryId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->mediaLibraryTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->videoId:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->coverUri:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->videoTitle:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->miMediaVideoPlayItemInfo:Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MIMediaInfo(mediaNeedRecordPlayInfo="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mediaLibraryId=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', mediaLibraryTitle=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', videoId=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', coverUri=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', videoTitle=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\',  "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\')"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "dest"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->mediaNeedRecordPlayInfo:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->mediaLibraryId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->mediaLibraryTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->videoId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->coverUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->videoTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->miMediaVideoPlayItemInfo:Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
