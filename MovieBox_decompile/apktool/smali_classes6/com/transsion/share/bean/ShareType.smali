.class public final enum Lcom/transsion/share/bean/ShareType;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/share/bean/ShareType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/transsion/share/bean/ShareType;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "DELETE",
        "DOWNLOAD",
        "COPY_LINK",
        "WHATSAPP",
        "CHECKOUT",
        "TELEGRAM",
        "REPORT",
        "ShareLib_psRelease"
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

.field private static final synthetic $VALUES:[Lcom/transsion/share/bean/ShareType;

.field public static final enum CHECKOUT:Lcom/transsion/share/bean/ShareType;

.field public static final enum COPY_LINK:Lcom/transsion/share/bean/ShareType;

.field public static final enum DELETE:Lcom/transsion/share/bean/ShareType;

.field public static final enum DOWNLOAD:Lcom/transsion/share/bean/ShareType;

.field public static final enum REPORT:Lcom/transsion/share/bean/ShareType;

.field public static final enum TELEGRAM:Lcom/transsion/share/bean/ShareType;

.field public static final enum WHATSAPP:Lcom/transsion/share/bean/ShareType;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/transsion/share/bean/ShareType;
    .locals 3

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [Lcom/transsion/share/bean/ShareType;

    .line 3
    .line 4
    sget-object v1, Lcom/transsion/share/bean/ShareType;->DELETE:Lcom/transsion/share/bean/ShareType;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/transsion/share/bean/ShareType;->DOWNLOAD:Lcom/transsion/share/bean/ShareType;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/transsion/share/bean/ShareType;->COPY_LINK:Lcom/transsion/share/bean/ShareType;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lcom/transsion/share/bean/ShareType;->WHATSAPP:Lcom/transsion/share/bean/ShareType;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    sget-object v1, Lcom/transsion/share/bean/ShareType;->CHECKOUT:Lcom/transsion/share/bean/ShareType;

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    sget-object v1, Lcom/transsion/share/bean/ShareType;->TELEGRAM:Lcom/transsion/share/bean/ShareType;

    .line 30
    .line 31
    const/4 v2, 0x5

    .line 32
    aput-object v1, v0, v2

    .line 33
    .line 34
    sget-object v1, Lcom/transsion/share/bean/ShareType;->REPORT:Lcom/transsion/share/bean/ShareType;

    .line 35
    .line 36
    const/4 v2, 0x6

    .line 37
    aput-object v1, v0, v2

    .line 38
    .line 39
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/transsion/share/bean/ShareType;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const-string v2, "DELETE"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v2, v3, v1}, Lcom/transsion/share/bean/ShareType;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/transsion/share/bean/ShareType;->DELETE:Lcom/transsion/share/bean/ShareType;

    .line 11
    .line 12
    new-instance v0, Lcom/transsion/share/bean/ShareType;

    .line 13
    .line 14
    const-string v1, "DOWNLOAD"

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/share/bean/ShareType;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/transsion/share/bean/ShareType;->DOWNLOAD:Lcom/transsion/share/bean/ShareType;

    .line 21
    .line 22
    new-instance v0, Lcom/transsion/share/bean/ShareType;

    .line 23
    .line 24
    const-string v1, "COPY_LINK"

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/share/bean/ShareType;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/transsion/share/bean/ShareType;->COPY_LINK:Lcom/transsion/share/bean/ShareType;

    .line 31
    .line 32
    new-instance v0, Lcom/transsion/share/bean/ShareType;

    .line 33
    .line 34
    const-string v1, "WHATSAPP"

    .line 35
    .line 36
    const/4 v2, 0x3

    .line 37
    const/4 v3, 0x4

    .line 38
    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/share/bean/ShareType;-><init>(Ljava/lang/String;II)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcom/transsion/share/bean/ShareType;->WHATSAPP:Lcom/transsion/share/bean/ShareType;

    .line 42
    .line 43
    new-instance v0, Lcom/transsion/share/bean/ShareType;

    .line 44
    .line 45
    const-string v1, "CHECKOUT"

    .line 46
    .line 47
    const/4 v2, 0x5

    .line 48
    invoke-direct {v0, v1, v3, v2}, Lcom/transsion/share/bean/ShareType;-><init>(Ljava/lang/String;II)V

    .line 49
    .line 50
    .line 51
    sput-object v0, Lcom/transsion/share/bean/ShareType;->CHECKOUT:Lcom/transsion/share/bean/ShareType;

    .line 52
    .line 53
    new-instance v0, Lcom/transsion/share/bean/ShareType;

    .line 54
    .line 55
    const-string v1, "TELEGRAM"

    .line 56
    .line 57
    const/16 v3, 0xa

    .line 58
    .line 59
    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/share/bean/ShareType;-><init>(Ljava/lang/String;II)V

    .line 60
    .line 61
    .line 62
    sput-object v0, Lcom/transsion/share/bean/ShareType;->TELEGRAM:Lcom/transsion/share/bean/ShareType;

    .line 63
    .line 64
    new-instance v0, Lcom/transsion/share/bean/ShareType;

    .line 65
    .line 66
    const/4 v1, 0x6

    .line 67
    const/16 v2, 0xb

    .line 68
    .line 69
    const-string v3, "REPORT"

    .line 70
    .line 71
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/share/bean/ShareType;-><init>(Ljava/lang/String;II)V

    .line 72
    .line 73
    .line 74
    sput-object v0, Lcom/transsion/share/bean/ShareType;->REPORT:Lcom/transsion/share/bean/ShareType;

    .line 75
    .line 76
    invoke-static {}, Lcom/transsion/share/bean/ShareType;->$values()[Lcom/transsion/share/bean/ShareType;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    sput-object v0, Lcom/transsion/share/bean/ShareType;->$VALUES:[Lcom/transsion/share/bean/ShareType;

    .line 81
    .line 82
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    sput-object v0, Lcom/transsion/share/bean/ShareType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 87
    .line 88
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
    iput p3, p0, Lcom/transsion/share/bean/ShareType;->value:I

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
            "Lcom/transsion/share/bean/ShareType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/share/bean/ShareType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/share/bean/ShareType;
    .locals 1

    .line 1
    const-class v0, Lcom/transsion/share/bean/ShareType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/transsion/share/bean/ShareType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/transsion/share/bean/ShareType;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/share/bean/ShareType;->$VALUES:[Lcom/transsion/share/bean/ShareType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/transsion/share/bean/ShareType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/share/bean/ShareType;->value:I

    .line 2
    .line 3
    return v0
.end method
