.class public final Lcom/transsion/shorttv_pugc/bean/LiveListItem;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008+\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001Bs\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000b\u0010,\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u0010\u0010.\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u0010\u001aJ\u000b\u0010/\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003Jz\u00105\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001\u00a2\u0006\u0002\u00106J\u0006\u00107\u001a\u000208J\u0013\u00109\u001a\u00020:2\u0008\u0010;\u001a\u0004\u0018\u00010<H\u00d6\u0003J\t\u0010=\u001a\u000208H\u00d6\u0001J\t\u0010>\u001a\u00020\u0003H\u00d6\u0001J\u0016\u0010?\u001a\u00020@2\u0006\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u000208R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001c\u0010\u0008\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u0012\"\u0004\u0008\u001f\u0010\u0014R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0012\"\u0004\u0008!\u0010\u0014R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0012\"\u0004\u0008#\u0010\u0014R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010%\"\u0004\u0008)\u0010\'R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\u0012\"\u0004\u0008+\u0010\u0014\u00a8\u0006D"
    }
    d2 = {
        "Lcom/transsion/shorttv_pugc/bean/LiveListItem;",
        "Landroid/os/Parcelable;",
        "matchId",
        "",
        "image",
        "Lcom/transsion/shorttv_pugc/bean/Image;",
        "startTime",
        "",
        "content",
        "status",
        "deepLink",
        "team1",
        "Lcom/transsion/shorttv_pugc/bean/TeamInfo;",
        "team2",
        "ops",
        "<init>",
        "(Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Image;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/TeamInfo;Lcom/transsion/shorttv_pugc/bean/TeamInfo;Ljava/lang/String;)V",
        "getMatchId",
        "()Ljava/lang/String;",
        "setMatchId",
        "(Ljava/lang/String;)V",
        "getImage",
        "()Lcom/transsion/shorttv_pugc/bean/Image;",
        "setImage",
        "(Lcom/transsion/shorttv_pugc/bean/Image;)V",
        "getStartTime",
        "()Ljava/lang/Long;",
        "setStartTime",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "getContent",
        "setContent",
        "getStatus",
        "setStatus",
        "getDeepLink",
        "setDeepLink",
        "getTeam1",
        "()Lcom/transsion/shorttv_pugc/bean/TeamInfo;",
        "setTeam1",
        "(Lcom/transsion/shorttv_pugc/bean/TeamInfo;)V",
        "getTeam2",
        "setTeam2",
        "getOps",
        "setOps",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Image;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/TeamInfo;Lcom/transsion/shorttv_pugc/bean/TeamInfo;Ljava/lang/String;)Lcom/transsion/shorttv_pugc/bean/LiveListItem;",
        "describeContents",
        "",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
        "shortTvLib_release"
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
            "Lcom/transsion/shorttv_pugc/bean/LiveListItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private content:Ljava/lang/String;

.field private deepLink:Ljava/lang/String;

.field private image:Lcom/transsion/shorttv_pugc/bean/Image;

.field private matchId:Ljava/lang/String;

.field private ops:Ljava/lang/String;

.field private startTime:Ljava/lang/Long;

.field private status:Ljava/lang/String;

.field private team1:Lcom/transsion/shorttv_pugc/bean/TeamInfo;

