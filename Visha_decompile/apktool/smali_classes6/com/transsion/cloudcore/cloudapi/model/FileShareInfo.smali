.class public final Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0010\u0000\n\u0002\u0008\u001f\u0008\u0087\u0008\u0018\u00002\u00020\u0001By\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001d\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\r\u0010\u0019\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001d\u0010\u001cJ\u0010\u0010\u001e\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001e\u0010\u001cJ\u0010\u0010\u001f\u001a\u00020\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0010\u0010!\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008!\u0010\u001cJ\u0012\u0010\"\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\"\u0010\u001cJ\u0012\u0010#\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008#\u0010\u001cJ\u0010\u0010$\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008$\u0010\u001cJ\u0010\u0010%\u001a\u00020\u000cH\u00c6\u0003\u00a2\u0006\u0004\u0008%\u0010&J\u0010\u0010\'\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\'\u0010\u001cJ\u0010\u0010(\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008(\u0010\u001cJ\u0084\u0001\u0010)\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00022\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00022\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008)\u0010*J\u0010\u0010+\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008+\u0010\u001cJ\u0010\u0010,\u001a\u00020\u0014H\u00d6\u0001\u00a2\u0006\u0004\u0008,\u0010\u001aJ\u001a\u0010/\u001a\u00020\u000c2\u0008\u0010.\u001a\u0004\u0018\u00010-H\u00d6\u0003\u00a2\u0006\u0004\u0008/\u00100R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u00101\u001a\u0004\u00082\u0010\u001cR$\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u00101\u001a\u0004\u00083\u0010\u001c\"\u0004\u00084\u00105R\"\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u00101\u001a\u0004\u00086\u0010\u001c\"\u0004\u00087\u00105R\"\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u00108\u001a\u0004\u00089\u0010 \"\u0004\u0008:\u0010;R\"\u0010\u0008\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u00101\u001a\u0004\u0008<\u0010\u001c\"\u0004\u0008=\u00105R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u00101\u001a\u0004\u0008>\u0010\u001c\"\u0004\u0008?\u00105R$\u0010\n\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u00101\u001a\u0004\u0008@\u0010\u001c\"\u0004\u0008A\u00105R\"\u0010\u000b\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u00101\u001a\u0004\u0008B\u0010\u001c\"\u0004\u0008C\u00105R\"\u0010\r\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010D\u001a\u0004\u0008E\u0010&\"\u0004\u0008F\u0010GR\"\u0010\u000e\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u00101\u001a\u0004\u0008H\u0010\u001c\"\u0004\u0008I\u00105R\"\u0010\u000f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u00101\u001a\u0004\u0008J\u0010\u001c\"\u0004\u0008K\u00105\u00a8\u0006L"
    }
    d2 = {
        "Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;",
        "Landroid/os/Parcelable;",
        "",
        "shareId",
        "fileName",
        "fileId",
        "",
        "fileSize",
        "fileCoverUrl",
        "shareCreatorName",
        "shareCreatorId",
        "shareToken",
        "",
        "shareExpired",
        "region",
        "pageHost",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V",
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
        "()Ljava/lang/String;",
        "component2",
        "component3",
        "component4",
        "()J",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "()Z",
        "component10",
        "component11",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;",
        "toString",
        "hashCode",
        "",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/String;",
        "getShareId",
        "getFileName",
        "setFileName",
        "(Ljava/lang/String;)V",
        "getFileId",
        "setFileId",
        "J",
        "getFileSize",
        "setFileSize",
        "(J)V",
        "getFileCoverUrl",
        "setFileCoverUrl",
        "getShareCreatorName",
        "setShareCreatorName",
        "getShareCreatorId",
        "setShareCreatorId",
        "getShareToken",
        "setShareToken",
        "Z",
        "getShareExpired",
        "setShareExpired",
        "(Z)V",
        "getRegion",
        "setRegion",
        "getPageHost",
        "setPageHost",
        "cloudcore_release"
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
            "Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fileCoverUrl:Ljava/lang/String;

.field private fileId:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private fileSize:J

.field private pageHost:Ljava/lang/String;

.field private region:Ljava/lang/String;

.field private shareCreatorId:Ljava/lang/String;

.field private shareCreatorName:Ljava/lang/String;

.field private shareExpired:Z

.field private final shareId:Ljava/lang/String;

.field private shareToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo$Creator;

    invoke-direct {v0}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo$Creator;-><init>()V

    sput-object v0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "shareId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileId"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileCoverUrl"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shareToken"

    invoke-static {p9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "region"

    invoke-static {p11, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageHost"

    invoke-static {p12, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareId:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->fileName:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->fileId:Ljava/lang/String;

    .line 5
    iput-wide p4, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->fileSize:J

    .line 6
    iput-object p6, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->fileCoverUrl:Ljava/lang/String;

    .line 7
    iput-object p7, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareCreatorName:Ljava/lang/String;

    .line 8
    iput-object p8, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareCreatorId:Ljava/lang/String;

    .line 9
    iput-object p9, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareToken:Ljava/lang/String;

    .line 10
    iput-boolean p10, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareExpired:Z

    .line 11
    iput-object p11, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->region:Ljava/lang/String;

    .line 12
    iput-object p12, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->pageHost:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p13

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    and-int/lit8 v3, v0, 0x4

    .line 13
    const-string v4, ""

    if-eqz v3, :cond_1

    move-object v3, v4

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_2

    const-wide/16 v5, 0x0

    goto :goto_2

    :cond_2
    move-wide/from16 v5, p4

    :goto_2
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_3

    move-object v7, v4

    goto :goto_3

    :cond_3
    move-object/from16 v7, p6

    :goto_3
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_4

    move-object v8, v2

    goto :goto_4

    :cond_4
    move-object/from16 v8, p7

    :goto_4
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_5

    goto :goto_5

    :cond_5
    move-object/from16 v2, p8

    :goto_5
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_6

    move-object v9, v4

    goto :goto_6

    :cond_6
    move-object/from16 v9, p9

    :goto_6
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_7

    const/4 v10, 0x0

    goto :goto_7

    :cond_7
    move/from16 v10, p10

    :goto_7
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_8

    move-object v11, v4

    goto :goto_8

    :cond_8
    move-object/from16 v11, p11

    :goto_8
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_9

    goto :goto_9

    :cond_9
    move-object/from16 v4, p12

    :goto_9
    move-object p2, p0

    move-object p3, p1

    move-object/from16 p4, v1

    move-object/from16 p5, v3

    move-wide/from16 p6, v5

    move-object/from16 p8, v7

    move-object/from16 p9, v8

    move-object/from16 p10, v2

    move-object/from16 p11, v9

    move/from16 p12, v10

    move-object/from16 p13, v11

    move-object/from16 p14, v4

    invoke-direct/range {p2 .. p14}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;
    .locals 13

    move-object v0, p0

    move/from16 v1, p13

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->fileName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->fileId:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-wide v5, v0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->fileSize:J

    goto :goto_3

    :cond_3
    move-wide/from16 v5, p4

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->fileCoverUrl:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareCreatorName:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareCreatorId:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareToken:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-boolean v11, v0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareExpired:Z

    goto :goto_8

    :cond_8
    move/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-object v12, v0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->region:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v12, p11

    :goto_9
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->pageHost:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v1, p12

    :goto_a
    move-object p1, v2

    move-object p2, v3

    move-object/from16 p3, v4

    move-wide/from16 p4, v5

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v1

    invoke-virtual/range {p0 .. p12}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareId:Ljava/lang/String;

    return-object p0
.end method

.method public final component10()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->region:Ljava/lang/String;

    return-object p0
.end method

.method public final component11()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->pageHost:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->fileId:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->fileSize:J

    return-wide v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->fileCoverUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareCreatorName:Ljava/lang/String;

    return-object p0
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareCreatorId:Ljava/lang/String;

    return-object p0
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareToken:Ljava/lang/String;

    return-object p0
.end method

.method public final component9()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareExpired:Z

    return p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;
    .locals 14

    const-string v0, "shareId"

    move-object v2, p1

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileId"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileCoverUrl"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shareToken"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "region"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageHost"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    move-object v1, v0

    move-object/from16 v3, p2

    move-wide/from16 v5, p4

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v11, p10

    invoke-direct/range {v1 .. v13}, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
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
    instance-of v1, p1, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;

    iget-object v1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareId:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->fileName:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->fileName:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->fileId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->fileId:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->fileSize:J

    iget-wide v5, p1, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->fileSize:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->fileCoverUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->fileCoverUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareCreatorName:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareCreatorName:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareCreatorId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareCreatorId:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareToken:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareExpired:Z

    iget-boolean v3, p1, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareExpired:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->region:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->region:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->pageHost:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->pageHost:Ljava/lang/String;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final getFileCoverUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->fileCoverUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final getFileId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->fileId:Ljava/lang/String;

    return-object p0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public final getFileSize()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->fileSize:J

    return-wide v0
.end method

.method public final getPageHost()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->pageHost:Ljava/lang/String;

    return-object p0
.end method

.method public final getRegion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->region:Ljava/lang/String;

    return-object p0
.end method

.method public final getShareCreatorId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareCreatorId:Ljava/lang/String;

    return-object p0
.end method

.method public final getShareCreatorName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareCreatorName:Ljava/lang/String;

    return-object p0
.end method

.method public final getShareExpired()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareExpired:Z

    return p0
.end method

.method public final getShareId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareId:Ljava/lang/String;

    return-object p0
.end method

.method public final getShareToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareToken:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->fileName:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->fileId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->fileSize:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->fileCoverUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareCreatorName:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareCreatorId:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareExpired:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->region:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->pageHost:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setFileCoverUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->fileCoverUrl:Ljava/lang/String;

    return-void
.end method

.method public final setFileId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->fileId:Ljava/lang/String;

    return-void
.end method

.method public final setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->fileName:Ljava/lang/String;

    return-void
.end method

.method public final setFileSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->fileSize:J

    return-void
.end method

.method public final setPageHost(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->pageHost:Ljava/lang/String;

    return-void
.end method

.method public final setRegion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->region:Ljava/lang/String;

    return-void
.end method

.method public final setShareCreatorId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareCreatorId:Ljava/lang/String;

    return-void
.end method

.method public final setShareCreatorName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareCreatorName:Ljava/lang/String;

    return-void
.end method

.method public final setShareExpired(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareExpired:Z

    return-void
.end method

.method public final setShareToken(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareToken:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    iget-object v0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->fileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->fileId:Ljava/lang/String;

    iget-wide v3, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->fileSize:J

    iget-object v5, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->fileCoverUrl:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareCreatorName:Ljava/lang/String;

    iget-object v7, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareCreatorId:Ljava/lang/String;

    iget-object v8, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareToken:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareExpired:Z

    iget-object v10, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->region:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->pageHost:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "FileShareInfo(shareId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", fileName="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", fileId="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", fileSize="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", fileCoverUrl="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", shareCreatorName="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", shareCreatorId="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", shareToken="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", shareExpired="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", region="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", pageHost="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "dest"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->fileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->fileId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->fileSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->fileCoverUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareCreatorName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareCreatorId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->shareExpired:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->region:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;->pageHost:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
