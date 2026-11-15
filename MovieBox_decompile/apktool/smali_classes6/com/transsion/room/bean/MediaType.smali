.class public final enum Lcom/transsion/room/bean/MediaType;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/room/bean/MediaType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/transsion/room/bean/MediaType;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "TEXT",
        "IMAGE",
        "AUDIO",
        "LINK",
        "VIDEO",
        "Room_psRelease"
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

.field private static final synthetic $VALUES:[Lcom/transsion/room/bean/MediaType;

.field public static final enum AUDIO:Lcom/transsion/room/bean/MediaType;

.field public static final enum IMAGE:Lcom/transsion/room/bean/MediaType;

.field public static final enum LINK:Lcom/transsion/room/bean/MediaType;

.field public static final enum TEXT:Lcom/transsion/room/bean/MediaType;

.field public static final enum VIDEO:Lcom/transsion/room/bean/MediaType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/room/bean/MediaType;
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Lcom/transsion/room/bean/MediaType;

    .line 3
    .line 4
    sget-object v1, Lcom/transsion/room/bean/MediaType;->TEXT:Lcom/transsion/room/bean/MediaType;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/transsion/room/bean/MediaType;->IMAGE:Lcom/transsion/room/bean/MediaType;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/transsion/room/bean/MediaType;->AUDIO:Lcom/transsion/room/bean/MediaType;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lcom/transsion/room/bean/MediaType;->LINK:Lcom/transsion/room/bean/MediaType;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    sget-object v1, Lcom/transsion/room/bean/MediaType;->VIDEO:Lcom/transsion/room/bean/MediaType;

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/transsion/room/bean/MediaType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "NONE"

    .line 5
    .line 6
    const-string v3, "TEXT"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/room/bean/MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/transsion/room/bean/MediaType;->TEXT:Lcom/transsion/room/bean/MediaType;

    .line 12
    .line 13
    new-instance v0, Lcom/transsion/room/bean/MediaType;

    .line 14
    .line 15
    const-string v1, "IMAGE"

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-direct {v0, v1, v2, v1}, Lcom/transsion/room/bean/MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/transsion/room/bean/MediaType;->IMAGE:Lcom/transsion/room/bean/MediaType;

    .line 22
    .line 23
    new-instance v0, Lcom/transsion/room/bean/MediaType;

    .line 24
    .line 25
    const-string v1, "AUDIO"

    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    invoke-direct {v0, v1, v2, v1}, Lcom/transsion/room/bean/MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lcom/transsion/room/bean/MediaType;->AUDIO:Lcom/transsion/room/bean/MediaType;

    .line 32
    .line 33
    new-instance v0, Lcom/transsion/room/bean/MediaType;

    .line 34
    .line 35
    const-string v1, "LINK"

    .line 36
    .line 37
    const/4 v2, 0x3

    .line 38
    invoke-direct {v0, v1, v2, v1}, Lcom/transsion/room/bean/MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcom/transsion/room/bean/MediaType;->LINK:Lcom/transsion/room/bean/MediaType;

    .line 42
    .line 43
    new-instance v0, Lcom/transsion/room/bean/MediaType;

    .line 44
    .line 45
    const-string v1, "VIDEO"

    .line 46
    .line 47
    const/4 v2, 0x4

    .line 48
    invoke-direct {v0, v1, v2, v1}, Lcom/transsion/room/bean/MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sput-object v0, Lcom/transsion/room/bean/MediaType;->VIDEO:Lcom/transsion/room/bean/MediaType;

    .line 52
    .line 53
    invoke-static {}, Lcom/transsion/room/bean/MediaType;->$values()[Lcom/transsion/room/bean/MediaType;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sput-object v0, Lcom/transsion/room/bean/MediaType;->$VALUES:[Lcom/transsion/room/bean/MediaType;

    .line 58
    .line 59
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Lcom/transsion/room/bean/MediaType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 64
    .line 65
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
    iput-object p3, p0, Lcom/transsion/room/bean/MediaType;->value:Ljava/lang/String;

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
            "Lcom/transsion/room/bean/MediaType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/room/bean/MediaType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/room/bean/MediaType;
    .locals 1

    .line 1
    const-class v0, Lcom/transsion/room/bean/MediaType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/transsion/room/bean/MediaType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/transsion/room/bean/MediaType;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/room/bean/MediaType;->$VALUES:[Lcom/transsion/room/bean/MediaType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/transsion/room/bean/MediaType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/room/bean/MediaType;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
