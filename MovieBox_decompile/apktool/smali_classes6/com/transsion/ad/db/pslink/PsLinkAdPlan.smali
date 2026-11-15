.class public final Lcom/transsion/ad/db/pslink/PsLinkAdPlan;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008C\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u00a5\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\t\u0010>\u001a\u00020\u0003H\u00c6\u0003J\t\u0010?\u001a\u00020\u0005H\u00c6\u0003J\t\u0010@\u001a\u00020\u0005H\u00c6\u0003J\t\u0010A\u001a\u00020\u0005H\u00c6\u0003J\t\u0010B\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010C\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010D\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010E\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u0010\u0010F\u001a\u0004\u0018\u00010\rH\u00c6\u0003\u00a2\u0006\u0002\u0010+J\u0010\u0010G\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u00100J\u0010\u0010H\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u00100J\u000b\u0010I\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010J\u001a\u00020\u0003H\u00c6\u0003J\t\u0010K\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010L\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u00b4\u0001\u0010M\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00032\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001\u00a2\u0006\u0002\u0010NJ\u0006\u0010O\u001a\u00020\u0003J\u0013\u0010P\u001a\u00020Q2\u0008\u0010R\u001a\u0004\u0018\u00010SH\u00d6\u0003J\t\u0010T\u001a\u00020\u0003H\u00d6\u0001J\t\u0010U\u001a\u00020\u0005H\u00d6\u0001J\u0016\u0010V\u001a\u00020W2\u0006\u0010X\u001a\u00020Y2\u0006\u0010Z\u001a\u00020\u0003R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001b\"\u0004\u0008\u001f\u0010\u001dR\u001a\u0010\u0007\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u001b\"\u0004\u0008!\u0010\u001dR\u001a\u0010\u0008\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0017\"\u0004\u0008#\u0010\u0019R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u001b\"\u0004\u0008%\u0010\u001dR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u001b\"\u0004\u0008\'\u0010\u001dR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u001b\"\u0004\u0008)\u0010\u001dR\u001e\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010.\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u00103\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u00103\u001a\u0004\u00084\u00100\"\u0004\u00085\u00102R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u0010\u001b\"\u0004\u00087\u0010\u001dR\u001a\u0010\u0011\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u0010\u0017\"\u0004\u00089\u0010\u0019R\u001a\u0010\u0012\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010\u0017\"\u0004\u0008;\u0010\u0019R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010\u001b\"\u0004\u0008=\u0010\u001d\u00a8\u0006["
    }
    d2 = {
        "Lcom/transsion/ad/db/pslink/PsLinkAdPlan;",
        "Landroid/os/Parcelable;",
        "id",
        "",
        "nonId",
        "",
        "adSource",
        "extAdSlot",
        "rank",
        "psPlanId",
        "psLinkAdInfoStr",
        "psInfoJson",
        "updateTimestamp",
        "",
        "showMax",
        "clickMax",
        "showHours",
        "showedTimes",
        "clickedTimes",
        "showDate",
        "<init>",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;IILjava/lang/String;)V",
        "getId",
        "()I",
        "setId",
        "(I)V",
        "getNonId",
        "()Ljava/lang/String;",
        "setNonId",
        "(Ljava/lang/String;)V",
        "getAdSource",
        "setAdSource",
        "getExtAdSlot",
        "setExtAdSlot",
        "getRank",
        "setRank",
        "getPsPlanId",
        "setPsPlanId",
        "getPsLinkAdInfoStr",
        "setPsLinkAdInfoStr",
        "getPsInfoJson",
        "setPsInfoJson",
        "getUpdateTimestamp",
        "()Ljava/lang/Long;",
        "setUpdateTimestamp",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "getShowMax",
        "()Ljava/lang/Integer;",
        "setShowMax",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getClickMax",
        "setClickMax",
        "getShowHours",
        "setShowHours",
        "getShowedTimes",
        "setShowedTimes",
        "getClickedTimes",
        "setClickedTimes",
        "getShowDate",
        "setShowDate",
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
        "copy",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;IILjava/lang/String;)Lcom/transsion/ad/db/pslink/PsLinkAdPlan;",
        "describeContents",
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
        "lib_ad_gpRelease"
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
            "Lcom/transsion/ad/db/pslink/PsLinkAdPlan;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adSource:Ljava/lang/String;

.field private clickMax:Ljava/lang/Integer;

