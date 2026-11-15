.class public final Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/startup/pref/consume/AppStartDotStateEntity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u001d\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u001e\u0008\u0087\u0008\u0018\u0000 C2\u00020\u0001:\u0001DBy\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0013J\u0010\u0010\u0017\u001a\u00020\u0007H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u0007H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0019\u0010\u0018J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001a\u0010\u0015J\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001b\u0010\u0015J\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001c\u0010\u0015J\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001d\u0010\u0015J\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001e\u0010\u0015J\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001f\u0010 J\u008a\u0001\u0010!\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u00072\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008!\u0010\"J\u0010\u0010#\u001a\u00020\u0004H\u00d6\u0001\u00a2\u0006\u0004\u0008#\u0010\u0015J\u0010\u0010$\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008$\u0010\u0013J\u001a\u0010(\u001a\u00020\'2\u0008\u0010&\u001a\u0004\u0018\u00010%H\u00d6\u0003\u00a2\u0006\u0004\u0008(\u0010)R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010*\u001a\u0004\u0008+\u0010\u0013R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010,\u001a\u0004\u0008-\u0010\u0015R\u0017\u0010\u0006\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010*\u001a\u0004\u0008.\u0010\u0013R\u0017\u0010\u0008\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010/\u001a\u0004\u00080\u0010\u0018R\"\u0010\t\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010/\u001a\u0004\u00081\u0010\u0018\"\u0004\u00082\u00103R$\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010,\u001a\u0004\u00084\u0010\u0015\"\u0004\u00085\u00106R$\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010,\u001a\u0004\u00087\u0010\u0015\"\u0004\u00088\u00106R$\u0010\u000c\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010,\u001a\u0004\u00089\u0010\u0015\"\u0004\u0008:\u00106R$\u0010\r\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010,\u001a\u0004\u0008;\u0010\u0015\"\u0004\u0008<\u00106R$\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010,\u001a\u0004\u0008=\u0010\u0015\"\u0004\u0008>\u00106R$\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010?\u001a\u0004\u0008@\u0010 \"\u0004\u0008A\u0010B\u00a8\u0006E"
    }
    d2 = {
        "Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;",
        "Ljava/io/Serializable;",
        "",
        "state",
        "",
        "alias",
        "type",
        "",
        "timestamp",
        "totalTime",
        "totalMem",
        "availMem",
        "threshold",
        "totalSize",
        "availableSize",
        "coreSize",
        "<init>",
        "(ILjava/lang/String;IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V",
        "component1",
        "()I",
        "component2",
        "()Ljava/lang/String;",
        "component3",
        "component4",
        "()J",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "()Ljava/lang/Integer;",
        "copy",
        "(ILjava/lang/String;IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;",
        "toString",
        "hashCode",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "I",
        "getState",
        "Ljava/lang/String;",
        "getAlias",
        "getType",
        "J",
        "getTimestamp",
        "getTotalTime",
        "setTotalTime",
        "(J)V",
        "getTotalMem",
        "setTotalMem",
        "(Ljava/lang/String;)V",
        "getAvailMem",
        "setAvailMem",
        "getThreshold",
        "setThreshold",
        "getTotalSize",
        "setTotalSize",
        "getAvailableSize",
        "setAvailableSize",
        "Ljava/lang/Integer;",
        "getCoreSize",
        "setCoreSize",
        "(Ljava/lang/Integer;)V",
        "Companion",
        "a",
        "Startup_psRelease"
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
.field public static final Companion:Lcom/transsion/startup/pref/consume/AppStartDotStateEntity$a;

.field public static final DOT_STATE_END:I = 0x3

.field public static final DOT_STATE_PROCESS:I = 0x2

.field public static final DOT_STATE_START:I = 0x1

.field public static final DOT_TYPE_CONSUME:I = 0x3

.field public static final DOT_TYPE_NET:I = 0x2

.field public static final DOT_TYPE_UI:I = 0x1


# instance fields
.field private final alias:Ljava/lang/String;

.field private availMem:Ljava/lang/String;

.field private availableSize:Ljava/lang/String;

.field private coreSize:Ljava/lang/Integer;

.field private final state:I

.field private threshold:Ljava/lang/String;

.field private final timestamp:J

.field private totalMem:Ljava/lang/String;

.field private totalSize:Ljava/lang/String;

.field private totalTime:J

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->Companion:Lcom/transsion/startup/pref/consume/AppStartDotStateEntity$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "alias"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->state:I

    .line 3
    iput-object p2, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->alias:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->type:I

    .line 5
    iput-wide p4, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->timestamp:J

    .line 6
    iput-wide p6, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalTime:J

    .line 7
    iput-object p8, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalMem:Ljava/lang/String;

    .line 8
    iput-object p9, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->availMem:Ljava/lang/String;

    .line 9
    iput-object p10, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->threshold:Ljava/lang/String;

    .line 10
    iput-object p11, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalSize:Ljava/lang/String;

    .line 11
    iput-object p12, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->availableSize:Ljava/lang/String;

    .line 12
    iput-object p13, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->coreSize:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 17

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    move-wide v9, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v9, p6

    :goto_0
    and-int/lit8 v1, v0, 0x20

    .line 13
    const-string v2, ""

    if-eqz v1, :cond_1

    move-object v11, v2

    goto :goto_1

    :cond_1
    move-object/from16 v11, p8

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    move-object v12, v2

    goto :goto_2

    :cond_2
    move-object/from16 v12, p9

    :goto_2
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    move-object v13, v2

    goto :goto_3

    :cond_3
    move-object/from16 v13, p10

    :goto_3
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_4

    move-object v14, v2

    goto :goto_4

    :cond_4
    move-object/from16 v14, p11

    :goto_4
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_5

    move-object v15, v2

    goto :goto_5

    :cond_5
    move-object/from16 v15, p12

    :goto_5
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_6

    :cond_6
    move-object/from16 v16, p13

    :goto_6
    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-wide/from16 v7, p4

    .line 15
    invoke-direct/range {v3 .. v16}, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;-><init>(ILjava/lang/String;IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;ILjava/lang/String;IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p14

    .line 3
    .line 4
    and-int/lit8 v2, v1, 0x1

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    iget v2, v0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->state:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v2, p1

    .line 12
    :goto_0
    and-int/lit8 v3, v1, 0x2

    .line 13
    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    iget-object v3, v0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->alias:Ljava/lang/String;

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move-object/from16 v3, p2

    .line 20
    .line 21
    :goto_1
    and-int/lit8 v4, v1, 0x4

    .line 22
    .line 23
    if-eqz v4, :cond_2

    .line 24
    .line 25
    iget v4, v0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->type:I

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_2
    move/from16 v4, p3

    .line 29
    .line 30
    :goto_2
    and-int/lit8 v5, v1, 0x8

    .line 31
    .line 32
    if-eqz v5, :cond_3

    .line 33
    .line 34
    iget-wide v5, v0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->timestamp:J

    .line 35
    .line 36
    goto :goto_3

    .line 37
    :cond_3
    move-wide/from16 v5, p4

    .line 38
    .line 39
    :goto_3
    and-int/lit8 v7, v1, 0x10

    .line 40
    .line 41
    if-eqz v7, :cond_4

    .line 42
    .line 43
    iget-wide v7, v0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalTime:J

    .line 44
    .line 45
    goto :goto_4

    .line 46
    :cond_4
    move-wide/from16 v7, p6

    .line 47
    .line 48
    :goto_4
    and-int/lit8 v9, v1, 0x20

    .line 49
    .line 50
    if-eqz v9, :cond_5

    .line 51
    .line 52
    iget-object v9, v0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalMem:Ljava/lang/String;

    .line 53
    .line 54
    goto :goto_5

    .line 55
    :cond_5
    move-object/from16 v9, p8

    .line 56
    .line 57
    :goto_5
    and-int/lit8 v10, v1, 0x40

    .line 58
    .line 59
    if-eqz v10, :cond_6

    .line 60
    .line 61
    iget-object v10, v0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->availMem:Ljava/lang/String;

    .line 62
    .line 63
    goto :goto_6

    .line 64
    :cond_6
    move-object/from16 v10, p9

    .line 65
    .line 66
    :goto_6
    and-int/lit16 v11, v1, 0x80

    .line 67
    .line 68
    if-eqz v11, :cond_7

    .line 69
    .line 70
    iget-object v11, v0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->threshold:Ljava/lang/String;

    .line 71
    .line 72
    goto :goto_7

    .line 73
    :cond_7
    move-object/from16 v11, p10

    .line 74
    .line 75
    :goto_7
    and-int/lit16 v12, v1, 0x100

    .line 76
    .line 77
    if-eqz v12, :cond_8

    .line 78
    .line 79
    iget-object v12, v0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalSize:Ljava/lang/String;

    .line 80
    .line 81
    goto :goto_8

    .line 82
    :cond_8
    move-object/from16 v12, p11

    .line 83
    .line 84
    :goto_8
    and-int/lit16 v13, v1, 0x200

    .line 85
    .line 86
    if-eqz v13, :cond_9

    .line 87
    .line 88
    iget-object v13, v0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->availableSize:Ljava/lang/String;

    .line 89
    .line 90
    goto :goto_9

    .line 91
    :cond_9
    move-object/from16 v13, p12

    .line 92
    .line 93
    :goto_9
    and-int/lit16 v1, v1, 0x400

    .line 94
    .line 95
    if-eqz v1, :cond_a

    .line 96
    .line 97
    iget-object v1, v0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->coreSize:Ljava/lang/Integer;

    .line 98
    .line 99
    goto :goto_a

    .line 100
    :cond_a
    move-object/from16 v1, p13

    .line 101
    .line 102
    :goto_a
    move p1, v2

    .line 103
    move-object/from16 p2, v3

    .line 104
    .line 105
    move/from16 p3, v4

    .line 106
    .line 107
    move-wide/from16 p4, v5

    .line 108
    .line 109
    move-wide/from16 p6, v7

    .line 110
    .line 111
    move-object/from16 p8, v9

    .line 112
    .line 113
    move-object/from16 p9, v10

    .line 114
    .line 115
    move-object/from16 p10, v11

    .line 116
    .line 117
    move-object/from16 p11, v12

    .line 118
    .line 119
    move-object/from16 p12, v13

    .line 120
    .line 121
    move-object/from16 p13, v1

    .line 122
    .line 123
    invoke-virtual/range {p0 .. p13}, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->copy(ILjava/lang/String;IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->state:I

    .line 2
    .line 3
    return v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->availableSize:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component11()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->coreSize:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->alias:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public final component4()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->timestamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component5()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalMem:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->availMem:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->threshold:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalSize:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(ILjava/lang/String;IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;
    .locals 15

    .line 1
    const-string v0, "alias"

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;

    .line 9
    .line 10
    move-object v1, v0

    .line 11
    move/from16 v2, p1

    .line 12
    .line 13
    move/from16 v4, p3

    .line 14
    .line 15
    move-wide/from16 v5, p4

    .line 16
    .line 17
    move-wide/from16 v7, p6

    .line 18
    .line 19
    move-object/from16 v9, p8

    .line 20
    .line 21
    move-object/from16 v10, p9

    .line 22
    .line 23
    move-object/from16 v11, p10

    .line 24
    .line 25
    move-object/from16 v12, p11

    .line 26
    .line 27
    move-object/from16 v13, p12

    .line 28
    .line 29
    move-object/from16 v14, p13

    .line 30
    .line 31
    invoke-direct/range {v1 .. v14}, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;-><init>(ILjava/lang/String;IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 32
    .line 33
    .line 34
    return-object v0
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
    instance-of v1, p1, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;

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
    check-cast p1, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;

    .line 12
    .line 13
    iget v1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->state:I

    .line 14
    .line 15
    iget v3, p1, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->state:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->alias:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p1, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->alias:Ljava/lang/String;

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
    iget v1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->type:I

    .line 32
    .line 33
    iget v3, p1, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->type:I

    .line 34
    .line 35
    if-eq v1, v3, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget-wide v3, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->timestamp:J

    .line 39
    .line 40
    iget-wide v5, p1, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->timestamp:J

    .line 41
    .line 42
    cmp-long v1, v3, v5

    .line 43
    .line 44
    if-eqz v1, :cond_5

    .line 45
    .line 46
    return v2

    .line 47
    :cond_5
    iget-wide v3, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalTime:J

    .line 48
    .line 49
    iget-wide v5, p1, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalTime:J

    .line 50
    .line 51
    cmp-long v1, v3, v5

    .line 52
    .line 53
    if-eqz v1, :cond_6

    .line 54
    .line 55
    return v2

    .line 56
    :cond_6
    iget-object v1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalMem:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v3, p1, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalMem:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_7

    .line 65
    .line 66
    return v2

    .line 67
    :cond_7
    iget-object v1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->availMem:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v3, p1, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->availMem:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_8

    .line 76
    .line 77
    return v2

    .line 78
    :cond_8
    iget-object v1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->threshold:Ljava/lang/String;

    .line 79
    .line 80
    iget-object v3, p1, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->threshold:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalSize:Ljava/lang/String;

    .line 90
    .line 91
    iget-object v3, p1, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalSize:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-nez v1, :cond_a

    .line 98
    .line 99
    return v2

    .line 100
    :cond_a
    iget-object v1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->availableSize:Ljava/lang/String;

    .line 101
    .line 102
    iget-object v3, p1, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->availableSize:Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-nez v1, :cond_b

    .line 109
    .line 110
    return v2

    .line 111
    :cond_b
    iget-object v1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->coreSize:Ljava/lang/Integer;

    .line 112
    .line 113
    iget-object p1, p1, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->coreSize:Ljava/lang/Integer;

    .line 114
    .line 115
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-nez p1, :cond_c

    .line 120
    .line 121
    return v2

    .line 122
    :cond_c
    return v0
.end method

.method public final getAlias()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->alias:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAvailMem()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->availMem:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAvailableSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->availableSize:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCoreSize()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->coreSize:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->state:I

    .line 2
    .line 3
    return v0
.end method

.method public final getThreshold()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->threshold:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->timestamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getTotalMem()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalMem:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTotalSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalSize:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTotalTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->state:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->alias:Ljava/lang/String;

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
    iget v1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->type:I

    .line 15
    .line 16
    add-int/2addr v0, v1

    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget-wide v1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->timestamp:J

    .line 20
    .line 21
    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    add-int/2addr v0, v1

    .line 26
    mul-int/lit8 v0, v0, 0x1f

    .line 27
    .line 28
    iget-wide v1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalTime:J

    .line 29
    .line 30
    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    add-int/2addr v0, v1

    .line 35
    mul-int/lit8 v0, v0, 0x1f

    .line 36
    .line 37
    iget-object v1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalMem:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->availMem:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->threshold:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalSize:Ljava/lang/String;

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
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

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
    iget-object v1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->availableSize:Ljava/lang/String;

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
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

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
    iget-object v1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->coreSize:Ljava/lang/Integer;

    .line 104
    .line 105
    if-nez v1, :cond_5

    .line 106
    .line 107
    goto :goto_5

    .line 108
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    :goto_5
    add-int/2addr v0, v2

    .line 113
    return v0
.end method

.method public final setAvailMem(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->availMem:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setAvailableSize(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->availableSize:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setCoreSize(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->coreSize:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setThreshold(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->threshold:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setTotalMem(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalMem:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setTotalSize(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalSize:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setTotalTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalTime:J

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    .line 1
    iget v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->state:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->alias:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->type:I

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->timestamp:J

    .line 8
    .line 9
    iget-wide v5, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalTime:J

    .line 10
    .line 11
    iget-object v7, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalMem:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v8, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->availMem:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v9, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->threshold:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v10, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalSize:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v11, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->availableSize:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v12, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->coreSize:Ljava/lang/Integer;

    .line 22
    .line 23
    new-instance v13, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v14, "AppStartDotStateEntity(state="

    .line 29
    .line 30
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, ", alias="

    .line 37
    .line 38
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, ", type="

    .line 45
    .line 46
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, ", timestamp="

    .line 53
    .line 54
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, ", totalTime="

    .line 61
    .line 62
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v0, ", totalMem="

    .line 69
    .line 70
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, ", availMem="

    .line 77
    .line 78
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v0, ", threshold="

    .line 85
    .line 86
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v0, ", totalSize="

    .line 93
    .line 94
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v0, ", availableSize="

    .line 101
    .line 102
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v0, ", coreSize="

    .line 109
    .line 110
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v0, ")"

    .line 117
    .line 118
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    return-object v0
.end method
