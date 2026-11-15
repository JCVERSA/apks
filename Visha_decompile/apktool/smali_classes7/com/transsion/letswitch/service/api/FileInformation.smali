.class public final Lcom/transsion/letswitch/service/api/FileInformation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u0000\n\u0002\u0008\u000f\u0008\u0087\u0008\u0018\u00002\u00020\u0001BU\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u001c\u0008\u0002\u0010\r\u001a\u0016\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u000bj\n\u0012\u0004\u0012\u00020\u0000\u0018\u0001`\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001d\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\r\u0010\u0019\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0010\u0010\u001d\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001d\u0010\u001cJ\u0010\u0010\u001e\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0010\u0010 \u001a\u00020\u0007H\u00c6\u0003\u00a2\u0006\u0004\u0008 \u0010\u0011J\u0010\u0010!\u001a\u00020\u0007H\u00c6\u0003\u00a2\u0006\u0004\u0008!\u0010\u0011J\u0010\u0010\"\u001a\u00020\u0007H\u00c6\u0003\u00a2\u0006\u0004\u0008\"\u0010\u0011J$\u0010#\u001a\u0016\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u000bj\n\u0012\u0004\u0012\u00020\u0000\u0018\u0001`\u000cH\u00c6\u0003\u00a2\u0006\u0004\u0008#\u0010$Jj\u0010%\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u00072\u0008\u0008\u0002\u0010\n\u001a\u00020\u00072\u001c\u0008\u0002\u0010\r\u001a\u0016\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u000bj\n\u0012\u0004\u0012\u00020\u0000\u0018\u0001`\u000cH\u00c6\u0001\u00a2\u0006\u0004\u0008%\u0010&J\u0010\u0010\'\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\'\u0010\u001cJ\u0010\u0010(\u001a\u00020\u0014H\u00d6\u0001\u00a2\u0006\u0004\u0008(\u0010\u001aJ\u001a\u0010+\u001a\u00020\u00072\u0008\u0010*\u001a\u0004\u0018\u00010)H\u00d6\u0003\u00a2\u0006\u0004\u0008+\u0010,R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010-\u001a\u0004\u0008.\u0010\u001cR\u0017\u0010\u0004\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010-\u001a\u0004\u0008/\u0010\u001cR\u0017\u0010\u0006\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u00100\u001a\u0004\u00081\u0010\u001fR\u0017\u0010\u0008\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u00102\u001a\u0004\u0008\u0008\u0010\u0011R\u0017\u0010\t\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u00102\u001a\u0004\u0008\t\u0010\u0011R\u0017\u0010\n\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u00102\u001a\u0004\u00083\u0010\u0011R6\u0010\r\u001a\u0016\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u000bj\n\u0012\u0004\u0012\u00020\u0000\u0018\u0001`\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u00104\u001a\u0004\u00085\u0010$\"\u0004\u00086\u00107\u00a8\u00068"
    }
    d2 = {
        "Lcom/transsion/letswitch/service/api/FileInformation;",
        "Landroid/os/Parcelable;",
        "",
        "filePath",
        "fileName",
        "",
        "length",
        "",
        "isFile",
        "isDir",
        "canRead",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "listFile",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;JZZZLjava/util/ArrayList;)V",
        "isValid",
        "()Z",
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
        "()J",
        "component4",
        "component5",
        "component6",
        "component7",
        "()Ljava/util/ArrayList;",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;JZZZLjava/util/ArrayList;)Lcom/transsion/letswitch/service/api/FileInformation;",
        "toString",
        "hashCode",
        "",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/String;",
        "getFilePath",
        "getFileName",
        "J",
        "getLength",
        "Z",
        "getCanRead",
        "Ljava/util/ArrayList;",
        "getListFile",
        "setListFile",
        "(Ljava/util/ArrayList;)V",
        "api_release"
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
            "Lcom/transsion/letswitch/service/api/FileInformation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final canRead:Z

.field private final fileName:Ljava/lang/String;

.field private final filePath:Ljava/lang/String;

.field private final isDir:Z

.field private final isFile:Z

.field private final length:J

