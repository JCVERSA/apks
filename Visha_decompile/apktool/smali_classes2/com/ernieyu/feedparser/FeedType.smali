.class public final enum Lcom/ernieyu/feedparser/FeedType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ernieyu/feedparser/FeedType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ernieyu/feedparser/FeedType;

.field public static final enum ATOM_1_0:Lcom/ernieyu/feedparser/FeedType;

.field public static final enum RSS_1_0:Lcom/ernieyu/feedparser/FeedType;

.field public static final enum RSS_2_0:Lcom/ernieyu/feedparser/FeedType;


# direct methods
.method private static synthetic $values()[Lcom/ernieyu/feedparser/FeedType;
    .locals 3

    sget-object v0, Lcom/ernieyu/feedparser/FeedType;->RSS_1_0:Lcom/ernieyu/feedparser/FeedType;

    sget-object v1, Lcom/ernieyu/feedparser/FeedType;->RSS_2_0:Lcom/ernieyu/feedparser/FeedType;

    sget-object v2, Lcom/ernieyu/feedparser/FeedType;->ATOM_1_0:Lcom/ernieyu/feedparser/FeedType;

    filled-new-array {v0, v1, v2}, [Lcom/ernieyu/feedparser/FeedType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/ernieyu/feedparser/FeedType;

    const-string v1, "RSS_1_0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ernieyu/feedparser/FeedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ernieyu/feedparser/FeedType;->RSS_1_0:Lcom/ernieyu/feedparser/FeedType;

    new-instance v0, Lcom/ernieyu/feedparser/FeedType;

    const-string v1, "RSS_2_0"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ernieyu/feedparser/FeedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ernieyu/feedparser/FeedType;->RSS_2_0:Lcom/ernieyu/feedparser/FeedType;

    new-instance v0, Lcom/ernieyu/feedparser/FeedType;

    const-string v1, "ATOM_1_0"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ernieyu/feedparser/FeedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ernieyu/feedparser/FeedType;->ATOM_1_0:Lcom/ernieyu/feedparser/FeedType;

    invoke-static {}, Lcom/ernieyu/feedparser/FeedType;->$values()[Lcom/ernieyu/feedparser/FeedType;

    move-result-object v0

    sput-object v0, Lcom/ernieyu/feedparser/FeedType;->$VALUES:[Lcom/ernieyu/feedparser/FeedType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ernieyu/feedparser/FeedType;
    .locals 1

    const-class v0, Lcom/ernieyu/feedparser/FeedType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ernieyu/feedparser/FeedType;

    return-object p0
.end method

.method public static values()[Lcom/ernieyu/feedparser/FeedType;
    .locals 1

    sget-object v0, Lcom/ernieyu/feedparser/FeedType;->$VALUES:[Lcom/ernieyu/feedparser/FeedType;

    invoke-virtual {v0}, [Lcom/ernieyu/feedparser/FeedType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ernieyu/feedparser/FeedType;

    return-object v0
.end method
