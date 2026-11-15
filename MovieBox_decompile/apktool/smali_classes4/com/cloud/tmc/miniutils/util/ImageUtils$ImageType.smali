.class public final enum Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniutils/util/ImageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

.field public static final enum TYPE_BMP:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

.field public static final enum TYPE_GIF:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

.field public static final enum TYPE_ICO:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

.field public static final enum TYPE_JPG:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

.field public static final enum TYPE_PNG:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

.field public static final enum TYPE_TIFF:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

.field public static final enum TYPE_UNKNOWN:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

.field public static final enum TYPE_WEBP:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;


# instance fields
.field value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;
    .locals 3

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    .line 4
    .line 5
    sget-object v1, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->TYPE_JPG:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->TYPE_PNG:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->TYPE_GIF:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->TYPE_TIFF:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->TYPE_BMP:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->TYPE_WEBP:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->TYPE_ICO:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->TYPE_UNKNOWN:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "jpg"

    .line 5
    .line 6
    const-string v3, "TYPE_JPG"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->TYPE_JPG:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    .line 12
    .line 13
    new-instance v0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "png"

    .line 17
    .line 18
    const-string v3, "TYPE_PNG"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->TYPE_PNG:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    .line 24
    .line 25
    new-instance v0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "gif"

    .line 29
    .line 30
    const-string v3, "TYPE_GIF"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->TYPE_GIF:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    .line 36
    .line 37
    new-instance v0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "tiff"

    .line 41
    .line 42
    const-string v3, "TYPE_TIFF"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->TYPE_TIFF:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    .line 48
    .line 49
    new-instance v0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-string v2, "bmp"

    .line 53
    .line 54
    const-string v3, "TYPE_BMP"

    .line 55
    .line 56
    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->TYPE_BMP:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    .line 60
    .line 61
    new-instance v0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    const-string v2, "webp"

    .line 65
    .line 66
    const-string v3, "TYPE_WEBP"

    .line 67
    .line 68
    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->TYPE_WEBP:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    .line 72
    .line 73
    new-instance v0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    const-string v2, "ico"

    .line 77
    .line 78
    const-string v3, "TYPE_ICO"

    .line 79
    .line 80
    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->TYPE_ICO:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    .line 84
    .line 85
    new-instance v0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    .line 86
    .line 87
    const/4 v1, 0x7

    .line 88
    const-string v2, "unknown"

    .line 89
    .line 90
    const-string v3, "TYPE_UNKNOWN"

    .line 91
    .line 92
    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->TYPE_UNKNOWN:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    .line 96
    .line 97
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->$values()[Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sput-object v0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->$VALUES:[Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    .line 102
    .line 103
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
    iput-object p3, p0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->value:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;
    .locals 1

    .line 1
    const-class v0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->$VALUES:[Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
