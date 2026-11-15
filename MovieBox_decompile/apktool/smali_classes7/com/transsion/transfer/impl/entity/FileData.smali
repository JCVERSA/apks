.class public final Lcom/transsion/transfer/impl/entity/FileData;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transfer/impl/entity/FileData$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008!\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0087\u0008\u0018\u0000 S2\u00020\u0001:\u0001TBO\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\r\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\r\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\r\u0010\u0015\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0015\u0010\u0014J\r\u0010\u0016\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0016\u0010\u0014J\r\u0010\u0017\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0017\u0010\u0014J\r\u0010\u0018\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0018\u0010\u0014J\r\u0010\u001a\u001a\u00020\u0019\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\r\u0010\u001c\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\r\u0010\u001e\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u001e\u0010\u0011J\u000f\u0010\u001f\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0004\u0008\u001f\u0010\u0014J\u001a\u0010\"\u001a\u00020\u00192\u0008\u0010!\u001a\u0004\u0018\u00010 H\u0096\u0002\u00a2\u0006\u0004\u0008\"\u0010#J\u000f\u0010$\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008$\u0010%J\u000f\u0010&\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008&\u0010\'J\u001d\u0010+\u001a\u00020\u000f2\u0006\u0010)\u001a\u00020(2\u0006\u0010*\u001a\u00020\n\u00a2\u0006\u0004\u0008+\u0010,J\r\u0010-\u001a\u00020\n\u00a2\u0006\u0004\u0008-\u0010%J\u0010\u0010.\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008.\u0010\'J\u0010\u0010/\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008/\u0010\'J\u0010\u00100\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u00080\u0010\u001dJ\u0010\u00101\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u00081\u0010\'J\u0010\u00102\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u00082\u0010\'J\u0010\u00103\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u00083\u0010\'J\u0010\u00104\u001a\u00020\nH\u00c6\u0003\u00a2\u0006\u0004\u00084\u0010%J\u0010\u00105\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u00085\u0010\u001dJ`\u00106\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00022\u0008\u0008\u0002\u0010\t\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0005H\u00c6\u0001\u00a2\u0006\u0004\u00086\u00107R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u00108\u001a\u0004\u00089\u0010\'R\u0017\u0010\u0004\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u00108\u001a\u0004\u0008:\u0010\'R\"\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010;\u001a\u0004\u0008<\u0010\u001d\"\u0004\u0008=\u0010>R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u00108\u001a\u0004\u0008?\u0010\'R\"\u0010\u0008\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u00108\u001a\u0004\u0008@\u0010\'\"\u0004\u0008A\u0010BR\u0017\u0010\t\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u00108\u001a\u0004\u0008C\u0010\'R\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010D\u001a\u0004\u0008E\u0010%\"\u0004\u0008F\u0010GR\"\u0010\u000c\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010;\u001a\u0004\u0008H\u0010\u001d\"\u0004\u0008I\u0010>R$\u0010K\u001a\u0004\u0018\u00010J8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008K\u0010L\u001a\u0004\u0008M\u0010N\"\u0004\u0008O\u0010PR\u0011\u0010R\u001a\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008Q\u0010\'\u00a8\u0006U"
    }
    d2 = {
        "Lcom/transsion/transfer/impl/entity/FileData;",
        "Landroid/os/Parcelable;",
        "",
        "fileRemotePath",
        "fileName",
        "",
        "fileSize",
        "coverUrl",
        "fileReceiveCachePath",
        "remoteUrl",
        "",
        "state",
        "downloadSize",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V",
        "",
        "filePrepare",
        "()V",
        "Ljava/io/File;",
        "getTempCoverFile",
        "()Ljava/io/File;",
        "getCoverFile",
        "getTempFile",
        "getTempBackFile",
        "getFinalFile",
        "",
        "verifyFile",
        "()Z",
        "getDownloadedSize",
        "()J",
        "clearFile",
        "getRootFile",
        "",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "hashCode",
        "()I",
        "toString",
        "()Ljava/lang/String;",
        "Landroid/os/Parcel;",
        "dest",
        "flags",
        "writeToParcel",
        "(Landroid/os/Parcel;I)V",
        "describeContents",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)Lcom/transsion/transfer/impl/entity/FileData;",
        "Ljava/lang/String;",
        "getFileRemotePath",
        "getFileName",
        "J",
        "getFileSize",
        "setFileSize",
        "(J)V",
        "getCoverUrl",
        "getFileReceiveCachePath",
        "setFileReceiveCachePath",
        "(Ljava/lang/String;)V",
        "getRemoteUrl",
        "I",
        "getState",
        "setState",
        "(I)V",
        "getDownloadSize",
        "setDownloadSize",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
        "downloadBean",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
        "getDownloadBean",
        "()Lcom/transsion/baselib/db/download/DownloadBean;",
        "setDownloadBean",
        "(Lcom/transsion/baselib/db/download/DownloadBean;)V",
        "getFileShowName",
        "fileShowName",
        "Companion",
        "a",
        "Transfer_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/transfer/impl/entity/FileData;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/transsion/transfer/impl/entity/FileData$a;