.field private clickedTimes:I

.field private extAdSlot:Ljava/lang/String;

.field private id:I

.field private nonId:Ljava/lang/String;

.field private psInfoJson:Ljava/lang/String;

.field private psLinkAdInfoStr:Ljava/lang/String;

.field private psPlanId:Ljava/lang/String;

.field private rank:I

.field private showDate:Ljava/lang/String;

.field private showHours:Ljava/lang/String;

.field private showMax:Ljava/lang/Integer;

.field private showedTimes:I

.field private updateTimestamp:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;IILjava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    const-string v4, "nonId"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "adSource"

    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "extAdSlot"

    invoke-static {p4, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v4, p1

    .line 2
    iput v4, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->id:I

    .line 3
    iput-object v1, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->nonId:Ljava/lang/String;

    .line 4
    iput-object v2, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->adSource:Ljava/lang/String;

    .line 5
    iput-object v3, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->extAdSlot:Ljava/lang/String;

    move v1, p5

    .line 6
    iput v1, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->rank:I

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psPlanId:Ljava/lang/String;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psLinkAdInfoStr:Ljava/lang/String;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psInfoJson:Ljava/lang/String;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->updateTimestamp:Ljava/lang/Long;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showMax:Ljava/lang/Integer;

    move-object/from16 v1, p11

    .line 12
    iput-object v1, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->clickMax:Ljava/lang/Integer;

    move-object/from16 v1, p12

    .line 13
    iput-object v1, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showHours:Ljava/lang/String;

    move/from16 v1, p13

    .line 14
    iput v1, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showedTimes:I

    move/from16 v1, p14

    .line 15
    iput v1, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->clickedTimes:I

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showDate:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;IILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 19

    move/from16 v0, p16

    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v8, v2

    goto :goto_0

    :cond_0
    move/from16 v8, p5

    :goto_0
    and-int/lit8 v1, v0, 0x20

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move-object v9, v3

    goto :goto_1

    :cond_1
    move-object/from16 v9, p6

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    move-object v10, v3

    goto :goto_2

    :cond_2
    move-object/from16 v10, p7

    :goto_2
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    move-object v11, v3

    goto :goto_3

    :cond_3
    move-object/from16 v11, p8

    :goto_3
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_4

    move-object v12, v3

    goto :goto_4

    :cond_4
    move-object/from16 v12, p9

    :goto_4
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_5

    move-object v13, v3

    goto :goto_5

    :cond_5
    move-object/from16 v13, p10

    :goto_5
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_6

    move-object v14, v3

    goto :goto_6

    :cond_6
    move-object/from16 v14, p11

    :goto_6
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_7

    move-object v15, v3

    goto :goto_7

    :cond_7
    move-object/from16 v15, p12

    :goto_7
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_8

    move/from16 v16, v2

    goto :goto_8

    :cond_8
    move/from16 v16, p13

    :goto_8
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_9

    move/from16 v17, v2

    goto :goto_9

    :cond_9
    move/from16 v17, p14

    :goto_9
    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_a

    move-object/from16 v18, v3

    goto :goto_a

    :cond_a
    move-object/from16 v18, p15

    :goto_a
    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    .line 17
    invoke-direct/range {v3 .. v18}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/ad/db/pslink/PsLinkAdPlan;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;IILjava/lang/String;ILjava/lang/Object;)Lcom/transsion/ad/db/pslink/PsLinkAdPlan;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p16

    .line 4
    .line 5
    and-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    iget v2, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->id:I

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
    iget-object v3, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->nonId:Ljava/lang/String;

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move-object/from16 v3, p2

    .line 22
    .line 23
    :goto_1
    and-int/lit8 v4, v1, 0x4

    .line 24
    .line 25
    if-eqz v4, :cond_2

    .line 26
    .line 27
    iget-object v4, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->adSource:Ljava/lang/String;

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
    iget-object v5, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->extAdSlot:Ljava/lang/String;

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
    iget v6, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->rank:I

    .line 46
    .line 47
    goto :goto_4

    .line 48
    :cond_4
    move/from16 v6, p5

    .line 49
    .line 50
    :goto_4
    and-int/lit8 v7, v1, 0x20

    .line 51
    .line 52
    if-eqz v7, :cond_5

    .line 53
    .line 54
    iget-object v7, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psPlanId:Ljava/lang/String;

    .line 55
    .line 56
    goto :goto_5

    .line 57
    :cond_5
    move-object/from16 v7, p6

    .line 58
    .line 59
    :goto_5
    and-int/lit8 v8, v1, 0x40

    .line 60
    .line 61
    if-eqz v8, :cond_6

    .line 62
    .line 63
    iget-object v8, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psLinkAdInfoStr:Ljava/lang/String;

    .line 64
    .line 65
    goto :goto_6

    .line 66
    :cond_6
    move-object/from16 v8, p7

    .line 67
    .line 68
    :goto_6
    and-int/lit16 v9, v1, 0x80

    .line 69
    .line 70
    if-eqz v9, :cond_7

    .line 71
    .line 72
    iget-object v9, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psInfoJson:Ljava/lang/String;

    .line 73
    .line 74
    goto :goto_7

    .line 75
    :cond_7
    move-object/from16 v9, p8

    .line 76
    .line 77
    :goto_7
    and-int/lit16 v10, v1, 0x100

    .line 78
    .line 79
    if-eqz v10, :cond_8

    .line 80
    .line 81
    iget-object v10, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->updateTimestamp:Ljava/lang/Long;

    .line 82
    .line 83
    goto :goto_8

    .line 84
    :cond_8
    move-object/from16 v10, p9

    .line 85
    .line 86
    :goto_8
    and-int/lit16 v11, v1, 0x200

    .line 87
    .line 88
    if-eqz v11, :cond_9

    .line 89
    .line 90
    iget-object v11, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showMax:Ljava/lang/Integer;

    .line 91
    .line 92
    goto :goto_9

    .line 93
    :cond_9
    move-object/from16 v11, p10

    .line 94
    .line 95
    :goto_9
    and-int/lit16 v12, v1, 0x400

    .line 96
    .line 97
    if-eqz v12, :cond_a

    .line 98
    .line 99
    iget-object v12, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->clickMax:Ljava/lang/Integer;

    .line 100
    .line 101
    goto :goto_a

    .line 102
    :cond_a
    move-object/from16 v12, p11

    .line 103
    .line 104
    :goto_a
    and-int/lit16 v13, v1, 0x800

    .line 105
    .line 106
    if-eqz v13, :cond_b

    .line 107
    .line 108
    iget-object v13, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showHours:Ljava/lang/String;

    .line 109
    .line 110
    goto :goto_b

    .line 111
    :cond_b
    move-object/from16 v13, p12

    .line 112
    .line 113
    :goto_b
    and-int/lit16 v14, v1, 0x1000

    .line 114
    .line 115
    if-eqz v14, :cond_c

    .line 116
    .line 117
    iget v14, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showedTimes:I

    .line 118
    .line 119
    goto :goto_c

    .line 120
    :cond_c
    move/from16 v14, p13

    .line 121
    .line 122
    :goto_c
    and-int/lit16 v15, v1, 0x2000

    .line 123
    .line 124
    if-eqz v15, :cond_d

    .line 125
    .line 126
    iget v15, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->clickedTimes:I

    .line 127
    .line 128
    goto :goto_d

    .line 129
    :cond_d
    move/from16 v15, p14

    .line 130
    .line 131
    :goto_d
    and-int/lit16 v1, v1, 0x4000

    .line 132
    .line 133
    if-eqz v1, :cond_e

    .line 134
    .line 135
    iget-object v1, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showDate:Ljava/lang/String;

    .line 136
    .line 137
    goto :goto_e

    .line 138
    :cond_e
    move-object/from16 v1, p15

    .line 139
    .line 140
    :goto_e
    move/from16 p1, v2

    .line 141
    .line 142
    move-object/from16 p2, v3

    .line 143
    .line 144
    move-object/from16 p3, v4

    .line 145
    .line 146
    move-object/from16 p4, v5

    .line 147
    .line 148
    move/from16 p5, v6

    .line 149
    .line 150
    move-object/from16 p6, v7

    .line 151
    .line 152
    move-object/from16 p7, v8

    .line 153
    .line 154
    move-object/from16 p8, v9

    .line 155
    .line 156
    move-object/from16 p9, v10

    .line 157
    .line 158
    move-object/from16 p10, v11

    .line 159
    .line 160
    move-object/from16 p11, v12

    .line 161
    .line 162
    move-object/from16 p12, v13

    .line 163
    .line 164
    move/from16 p13, v14

    .line 165
    .line 166
    move/from16 p14, v15

    .line 167
    .line 168
    move-object/from16 p15, v1

    .line 169
    .line 170
    invoke-virtual/range {p0 .. p15}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;IILjava/lang/String;)Lcom/transsion/ad/db/pslink/PsLinkAdPlan;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public final component10()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showMax:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component11()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->clickMax:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showHours:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component13()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showedTimes:I

    .line 2
    .line 3
    return v0
