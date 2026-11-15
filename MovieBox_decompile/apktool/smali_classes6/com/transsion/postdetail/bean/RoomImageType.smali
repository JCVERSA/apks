.class public final enum Lcom/transsion/postdetail/bean/RoomImageType;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/postdetail/bean/RoomImageType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/transsion/postdetail/bean/RoomImageType;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "ROOM_IMAGE",
        "AUTHOR_IMAGE",
        "POST_SINGLE",
        "POST_MORE",
        "PostDetail_psRelease"
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

.field private static final synthetic $VALUES:[Lcom/transsion/postdetail/bean/RoomImageType;

.field public static final enum AUTHOR_IMAGE:Lcom/transsion/postdetail/bean/RoomImageType;

.field public static final enum POST_MORE:Lcom/transsion/postdetail/bean/RoomImageType;

.field public static final enum POST_SINGLE:Lcom/transsion/postdetail/bean/RoomImageType;

.field public static final enum ROOM_IMAGE:Lcom/transsion/postdetail/bean/RoomImageType;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/transsion/postdetail/bean/RoomImageType;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Lcom/transsion/postdetail/bean/RoomImageType;

    .line 3
    .line 4
    sget-object v1, Lcom/transsion/postdetail/bean/RoomImageType;->ROOM_IMAGE:Lcom/transsion/postdetail/bean/RoomImageType;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/transsion/postdetail/bean/RoomImageType;->AUTHOR_IMAGE:Lcom/transsion/postdetail/bean/RoomImageType;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/transsion/postdetail/bean/RoomImageType;->POST_SINGLE:Lcom/transsion/postdetail/bean/RoomImageType;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lcom/transsion/postdetail/bean/RoomImageType;->POST_MORE:Lcom/transsion/postdetail/bean/RoomImageType;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/transsion/postdetail/bean/RoomImageType;

    .line 2
    .line 3
    const-string v1, "ROOM_IMAGE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/postdetail/bean/RoomImageType;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/transsion/postdetail/bean/RoomImageType;->ROOM_IMAGE:Lcom/transsion/postdetail/bean/RoomImageType;

    .line 11
    .line 12
    new-instance v0, Lcom/transsion/postdetail/bean/RoomImageType;

    .line 13
    .line 14
    const-string v1, "AUTHOR_IMAGE"

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-direct {v0, v1, v3, v2}, Lcom/transsion/postdetail/bean/RoomImageType;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/transsion/postdetail/bean/RoomImageType;->AUTHOR_IMAGE:Lcom/transsion/postdetail/bean/RoomImageType;

    .line 21
    .line 22
    new-instance v0, Lcom/transsion/postdetail/bean/RoomImageType;

    .line 23
    .line 24
    const-string v1, "POST_SINGLE"

    .line 25
    .line 26
    const/4 v3, 0x3

    .line 27
    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/postdetail/bean/RoomImageType;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/transsion/postdetail/bean/RoomImageType;->POST_SINGLE:Lcom/transsion/postdetail/bean/RoomImageType;

    .line 31
    .line 32
    new-instance v0, Lcom/transsion/postdetail/bean/RoomImageType;

    .line 33
    .line 34
    const-string v1, "POST_MORE"

    .line 35
    .line 36
    const/4 v2, 0x4

    .line 37
    invoke-direct {v0, v1, v3, v2}, Lcom/transsion/postdetail/bean/RoomImageType;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/transsion/postdetail/bean/RoomImageType;->POST_MORE:Lcom/transsion/postdetail/bean/RoomImageType;

    .line 41
    .line 42
    invoke-static {}, Lcom/transsion/postdetail/bean/RoomImageType;->$values()[Lcom/transsion/postdetail/bean/RoomImageType;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sput-object v0, Lcom/transsion/postdetail/bean/RoomImageType;->$VALUES:[Lcom/transsion/postdetail/bean/RoomImageType;

    .line 47
    .line 48
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    sput-object v0, Lcom/transsion/postdetail/bean/RoomImageType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 53
    .line 54
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
    iput p3, p0, Lcom/transsion/postdetail/bean/RoomImageType;->value:I

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
            "Lcom/transsion/postdetail/bean/RoomImageType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/postdetail/bean/RoomImageType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/postdetail/bean/RoomImageType;
    .locals 1

    .line 1
    const-class v0, Lcom/transsion/postdetail/bean/RoomImageType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/transsion/postdetail/bean/RoomImageType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/transsion/postdetail/bean/RoomImageType;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/postdetail/bean/RoomImageType;->$VALUES:[Lcom/transsion/postdetail/bean/RoomImageType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/transsion/postdetail/bean/RoomImageType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/postdetail/bean/RoomImageType;->value:I

    .line 2
    .line 3
    return v0
.end method