.field public static final STATE_CONNECTING:I = 0x0

.field public static final STATE_DISCONNECT:I = 0x5

.field public static final STATE_FAIL:I = 0x3

.field public static final STATE_FINISH:I = 0x4

.field public static final STATE_NO_FILE:I = 0x6

.field public static final STATE_SPACE_LIMIT:I = 0x7

.field public static final STATE_TRANSFERRING:I = 0x2


# instance fields
.field private final coverUrl:Ljava/lang/String;

.field private downloadBean:Lcom/transsion/baselib/db/download/DownloadBean;

.field private downloadSize:J

.field private final fileName:Ljava/lang/String;

.field private fileReceiveCachePath:Ljava/lang/String;

.field private final fileRemotePath:Ljava/lang/String;

.field private fileSize:J

.field private final remoteUrl:Ljava/lang/String;

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/transfer/impl/entity/FileData$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/transfer/impl/entity/FileData$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/transfer/impl/entity/FileData;->Companion:Lcom/transsion/transfer/impl/entity/FileData$a;

    .line 8
    .line 9
    new-instance v0, Lcom/transsion/transfer/impl/entity/FileData$b;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/transsion/transfer/impl/entity/FileData$b;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/transsion/transfer/impl/entity/FileData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 1

    const-string v0, "fileRemotePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coverUrl"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileReceiveCachePath"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteUrl"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/transfer/impl/entity/FileData;->fileRemotePath:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/transsion/transfer/impl/entity/FileData;->fileName:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/transsion/transfer/impl/entity/FileData;->fileSize:J

    .line 5
    iput-object p5, p0, Lcom/transsion/transfer/impl/entity/FileData;->coverUrl:Ljava/lang/String;

    .line 6
    iput-object p6, p0, Lcom/transsion/transfer/impl/entity/FileData;->fileReceiveCachePath:Ljava/lang/String;

    .line 7
    iput-object p7, p0, Lcom/transsion/transfer/impl/entity/FileData;->remoteUrl:Ljava/lang/String;

    .line 8
    iput p8, p0, Lcom/transsion/transfer/impl/entity/FileData;->state:I

    .line 9
    iput-wide p9, p0, Lcom/transsion/transfer/impl/entity/FileData;->downloadSize:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 14

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x10

    .line 10
    const-string v2, ""

    if-eqz v1, :cond_0

    move-object v9, v2

    goto :goto_0

    :cond_0
    move-object/from16 v9, p6

    :goto_0
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_1

    move-object v10, v2

    goto :goto_1

    :cond_1
    move-object/from16 v10, p7

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    move v11, v1

    goto :goto_2

    :cond_2
    move/from16 v11, p8

    :goto_2
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x0

    move-wide v12, v0

    goto :goto_3

    :cond_3
    move-wide/from16 v12, p9

    :goto_3
    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v13}, Lcom/transsion/transfer/impl/entity/FileData;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/transfer/impl/entity/FileData;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJILjava/lang/Object;)Lcom/transsion/transfer/impl/entity/FileData;
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p11

    .line 3
    .line 4
    and-int/lit8 v2, v1, 0x1

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    iget-object v2, v0, Lcom/transsion/transfer/impl/entity/FileData;->fileRemotePath:Ljava/lang/String;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v2, p1

    .line 12
    :goto_0
    and-int/lit8 v3, v1, 0x2

    .line 13
    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    iget-object v3, v0, Lcom/transsion/transfer/impl/entity/FileData;->fileName:Ljava/lang/String;

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move-object v3, p2

    .line 20
    :goto_1
    and-int/lit8 v4, v1, 0x4

    .line 21
    .line 22
    if-eqz v4, :cond_2

    .line 23
    .line 24
    iget-wide v4, v0, Lcom/transsion/transfer/impl/entity/FileData;->fileSize:J

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move-wide v4, p3

    .line 28
    :goto_2
    and-int/lit8 v6, v1, 0x8

    .line 29
    .line 30
    if-eqz v6, :cond_3

    .line 31
    .line 32
    iget-object v6, v0, Lcom/transsion/transfer/impl/entity/FileData;->coverUrl:Ljava/lang/String;

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_3
    move-object/from16 v6, p5

    .line 36
    .line 37
    :goto_3
    and-int/lit8 v7, v1, 0x10

    .line 38
    .line 39
    if-eqz v7, :cond_4

    .line 40
    .line 41
    iget-object v7, v0, Lcom/transsion/transfer/impl/entity/FileData;->fileReceiveCachePath:Ljava/lang/String;

    .line 42
    .line 43
    goto :goto_4

    .line 44
    :cond_4
    move-object/from16 v7, p6

    .line 45
    .line 46
    :goto_4
    and-int/lit8 v8, v1, 0x20

    .line 47
    .line 48
    if-eqz v8, :cond_5

    .line 49
    .line 50
    iget-object v8, v0, Lcom/transsion/transfer/impl/entity/FileData;->remoteUrl:Ljava/lang/String;

    .line 51
    .line 52
    goto :goto_5

    .line 53
    :cond_5
    move-object/from16 v8, p7

    .line 54
    .line 55
    :goto_5
    and-int/lit8 v9, v1, 0x40

    .line 56
    .line 57
    if-eqz v9, :cond_6

    .line 58
    .line 59
    iget v9, v0, Lcom/transsion/transfer/impl/entity/FileData;->state:I

    .line 60
    .line 61
    goto :goto_6

    .line 62
    :cond_6
    move/from16 v9, p8

    .line 63
    .line 64
    :goto_6
    and-int/lit16 v1, v1, 0x80

    .line 65
    .line 66
    if-eqz v1, :cond_7

    .line 67
    .line 68
    iget-wide v10, v0, Lcom/transsion/transfer/impl/entity/FileData;->downloadSize:J

    .line 69
    .line 70
    goto :goto_7

    .line 71
    :cond_7
    move-wide/from16 v10, p9

    .line 72
    .line 73
    :goto_7
    move-object p1, v2

    .line 74
    move-object p2, v3

    .line 75
    move-wide p3, v4

    .line 76
    move-object/from16 p5, v6

    .line 77
    .line 78
    move-object/from16 p6, v7

    .line 79
    .line 80
    move-object/from16 p7, v8

    .line 81
    .line 82
    move/from16 p8, v9

    .line 83
    .line 84
    move-wide/from16 p9, v10

    .line 85
    .line 86
    invoke-virtual/range {p0 .. p10}, Lcom/transsion/transfer/impl/entity/FileData;->copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)Lcom/transsion/transfer/impl/entity/FileData;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    return-object v0
