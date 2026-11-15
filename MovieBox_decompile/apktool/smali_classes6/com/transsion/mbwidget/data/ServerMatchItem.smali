.class public final Lcom/transsion/mbwidget/data/ServerMatchItem;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008*\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u00c7\u0001\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000b\u0010,\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\rH\u00c6\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\rH\u00c6\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u00107\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0013H\u00c6\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u00c9\u0001\u0010<\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0013\u0010=\u001a\u00020>2\u0008\u0010?\u001a\u0004\u0018\u00010@H\u00d6\u0003J\t\u0010A\u001a\u00020BH\u00d6\u0001J\t\u0010C\u001a\u00020\u0003H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001bR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0019R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0019R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0019R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0019R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u0019R\u0013\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010#R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u0019R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\u0019R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010\u0019R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010)R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010\u0019R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010\u0019\u00a8\u0006D"
    }
    d2 = {
        "Lcom/transsion/mbwidget/data/ServerMatchItem;",
        "Ljava/io/Serializable;",
        "id",
        "",
        "team1",
        "Lcom/transsion/mbwidget/data/ServerTeam;",
        "team2",
        "status",
        "type",
        "startTime",
        "endTime",
        "timeDesc",
        "teamMatchInfo1",
        "Lcom/transsion/mbwidget/data/TeamMatchInfo;",
        "teamMatchInfo2",
        "matchResult",
        "matchRound",
        "leagueId",
        "leagueItem",
        "Lcom/transsion/mbwidget/data/LeagueItem;",
        "deeplink",
        "h5link",
        "<init>",
        "(Ljava/lang/String;Lcom/transsion/mbwidget/data/ServerTeam;Lcom/transsion/mbwidget/data/ServerTeam;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/mbwidget/data/TeamMatchInfo;Lcom/transsion/mbwidget/data/TeamMatchInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/mbwidget/data/LeagueItem;Ljava/lang/String;Ljava/lang/String;)V",
        "getId",
        "()Ljava/lang/String;",
        "getTeam1",
        "()Lcom/transsion/mbwidget/data/ServerTeam;",
        "getTeam2",
        "getStatus",
        "getType",
        "getStartTime",
        "getEndTime",
        "getTimeDesc",
        "getTeamMatchInfo1",
        "()Lcom/transsion/mbwidget/data/TeamMatchInfo;",
        "getTeamMatchInfo2",
        "getMatchResult",
        "getMatchRound",
        "getLeagueId",
        "getLeagueItem",
        "()Lcom/transsion/mbwidget/data/LeagueItem;",
        "getDeeplink",
        "getH5link",
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
        "component14",
        "component15",
        "component16",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "DeskWidget_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final deeplink:Ljava/lang/String;

.field private final endTime:Ljava/lang/String;

.field private final h5link:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final leagueId:Ljava/lang/String;

.field private final leagueItem:Lcom/transsion/mbwidget/data/LeagueItem;

.field private final matchResult:Ljava/lang/String;

.field private final matchRound:Ljava/lang/String;

.field private final startTime:Ljava/lang/String;

.field private final status:Ljava/lang/String;

.field private final team1:Lcom/transsion/mbwidget/data/ServerTeam;

.field private final team2:Lcom/transsion/mbwidget/data/ServerTeam;

.field private final teamMatchInfo1:Lcom/transsion/mbwidget/data/TeamMatchInfo;

.field private final teamMatchInfo2:Lcom/transsion/mbwidget/data/TeamMatchInfo;

.field private final timeDesc:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    const v17, 0xffff

    const/16 v18, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v18}, Lcom/transsion/mbwidget/data/ServerMatchItem;-><init>(Ljava/lang/String;Lcom/transsion/mbwidget/data/ServerTeam;Lcom/transsion/mbwidget/data/ServerTeam;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/mbwidget/data/TeamMatchInfo;Lcom/transsion/mbwidget/data/TeamMatchInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/mbwidget/data/LeagueItem;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/transsion/mbwidget/data/ServerTeam;Lcom/transsion/mbwidget/data/ServerTeam;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/mbwidget/data/TeamMatchInfo;Lcom/transsion/mbwidget/data/TeamMatchInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/mbwidget/data/LeagueItem;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 3
    iput-object v1, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->id:Ljava/lang/String;

    move-object v1, p2

    .line 4
    iput-object v1, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->team1:Lcom/transsion/mbwidget/data/ServerTeam;

    move-object v1, p3

    .line 5
    iput-object v1, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->team2:Lcom/transsion/mbwidget/data/ServerTeam;

    move-object v1, p4

    .line 6
    iput-object v1, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->status:Ljava/lang/String;

    move-object v1, p5

    .line 7
    iput-object v1, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->type:Ljava/lang/String;

    move-object v1, p6

    .line 8
    iput-object v1, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->startTime:Ljava/lang/String;

    move-object v1, p7

    .line 9
    iput-object v1, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->endTime:Ljava/lang/String;

    move-object v1, p8

    .line 10
    iput-object v1, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->timeDesc:Ljava/lang/String;

    move-object v1, p9

    .line 11
    iput-object v1, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->teamMatchInfo1:Lcom/transsion/mbwidget/data/TeamMatchInfo;

    move-object v1, p10

    .line 12
    iput-object v1, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->teamMatchInfo2:Lcom/transsion/mbwidget/data/TeamMatchInfo;

    move-object v1, p11

    .line 13
    iput-object v1, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->matchResult:Ljava/lang/String;

    move-object v1, p12

    .line 14
    iput-object v1, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->matchRound:Ljava/lang/String;

    move-object v1, p13

    .line 15
    iput-object v1, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->leagueId:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 16
    iput-object v1, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->leagueItem:Lcom/transsion/mbwidget/data/LeagueItem;

    move-object/from16 v1, p15

    .line 17
    iput-object v1, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->deeplink:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 18
    iput-object v1, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->h5link:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/transsion/mbwidget/data/ServerTeam;Lcom/transsion/mbwidget/data/ServerTeam;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/mbwidget/data/TeamMatchInfo;Lcom/transsion/mbwidget/data/TeamMatchInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/mbwidget/data/LeagueItem;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 17

    move/from16 v0, p17

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    const/4 v11, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    const/4 v12, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    const/4 v13, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    const/4 v14, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    const/4 v15, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v0, v0, v16

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v0, p16

    :goto_f
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p16, v2

    move-object/from16 p17, v0

    .line 19
    invoke-direct/range {p1 .. p17}, Lcom/transsion/mbwidget/data/ServerMatchItem;-><init>(Ljava/lang/String;Lcom/transsion/mbwidget/data/ServerTeam;Lcom/transsion/mbwidget/data/ServerTeam;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/mbwidget/data/TeamMatchInfo;Lcom/transsion/mbwidget/data/TeamMatchInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/mbwidget/data/LeagueItem;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/mbwidget/data/ServerMatchItem;Ljava/lang/String;Lcom/transsion/mbwidget/data/ServerTeam;Lcom/transsion/mbwidget/data/ServerTeam;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/mbwidget/data/TeamMatchInfo;Lcom/transsion/mbwidget/data/TeamMatchInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/mbwidget/data/LeagueItem;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/mbwidget/data/ServerMatchItem;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p17

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->team1:Lcom/transsion/mbwidget/data/ServerTeam;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->team2:Lcom/transsion/mbwidget/data/ServerTeam;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->status:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->type:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->startTime:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->endTime:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->timeDesc:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->teamMatchInfo1:Lcom/transsion/mbwidget/data/TeamMatchInfo;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->teamMatchInfo2:Lcom/transsion/mbwidget/data/TeamMatchInfo;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->matchResult:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->matchRound:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->leagueId:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->leagueItem:Lcom/transsion/mbwidget/data/LeagueItem;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->deeplink:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v1, v1, v16

    if-eqz v1, :cond_f

    iget-object v1, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->h5link:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p16

    :goto_f
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p15, v15

    move-object/from16 p16, v1

    invoke-virtual/range {p0 .. p16}, Lcom/transsion/mbwidget/data/ServerMatchItem;->copy(Ljava/lang/String;Lcom/transsion/mbwidget/data/ServerTeam;Lcom/transsion/mbwidget/data/ServerTeam;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/mbwidget/data/TeamMatchInfo;Lcom/transsion/mbwidget/data/TeamMatchInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/mbwidget/data/LeagueItem;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/mbwidget/data/ServerMatchItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component10()Lcom/transsion/mbwidget/data/TeamMatchInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->teamMatchInfo2:Lcom/transsion/mbwidget/data/TeamMatchInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->matchResult:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->matchRound:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->leagueId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component14()Lcom/transsion/mbwidget/data/LeagueItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->leagueItem:Lcom/transsion/mbwidget/data/LeagueItem;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->deeplink:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->h5link:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Lcom/transsion/mbwidget/data/ServerTeam;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->team1:Lcom/transsion/mbwidget/data/ServerTeam;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Lcom/transsion/mbwidget/data/ServerTeam;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->team2:Lcom/transsion/mbwidget/data/ServerTeam;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->status:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->startTime:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->endTime:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->timeDesc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component9()Lcom/transsion/mbwidget/data/TeamMatchInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->teamMatchInfo1:Lcom/transsion/mbwidget/data/TeamMatchInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/transsion/mbwidget/data/ServerTeam;Lcom/transsion/mbwidget/data/ServerTeam;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/mbwidget/data/TeamMatchInfo;Lcom/transsion/mbwidget/data/TeamMatchInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/mbwidget/data/LeagueItem;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/mbwidget/data/ServerMatchItem;
    .locals 18

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    move-object/from16 v4, p4

    .line 8
    .line 9
    move-object/from16 v5, p5

    .line 10
    .line 11
    move-object/from16 v6, p6

    .line 12
    .line 13
    move-object/from16 v7, p7

    .line 14
    .line 15
    move-object/from16 v8, p8

    .line 16
    .line 17
    move-object/from16 v9, p9

    .line 18
    .line 19
    move-object/from16 v10, p10

    .line 20
    .line 21
    move-object/from16 v11, p11

    .line 22
    .line 23
    move-object/from16 v12, p12

    .line 24
    .line 25
    move-object/from16 v13, p13

    .line 26
    .line 27
    move-object/from16 v14, p14

    .line 28
    .line 29
    move-object/from16 v15, p15

    .line 30
    .line 31
    move-object/from16 v16, p16

    .line 32
    .line 33
    new-instance v17, Lcom/transsion/mbwidget/data/ServerMatchItem;

    .line 34
    .line 35
    move-object/from16 v0, v17

    .line 36
    .line 37
    invoke-direct/range {v0 .. v16}, Lcom/transsion/mbwidget/data/ServerMatchItem;-><init>(Ljava/lang/String;Lcom/transsion/mbwidget/data/ServerTeam;Lcom/transsion/mbwidget/data/ServerTeam;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/mbwidget/data/TeamMatchInfo;Lcom/transsion/mbwidget/data/TeamMatchInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/mbwidget/data/LeagueItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-object v17
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
    instance-of v1, p1, Lcom/transsion/mbwidget/data/ServerMatchItem;

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
    check-cast p1, Lcom/transsion/mbwidget/data/ServerMatchItem;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->id:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/transsion/mbwidget/data/ServerMatchItem;->id:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->team1:Lcom/transsion/mbwidget/data/ServerTeam;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/transsion/mbwidget/data/ServerMatchItem;->team1:Lcom/transsion/mbwidget/data/ServerTeam;

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
    iget-object v1, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->team2:Lcom/transsion/mbwidget/data/ServerTeam;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/transsion/mbwidget/data/ServerMatchItem;->team2:Lcom/transsion/mbwidget/data/ServerTeam;

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
    iget-object v1, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->status:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p1, Lcom/transsion/mbwidget/data/ServerMatchItem;->status:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->type:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v3, p1, Lcom/transsion/mbwidget/data/ServerMatchItem;->type:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->startTime:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v3, p1, Lcom/transsion/mbwidget/data/ServerMatchItem;->startTime:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->endTime:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v3, p1, Lcom/transsion/mbwidget/data/ServerMatchItem;->endTime:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->timeDesc:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v3, p1, Lcom/transsion/mbwidget/data/ServerMatchItem;->timeDesc:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->teamMatchInfo1:Lcom/transsion/mbwidget/data/TeamMatchInfo;

    .line 102
    .line 103
    iget-object v3, p1, Lcom/transsion/mbwidget/data/ServerMatchItem;->teamMatchInfo1:Lcom/transsion/mbwidget/data/TeamMatchInfo;

    .line 104
    .line 105
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_a

    .line 110
    .line 111
    return v2

    .line 112
    :cond_a
    iget-object v1, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->teamMatchInfo2:Lcom/transsion/mbwidget/data/TeamMatchInfo;

    .line 113
    .line 114
    iget-object v3, p1, Lcom/transsion/mbwidget/data/ServerMatchItem;->teamMatchInfo2:Lcom/transsion/mbwidget/data/TeamMatchInfo;

    .line 115
    .line 116
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_b

    .line 121
    .line 122
    return v2

    .line 123
    :cond_b
    iget-object v1, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->matchResult:Ljava/lang/String;

    .line 124
    .line 125
    iget-object v3, p1, Lcom/transsion/mbwidget/data/ServerMatchItem;->matchResult:Ljava/lang/String;

    .line 126
    .line 127
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-nez v1, :cond_c

    .line 132
    .line 133
    return v2

    .line 134
    :cond_c
    iget-object v1, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->matchRound:Ljava/lang/String;

    .line 135
    .line 136
    iget-object v3, p1, Lcom/transsion/mbwidget/data/ServerMatchItem;->matchRound:Ljava/lang/String;

    .line 137
    .line 138
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-nez v1, :cond_d

    .line 143
    .line 144
    return v2

    .line 145
    :cond_d
    iget-object v1, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->leagueId:Ljava/lang/String;

    .line 146
    .line 147
    iget-object v3, p1, Lcom/transsion/mbwidget/data/ServerMatchItem;->leagueId:Ljava/lang/String;

    .line 148
    .line 149
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_e

    .line 154
    .line 155
    return v2

    .line 156
    :cond_e
    iget-object v1, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->leagueItem:Lcom/transsion/mbwidget/data/LeagueItem;

    .line 157
    .line 158
    iget-object v3, p1, Lcom/transsion/mbwidget/data/ServerMatchItem;->leagueItem:Lcom/transsion/mbwidget/data/LeagueItem;

    .line 159
    .line 160
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-nez v1, :cond_f

    .line 165
    .line 166
    return v2

    .line 167
    :cond_f
    iget-object v1, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->deeplink:Ljava/lang/String;

    .line 168
    .line 169
    iget-object v3, p1, Lcom/transsion/mbwidget/data/ServerMatchItem;->deeplink:Ljava/lang/String;

    .line 170
    .line 171
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-nez v1, :cond_10

    .line 176
    .line 177
    return v2

    .line 178
    :cond_10
    iget-object v1, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->h5link:Ljava/lang/String;

    .line 179
    .line 180
    iget-object p1, p1, Lcom/transsion/mbwidget/data/ServerMatchItem;->h5link:Ljava/lang/String;

    .line 181
    .line 182
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    if-nez p1, :cond_11

    .line 187
    .line 188
    return v2

    .line 189
    :cond_11
    return v0
.end method

.method public final getDeeplink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->deeplink:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEndTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->endTime:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getH5link()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->h5link:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLeagueId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->leagueId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLeagueItem()Lcom/transsion/mbwidget/data/LeagueItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->leagueItem:Lcom/transsion/mbwidget/data/LeagueItem;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMatchResult()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->matchResult:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMatchRound()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->matchRound:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStartTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->startTime:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->status:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTeam1()Lcom/transsion/mbwidget/data/ServerTeam;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->team1:Lcom/transsion/mbwidget/data/ServerTeam;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTeam2()Lcom/transsion/mbwidget/data/ServerTeam;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->team2:Lcom/transsion/mbwidget/data/ServerTeam;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTeamMatchInfo1()Lcom/transsion/mbwidget/data/TeamMatchInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->teamMatchInfo1:Lcom/transsion/mbwidget/data/TeamMatchInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTeamMatchInfo2()Lcom/transsion/mbwidget/data/TeamMatchInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->teamMatchInfo2:Lcom/transsion/mbwidget/data/TeamMatchInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTimeDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->timeDesc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->id:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->team1:Lcom/transsion/mbwidget/data/ServerTeam;

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
    invoke-virtual {v2}, Lcom/transsion/mbwidget/data/ServerTeam;->hashCode()I

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
    iget-object v2, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->team2:Lcom/transsion/mbwidget/data/ServerTeam;

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
    invoke-virtual {v2}, Lcom/transsion/mbwidget/data/ServerTeam;->hashCode()I

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
    iget-object v2, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->status:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->type:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->startTime:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->endTime:Ljava/lang/String;

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
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

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
    iget-object v2, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->timeDesc:Ljava/lang/String;

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
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

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
    iget-object v2, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->teamMatchInfo1:Lcom/transsion/mbwidget/data/TeamMatchInfo;

    .line 106
    .line 107
    if-nez v2, :cond_8

    .line 108
    .line 109
    move v2, v1

    .line 110
    goto :goto_8

    .line 111
    :cond_8
    invoke-virtual {v2}, Lcom/transsion/mbwidget/data/TeamMatchInfo;->hashCode()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    :goto_8
    add-int/2addr v0, v2

    .line 116
    mul-int/lit8 v0, v0, 0x1f

    .line 117
    .line 118
    iget-object v2, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->teamMatchInfo2:Lcom/transsion/mbwidget/data/TeamMatchInfo;

    .line 119
    .line 120
    if-nez v2, :cond_9

    .line 121
    .line 122
    move v2, v1

    .line 123
    goto :goto_9

    .line 124
    :cond_9
    invoke-virtual {v2}, Lcom/transsion/mbwidget/data/TeamMatchInfo;->hashCode()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    :goto_9
    add-int/2addr v0, v2

    .line 129
    mul-int/lit8 v0, v0, 0x1f

    .line 130
    .line 131
    iget-object v2, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->matchResult:Ljava/lang/String;

    .line 132
    .line 133
    if-nez v2, :cond_a

    .line 134
    .line 135
    move v2, v1

    .line 136
    goto :goto_a

    .line 137
    :cond_a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    :goto_a
    add-int/2addr v0, v2

    .line 142
    mul-int/lit8 v0, v0, 0x1f

    .line 143
    .line 144
    iget-object v2, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->matchRound:Ljava/lang/String;

    .line 145
    .line 146
    if-nez v2, :cond_b

    .line 147
    .line 148
    move v2, v1

    .line 149
    goto :goto_b

    .line 150
    :cond_b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    :goto_b
    add-int/2addr v0, v2

    .line 155
    mul-int/lit8 v0, v0, 0x1f

    .line 156
    .line 157
    iget-object v2, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->leagueId:Ljava/lang/String;

    .line 158
    .line 159
    if-nez v2, :cond_c

    .line 160
    .line 161
    move v2, v1

    .line 162
    goto :goto_c

    .line 163
    :cond_c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    :goto_c
    add-int/2addr v0, v2

    .line 168
    mul-int/lit8 v0, v0, 0x1f

    .line 169
    .line 170
    iget-object v2, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->leagueItem:Lcom/transsion/mbwidget/data/LeagueItem;

    .line 171
    .line 172
    if-nez v2, :cond_d

    .line 173
    .line 174
    move v2, v1

    .line 175
    goto :goto_d

    .line 176
    :cond_d
    invoke-virtual {v2}, Lcom/transsion/mbwidget/data/LeagueItem;->hashCode()I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    :goto_d
    add-int/2addr v0, v2

    .line 181
    mul-int/lit8 v0, v0, 0x1f

    .line 182
    .line 183
    iget-object v2, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->deeplink:Ljava/lang/String;

    .line 184
    .line 185
    if-nez v2, :cond_e

    .line 186
    .line 187
    move v2, v1

    .line 188
    goto :goto_e

    .line 189
    :cond_e
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    :goto_e
    add-int/2addr v0, v2

    .line 194
    mul-int/lit8 v0, v0, 0x1f

    .line 195
    .line 196
    iget-object v2, p0, Lcom/transsion/mbwidget/data/ServerMatchItem;->h5link:Ljava/lang/String;

    .line 197
    .line 198
    if-nez v2, :cond_f

    .line 199
    .line 200
    goto :goto_f

    .line 201
    :cond_f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    :goto_f
    add-int/2addr v0, v1

    .line 206
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->id:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->team1:Lcom/transsion/mbwidget/data/ServerTeam;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->team2:Lcom/transsion/mbwidget/data/ServerTeam;

    .line 8
    .line 9
    iget-object v4, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->status:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->type:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->startTime:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->endTime:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v8, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->timeDesc:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v9, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->teamMatchInfo1:Lcom/transsion/mbwidget/data/TeamMatchInfo;

    .line 20
    .line 21
    iget-object v10, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->teamMatchInfo2:Lcom/transsion/mbwidget/data/TeamMatchInfo;

    .line 22
    .line 23
    iget-object v11, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->matchResult:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v12, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->matchRound:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v13, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->leagueId:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v14, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->leagueItem:Lcom/transsion/mbwidget/data/LeagueItem;

    .line 30
    .line 31
    iget-object v15, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->deeplink:Ljava/lang/String;

    .line 32
    .line 33
    move-object/from16 v16, v15

    .line 34
    .line 35
    iget-object v15, v0, Lcom/transsion/mbwidget/data/ServerMatchItem;->h5link:Ljava/lang/String;

    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    move-object/from16 v17, v15

    .line 43
    .line 44
    const-string v15, "ServerMatchItem(id="

    .line 45
    .line 46
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, ", team1="

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, ", team2="

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v1, ", status="

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", type="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v1, ", startTime="

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v1, ", endTime="

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v1, ", timeDesc="

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v1, ", teamMatchInfo1="

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v1, ", teamMatchInfo2="

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v1, ", matchResult="

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v1, ", matchRound="

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v1, ", leagueId="

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v1, ", leagueItem="

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v1, ", deeplink="

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    move-object/from16 v1, v16

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v1, ", h5link="

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    move-object/from16 v1, v17

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v1, ")"

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    return-object v0
.end method