.field private listFile:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/letswitch/service/api/FileInformation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/letswitch/service/api/FileInformation$Creator;

    invoke-direct {v0}, Lcom/transsion/letswitch/service/api/FileInformation$Creator;-><init>()V

    sput-object v0, Lcom/transsion/letswitch/service/api/FileInformation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZZZLjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JZZZ",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/letswitch/service/api/FileInformation;",
            ">;)V"
        }
    .end annotation

    const-string v0, "filePath"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/letswitch/service/api/FileInformation;->filePath:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/transsion/letswitch/service/api/FileInformation;->fileName:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/transsion/letswitch/service/api/FileInformation;->length:J

    .line 5
    iput-boolean p5, p0, Lcom/transsion/letswitch/service/api/FileInformation;->isFile:Z

    .line 6
    iput-boolean p6, p0, Lcom/transsion/letswitch/service/api/FileInformation;->isDir:Z

    .line 7
    iput-boolean p7, p0, Lcom/transsion/letswitch/service/api/FileInformation;->canRead:Z

    .line 8
    iput-object p8, p0, Lcom/transsion/letswitch/service/api/FileInformation;->listFile:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JZZZLjava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v9, v0

    goto :goto_0

    :cond_0
    move-object/from16 v9, p8

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 9
    invoke-direct/range {v1 .. v9}, Lcom/transsion/letswitch/service/api/FileInformation;-><init>(Ljava/lang/String;Ljava/lang/String;JZZZLjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/letswitch/service/api/FileInformation;Ljava/lang/String;Ljava/lang/String;JZZZLjava/util/ArrayList;ILjava/lang/Object;)Lcom/transsion/letswitch/service/api/FileInformation;
    .locals 9

    move-object v0, p0

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/transsion/letswitch/service/api/FileInformation;->filePath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/transsion/letswitch/service/api/FileInformation;->fileName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v2, p2

    :goto_1
    and-int/lit8 v3, p9, 0x4

    if-eqz v3, :cond_2

    iget-wide v3, v0, Lcom/transsion/letswitch/service/api/FileInformation;->length:J

    goto :goto_2

    :cond_2
    move-wide v3, p3

    :goto_2
    and-int/lit8 v5, p9, 0x8

    if-eqz v5, :cond_3

    iget-boolean v5, v0, Lcom/transsion/letswitch/service/api/FileInformation;->isFile:Z

    goto :goto_3

    :cond_3
    move v5, p5

    :goto_3
    and-int/lit8 v6, p9, 0x10

    if-eqz v6, :cond_4

    iget-boolean v6, v0, Lcom/transsion/letswitch/service/api/FileInformation;->isDir:Z

    goto :goto_4

    :cond_4
    move v6, p6

    :goto_4
    and-int/lit8 v7, p9, 0x20

    if-eqz v7, :cond_5

    iget-boolean v7, v0, Lcom/transsion/letswitch/service/api/FileInformation;->canRead:Z

    goto :goto_5

    :cond_5
    move/from16 v7, p7

    :goto_5
    and-int/lit8 v8, p9, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/transsion/letswitch/service/api/FileInformation;->listFile:Ljava/util/ArrayList;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p8

    :goto_6
    move-object p1, v1

    move-object p2, v2

    move-wide p3, v3

    move p5, v5

    move p6, v6

    move/from16 p7, v7

    move-object/from16 p8, v8

    invoke-virtual/range {p0 .. p8}, Lcom/transsion/letswitch/service/api/FileInformation;->copy(Ljava/lang/String;Ljava/lang/String;JZZZLjava/util/ArrayList;)Lcom/transsion/letswitch/service/api/FileInformation;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/letswitch/service/api/FileInformation;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/letswitch/service/api/FileInformation;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/letswitch/service/api/FileInformation;->length:J

    return-wide v0
.end method

.method public final component4()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/letswitch/service/api/FileInformation;->isFile:Z

    return p0
.end method

.method public final component5()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/letswitch/service/api/FileInformation;->isDir:Z

    return p0
.end method

.method public final component6()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/letswitch/service/api/FileInformation;->canRead:Z

    return p0
.end method