.end method


# virtual methods
.method public final clearFile()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transfer/impl/entity/FileData;->getTempFile()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/transsion/transfer/impl/entity/FileData;->getTempBackFile()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/io/File;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/transsion/transfer/impl/entity/FileData;->fileReceiveCachePath:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void
.end method

.method public final component1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/entity/FileData;->fileRemotePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/entity/FileData;->fileName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/transfer/impl/entity/FileData;->fileSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/entity/FileData;->coverUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/entity/FileData;->fileReceiveCachePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/entity/FileData;->remoteUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/transfer/impl/entity/FileData;->state:I

    .line 2
    .line 3
    return v0
.end method

.method public final component8()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/transfer/impl/entity/FileData;->downloadSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)Lcom/transsion/transfer/impl/entity/FileData;
    .locals 12

    .line 1
    const-string v0, "fileRemotePath"

    .line 2
    .line 3
    move-object v2, p1

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "fileName"

    .line 8
    .line 9
    move-object v3, p2

    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "coverUrl"

    .line 14
    .line 15
    move-object/from16 v6, p5

    .line 16
    .line 17
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "fileReceiveCachePath"

    .line 21
    .line 22
    move-object/from16 v7, p6

    .line 23
    .line 24
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v0, "remoteUrl"

    .line 28
    .line 29
    move-object/from16 v8, p7

    .line 30
    .line 31
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Lcom/transsion/transfer/impl/entity/FileData;

    .line 35
    .line 36
    move-object v1, v0

    .line 37
    move-wide v4, p3

    .line 38
    move/from16 v9, p8

    .line 39
    .line 40
    move-wide/from16 v10, p9

    .line 41
    .line 42
    invoke-direct/range {v1 .. v11}, Lcom/transsion/transfer/impl/entity/FileData;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 43
    .line 44
    .line 45
    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    if-eqz p1, :cond_2

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-class v1, Lcom/transsion/transfer/impl/entity/FileData;

    .line 12
    .line 13
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    check-cast p1, Lcom/transsion/transfer/impl/entity/FileData;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/transsion/transfer/impl/entity/FileData;->fileRemotePath:Ljava/lang/String;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/transsion/transfer/impl/entity/FileData;->fileRemotePath:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1

    .line 31
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 32
    return p1
