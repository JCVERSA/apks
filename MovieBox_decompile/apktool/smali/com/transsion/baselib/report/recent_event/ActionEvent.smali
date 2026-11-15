.class public final Lcom/transsion/baselib/report/recent_event/ActionEvent;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/baselib/report/recent_event/ActionEvent$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0014\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0017\u0008\u0086\u0008\u0018\u0000 12\u00020\u0001:\u00012BK\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\r\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\u0010\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J\u0010\u0010\u0013\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0011J\u0010\u0010\u0014\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0014\u0010\u000eJ\u0010\u0010\u0015\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0015\u0010\u000eJV\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\u00022\u0008\u0008\u0002\u0010\n\u001a\u00020\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u0005H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0018\u0010\u0011J\u0010\u0010\u0019\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0019\u0010\u000eJ\u001a\u0010\u001d\u001a\u00020\u001c2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u00d6\u0003\u00a2\u0006\u0004\u0008\u001d\u0010\u001eR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u001f\u001a\u0004\u0008 \u0010\u000e\"\u0004\u0008!\u0010\"R\"\u0010\u0004\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010\u001f\u001a\u0004\u0008#\u0010\u000e\"\u0004\u0008$\u0010\"R\"\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010%\u001a\u0004\u0008&\u0010\u0011\"\u0004\u0008\'\u0010(R\"\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010%\u001a\u0004\u0008)\u0010\u0011\"\u0004\u0008*\u0010(R\"\u0010\u0008\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010%\u001a\u0004\u0008+\u0010\u0011\"\u0004\u0008,\u0010(R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\u001f\u001a\u0004\u0008-\u0010\u000e\"\u0004\u0008.\u0010\"R\"\u0010\n\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u001f\u001a\u0004\u0008/\u0010\u000e\"\u0004\u00080\u0010\"\u00a8\u00063"
    }
    d2 = {
        "Lcom/transsion/baselib/report/recent_event/ActionEvent;",
        "Ljava/io/Serializable;",
        "",
        "id",
        "source",
        "",
        "postId",
        "subjectId",
        "groupId",
        "playDuration",
        "playCount",
        "<init>",
        "(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V",
        "component1",
        "()I",
        "component2",
        "component3",
        "()Ljava/lang/String;",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/transsion/baselib/report/recent_event/ActionEvent;",
        "toString",
        "hashCode",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "I",
        "getId",
        "setId",
        "(I)V",
        "getSource",
        "setSource",
        "Ljava/lang/String;",
        "getPostId",
        "setPostId",
        "(Ljava/lang/String;)V",
        "getSubjectId",
        "setSubjectId",
        "getGroupId",
        "setGroupId",
        "getPlayDuration",
        "setPlayDuration",
        "getPlayCount",
        "setPlayCount",
        "Companion",
        "a",
        "BaseLib_psRelease"
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
.field public static final Companion:Lcom/transsion/baselib/report/recent_event/ActionEvent$a;

.field public static final GroupList:I = 0x2

.field public static final PostDetail:I = 0x4

.field public static final SubjectList:I = 0x3

.field public static final TrendingList:I = 0x1

.field public static final UnknownSource:I = 0x0

.field public static final checkin:I = 0xa

.field public static final checkout:I = 0xb

.field public static final comment:I = 0xd

.field public static final coverclick:I = 0x1

.field public static final create_post:I = 0x9

.field public static final delete_comment:I = 0xe

.field public static final dislike:I = 0x4

.field public static final download:I = 0xc

.field public static final download_subject:I = 0x15

.field public static final i_have_seen:I = 0x6

.field public static final like:I = 0x3

.field public static final pageview:I = 0xf

.field public static final rankscore:I = 0x7

.field public static final search_cover_click:I = 0x14

.field public static final search_cover_expose:I = 0x13

.field public static final share:I = 0x8

.field public static final unknow:I = 0x0

.field public static final view:I = 0x2

.field public static final want_to_see:I = 0x5

.field public static final want_to_see_cancel:I = 0x11


# instance fields
.field private groupId:Ljava/lang/String;

.field private id:I

.field private playCount:I

.field private playDuration:I

.field private postId:Ljava/lang/String;

.field private source:I

.field private subjectId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/baselib/report/recent_event/ActionEvent$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/baselib/report/recent_event/ActionEvent$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->Companion:Lcom/transsion/baselib/report/recent_event/ActionEvent$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    const-string v0, "postId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subjectId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupId"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->id:I

    .line 3
    iput p2, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->source:I

    .line 4
    iput-object p3, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->postId:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->subjectId:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->groupId:Ljava/lang/String;

    .line 7
    iput p6, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->playDuration:I

    .line 8
    iput p7, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->playCount:I

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 v0, p8, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    and-int/lit8 v2, p8, 0x4

    .line 9
    const-string v3, "0"

    if-eqz v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    move-object v2, p3

    :goto_1
    and-int/lit8 v4, p8, 0x8

    if-eqz v4, :cond_2

    move-object v4, v3

    goto :goto_2

    :cond_2
    move-object v4, p4

    :goto_2
    and-int/lit8 v5, p8, 0x10

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    move-object v3, p5

    :goto_3
    and-int/lit8 v5, p8, 0x20

    if-eqz v5, :cond_4

    move v5, v1

    goto :goto_4

    :cond_4
    move v5, p6

    :goto_4
    and-int/lit8 v6, p8, 0x40

    if-eqz v6, :cond_5

    goto :goto_5

    :cond_5
    move v1, p7

    :goto_5
    move-object p2, p0

    move p3, p1

    move p4, v0

    move-object p5, v2

    move-object p6, v4

    move-object p7, v3

    move p8, v5

    move/from16 p9, v1

    invoke-direct/range {p2 .. p9}, Lcom/transsion/baselib/report/recent_event/ActionEvent;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/baselib/report/recent_event/ActionEvent;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Object;)Lcom/transsion/baselib/report/recent_event/ActionEvent;
    .locals 5

    .line 1
    and-int/lit8 p9, p8, 0x1

    .line 2
    .line 3
    if-eqz p9, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->id:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p9, p8, 0x2

    .line 8
    .line 9
    if-eqz p9, :cond_1

    .line 10
    .line 11
    iget p2, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->source:I

    .line 12
    .line 13
    :cond_1
    move p9, p2

    .line 14
    and-int/lit8 p2, p8, 0x4

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    iget-object p3, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->postId:Ljava/lang/String;

    .line 19
    .line 20
    :cond_2
    move-object v0, p3

    .line 21
    and-int/lit8 p2, p8, 0x8

    .line 22
    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    iget-object p4, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->subjectId:Ljava/lang/String;

    .line 26
    .line 27
    :cond_3
    move-object v1, p4

    .line 28
    and-int/lit8 p2, p8, 0x10

    .line 29
    .line 30
    if-eqz p2, :cond_4

    .line 31
    .line 32
    iget-object p5, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->groupId:Ljava/lang/String;

    .line 33
    .line 34
    :cond_4
    move-object v2, p5

    .line 35
    and-int/lit8 p2, p8, 0x20

    .line 36
    .line 37
    if-eqz p2, :cond_5

    .line 38
    .line 39
    iget p6, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->playDuration:I

    .line 40
    .line 41
    :cond_5
    move v3, p6

    .line 42
    and-int/lit8 p2, p8, 0x40

    .line 43
    .line 44
    if-eqz p2, :cond_6

    .line 45
    .line 46
    iget p7, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->playCount:I

    .line 47
    .line 48
    :cond_6
    move v4, p7

    .line 49
    move-object p2, p0

    .line 50
    move p3, p1

    .line 51
    move p4, p9

    .line 52
    move-object p5, v0

    .line 53
    move-object p6, v1

    .line 54
    move-object p7, v2

    .line 55
    move p8, v3

    .line 56
    move p9, v4

    .line 57
    invoke-virtual/range {p2 .. p9}, Lcom/transsion/baselib/report/recent_event/ActionEvent;->copy(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/transsion/baselib/report/recent_event/ActionEvent;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public final component2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->source:I

    .line 2
    .line 3
    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->postId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->subjectId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->groupId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->playDuration:I

    .line 2
    .line 3
    return v0
.end method

.method public final component7()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->playCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final copy(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/transsion/baselib/report/recent_event/ActionEvent;
    .locals 9

    .line 1
    const-string v0, "postId"

    .line 2
    .line 3
    move-object v4, p3

    .line 4
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "subjectId"

    .line 8
    .line 9
    move-object v5, p4

    .line 10
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "groupId"

    .line 14
    .line 15
    move-object v6, p5

    .line 16
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/transsion/baselib/report/recent_event/ActionEvent;

    .line 20
    .line 21
    move-object v1, v0

    .line 22
    move v2, p1

    .line 23
    move v3, p2

    .line 24
    move v7, p6

    .line 25
    move/from16 v8, p7

    .line 26
    .line 27
    invoke-direct/range {v1 .. v8}, Lcom/transsion/baselib/report/recent_event/ActionEvent;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    return-object v0
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
    instance-of v1, p1, Lcom/transsion/baselib/report/recent_event/ActionEvent;

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
    check-cast p1, Lcom/transsion/baselib/report/recent_event/ActionEvent;

    .line 12
    .line 13
    iget v1, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->id:I

    .line 14
    .line 15
    iget v3, p1, Lcom/transsion/baselib/report/recent_event/ActionEvent;->id:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->source:I

    .line 21
    .line 22
    iget v3, p1, Lcom/transsion/baselib/report/recent_event/ActionEvent;->source:I

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-object v1, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->postId:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v3, p1, Lcom/transsion/baselib/report/recent_event/ActionEvent;->postId:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->subjectId:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v3, p1, Lcom/transsion/baselib/report/recent_event/ActionEvent;->subjectId:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->groupId:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v3, p1, Lcom/transsion/baselib/report/recent_event/ActionEvent;->groupId:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_6

    .line 58
    .line 59
    return v2

    .line 60
    :cond_6
    iget v1, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->playDuration:I

    .line 61
    .line 62
    iget v3, p1, Lcom/transsion/baselib/report/recent_event/ActionEvent;->playDuration:I

    .line 63
    .line 64
    if-eq v1, v3, :cond_7

    .line 65
    .line 66
    return v2

    .line 67
    :cond_7
    iget v1, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->playCount:I

    .line 68
    .line 69
    iget p1, p1, Lcom/transsion/baselib/report/recent_event/ActionEvent;->playCount:I

    .line 70
    .line 71
    if-eq v1, p1, :cond_8

    .line 72
    .line 73
    return v2

    .line 74
    :cond_8
    return v0
.end method

.method public final getGroupId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->groupId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPlayCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->playCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPlayDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->playDuration:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPostId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->postId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSource()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->source:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSubjectId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->subjectId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->id:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget v1, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->source:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-object v1, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->postId:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    add-int/2addr v0, v1

    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget-object v1, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->subjectId:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

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
    iget-object v1, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->groupId:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

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
    iget v1, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->playDuration:I

    .line 38
    .line 39
    add-int/2addr v0, v1

    .line 40
    mul-int/lit8 v0, v0, 0x1f

    .line 41
    .line 42
    iget v1, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->playCount:I

    .line 43
    .line 44
    add-int/2addr v0, v1

    .line 45
    return v0
.end method

.method public final setGroupId(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->groupId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->id:I

    .line 2
    .line 3
    return-void
.end method

.method public final setPlayCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->playCount:I

    .line 2
    .line 3
    return-void
.end method

.method public final setPlayDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->playDuration:I

    .line 2
    .line 3
    return-void
.end method

.method public final setPostId(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->postId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setSource(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->source:I

    .line 2
    .line 3
    return-void
.end method

.method public final setSubjectId(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->subjectId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    iget v0, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->id:I

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->source:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->postId:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->subjectId:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->groupId:Ljava/lang/String;

    .line 10
    .line 11
    iget v5, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->playDuration:I

    .line 12
    .line 13
    iget v6, p0, Lcom/transsion/baselib/report/recent_event/ActionEvent;->playCount:I

    .line 14
    .line 15
    new-instance v7, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v8, "ActionEvent(id="

    .line 21
    .line 22
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, ", source="

    .line 29
    .line 30
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, ", postId="

    .line 37
    .line 38
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, ", subjectId="

    .line 45
    .line 46
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, ", groupId="

    .line 53
    .line 54
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, ", playDuration="

    .line 61
    .line 62
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v0, ", playCount="

    .line 69
    .line 70
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, ")"

    .line 77
    .line 78
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    return-object v0
.end method