.end method

.method public final component14()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->clickedTimes:I

    .line 2
    .line 3
    return v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showDate:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->nonId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->adSource:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->extAdSlot:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->rank:I

    .line 2
    .line 3
    return v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psPlanId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psLinkAdInfoStr:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psInfoJson:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component9()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->updateTimestamp:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;IILjava/lang/String;)Lcom/transsion/ad/db/pslink/PsLinkAdPlan;
    .locals 17

    .line 1
    const-string v0, "nonId"

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "adSource"

    .line 9
    .line 10
    move-object/from16 v4, p3

    .line 11
    .line 12
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "extAdSlot"

    .line 16
    .line 17
    move-object/from16 v5, p4

    .line 18
    .line 19
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;

    .line 23
    .line 24
    move-object v1, v0

    .line 25
    move/from16 v2, p1

    .line 26
    .line 27
    move/from16 v6, p5

    .line 28
    .line 29
    move-object/from16 v7, p6

    .line 30
    .line 31
    move-object/from16 v8, p7

    .line 32
    .line 33
    move-object/from16 v9, p8

    .line 34
    .line 35
    move-object/from16 v10, p9

    .line 36
    .line 37
    move-object/from16 v11, p10

    .line 38
    .line 39
    move-object/from16 v12, p11

    .line 40
    .line 41
    move-object/from16 v13, p12

    .line 42
    .line 43
    move/from16 v14, p13

    .line 44
    .line 45
    move/from16 v15, p14

    .line 46
    .line 47
    move-object/from16 v16, p15

    .line 48
    .line 49
    invoke-direct/range {v1 .. v16}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;IILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
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
    instance-of v1, p1, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;

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
    check-cast p1, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;

    .line 12
    .line 13
    iget v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->id:I

    .line 14
    .line 15
    iget v3, p1, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->id:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->nonId:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p1, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->nonId:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->adSource:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v3, p1, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->adSource:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->extAdSlot:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v3, p1, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->extAdSlot:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    iget v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->rank:I

    .line 54
    .line 55
    iget v3, p1, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->rank:I

    .line 56
    .line 57
    if-eq v1, v3, :cond_6

    .line 58
    .line 59
    return v2

    .line 60
    :cond_6
    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psPlanId:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v3, p1, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psPlanId:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_7

    .line 69
    .line 70
    return v2

    .line 71
    :cond_7
    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psLinkAdInfoStr:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v3, p1, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psLinkAdInfoStr:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_8

    .line 80
    .line 81
    return v2

    .line 82
    :cond_8
    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psInfoJson:Ljava/lang/String;

    .line 83
    .line 84
    iget-object v3, p1, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psInfoJson:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_9

    .line 91
    .line 92
    return v2

    .line 93
    :cond_9
    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->updateTimestamp:Ljava/lang/Long;

    .line 94
    .line 95
    iget-object v3, p1, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->updateTimestamp:Ljava/lang/Long;

    .line 96
    .line 97
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-nez v1, :cond_a

    .line 102
    .line 103
    return v2

    .line 104
    :cond_a
    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showMax:Ljava/lang/Integer;

    .line 105
    .line 106
    iget-object v3, p1, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showMax:Ljava/lang/Integer;

    .line 107
    .line 108
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-nez v1, :cond_b

    .line 113
    .line 114
    return v2

    .line 115
    :cond_b
    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->clickMax:Ljava/lang/Integer;

    .line 116
    .line 117
    iget-object v3, p1, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->clickMax:Ljava/lang/Integer;

    .line 118
    .line 119
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-nez v1, :cond_c

    .line 124
    .line 125
    return v2

    .line 126
    :cond_c
    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showHours:Ljava/lang/String;

    .line 127
    .line 128
    iget-object v3, p1, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showHours:Ljava/lang/String;

    .line 129
    .line 130
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-nez v1, :cond_d

    .line 135
    .line 136
    return v2

    .line 137
    :cond_d
    iget v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showedTimes:I

    .line 138
    .line 139
    iget v3, p1, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showedTimes:I

    .line 140
    .line 141
    if-eq v1, v3, :cond_e

    .line 142
    .line 143
    return v2

    .line 144
    :cond_e
    iget v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->clickedTimes:I

    .line 145
    .line 146
    iget v3, p1, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->clickedTimes:I

    .line 147
    .line 148
    if-eq v1, v3, :cond_f

    .line 149
    .line 150
    return v2

    .line 151
    :cond_f
    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showDate:Ljava/lang/String;

    .line 152
    .line 153
    iget-object p1, p1, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showDate:Ljava/lang/String;

    .line 154
    .line 155
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-nez p1, :cond_10

    .line 160
    .line 161
    return v2

    .line 162
    :cond_10
    return v0
