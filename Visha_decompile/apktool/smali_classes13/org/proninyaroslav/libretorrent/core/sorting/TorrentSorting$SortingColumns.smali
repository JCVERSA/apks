.class public abstract enum Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$SortingColumnsInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "SortingColumns"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;",
        ">;",
        "Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$SortingColumnsInterface<",
        "Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;

.field public static final enum DATE_ADDED:Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;

.field public static final enum ETA:Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;

.field public static final enum NAME:Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;

.field public static final enum NONE:Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;

.field public static final enum PEERS:Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;

.field public static final enum PROGRESS:Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;

.field public static final enum SIZE:Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;


# direct methods
.method private static synthetic $values()[Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;
    .locals 7

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;->NONE:Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;

    sget-object v1, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;->NAME:Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;

    sget-object v2, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;->SIZE:Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;

    sget-object v3, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;->PROGRESS:Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;

    sget-object v4, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;->ETA:Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;

    sget-object v5, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;->PEERS:Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;

    sget-object v6, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;->DATE_ADDED:Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;

    filled-new-array/range {v0 .. v6}, [Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns$1;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns$1;-><init>(Ljava/lang/String;ILoua;)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;->NONE:Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns$2;

    const-string v1, "NAME"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns$2;-><init>(Ljava/lang/String;ILoua;)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;->NAME:Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns$3;

    const-string v1, "SIZE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns$3;-><init>(Ljava/lang/String;ILoua;)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;->SIZE:Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns$4;

    const-string v1, "PROGRESS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns$4;-><init>(Ljava/lang/String;ILoua;)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;->PROGRESS:Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns$5;

    const-string v1, "ETA"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3}, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns$5;-><init>(Ljava/lang/String;ILoua;)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;->ETA:Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns$6;

    const-string v1, "PEERS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns$6;-><init>(Ljava/lang/String;ILoua;)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;->PEERS:Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns$7;

    const-string v1, "DATE_ADDED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns$7;-><init>(Ljava/lang/String;ILoua;)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;->DATE_ADDED:Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;

    invoke-static {}, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;->$values()[Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;

    move-result-object v0

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;->$VALUES:[Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILoua;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;
    .locals 5

    const-class v0, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;->NONE:Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;
    .locals 1

    const-class v0, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;

    return-object p0
.end method

.method public static values()[Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;
    .locals 1

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;->$VALUES:[Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;

    invoke-virtual {v0}, [Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/proninyaroslav/libretorrent/core/sorting/TorrentSorting$SortingColumns;

    return-object v0
.end method


# virtual methods
.method public abstract synthetic compare(Ljava/lang/Object;Ljava/lang/Object;Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;)I
.end method
