.class public final enum Lcom/transsion/home/bean/TrendingRespItemType;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/home/bean/TrendingRespItemType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/transsion/home/bean/TrendingRespItemType;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "SUBJECT",
        "PLAY_LIST",
        "Home_psRelease"
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

.field private static final synthetic $VALUES:[Lcom/transsion/home/bean/TrendingRespItemType;

.field public static final enum PLAY_LIST:Lcom/transsion/home/bean/TrendingRespItemType;

.field public static final enum SUBJECT:Lcom/transsion/home/bean/TrendingRespItemType;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/transsion/home/bean/TrendingRespItemType;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lcom/transsion/home/bean/TrendingRespItemType;

    .line 3
    .line 4
    sget-object v1, Lcom/transsion/home/bean/TrendingRespItemType;->SUBJECT:Lcom/transsion/home/bean/TrendingRespItemType;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/transsion/home/bean/TrendingRespItemType;->PLAY_LIST:Lcom/transsion/home/bean/TrendingRespItemType;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/transsion/home/bean/TrendingRespItemType;

    .line 2
    .line 3
    const-string v1, "SUBJECT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/home/bean/TrendingRespItemType;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/transsion/home/bean/TrendingRespItemType;->SUBJECT:Lcom/transsion/home/bean/TrendingRespItemType;

    .line 11
    .line 12
    new-instance v0, Lcom/transsion/home/bean/TrendingRespItemType;

    .line 13
    .line 14
    const-string v1, "PLAY_LIST"

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-direct {v0, v1, v3, v2}, Lcom/transsion/home/bean/TrendingRespItemType;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/transsion/home/bean/TrendingRespItemType;->PLAY_LIST:Lcom/transsion/home/bean/TrendingRespItemType;

    .line 21
    .line 22
    invoke-static {}, Lcom/transsion/home/bean/TrendingRespItemType;->$values()[Lcom/transsion/home/bean/TrendingRespItemType;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcom/transsion/home/bean/TrendingRespItemType;->$VALUES:[Lcom/transsion/home/bean/TrendingRespItemType;

    .line 27
    .line 28
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Lcom/transsion/home/bean/TrendingRespItemType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 33
    .line 34
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/transsion/home/bean/TrendingRespItemType;->value:I

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
            "Lcom/transsion/home/bean/TrendingRespItemType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/home/bean/TrendingRespItemType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/home/bean/TrendingRespItemType;
    .locals 1

    .line 1
    const-class v0, Lcom/transsion/home/bean/TrendingRespItemType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/transsion/home/bean/TrendingRespItemType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/transsion/home/bean/TrendingRespItemType;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/home/bean/TrendingRespItemType;->$VALUES:[Lcom/transsion/home/bean/TrendingRespItemType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/transsion/home/bean/TrendingRespItemType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/home/bean/TrendingRespItemType;->value:I

    .line 2
    .line 3
    return v0
.end method