.end method

.method public final getAdSource()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->adSource:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getClickMax()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->clickMax:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getClickedTimes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->clickedTimes:I

    .line 2
    .line 3
    return v0
.end method

.method public final getExtAdSlot()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->extAdSlot:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public final getNonId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->nonId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPsInfoJson()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psInfoJson:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPsLinkAdInfoStr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psLinkAdInfoStr:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPsPlanId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psPlanId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRank()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->rank:I

    .line 2
    .line 3
    return v0
.end method

.method public final getShowDate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showDate:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShowHours()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showHours:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShowMax()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showMax:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShowedTimes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showedTimes:I

    .line 2
    .line 3
    return v0
.end method

.method public final getUpdateTimestamp()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->updateTimestamp:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->id:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->nonId:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v0, v1

    .line 12
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->adSource:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    add-int/2addr v0, v1

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->extAdSlot:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    add-int/2addr v0, v1

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    .line 32
    iget v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->rank:I

    .line 33
    .line 34
    add-int/2addr v0, v1

    .line 35
    mul-int/lit8 v0, v0, 0x1f

    .line 36
    .line 37
    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psPlanId:Ljava/lang/String;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    if-nez v1, :cond_0

    .line 41
    .line 42
    move v1, v2

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    :goto_0
    add-int/2addr v0, v1

    .line 49
    mul-int/lit8 v0, v0, 0x1f

    .line 50
    .line 51
    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psLinkAdInfoStr:Ljava/lang/String;

    .line 52
    .line 53
    if-nez v1, :cond_1

    .line 54
    .line 55
    move v1, v2

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    :goto_1
    add-int/2addr v0, v1

    .line 62
    mul-int/lit8 v0, v0, 0x1f

    .line 63
    .line 64
    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psInfoJson:Ljava/lang/String;

    .line 65
    .line 66
    if-nez v1, :cond_2

    .line 67
    .line 68
    move v1, v2

    .line 69
    goto :goto_2

    .line 70
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    :goto_2
    add-int/2addr v0, v1

    .line 75
    mul-int/lit8 v0, v0, 0x1f

    .line 76
    .line 77
    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->updateTimestamp:Ljava/lang/Long;

    .line 78
    .line 79
    if-nez v1, :cond_3

    .line 80
    .line 81
    move v1, v2

    .line 82
    goto :goto_3

    .line 83
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    :goto_3
    add-int/2addr v0, v1

    .line 88
    mul-int/lit8 v0, v0, 0x1f

    .line 89
    .line 90
    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showMax:Ljava/lang/Integer;

    .line 91
    .line 92
    if-nez v1, :cond_4

    .line 93
    .line 94
    move v1, v2

    .line 95
    goto :goto_4

    .line 96
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    :goto_4
    add-int/2addr v0, v1

    .line 101
    mul-int/lit8 v0, v0, 0x1f

    .line 102
    .line 103
    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->clickMax:Ljava/lang/Integer;

    .line 104
    .line 105
    if-nez v1, :cond_5

    .line 106
    .line 107
    move v1, v2

    .line 108
    goto :goto_5

    .line 109
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    :goto_5
    add-int/2addr v0, v1

    .line 114
    mul-int/lit8 v0, v0, 0x1f

    .line 115
    .line 116
    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showHours:Ljava/lang/String;

    .line 117
    .line 118
    if-nez v1, :cond_6

    .line 119
    .line 120
    move v1, v2

    .line 121
    goto :goto_6

    .line 122
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    :goto_6
    add-int/2addr v0, v1

    .line 127
    mul-int/lit8 v0, v0, 0x1f

    .line 128
    .line 129
    iget v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showedTimes:I

    .line 130
    .line 131
    add-int/2addr v0, v1

    .line 132
    mul-int/lit8 v0, v0, 0x1f

    .line 133
    .line 134
    iget v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->clickedTimes:I

    .line 135
    .line 136
    add-int/2addr v0, v1

    .line 137
    mul-int/lit8 v0, v0, 0x1f

    .line 138
    .line 139
    iget-object v1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showDate:Ljava/lang/String;

    .line 140
    .line 141
    if-nez v1, :cond_7

    .line 142
    .line 143
    goto :goto_7

    .line 144
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    :goto_7
    add-int/2addr v0, v2

    .line 149
    return v0