.method public final component7()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/letswitch/service/api/FileInformation;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/letswitch/service/api/FileInformation;->listFile:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;JZZZLjava/util/ArrayList;)Lcom/transsion/letswitch/service/api/FileInformation;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JZZZ",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/letswitch/service/api/FileInformation;",
            ">;)",
            "Lcom/transsion/letswitch/service/api/FileInformation;"
        }
    .end annotation

    const-string v0, "filePath"

    move-object v2, p1

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    move-object v3, p2

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/letswitch/service/api/FileInformation;

    move-object v1, v0

    move-wide v4, p3

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/transsion/letswitch/service/api/FileInformation;-><init>(Ljava/lang/String;Ljava/lang/String;JZZZLjava/util/ArrayList;)V

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
    instance-of v1, p1, Lcom/transsion/letswitch/service/api/FileInformation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/letswitch/service/api/FileInformation;

    iget-object v1, p0, Lcom/transsion/letswitch/service/api/FileInformation;->filePath:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/letswitch/service/api/FileInformation;->filePath:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/letswitch/service/api/FileInformation;->fileName:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/letswitch/service/api/FileInformation;->fileName:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/transsion/letswitch/service/api/FileInformation;->length:J

    iget-wide v5, p1, Lcom/transsion/letswitch/service/api/FileInformation;->length:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/transsion/letswitch/service/api/FileInformation;->isFile:Z

    iget-boolean v3, p1, Lcom/transsion/letswitch/service/api/FileInformation;->isFile:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/transsion/letswitch/service/api/FileInformation;->isDir:Z

    iget-boolean v3, p1, Lcom/transsion/letswitch/service/api/FileInformation;->isDir:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/transsion/letswitch/service/api/FileInformation;->canRead:Z

    iget-boolean v3, p1, Lcom/transsion/letswitch/service/api/FileInformation;->canRead:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcom/transsion/letswitch/service/api/FileInformation;->listFile:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/transsion/letswitch/service/api/FileInformation;->listFile:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getCanRead()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/letswitch/service/api/FileInformation;->canRead:Z

    return p0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/letswitch/service/api/FileInformation;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public final getFilePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/letswitch/service/api/FileInformation;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method public final getLength()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/letswitch/service/api/FileInformation;->length:J

    return-wide v0
.end method

.method public final getListFile()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/letswitch/service/api/FileInformation;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/letswitch/service/api/FileInformation;->listFile:Ljava/util/ArrayList;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/letswitch/service/api/FileInformation;->filePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/letswitch/service/api/FileInformation;->fileName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/letswitch/service/api/FileInformation;->length:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/letswitch/service/api/FileInformation;->isFile:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/letswitch/service/api/FileInformation;->isDir:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/letswitch/service/api/FileInformation;->canRead:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/transsion/letswitch/service/api/FileInformation;->listFile:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final isDir()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/letswitch/service/api/FileInformation;->isDir:Z

    return p0
.end method

.method public final isFile()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/letswitch/service/api/FileInformation;->isFile:Z

    return p0
.end method

.method public final isValid()Z
    .locals 4

    iget-wide v0, p0, Lcom/transsion/letswitch/service/api/FileInformation;->length:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setListFile(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/letswitch/service/api/FileInformation;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/letswitch/service/api/FileInformation;->listFile:Ljava/util/ArrayList;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/transsion/letswitch/service/api/FileInformation;->filePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/letswitch/service/api/FileInformation;->fileName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/transsion/letswitch/service/api/FileInformation;->length:J

    iget-boolean v4, p0, Lcom/transsion/letswitch/service/api/FileInformation;->isFile:Z

    iget-boolean v5, p0, Lcom/transsion/letswitch/service/api/FileInformation;->isDir:Z

    iget-boolean v6, p0, Lcom/transsion/letswitch/service/api/FileInformation;->canRead:Z

    iget-object p0, p0, Lcom/transsion/letswitch/service/api/FileInformation;->listFile:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FileInformation(filePath="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", fileName="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", length="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", isFile="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isDir="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", canRead="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", listFile="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "dest"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/letswitch/service/api/FileInformation;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/letswitch/service/api/FileInformation;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/transsion/letswitch/service/api/FileInformation;->length:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/transsion/letswitch/service/api/FileInformation;->isFile:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/transsion/letswitch/service/api/FileInformation;->isDir:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/transsion/letswitch/service/api/FileInformation;->canRead:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/transsion/letswitch/service/api/FileInformation;->listFile:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/letswitch/service/api/FileInformation;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/letswitch/service/api/FileInformation;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