.field private team2:Lcom/transsion/shorttv_pugc/bean/TeamInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/shorttv_pugc/bean/LiveListItem$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/shorttv_pugc/bean/LiveListItem$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 12

    .line 1
    const/16 v10, 0x1ff

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/transsion/shorttv_pugc/bean/LiveListItem;-><init>(Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Image;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/TeamInfo;Lcom/transsion/shorttv_pugc/bean/TeamInfo;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Image;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/TeamInfo;Lcom/transsion/shorttv_pugc/bean/TeamInfo;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->matchId:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->image:Lcom/transsion/shorttv_pugc/bean/Image;

    .line 5
    iput-object p3, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->startTime:Ljava/lang/Long;

    .line 6
    iput-object p4, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->content:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->status:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->deepLink:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->team1:Lcom/transsion/shorttv_pugc/bean/TeamInfo;

    .line 10
    iput-object p8, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->team2:Lcom/transsion/shorttv_pugc/bean/TeamInfo;

    .line 11
    iput-object p9, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->ops:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Image;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/TeamInfo;Lcom/transsion/shorttv_pugc/bean/TeamInfo;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    const-wide/16 v4, 0x0

    .line 12
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    move-object v5, v2

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    move-object v6, v2

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    move-object v7, v2

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    move-object v8, v2

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    move-object v9, v2

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    move-object/from16 v2, p9

    :goto_8
    move-object p1, p0

    move-object p2, v1

    move-object p3, v3

    move-object p4, v4

    move-object p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v2

    .line 13
    invoke-direct/range {p1 .. p10}, Lcom/transsion/shorttv_pugc/bean/LiveListItem;-><init>(Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Image;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/TeamInfo;Lcom/transsion/shorttv_pugc/bean/TeamInfo;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/shorttv_pugc/bean/LiveListItem;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Image;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/TeamInfo;Lcom/transsion/shorttv_pugc/bean/TeamInfo;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/shorttv_pugc/bean/LiveListItem;
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p10

    .line 3
    .line 4
    and-int/lit8 v2, v1, 0x1

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    iget-object v2, v0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->matchId:Ljava/lang/String;

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
    iget-object v3, v0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->image:Lcom/transsion/shorttv_pugc/bean/Image;

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
    iget-object v4, v0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->startTime:Ljava/lang/Long;

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move-object v4, p3

    .line 28
    :goto_2
    and-int/lit8 v5, v1, 0x8

    .line 29
    .line 30
    if-eqz v5, :cond_3

    .line 31
    .line 32
    iget-object v5, v0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->content:Ljava/lang/String;

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_3
    move-object v5, p4

    .line 36
    :goto_3
    and-int/lit8 v6, v1, 0x10

    .line 37
    .line 38
    if-eqz v6, :cond_4

    .line 39
    .line 40
    iget-object v6, v0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->status:Ljava/lang/String;

    .line 41
    .line 42
    goto :goto_4

    .line 43
    :cond_4
    move-object v6, p5

    .line 44
    :goto_4
    and-int/lit8 v7, v1, 0x20

    .line 45
    .line 46
    if-eqz v7, :cond_5

    .line 47
    .line 48
    iget-object v7, v0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->deepLink:Ljava/lang/String;

    .line 49
    .line 50
    goto :goto_5

    .line 51
    :cond_5
    move-object/from16 v7, p6

    .line 52
    .line 53
    :goto_5
    and-int/lit8 v8, v1, 0x40

    .line 54
    .line 55
    if-eqz v8, :cond_6

    .line 56
    .line 57
    iget-object v8, v0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->team1:Lcom/transsion/shorttv_pugc/bean/TeamInfo;

    .line 58
    .line 59
    goto :goto_6

    .line 60
    :cond_6
    move-object/from16 v8, p7

    .line 61
    .line 62
    :goto_6
    and-int/lit16 v9, v1, 0x80

    .line 63
    .line 64
    if-eqz v9, :cond_7

    .line 65
    .line 66
    iget-object v9, v0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->team2:Lcom/transsion/shorttv_pugc/bean/TeamInfo;

    .line 67
    .line 68
    goto :goto_7

    .line 69
    :cond_7
    move-object/from16 v9, p8

    .line 70
    .line 71
    :goto_7
    and-int/lit16 v1, v1, 0x100

    .line 72
    .line 73
    if-eqz v1, :cond_8

    .line 74
    .line 75
    iget-object v1, v0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->ops:Ljava/lang/String;

    .line 76
    .line 77
    goto :goto_8

    .line 78
    :cond_8
    move-object/from16 v1, p9

    .line 79
    .line 80
    :goto_8
    move-object p1, v2

    .line 81
    move-object p2, v3

    .line 82
    move-object p3, v4

    .line 83
    move-object p4, v5

    .line 84
    move-object p5, v6

    .line 85
    move-object/from16 p6, v7

    .line 86
    .line 87
    move-object/from16 p7, v8

    .line 88
    .line 89
    move-object/from16 p8, v9

    .line 90
    .line 91
    move-object/from16 p9, v1

    .line 92
    .line 93
    invoke-virtual/range {p0 .. p9}, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->copy(Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Image;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/TeamInfo;Lcom/transsion/shorttv_pugc/bean/TeamInfo;Ljava/lang/String;)Lcom/transsion/shorttv_pugc/bean/LiveListItem;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->matchId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Lcom/transsion/shorttv_pugc/bean/Image;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->image:Lcom/transsion/shorttv_pugc/bean/Image;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->startTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->status:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->deepLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()Lcom/transsion/shorttv_pugc/bean/TeamInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->team1:Lcom/transsion/shorttv_pugc/bean/TeamInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component8()Lcom/transsion/shorttv_pugc/bean/TeamInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->team2:Lcom/transsion/shorttv_pugc/bean/TeamInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->ops:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Image;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/TeamInfo;Lcom/transsion/shorttv_pugc/bean/TeamInfo;Ljava/lang/String;)Lcom/transsion/shorttv_pugc/bean/LiveListItem;
    .locals 11

    .line 1
    new-instance v10, Lcom/transsion/shorttv_pugc/bean/LiveListItem;

    .line 2
    .line 3
    move-object v0, v10

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move-object/from16 v5, p5

    .line 9
    .line 10
    move-object/from16 v6, p6

    .line 11
    .line 12
    move-object/from16 v7, p7

    .line 13
    .line 14
    move-object/from16 v8, p8

    .line 15
    .line 16
    move-object/from16 v9, p9

    .line 17
    .line 18
    invoke-direct/range {v0 .. v9}, Lcom/transsion/shorttv_pugc/bean/LiveListItem;-><init>(Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Image;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/TeamInfo;Lcom/transsion/shorttv_pugc/bean/TeamInfo;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object v10
.end method

.method public final describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/transsion/shorttv_pugc/bean/LiveListItem;

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
    check-cast p1, Lcom/transsion/shorttv_pugc/bean/LiveListItem;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->matchId:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->matchId:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->image:Lcom/transsion/shorttv_pugc/bean/Image;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->image:Lcom/transsion/shorttv_pugc/bean/Image;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->startTime:Ljava/lang/Long;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->startTime:Ljava/lang/Long;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->content:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p1, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->content:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->status:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v3, p1, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->status:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_6

    .line 66
    .line 67
    return v2

    .line 68
    :cond_6
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->deepLink:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v3, p1, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->deepLink:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_7

    .line 77
    .line 78
    return v2

    .line 79
    :cond_7
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->team1:Lcom/transsion/shorttv_pugc/bean/TeamInfo;

    .line 80
    .line 81
    iget-object v3, p1, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->team1:Lcom/transsion/shorttv_pugc/bean/TeamInfo;

    .line 82
    .line 83
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_8

    .line 88
    .line 89
    return v2

    .line 90
    :cond_8
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->team2:Lcom/transsion/shorttv_pugc/bean/TeamInfo;

    .line 91
    .line 92
    iget-object v3, p1, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->team2:Lcom/transsion/shorttv_pugc/bean/TeamInfo;

    .line 93
    .line 94
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_9

    .line 99
    .line 100
    return v2

    .line 101
    :cond_9
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->ops:Ljava/lang/String;

    .line 102
    .line 103
    iget-object p1, p1, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->ops:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-nez p1, :cond_a

    .line 110
    .line 111
    return v2

    .line 112
    :cond_a
    return v0
.end method

.method public final getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDeepLink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->deepLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getImage()Lcom/transsion/shorttv_pugc/bean/Image;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->image:Lcom/transsion/shorttv_pugc/bean/Image;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMatchId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->matchId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOps()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->ops:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStartTime()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->startTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->status:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTeam1()Lcom/transsion/shorttv_pugc/bean/TeamInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->team1:Lcom/transsion/shorttv_pugc/bean/TeamInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTeam2()Lcom/transsion/shorttv_pugc/bean/TeamInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->team2:Lcom/transsion/shorttv_pugc/bean/TeamInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->matchId:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->image:Lcom/transsion/shorttv_pugc/bean/Image;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    move v2, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->startTime:Ljava/lang/Long;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    move v2, v1

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    :goto_2
    add-int/2addr v0, v2

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->content:Ljava/lang/String;

    .line 41
    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    move v2, v1

    .line 45
    goto :goto_3

    .line 46
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    :goto_3
    add-int/2addr v0, v2

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 52
    .line 53
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->status:Ljava/lang/String;

    .line 54
    .line 55
    if-nez v2, :cond_4

    .line 56
    .line 57
    move v2, v1

    .line 58
    goto :goto_4

    .line 59
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    :goto_4
    add-int/2addr v0, v2

    .line 64
    mul-int/lit8 v0, v0, 0x1f

    .line 65
    .line 66
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->deepLink:Ljava/lang/String;

    .line 67
    .line 68
    if-nez v2, :cond_5

    .line 69
    .line 70
    move v2, v1

    .line 71
    goto :goto_5

    .line 72
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    :goto_5
    add-int/2addr v0, v2

    .line 77
    mul-int/lit8 v0, v0, 0x1f

    .line 78
    .line 79
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->team1:Lcom/transsion/shorttv_pugc/bean/TeamInfo;

    .line 80
    .line 81
    if-nez v2, :cond_6

    .line 82
    .line 83
    move v2, v1

    .line 84
    goto :goto_6

    .line 85
    :cond_6
    invoke-virtual {v2}, Lcom/transsion/shorttv_pugc/bean/TeamInfo;->hashCode()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    :goto_6
    add-int/2addr v0, v2

    .line 90
    mul-int/lit8 v0, v0, 0x1f

    .line 91
    .line 92
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->team2:Lcom/transsion/shorttv_pugc/bean/TeamInfo;

    .line 93
    .line 94
    if-nez v2, :cond_7

    .line 95
    .line 96
    move v2, v1

    .line 97
    goto :goto_7

    .line 98
    :cond_7
    invoke-virtual {v2}, Lcom/transsion/shorttv_pugc/bean/TeamInfo;->hashCode()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    :goto_7
    add-int/2addr v0, v2

    .line 103
    mul-int/lit8 v0, v0, 0x1f

    .line 104
    .line 105
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->ops:Ljava/lang/String;

    .line 106
    .line 107
    if-nez v2, :cond_8

    .line 108
    .line 109
    goto :goto_8

    .line 110
    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    :goto_8
    add-int/2addr v0, v1

    .line 115
    return v0
.end method

.method public final setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDeepLink(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->deepLink:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setImage(Lcom/transsion/shorttv_pugc/bean/Image;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->image:Lcom/transsion/shorttv_pugc/bean/Image;

    .line 2
    .line 3
    return-void
.end method

.method public final setMatchId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->matchId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setOps(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->ops:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setStartTime(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->startTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setStatus(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->status:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setTeam1(Lcom/transsion/shorttv_pugc/bean/TeamInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->team1:Lcom/transsion/shorttv_pugc/bean/TeamInfo;

    .line 2
    .line 3
    return-void
.end method

.method public final setTeam2(Lcom/transsion/shorttv_pugc/bean/TeamInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->team2:Lcom/transsion/shorttv_pugc/bean/TeamInfo;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->matchId:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->image:Lcom/transsion/shorttv_pugc/bean/Image;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->startTime:Ljava/lang/Long;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->content:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->status:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->deepLink:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->team1:Lcom/transsion/shorttv_pugc/bean/TeamInfo;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->team2:Lcom/transsion/shorttv_pugc/bean/TeamInfo;

    .line 16
    .line 17
    iget-object v8, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->ops:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v9, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v10, "LiveListItem(matchId="

    .line 25
    .line 26
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, ", image="

    .line 33
    .line 34
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, ", startTime="

    .line 41
    .line 42
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, ", content="

    .line 49
    .line 50
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, ", status="

    .line 57
    .line 58
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v0, ", deepLink="

    .line 65
    .line 66
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v0, ", team1="

    .line 73
    .line 74
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v0, ", team2="

    .line 81
    .line 82
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v0, ", ops="

    .line 89
    .line 90
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v0, ")"

    .line 97
    .line 98
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    const-string v0, "dest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->matchId:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->image:Lcom/transsion/shorttv_pugc/bean/Image;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->startTime:Ljava/lang/Long;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 34
    .line 35
    .line 36
    :goto_0
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->content:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->status:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->deepLink:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->team1:Lcom/transsion/shorttv_pugc/bean/TeamInfo;

    .line 52
    .line 53
    if-nez v0, :cond_1

    .line 54
    .line 55
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1, p2}, Lcom/transsion/shorttv_pugc/bean/TeamInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 63
    .line 64
    .line 65
    :goto_1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->team2:Lcom/transsion/shorttv_pugc/bean/TeamInfo;

    .line 66
    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p1, p2}, Lcom/transsion/shorttv_pugc/bean/TeamInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 77
    .line 78
    .line 79
    :goto_2
    iget-object p2, p0, Lcom/transsion/shorttv_pugc/bean/LiveListItem;->ops:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method