.end method

.method public final setAdSource(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->adSource:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setClickMax(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->clickMax:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setClickedTimes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->clickedTimes:I

    .line 2
    .line 3
    return-void
.end method

.method public final setExtAdSlot(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->extAdSlot:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->id:I

    .line 2
    .line 3
    return-void
.end method

.method public final setNonId(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->nonId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setPsInfoJson(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psInfoJson:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPsLinkAdInfoStr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psLinkAdInfoStr:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPsPlanId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psPlanId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRank(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->rank:I

    .line 2
    .line 3
    return-void
.end method

.method public final setShowDate(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showDate:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setShowHours(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showHours:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setShowMax(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showMax:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setShowedTimes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showedTimes:I

    .line 2
    .line 3
    return-void
.end method

.method public final setUpdateTimestamp(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->updateTimestamp:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->id:I

    .line 4
    .line 5
    iget-object v2, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->nonId:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->adSource:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->extAdSlot:Ljava/lang/String;

    .line 10
    .line 11
    iget v5, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->rank:I

    .line 12
    .line 13
    iget-object v6, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psPlanId:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psLinkAdInfoStr:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v8, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psInfoJson:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v9, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->updateTimestamp:Ljava/lang/Long;

    .line 20
    .line 21
    iget-object v10, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showMax:Ljava/lang/Integer;

    .line 22
    .line 23
    iget-object v11, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->clickMax:Ljava/lang/Integer;

    .line 24
    .line 25
    iget-object v12, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showHours:Ljava/lang/String;

    .line 26
    .line 27
    iget v13, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showedTimes:I

    .line 28
    .line 29
    iget v14, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->clickedTimes:I

    .line 30
    .line 31
    iget-object v15, v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showDate:Ljava/lang/String;

    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    move-object/from16 v16, v15

    .line 39
    .line 40
    const-string v15, "PsLinkAdPlan(id="

    .line 41
    .line 42
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, ", nonId="

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", adSource="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ", extAdSlot="

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v1, ", rank="

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v1, ", psPlanId="

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v1, ", psLinkAdInfoStr="

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", psInfoJson="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v1, ", updateTimestamp="

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v1, ", showMax="

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v1, ", clickMax="

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v1, ", showHours="

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v1, ", showedTimes="

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v1, ", clickedTimes="

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v1, ", showDate="

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    move-object/from16 v1, v16

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v1, ")"

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    const-string p2, "dest"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->id:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->nonId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->adSource:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->extAdSlot:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget p2, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->rank:I

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psPlanId:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psLinkAdInfoStr:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->psInfoJson:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->updateTimestamp:Ljava/lang/Long;

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    const/4 v1, 0x0

    .line 50
    if-nez p2, :cond_0

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 64
    .line 65
    .line 66
    :goto_0
    iget-object p2, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showMax:Ljava/lang/Integer;

    .line 67
    .line 68
    if-nez p2, :cond_1

    .line 69
    .line 70
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    .line 83
    .line 84
    :goto_1
    iget-object p2, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->clickMax:Ljava/lang/Integer;

    .line 85
    .line 86
    if-nez p2, :cond_2

    .line 87
    .line 88
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    .line 101
    .line 102
    :goto_2
    iget-object p2, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showHours:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget p2, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showedTimes:I

    .line 108
    .line 109
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    .line 111
    .line 112
    iget p2, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->clickedTimes:I

    .line 113
    .line 114
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    .line 116
    .line 117
    iget-object p2, p0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->showDate:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    return-void
.end method
