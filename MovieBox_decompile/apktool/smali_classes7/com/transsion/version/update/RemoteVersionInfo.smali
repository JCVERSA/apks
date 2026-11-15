.class public final Lcom/transsion/version/update/RemoteVersionInfo;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\"\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B}\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0006\u0012\u0006\u0010\u000b\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\t\u0010&\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\'\u001a\u00020\u0003H\u00c6\u0003J\t\u0010(\u001a\u00020\u0006H\u00c6\u0003J\t\u0010)\u001a\u00020\u0006H\u00c6\u0003J\t\u0010*\u001a\u00020\tH\u00c6\u0003J\t\u0010+\u001a\u00020\u0006H\u00c6\u0003J\t\u0010,\u001a\u00020\tH\u00c6\u0003J\t\u0010-\u001a\u00020\u0006H\u00c6\u0003J\t\u0010.\u001a\u00020\tH\u00c6\u0003J\t\u0010/\u001a\u00020\u0006H\u00c6\u0003J\t\u00100\u001a\u00020\u0006H\u00c6\u0003J\t\u00101\u001a\u00020\u0006H\u00c6\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0012H\u00c6\u0003J\u008d\u0001\u00103\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000b\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00062\u0008\u0008\u0002\u0010\r\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00062\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u00c6\u0001J\u0006\u00104\u001a\u000205J\u0013\u00106\u001a\u00020\u00032\u0008\u00107\u001a\u0004\u0018\u000108H\u00d6\u0003J\t\u00109\u001a\u000205H\u00d6\u0001J\t\u0010:\u001a\u00020\u0006H\u00d6\u0001J\u0016\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u000205R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0016R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0019R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0011\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0019R\u0011\u0010\u000b\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001cR\u0011\u0010\u000c\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0019R\u0011\u0010\r\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u001cR\u0011\u0010\u000e\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u0019R\u0011\u0010\u000f\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u0019R\u0011\u0010\u0010\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u0019R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%\u00a8\u0006@"
    }
    d2 = {
        "Lcom/transsion/version/update/RemoteVersionInfo;",
        "Landroid/os/Parcelable;",
        "hasUpdate",
        "",
        "forceUpdate",
        "patchUrl",
        "",
        "patchMd5",
        "patchSize",
        "",
        "installPkgUrl",
        "installPkgVersionCode",
        "installPkgMd5",
        "installPkgSize",
        "updateType",
        "appStoreUrl",
        "webDownloadUrl",
        "noticeConfig",
        "Lcom/transsion/version/update/NoticeConfig;",
        "<init>",
        "(ZZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/version/update/NoticeConfig;)V",
        "getHasUpdate",
        "()Z",
        "getForceUpdate",
        "getPatchUrl",
        "()Ljava/lang/String;",
        "getPatchMd5",
        "getPatchSize",
        "()J",
        "getInstallPkgUrl",
        "getInstallPkgVersionCode",
        "getInstallPkgMd5",
        "getInstallPkgSize",
        "getUpdateType",
        "getAppStoreUrl",
        "getWebDownloadUrl",
        "getNoticeConfig",
        "()Lcom/transsion/version/update/NoticeConfig;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "copy",
        "describeContents",
        "",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
        "Update_release"
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
            "Lcom/transsion/version/update/RemoteVersionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final appStoreUrl:Ljava/lang/String;

.field private final forceUpdate:Z

.field private final hasUpdate:Z

.field private final installPkgMd5:Ljava/lang/String;

.field private final installPkgSize:J

.field private final installPkgUrl:Ljava/lang/String;

.field private final installPkgVersionCode:J

.field private final noticeConfig:Lcom/transsion/version/update/NoticeConfig;

.field private final patchMd5:Ljava/lang/String;

.field private final patchSize:J

.field private final patchUrl:Ljava/lang/String;

.field private final updateType:Ljava/lang/String;

.field private final webDownloadUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/version/update/RemoteVersionInfo$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/version/update/RemoteVersionInfo$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/version/update/RemoteVersionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/version/update/NoticeConfig;)V
    .locals 9

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object/from16 v3, p7

    move-object/from16 v4, p10

    move-object/from16 v5, p13

    move-object/from16 v6, p14

    move-object/from16 v7, p15

    const-string v8, "patchUrl"

    invoke-static {p3, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "patchMd5"

    invoke-static {p4, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "installPkgUrl"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "installPkgMd5"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "updateType"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "appStoreUrl"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "webDownloadUrl"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v8, p1

    .line 2
    iput-boolean v8, v0, Lcom/transsion/version/update/RemoteVersionInfo;->hasUpdate:Z

    move v8, p2

    .line 3
    iput-boolean v8, v0, Lcom/transsion/version/update/RemoteVersionInfo;->forceUpdate:Z

    .line 4
    iput-object v1, v0, Lcom/transsion/version/update/RemoteVersionInfo;->patchUrl:Ljava/lang/String;

    .line 5
    iput-object v2, v0, Lcom/transsion/version/update/RemoteVersionInfo;->patchMd5:Ljava/lang/String;

    move-wide v1, p5

    .line 6
    iput-wide v1, v0, Lcom/transsion/version/update/RemoteVersionInfo;->patchSize:J

    .line 7
    iput-object v3, v0, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgUrl:Ljava/lang/String;

    move-wide/from16 v1, p8

    .line 8
    iput-wide v1, v0, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgVersionCode:J

    .line 9
    iput-object v4, v0, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgMd5:Ljava/lang/String;

    move-wide/from16 v1, p11

    .line 10
    iput-wide v1, v0, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgSize:J

    .line 11
    iput-object v5, v0, Lcom/transsion/version/update/RemoteVersionInfo;->updateType:Ljava/lang/String;

    .line 12
    iput-object v6, v0, Lcom/transsion/version/update/RemoteVersionInfo;->appStoreUrl:Ljava/lang/String;

    .line 13
    iput-object v7, v0, Lcom/transsion/version/update/RemoteVersionInfo;->webDownloadUrl:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 14
    iput-object v1, v0, Lcom/transsion/version/update/RemoteVersionInfo;->noticeConfig:Lcom/transsion/version/update/NoticeConfig;

    return-void
.end method

.method public synthetic constructor <init>(ZZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/version/update/NoticeConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 20

    move/from16 v0, p17

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move/from16 v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move/from16 v5, p2

    :goto_1
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_2

    .line 15
    invoke-static {}, Lcom/transsion/version/update/b;->a()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_2

    :cond_2
    move-object/from16 v16, p13

    :goto_2
    and-int/lit16 v1, v0, 0x400

    .line 16
    const-string v2, ""

    if-eqz v1, :cond_3

    move-object/from16 v17, v2

    goto :goto_3

    :cond_3
    move-object/from16 v17, p14

    :goto_3
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_4

    move-object/from16 v18, v2

    goto :goto_4

    :cond_4
    move-object/from16 v18, p15

    :goto_4
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    move-object/from16 v19, v0

    goto :goto_5

    :cond_5
    move-object/from16 v19, p16

    :goto_5
    move-object/from16 v3, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move-wide/from16 v11, p8

    move-object/from16 v13, p10

    move-wide/from16 v14, p11

    invoke-direct/range {v3 .. v19}, Lcom/transsion/version/update/RemoteVersionInfo;-><init>(ZZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/version/update/NoticeConfig;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/version/update/RemoteVersionInfo;ZZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/version/update/NoticeConfig;ILjava/lang/Object;)Lcom/transsion/version/update/RemoteVersionInfo;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p17

    .line 4
    .line 5
    and-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    iget-boolean v2, v0, Lcom/transsion/version/update/RemoteVersionInfo;->hasUpdate:Z

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move/from16 v2, p1

    .line 13
    .line 14
    :goto_0
    and-int/lit8 v3, v1, 0x2

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    iget-boolean v3, v0, Lcom/transsion/version/update/RemoteVersionInfo;->forceUpdate:Z

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move/from16 v3, p2

    .line 22
    .line 23
    :goto_1
    and-int/lit8 v4, v1, 0x4

    .line 24
    .line 25
    if-eqz v4, :cond_2

    .line 26
    .line 27
    iget-object v4, v0, Lcom/transsion/version/update/RemoteVersionInfo;->patchUrl:Ljava/lang/String;

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    move-object/from16 v4, p3

    .line 31
    .line 32
    :goto_2
    and-int/lit8 v5, v1, 0x8

    .line 33
    .line 34
    if-eqz v5, :cond_3

    .line 35
    .line 36
    iget-object v5, v0, Lcom/transsion/version/update/RemoteVersionInfo;->patchMd5:Ljava/lang/String;

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_3
    move-object/from16 v5, p4

    .line 40
    .line 41
    :goto_3
    and-int/lit8 v6, v1, 0x10

    .line 42
    .line 43
    if-eqz v6, :cond_4

    .line 44
    .line 45
    iget-wide v6, v0, Lcom/transsion/version/update/RemoteVersionInfo;->patchSize:J

    .line 46
    .line 47
    goto :goto_4

    .line 48
    :cond_4
    move-wide/from16 v6, p5

    .line 49
    .line 50
    :goto_4
    and-int/lit8 v8, v1, 0x20

    .line 51
    .line 52
    if-eqz v8, :cond_5

    .line 53
    .line 54
    iget-object v8, v0, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgUrl:Ljava/lang/String;

    .line 55
    .line 56
    goto :goto_5

    .line 57
    :cond_5
    move-object/from16 v8, p7

    .line 58
    .line 59
    :goto_5
    and-int/lit8 v9, v1, 0x40

    .line 60
    .line 61
    if-eqz v9, :cond_6

    .line 62
    .line 63
    iget-wide v9, v0, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgVersionCode:J

    .line 64
    .line 65
    goto :goto_6

    .line 66
    :cond_6
    move-wide/from16 v9, p8

    .line 67
    .line 68
    :goto_6
    and-int/lit16 v11, v1, 0x80

    .line 69
    .line 70
    if-eqz v11, :cond_7

    .line 71
    .line 72
    iget-object v11, v0, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgMd5:Ljava/lang/String;

    .line 73
    .line 74
    goto :goto_7

    .line 75
    :cond_7
    move-object/from16 v11, p10

    .line 76
    .line 77
    :goto_7
    and-int/lit16 v12, v1, 0x100

    .line 78
    .line 79
    if-eqz v12, :cond_8

    .line 80
    .line 81
    iget-wide v12, v0, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgSize:J

    .line 82
    .line 83
    goto :goto_8

    .line 84
    :cond_8
    move-wide/from16 v12, p11

    .line 85
    .line 86
    :goto_8
    and-int/lit16 v14, v1, 0x200

    .line 87
    .line 88
    if-eqz v14, :cond_9

    .line 89
    .line 90
    iget-object v14, v0, Lcom/transsion/version/update/RemoteVersionInfo;->updateType:Ljava/lang/String;

    .line 91
    .line 92
    goto :goto_9

    .line 93
    :cond_9
    move-object/from16 v14, p13

    .line 94
    .line 95
    :goto_9
    and-int/lit16 v15, v1, 0x400

    .line 96
    .line 97
    if-eqz v15, :cond_a

    .line 98
    .line 99
    iget-object v15, v0, Lcom/transsion/version/update/RemoteVersionInfo;->appStoreUrl:Ljava/lang/String;

    .line 100
    .line 101
    goto :goto_a

    .line 102
    :cond_a
    move-object/from16 v15, p14

    .line 103
    .line 104
    :goto_a
    move-object/from16 p14, v15

    .line 105
    .line 106
    and-int/lit16 v15, v1, 0x800

    .line 107
    .line 108
    if-eqz v15, :cond_b

    .line 109
    .line 110
    iget-object v15, v0, Lcom/transsion/version/update/RemoteVersionInfo;->webDownloadUrl:Ljava/lang/String;

    .line 111
    .line 112
    goto :goto_b

    .line 113
    :cond_b
    move-object/from16 v15, p15

    .line 114
    .line 115
    :goto_b
    and-int/lit16 v1, v1, 0x1000

    .line 116
    .line 117
    if-eqz v1, :cond_c

    .line 118
    .line 119
    iget-object v1, v0, Lcom/transsion/version/update/RemoteVersionInfo;->noticeConfig:Lcom/transsion/version/update/NoticeConfig;

    .line 120
    .line 121
    goto :goto_c

    .line 122
    :cond_c
    move-object/from16 v1, p16

    .line 123
    .line 124
    :goto_c
    move/from16 p1, v2

    .line 125
    .line 126
    move/from16 p2, v3

    .line 127
    .line 128
    move-object/from16 p3, v4

    .line 129
    .line 130
    move-object/from16 p4, v5

    .line 131
    .line 132
    move-wide/from16 p5, v6

    .line 133
    .line 134
    move-object/from16 p7, v8

    .line 135
    .line 136
    move-wide/from16 p8, v9

    .line 137
    .line 138
    move-object/from16 p10, v11

    .line 139
    .line 140
    move-wide/from16 p11, v12

    .line 141
    .line 142
    move-object/from16 p13, v14

    .line 143
    .line 144
    move-object/from16 p15, v15

    .line 145
    .line 146
    move-object/from16 p16, v1

    .line 147
    .line 148
    invoke-virtual/range {p0 .. p16}, Lcom/transsion/version/update/RemoteVersionInfo;->copy(ZZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/version/update/NoticeConfig;)Lcom/transsion/version/update/RemoteVersionInfo;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    return-object v0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/version/update/RemoteVersionInfo;->hasUpdate:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/version/update/RemoteVersionInfo;->updateType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/version/update/RemoteVersionInfo;->appStoreUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/version/update/RemoteVersionInfo;->webDownloadUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component13()Lcom/transsion/version/update/NoticeConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/version/update/RemoteVersionInfo;->noticeConfig:Lcom/transsion/version/update/NoticeConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/version/update/RemoteVersionInfo;->forceUpdate:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/version/update/RemoteVersionInfo;->patchUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/version/update/RemoteVersionInfo;->patchMd5:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/version/update/RemoteVersionInfo;->patchSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgVersionCode:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgMd5:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component9()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final copy(ZZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/version/update/NoticeConfig;)Lcom/transsion/version/update/RemoteVersionInfo;
    .locals 18

    .line 1
    move/from16 v1, p1

    .line 2
    .line 3
    move/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    move-object/from16 v4, p4

    .line 8
    .line 9
    move-wide/from16 v5, p5

    .line 10
    .line 11
    move-object/from16 v7, p7

    .line 12
    .line 13
    move-wide/from16 v8, p8

    .line 14
    .line 15
    move-object/from16 v10, p10

    .line 16
    .line 17
    move-wide/from16 v11, p11

    .line 18
    .line 19
    move-object/from16 v13, p13

    .line 20
    .line 21
    move-object/from16 v14, p14

    .line 22
    .line 23
    move-object/from16 v15, p15

    .line 24
    .line 25
    move-object/from16 v16, p16

    .line 26
    .line 27
    const-string v0, "patchUrl"

    .line 28
    .line 29
    move-object/from16 v1, p3

    .line 30
    .line 31
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v0, "patchMd5"

    .line 35
    .line 36
    move-object/from16 v1, p4

    .line 37
    .line 38
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "installPkgUrl"

    .line 42
    .line 43
    move-object/from16 v1, p7

    .line 44
    .line 45
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v0, "installPkgMd5"

    .line 49
    .line 50
    move-object/from16 v1, p10

    .line 51
    .line 52
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v0, "updateType"

    .line 56
    .line 57
    move-object/from16 v1, p13

    .line 58
    .line 59
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string v0, "appStoreUrl"

    .line 63
    .line 64
    move-object/from16 v1, p14

    .line 65
    .line 66
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v0, "webDownloadUrl"

    .line 70
    .line 71
    move-object/from16 v1, p15

    .line 72
    .line 73
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    new-instance v17, Lcom/transsion/version/update/RemoteVersionInfo;

    .line 77
    .line 78
    move-object/from16 v0, v17

    .line 79
    .line 80
    move/from16 v1, p1

    .line 81
    .line 82
    invoke-direct/range {v0 .. v16}, Lcom/transsion/version/update/RemoteVersionInfo;-><init>(ZZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/version/update/NoticeConfig;)V

    .line 83
    .line 84
    .line 85
    return-object v17
.end method

.method public final describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/transsion/version/update/RemoteVersionInfo;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/transsion/version/update/RemoteVersionInfo;

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/transsion/version/update/RemoteVersionInfo;->hasUpdate:Z

    .line 14
    .line 15
    iget-boolean v3, p1, Lcom/transsion/version/update/RemoteVersionInfo;->hasUpdate:Z

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-boolean v1, p0, Lcom/transsion/version/update/RemoteVersionInfo;->forceUpdate:Z

    .line 21
    .line 22
    iget-boolean v3, p1, Lcom/transsion/version/update/RemoteVersionInfo;->forceUpdate:Z

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-object v1, p0, Lcom/transsion/version/update/RemoteVersionInfo;->patchUrl:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v3, p1, Lcom/transsion/version/update/RemoteVersionInfo;->patchUrl:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget-object v1, p0, Lcom/transsion/version/update/RemoteVersionInfo;->patchMd5:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v3, p1, Lcom/transsion/version/update/RemoteVersionInfo;->patchMd5:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    iget-wide v3, p0, Lcom/transsion/version/update/RemoteVersionInfo;->patchSize:J

    .line 50
    .line 51
    iget-wide v5, p1, Lcom/transsion/version/update/RemoteVersionInfo;->patchSize:J

    .line 52
    .line 53
    cmp-long v1, v3, v5

    .line 54
    .line 55
    if-eqz v1, :cond_6

    .line 56
    .line 57
    return v2

    .line 58
    :cond_6
    iget-object v1, p0, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgUrl:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v3, p1, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgUrl:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_7

    .line 67
    .line 68
    return v2

    .line 69
    :cond_7
    iget-wide v3, p0, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgVersionCode:J

    .line 70
    .line 71
    iget-wide v5, p1, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgVersionCode:J

    .line 72
    .line 73
    cmp-long v1, v3, v5

    .line 74
    .line 75
    if-eqz v1, :cond_8

    .line 76
    .line 77
    return v2

    .line 78
    :cond_8
    iget-object v1, p0, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgMd5:Ljava/lang/String;

    .line 79
    .line 80
    iget-object v3, p1, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgMd5:Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-nez v1, :cond_9

    .line 87
    .line 88
    return v2

    .line 89
    :cond_9
    iget-wide v3, p0, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgSize:J

    .line 90
    .line 91
    iget-wide v5, p1, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgSize:J

    .line 92
    .line 93
    cmp-long v1, v3, v5

    .line 94
    .line 95
    if-eqz v1, :cond_a

    .line 96
    .line 97
    return v2

    .line 98
    :cond_a
    iget-object v1, p0, Lcom/transsion/version/update/RemoteVersionInfo;->updateType:Ljava/lang/String;

    .line 99
    .line 100
    iget-object v3, p1, Lcom/transsion/version/update/RemoteVersionInfo;->updateType:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-nez v1, :cond_b

    .line 107
    .line 108
    return v2

    .line 109
    :cond_b
    iget-object v1, p0, Lcom/transsion/version/update/RemoteVersionInfo;->appStoreUrl:Ljava/lang/String;

    .line 110
    .line 111
    iget-object v3, p1, Lcom/transsion/version/update/RemoteVersionInfo;->appStoreUrl:Ljava/lang/String;

    .line 112
    .line 113
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-nez v1, :cond_c

    .line 118
    .line 119
    return v2

    .line 120
    :cond_c
    iget-object v1, p0, Lcom/transsion/version/update/RemoteVersionInfo;->webDownloadUrl:Ljava/lang/String;

    .line 121
    .line 122
    iget-object v3, p1, Lcom/transsion/version/update/RemoteVersionInfo;->webDownloadUrl:Ljava/lang/String;

    .line 123
    .line 124
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-nez v1, :cond_d

    .line 129
    .line 130
    return v2

    .line 131
    :cond_d
    iget-object v1, p0, Lcom/transsion/version/update/RemoteVersionInfo;->noticeConfig:Lcom/transsion/version/update/NoticeConfig;

    .line 132
    .line 133
    iget-object p1, p1, Lcom/transsion/version/update/RemoteVersionInfo;->noticeConfig:Lcom/transsion/version/update/NoticeConfig;

    .line 134
    .line 135
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-nez p1, :cond_e

    .line 140
    .line 141
    return v2

    .line 142
    :cond_e
    return v0
.end method

.method public final getAppStoreUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/version/update/RemoteVersionInfo;->appStoreUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getForceUpdate()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/version/update/RemoteVersionInfo;->forceUpdate:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getHasUpdate()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/version/update/RemoteVersionInfo;->hasUpdate:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getInstallPkgMd5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgMd5:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInstallPkgSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getInstallPkgUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInstallPkgVersionCode()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgVersionCode:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getNoticeConfig()Lcom/transsion/version/update/NoticeConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/version/update/RemoteVersionInfo;->noticeConfig:Lcom/transsion/version/update/NoticeConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPatchMd5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/version/update/RemoteVersionInfo;->patchMd5:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPatchSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/version/update/RemoteVersionInfo;->patchSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getPatchUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/version/update/RemoteVersionInfo;->patchUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUpdateType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/version/update/RemoteVersionInfo;->updateType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWebDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/version/update/RemoteVersionInfo;->webDownloadUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/transsion/version/update/RemoteVersionInfo;->hasUpdate:Z

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/foundation/e;->a(Z)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/transsion/version/update/RemoteVersionInfo;->forceUpdate:Z

    .line 10
    .line 11
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-object v1, p0, Lcom/transsion/version/update/RemoteVersionInfo;->patchUrl:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v1, p0, Lcom/transsion/version/update/RemoteVersionInfo;->patchMd5:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    iget-wide v1, p0, Lcom/transsion/version/update/RemoteVersionInfo;->patchSize:J

    .line 37
    .line 38
    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-object v1, p0, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgUrl:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    add-int/2addr v0, v1

    .line 52
    mul-int/lit8 v0, v0, 0x1f

    .line 53
    .line 54
    iget-wide v1, p0, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgVersionCode:J

    .line 55
    .line 56
    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    add-int/2addr v0, v1

    .line 61
    mul-int/lit8 v0, v0, 0x1f

    .line 62
    .line 63
    iget-object v1, p0, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgMd5:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    add-int/2addr v0, v1

    .line 70
    mul-int/lit8 v0, v0, 0x1f

    .line 71
    .line 72
    iget-wide v1, p0, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgSize:J

    .line 73
    .line 74
    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    add-int/2addr v0, v1

    .line 79
    mul-int/lit8 v0, v0, 0x1f

    .line 80
    .line 81
    iget-object v1, p0, Lcom/transsion/version/update/RemoteVersionInfo;->updateType:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    add-int/2addr v0, v1

    .line 88
    mul-int/lit8 v0, v0, 0x1f

    .line 89
    .line 90
    iget-object v1, p0, Lcom/transsion/version/update/RemoteVersionInfo;->appStoreUrl:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    add-int/2addr v0, v1

    .line 97
    mul-int/lit8 v0, v0, 0x1f

    .line 98
    .line 99
    iget-object v1, p0, Lcom/transsion/version/update/RemoteVersionInfo;->webDownloadUrl:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    add-int/2addr v0, v1

    .line 106
    mul-int/lit8 v0, v0, 0x1f

    .line 107
    .line 108
    iget-object v1, p0, Lcom/transsion/version/update/RemoteVersionInfo;->noticeConfig:Lcom/transsion/version/update/NoticeConfig;

    .line 109
    .line 110
    if-nez v1, :cond_0

    .line 111
    .line 112
    const/4 v1, 0x0

    .line 113
    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {v1}, Lcom/transsion/version/update/NoticeConfig;->hashCode()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    :goto_0
    add-int/2addr v0, v1

    .line 119
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/transsion/version/update/RemoteVersionInfo;->hasUpdate:Z

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/transsion/version/update/RemoteVersionInfo;->forceUpdate:Z

    .line 6
    .line 7
    iget-object v3, v0, Lcom/transsion/version/update/RemoteVersionInfo;->patchUrl:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, v0, Lcom/transsion/version/update/RemoteVersionInfo;->patchMd5:Ljava/lang/String;

    .line 10
    .line 11
    iget-wide v5, v0, Lcom/transsion/version/update/RemoteVersionInfo;->patchSize:J

    .line 12
    .line 13
    iget-object v7, v0, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgUrl:Ljava/lang/String;

    .line 14
    .line 15
    iget-wide v8, v0, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgVersionCode:J

    .line 16
    .line 17
    iget-object v10, v0, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgMd5:Ljava/lang/String;

    .line 18
    .line 19
    iget-wide v11, v0, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgSize:J

    .line 20
    .line 21
    iget-object v13, v0, Lcom/transsion/version/update/RemoteVersionInfo;->updateType:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v14, v0, Lcom/transsion/version/update/RemoteVersionInfo;->appStoreUrl:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v15, v0, Lcom/transsion/version/update/RemoteVersionInfo;->webDownloadUrl:Ljava/lang/String;

    .line 26
    .line 27
    move-object/from16 v16, v15

    .line 28
    .line 29
    iget-object v15, v0, Lcom/transsion/version/update/RemoteVersionInfo;->noticeConfig:Lcom/transsion/version/update/NoticeConfig;

    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    move-object/from16 v17, v15

    .line 37
    .line 38
    const-string v15, "RemoteVersionInfo(hasUpdate="

    .line 39
    .line 40
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", forceUpdate="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", patchUrl="

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v1, ", patchMd5="

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v1, ", patchSize="

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v1, ", installPkgUrl="

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", installPkgVersionCode="

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v1, ", installPkgMd5="

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v1, ", installPkgSize="

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v1, ", updateType="

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v1, ", appStoreUrl="

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v1, ", webDownloadUrl="

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    move-object/from16 v1, v16

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v1, ", noticeConfig="

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    move-object/from16 v1, v17

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v1, ")"

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    const-string v0, "dest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/transsion/version/update/RemoteVersionInfo;->hasUpdate:Z

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/transsion/version/update/RemoteVersionInfo;->forceUpdate:Z

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/transsion/version/update/RemoteVersionInfo;->patchUrl:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/transsion/version/update/RemoteVersionInfo;->patchMd5:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-wide v0, p0, Lcom/transsion/version/update/RemoteVersionInfo;->patchSize:J

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgUrl:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-wide v0, p0, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgVersionCode:J

    .line 37
    .line 38
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgMd5:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-wide v0, p0, Lcom/transsion/version/update/RemoteVersionInfo;->installPkgSize:J

    .line 47
    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/transsion/version/update/RemoteVersionInfo;->updateType:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/transsion/version/update/RemoteVersionInfo;->appStoreUrl:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/transsion/version/update/RemoteVersionInfo;->webDownloadUrl:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/transsion/version/update/RemoteVersionInfo;->noticeConfig:Lcom/transsion/version/update/NoticeConfig;

    .line 67
    .line 68
    if-nez v0, :cond_0

    .line 69
    .line 70
    const/4 p2, 0x0

    .line 71
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    const/4 v1, 0x1

    .line 76
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p1, p2}, Lcom/transsion/version/update/NoticeConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 80
    .line 81
    .line 82
    :goto_0
    return-void
.end method
