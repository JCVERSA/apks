.class public final enum Lcom/transsion/moviedetailapi/PostRankType;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/moviedetailapi/PostRankType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/transsion/moviedetailapi/PostRankType;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "setValue",
        "(Ljava/lang/String;)V",
        "POST_RANK_TYPE_DEFAULT",
        "POST_RANK_TYPE_HOT",
        "POST_RANK_TYPE_NEW",
        "MovieDetailApi_psRelease"
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/transsion/moviedetailapi/PostRankType;

.field public static final enum POST_RANK_TYPE_DEFAULT:Lcom/transsion/moviedetailapi/PostRankType;

.field public static final enum POST_RANK_TYPE_HOT:Lcom/transsion/moviedetailapi/PostRankType;

.field public static final enum POST_RANK_TYPE_NEW:Lcom/transsion/moviedetailapi/PostRankType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/moviedetailapi/PostRankType;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Lcom/transsion/moviedetailapi/PostRankType;

    .line 3
    .line 4
    sget-object v1, Lcom/transsion/moviedetailapi/PostRankType;->POST_RANK_TYPE_DEFAULT:Lcom/transsion/moviedetailapi/PostRankType;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/transsion/moviedetailapi/PostRankType;->POST_RANK_TYPE_HOT:Lcom/transsion/moviedetailapi/PostRankType;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/transsion/moviedetailapi/PostRankType;->POST_RANK_TYPE_NEW:Lcom/transsion/moviedetailapi/PostRankType;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/transsion/moviedetailapi/PostRankType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "PostRankTypeDefault"

    .line 5
    .line 6
    const-string v3, "POST_RANK_TYPE_DEFAULT"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/moviedetailapi/PostRankType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/transsion/moviedetailapi/PostRankType;->POST_RANK_TYPE_DEFAULT:Lcom/transsion/moviedetailapi/PostRankType;

    .line 12
    .line 13
    new-instance v0, Lcom/transsion/moviedetailapi/PostRankType;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "PostRankTypeHot"

    .line 17
    .line 18
    const-string v3, "POST_RANK_TYPE_HOT"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/moviedetailapi/PostRankType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/transsion/moviedetailapi/PostRankType;->POST_RANK_TYPE_HOT:Lcom/transsion/moviedetailapi/PostRankType;

    .line 24
    .line 25
    new-instance v0, Lcom/transsion/moviedetailapi/PostRankType;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "PostRankTypeNew"

    .line 29
    .line 30
    const-string v3, "POST_RANK_TYPE_NEW"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/moviedetailapi/PostRankType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/transsion/moviedetailapi/PostRankType;->POST_RANK_TYPE_NEW:Lcom/transsion/moviedetailapi/PostRankType;

    .line 36
    .line 37
    invoke-static {}, Lcom/transsion/moviedetailapi/PostRankType;->$values()[Lcom/transsion/moviedetailapi/PostRankType;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/transsion/moviedetailapi/PostRankType;->$VALUES:[Lcom/transsion/moviedetailapi/PostRankType;

    .line 42
    .line 43
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lcom/transsion/moviedetailapi/PostRankType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 48
    .line 49
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/transsion/moviedetailapi/PostRankType;->value:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/transsion/moviedetailapi/PostRankType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/moviedetailapi/PostRankType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/moviedetailapi/PostRankType;
    .locals 1

    .line 1
    const-class v0, Lcom/transsion/moviedetailapi/PostRankType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/transsion/moviedetailapi/PostRankType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/transsion/moviedetailapi/PostRankType;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/moviedetailapi/PostRankType;->$VALUES:[Lcom/transsion/moviedetailapi/PostRankType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/transsion/moviedetailapi/PostRankType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/PostRankType;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/moviedetailapi/PostRankType;->value:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