.end method

.method public final filePrepare()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transfer/impl/entity/FileData;->getTempFile()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/transsion/transfer/impl/entity/FileData;->getTempBackFile()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    const-wide/16 v4, 0x0

    .line 26
    .line 27
    cmp-long v2, v2, v4

    .line 28
    .line 29
    if-lez v2, :cond_1

    .line 30
    .line 31
    new-instance v2, Ljava/io/FileOutputStream;

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    invoke-direct {v2, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 35
    .line 36
    .line 37
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    .line 41
    .line 42
    const/16 v3, 0x400

    .line 43
    .line 44
    :try_start_1
    new-array v3, v3, [B

    .line 45
    .line 46
    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    const/4 v5, -0x1

    .line 51
    if-eq v4, v5, :cond_0

    .line 52
    .line 53
    const/4 v5, 0x0

    .line 54
    invoke-virtual {v2, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception v1

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .line 62
    const/4 v3, 0x0

    .line 63
    :try_start_2
    invoke-static {v0, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 64
    .line 65
    .line 66
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 70
    .line 71
    .line 72
    goto :goto_3

    .line 73
    :catchall_1
    move-exception v0

    .line 74
    goto :goto_2

    .line 75
    :goto_1
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 76
    :catchall_2
    move-exception v3

    .line 77
    :try_start_4
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 81
    :goto_2
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 82
    :catchall_3
    move-exception v1

    .line 83
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    throw v1

    .line 87
    :cond_1
    :goto_3
    return-void
.end method

.method public final getCoverFile()Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/transfer/impl/entity/FileData;->fileReceiveCachePath:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/io/File;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v2, ".image"

    .line 15
    .line 16
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 26
    .line 27
    .line 28
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/transsion/transfer/impl/entity/FileData;->fileName:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v2}, Lau/d;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-object v0
.end method

.method public final getCoverUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/entity/FileData;->coverUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDownloadBean()Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/entity/FileData;->downloadBean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDownloadSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/transfer/impl/entity/FileData;->downloadSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getDownloadedSize()J
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transfer/impl/entity/FileData;->getTempFile()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/transsion/transfer/impl/entity/FileData;->getTempBackFile()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/io/File;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/transsion/transfer/impl/entity/FileData;->fileReceiveCachePath:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    iget-wide v4, p0, Lcom/transsion/transfer/impl/entity/FileData;->fileSize:J

    .line 27
    .line 28
    cmp-long v2, v2, v4

    .line 29
    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    return-wide v4

    .line 33
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const-wide/16 v3, 0x0

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 48
    .line 49
    .line 50
    move-result-wide v3

    .line 51
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    add-long/2addr v3, v0

    .line 56
    :cond_2
    return-wide v3
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/entity/FileData;->fileName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFileReceiveCachePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/entity/FileData;->fileReceiveCachePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFileRemotePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/entity/FileData;->fileRemotePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFileShowName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/entity/FileData;->downloadBean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalTitleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/transsion/transfer/impl/entity/FileData;->fileName:Ljava/lang/String;

    .line 14
    .line 15
    :goto_0
    return-object v0
.end method

.method public final getFileSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/transfer/impl/entity/FileData;->fileSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getFinalFile()Ljava/io/File;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Lcom/transsion/transfer/impl/entity/FileData;->getTempFile()Ljava/io/File;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {p0}, Lcom/transsion/transfer/impl/entity/FileData;->getTempBackFile()Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    new-instance v3, Ljava/io/File;

    .line 11
    .line 12
    iget-object v4, p0, Lcom/transsion/transfer/impl/entity/FileData;->fileReceiveCachePath:Ljava/lang/String;

    .line 13
    .line 14
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    iget-wide v6, p0, Lcom/transsion/transfer/impl/entity/FileData;->fileSize:J

    .line 28
    .line 29
    cmp-long v4, v4, v6

    .line 30
    .line 31
    if-nez v4, :cond_0

    .line 32
    .line 33
    return-object v3

    .line 34
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_4

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_4

    .line 45
    .line 46
    new-instance v4, Ljava/io/FileOutputStream;

    .line 47
    .line 48
    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 49
    .line 50
    .line 51
    const/4 v5, 0x2

    .line 52
    :try_start_0
    new-array v5, v5, [Ljava/io/File;

    .line 53
    .line 54
    aput-object v1, v5, v0

    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    aput-object v2, v5, v1

    .line 58
    .line 59
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Ljava/lang/Iterable;

    .line 64
    .line 65
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    const/4 v5, 0x0

    .line 74
    if-eqz v2, :cond_3

    .line 75
    .line 76
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Ljava/io/File;

    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    if-eqz v6, :cond_1

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 89
    .line 90
    .line 91
    move-result-wide v6

    .line 92
    const-wide/16 v8, 0x0

    .line 93
    .line 94
    cmp-long v6, v6, v8

    .line 95
    .line 96
    if-lez v6, :cond_1

    .line 97
    .line 98
    new-instance v6, Ljava/io/FileInputStream;

    .line 99
    .line 100
    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 101
    .line 102
    .line 103
    const/16 v7, 0x400

    .line 104
    .line 105
    :try_start_1
    new-array v7, v7, [B

    .line 106
    .line 107
    :goto_1
    invoke-virtual {v6, v7}, Ljava/io/FileInputStream;->read([B)I

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    const/4 v9, -0x1

    .line 112
    if-eq v8, v9, :cond_2

    .line 113
    .line 114
    invoke-virtual {v4, v7, v0, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :catchall_0
    move-exception v0

    .line 119
    goto :goto_2

    .line 120
    :cond_2
    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    .line 122
    :try_start_2
    invoke-static {v6, v5}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :catchall_1
    move-exception v0

    .line 130
    goto :goto_3

    .line 131
    :goto_2
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 132
    :catchall_2
    move-exception v1

    .line 133
    :try_start_4
    invoke-static {v6, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 134
    .line 135
    .line 136
    throw v1

    .line 137
    :cond_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 138
    .line 139
    invoke-static {v4, v5}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 140
    .line 141
    .line 142
    goto :goto_4

    .line 143
    :goto_3
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 144
    :catchall_3
    move-exception v1

    .line 145
    invoke-static {v4, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 146
    .line 147
    .line 148
    throw v1

    .line 149
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_5

    .line 154
    .line 155
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-nez v0, :cond_5

    .line 160
    .line 161
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 162
    .line 163
    .line 164
    :cond_5
    :goto_4
    return-object v3
.end method

.method public final getRemoteUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/entity/FileData;->remoteUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRootFile()Ljava/io/File;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/transfer/impl/entity/FileData;->fileReceiveCachePath:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public final getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/transfer/impl/entity/FileData;->state:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTempBackFile()Ljava/io/File;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/transfer/impl/entity/FileData;->fileReceiveCachePath:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Ljava/io/File;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/transsion/transfer/impl/entity/FileData;->fileName:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v2}, Lau/d;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, ".backtemp"

    .line 29
    .line 30
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-object v1
.end method

.method public final getTempCoverFile()Ljava/io/File;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/transfer/impl/entity/FileData;->fileReceiveCachePath:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/io/File;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v2, ".image"

    .line 15
    .line 16
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 26
    .line 27
    .line 28
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/transsion/transfer/impl/entity/FileData;->fileName:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v2}, Lau/d;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, ".temp"

    .line 45
    .line 46
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-object v0
.end method

.method public final getTempFile()Ljava/io/File;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/transfer/impl/entity/FileData;->fileReceiveCachePath:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Ljava/io/File;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/transsion/transfer/impl/entity/FileData;->fileName:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v2}, Lau/d;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, ".temp"

    .line 29
    .line 30
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-object v1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/entity/FileData;->fileRemotePath:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final setDownloadBean(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/impl/entity/FileData;->downloadBean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    return-void
.end method

.method public final setDownloadSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/transfer/impl/entity/FileData;->downloadSize:J

    .line 2
    .line 3
    return-void
.end method

.method public final setFileReceiveCachePath(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/transfer/impl/entity/FileData;->fileReceiveCachePath:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setFileSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/transfer/impl/entity/FileData;->fileSize:J

    .line 2
    .line 3
    return-void
.end method

.method public final setState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/transfer/impl/entity/FileData;->state:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/entity/FileData;->fileRemotePath:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/transfer/impl/entity/FileData;->fileName:Ljava/lang/String;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/transsion/transfer/impl/entity/FileData;->fileSize:J

    .line 6
    .line 7
    iget-object v4, p0, Lcom/transsion/transfer/impl/entity/FileData;->coverUrl:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v5, p0, Lcom/transsion/transfer/impl/entity/FileData;->fileReceiveCachePath:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v6, p0, Lcom/transsion/transfer/impl/entity/FileData;->remoteUrl:Ljava/lang/String;

    .line 12
    .line 13
    iget v7, p0, Lcom/transsion/transfer/impl/entity/FileData;->state:I

    .line 14
    .line 15
    iget-wide v8, p0, Lcom/transsion/transfer/impl/entity/FileData;->downloadSize:J

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/transsion/transfer/impl/entity/FileData;->getFileShowName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v10

    .line 21
    new-instance v11, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v12, "FileData(fileRemotePath=\'"

    .line 27
    .line 28
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v0, "\', fileName=\'"

    .line 35
    .line 36
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v0, "\', fileSize="

    .line 43
    .line 44
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v0, ", coverUrl=\'"

    .line 51
    .line 52
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, "\', fileReceiveCachePath=\'"

    .line 59
    .line 60
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v0, "\', remoteUrl=\'"

    .line 67
    .line 68
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v0, "\', state="

    .line 75
    .line 76
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v0, ", downloadSize="

    .line 83
    .line 84
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v0, ", fileShowName=\'"

    .line 91
    .line 92
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v0, "\')"

    .line 99
    .line 100
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    return-object v0
.end method

.method public final verifyFile()Z
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/transfer/impl/entity/FileData;->fileReceiveCachePath:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    iget-wide v2, p0, Lcom/transsion/transfer/impl/entity/FileData;->fileSize:J

    .line 19
    .line 20
    cmp-long v0, v0, v2

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    const-string p2, "dest"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/transsion/transfer/impl/entity/FileData;->fileRemotePath:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/transsion/transfer/impl/entity/FileData;->fileName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-wide v0, p0, Lcom/transsion/transfer/impl/entity/FileData;->fileSize:J

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/transsion/transfer/impl/entity/FileData;->coverUrl:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/transsion/transfer/impl/entity/FileData;->fileReceiveCachePath:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lcom/transsion/transfer/impl/entity/FileData;->remoteUrl:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget p2, p0, Lcom/transsion/transfer/impl/entity/FileData;->state:I

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    .line 40
    .line 41
    iget-wide v0, p0, Lcom/transsion/transfer/impl/entity/FileData;->downloadSize:J

    .line 42
    .line 43
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
