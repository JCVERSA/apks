.class public final enum Lcom/transsion/search_pugc/constant/SearchType;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/search_pugc/constant/SearchType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/transsion/search_pugc/constant/SearchType;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "UGC_COLLECTION",
        "VERTICAL_RANK",
        "VERTICAL_RANK_TYPE2",
        "HASH_TAG",
        "UGC_VIDEO",
        "UNKNOW",
        "Search_psRelease"
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

.field private static final synthetic $VALUES:[Lcom/transsion/search_pugc/constant/SearchType;

.field public static final enum HASH_TAG:Lcom/transsion/search_pugc/constant/SearchType;

.field public static final enum UGC_COLLECTION:Lcom/transsion/search_pugc/constant/SearchType;

.field public static final enum UGC_VIDEO:Lcom/transsion/search_pugc/constant/SearchType;

.field public static final enum UNKNOW:Lcom/transsion/search_pugc/constant/SearchType;

.field public static final enum VERTICAL_RANK:Lcom/transsion/search_pugc/constant/SearchType;

.field public static final enum VERTICAL_RANK_TYPE2:Lcom/transsion/search_pugc/constant/SearchType;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/search_pugc/constant/SearchType;
    .locals 3

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [Lcom/transsion/search_pugc/constant/SearchType;

    .line 3
    .line 4
    sget-object v1, Lcom/transsion/search_pugc/constant/SearchType;->UGC_COLLECTION:Lcom/transsion/search_pugc/constant/SearchType;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/transsion/search_pugc/constant/SearchType;->VERTICAL_RANK:Lcom/transsion/search_pugc/constant/SearchType;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/transsion/search_pugc/constant/SearchType;->VERTICAL_RANK_TYPE2:Lcom/transsion/search_pugc/constant/SearchType;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lcom/transsion/search_pugc/constant/SearchType;->HASH_TAG:Lcom/transsion/search_pugc/constant/SearchType;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    sget-object v1, Lcom/transsion/search_pugc/constant/SearchType;->UGC_VIDEO:Lcom/transsion/search_pugc/constant/SearchType;

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    sget-object v1, Lcom/transsion/search_pugc/constant/SearchType;->UNKNOW:Lcom/transsion/search_pugc/constant/SearchType;

    .line 30
    .line 31
    const/4 v2, 0x5

    .line 32
    aput-object v1, v0, v2

    .line 33
    .line 34
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/transsion/search_pugc/constant/SearchType;

    .line 2
    .line 3
    const-string v1, "UGC_COLLECTION"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/transsion/search_pugc/constant/SearchType;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/transsion/search_pugc/constant/SearchType;->UGC_COLLECTION:Lcom/transsion/search_pugc/constant/SearchType;

    .line 10
    .line 11
    new-instance v0, Lcom/transsion/search_pugc/constant/SearchType;

    .line 12
    .line 13
    const-string v1, "VERTICAL_RANK"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/transsion/search_pugc/constant/SearchType;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/transsion/search_pugc/constant/SearchType;->VERTICAL_RANK:Lcom/transsion/search_pugc/constant/SearchType;

    .line 20
    .line 21
    new-instance v0, Lcom/transsion/search_pugc/constant/SearchType;

    .line 22
    .line 23
    const-string v1, "VERTICAL_RANK_TYPE2"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/transsion/search_pugc/constant/SearchType;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/transsion/search_pugc/constant/SearchType;->VERTICAL_RANK_TYPE2:Lcom/transsion/search_pugc/constant/SearchType;

    .line 30
    .line 31
    new-instance v0, Lcom/transsion/search_pugc/constant/SearchType;

    .line 32
    .line 33
    const-string v1, "HASH_TAG"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lcom/transsion/search_pugc/constant/SearchType;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/transsion/search_pugc/constant/SearchType;->HASH_TAG:Lcom/transsion/search_pugc/constant/SearchType;

    .line 40
    .line 41
    new-instance v0, Lcom/transsion/search_pugc/constant/SearchType;

    .line 42
    .line 43
    const-string v1, "UGC_VIDEO"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lcom/transsion/search_pugc/constant/SearchType;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/transsion/search_pugc/constant/SearchType;->UGC_VIDEO:Lcom/transsion/search_pugc/constant/SearchType;

    .line 50
    .line 51
    new-instance v0, Lcom/transsion/search_pugc/constant/SearchType;

    .line 52
    .line 53
    const-string v1, "UNKNOW"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lcom/transsion/search_pugc/constant/SearchType;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/transsion/search_pugc/constant/SearchType;->UNKNOW:Lcom/transsion/search_pugc/constant/SearchType;

    .line 60
    .line 61
    invoke-static {}, Lcom/transsion/search_pugc/constant/SearchType;->$values()[Lcom/transsion/search_pugc/constant/SearchType;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lcom/transsion/search_pugc/constant/SearchType;->$VALUES:[Lcom/transsion/search_pugc/constant/SearchType;

    .line 66
    .line 67
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lcom/transsion/search_pugc/constant/SearchType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 72
    .line 73
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/transsion/search_pugc/constant/SearchType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/search_pugc/constant/SearchType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/search_pugc/constant/SearchType;
    .locals 1

    .line 1
    const-class v0, Lcom/transsion/search_pugc/constant/SearchType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/transsion/search_pugc/constant/SearchType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/transsion/search_pugc/constant/SearchType;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/search_pugc/constant/SearchType;->$VALUES:[Lcom/transsion/search_pugc/constant/SearchType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/transsion/search_pugc/constant/SearchType;

    .line 8
    .line 9
    return-object v0
.end method
