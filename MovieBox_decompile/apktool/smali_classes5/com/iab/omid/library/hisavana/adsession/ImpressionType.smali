.class public final enum Lcom/iab/omid/library/hisavana/adsession/ImpressionType;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iab/omid/library/hisavana/adsession/ImpressionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iab/omid/library/hisavana/adsession/ImpressionType;

.field public static final enum AUDIBLE:Lcom/iab/omid/library/hisavana/adsession/ImpressionType;

.field public static final enum BEGIN_TO_RENDER:Lcom/iab/omid/library/hisavana/adsession/ImpressionType;

.field public static final enum DEFINED_BY_JAVASCRIPT:Lcom/iab/omid/library/hisavana/adsession/ImpressionType;

.field public static final enum LOADED:Lcom/iab/omid/library/hisavana/adsession/ImpressionType;

.field public static final enum ONE_PIXEL:Lcom/iab/omid/library/hisavana/adsession/ImpressionType;

.field public static final enum OTHER:Lcom/iab/omid/library/hisavana/adsession/ImpressionType;

.field public static final enum UNSPECIFIED:Lcom/iab/omid/library/hisavana/adsession/ImpressionType;

.field public static final enum VIEWABLE:Lcom/iab/omid/library/hisavana/adsession/ImpressionType;


# instance fields
.field private final impressionType:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/iab/omid/library/hisavana/adsession/ImpressionType;
    .locals 3

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [Lcom/iab/omid/library/hisavana/adsession/ImpressionType;

    .line 4
    .line 5
    sget-object v1, Lcom/iab/omid/library/hisavana/adsession/ImpressionType;->DEFINED_BY_JAVASCRIPT:Lcom/iab/omid/library/hisavana/adsession/ImpressionType;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lcom/iab/omid/library/hisavana/adsession/ImpressionType;->UNSPECIFIED:Lcom/iab/omid/library/hisavana/adsession/ImpressionType;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lcom/iab/omid/library/hisavana/adsession/ImpressionType;->LOADED:Lcom/iab/omid/library/hisavana/adsession/ImpressionType;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lcom/iab/omid/library/hisavana/adsession/ImpressionType;->BEGIN_TO_RENDER:Lcom/iab/omid/library/hisavana/adsession/ImpressionType;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lcom/iab/omid/library/hisavana/adsession/ImpressionType;->ONE_PIXEL:Lcom/iab/omid/library/hisavana/adsession/ImpressionType;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lcom/iab/omid/library/hisavana/adsession/ImpressionType;->VIEWABLE:Lcom/iab/omid/library/hisavana/adsession/ImpressionType;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lcom/iab/omid/library/hisavana/adsession/ImpressionType;->AUDIBLE:Lcom/iab/omid/library/hisavana/adsession/ImpressionType;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lcom/iab/omid/library/hisavana/adsession/ImpressionType;->OTHER:Lcom/iab/omid/library/hisavana/adsession/ImpressionType;

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
    new-instance v0, Lcom/iab/omid/library/hisavana/adsession/ImpressionType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "definedByJavaScript"

    .line 5
    .line 6
    const-string v3, "DEFINED_BY_JAVASCRIPT"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/iab/omid/library/hisavana/adsession/ImpressionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/iab/omid/library/hisavana/adsession/ImpressionType;->DEFINED_BY_JAVASCRIPT:Lcom/iab/omid/library/hisavana/adsession/ImpressionType;

    .line 12
    .line 13
    new-instance v0, Lcom/iab/omid/library/hisavana/adsession/ImpressionType;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "unspecified"

    .line 17
    .line 18
    const-string v3, "UNSPECIFIED"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lcom/iab/omid/library/hisavana/adsession/ImpressionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/iab/omid/library/hisavana/adsession/ImpressionType;->UNSPECIFIED:Lcom/iab/omid/library/hisavana/adsession/ImpressionType;

    .line 24
    .line 25
    new-instance v0, Lcom/iab/omid/library/hisavana/adsession/ImpressionType;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "loaded"

    .line 29
    .line 30
    const-string v3, "LOADED"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lcom/iab/omid/library/hisavana/adsession/ImpressionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/iab/omid/library/hisavana/adsession/ImpressionType;->LOADED:Lcom/iab/omid/library/hisavana/adsession/ImpressionType;

    .line 36
    .line 37
    new-instance v0, Lcom/iab/omid/library/hisavana/adsession/ImpressionType;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "beginToRender"

    .line 41
    .line 42
    const-string v3, "BEGIN_TO_RENDER"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lcom/iab/omid/library/hisavana/adsession/ImpressionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/iab/omid/library/hisavana/adsession/ImpressionType;->BEGIN_TO_RENDER:Lcom/iab/omid/library/hisavana/adsession/ImpressionType;

    .line 48
    .line 49
    new-instance v0, Lcom/iab/omid/library/hisavana/adsession/ImpressionType;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-string v2, "onePixel"

    .line 53
    .line 54
    const-string v3, "ONE_PIXEL"

    .line 55
    .line 56
    invoke-direct {v0, v3, v1, v2}, Lcom/iab/omid/library/hisavana/adsession/ImpressionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/iab/omid/library/hisavana/adsession/ImpressionType;->ONE_PIXEL:Lcom/iab/omid/library/hisavana/adsession/ImpressionType;

    .line 60
    .line 61
    new-instance v0, Lcom/iab/omid/library/hisavana/adsession/ImpressionType;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    const-string v2, "viewable"

    .line 65
    .line 66
    const-string v3, "VIEWABLE"

    .line 67
    .line 68
    invoke-direct {v0, v3, v1, v2}, Lcom/iab/omid/library/hisavana/adsession/ImpressionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lcom/iab/omid/library/hisavana/adsession/ImpressionType;->VIEWABLE:Lcom/iab/omid/library/hisavana/adsession/ImpressionType;

    .line 72
    .line 73
    new-instance v0, Lcom/iab/omid/library/hisavana/adsession/ImpressionType;

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    const-string v2, "audible"

    .line 77
    .line 78
    const-string v3, "AUDIBLE"

    .line 79
    .line 80
    invoke-direct {v0, v3, v1, v2}, Lcom/iab/omid/library/hisavana/adsession/ImpressionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lcom/iab/omid/library/hisavana/adsession/ImpressionType;->AUDIBLE:Lcom/iab/omid/library/hisavana/adsession/ImpressionType;

    .line 84
    .line 85
    new-instance v0, Lcom/iab/omid/library/hisavana/adsession/ImpressionType;

    .line 86
    .line 87
    const/4 v1, 0x7

    .line 88
    const-string v2, "other"

    .line 89
    .line 90
    const-string v3, "OTHER"

    .line 91
    .line 92
    invoke-direct {v0, v3, v1, v2}, Lcom/iab/omid/library/hisavana/adsession/ImpressionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lcom/iab/omid/library/hisavana/adsession/ImpressionType;->OTHER:Lcom/iab/omid/library/hisavana/adsession/ImpressionType;

    .line 96
    .line 97
    invoke-static {}, Lcom/iab/omid/library/hisavana/adsession/ImpressionType;->$values()[Lcom/iab/omid/library/hisavana/adsession/ImpressionType;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sput-object v0, Lcom/iab/omid/library/hisavana/adsession/ImpressionType;->$VALUES:[Lcom/iab/omid/library/hisavana/adsession/ImpressionType;

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
    iput-object p3, p0, Lcom/iab/omid/library/hisavana/adsession/ImpressionType;->impressionType:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iab/omid/library/hisavana/adsession/ImpressionType;
    .locals 1

    .line 1
    const-class v0, Lcom/iab/omid/library/hisavana/adsession/ImpressionType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/iab/omid/library/hisavana/adsession/ImpressionType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/iab/omid/library/hisavana/adsession/ImpressionType;
    .locals 1

    .line 1
    sget-object v0, Lcom/iab/omid/library/hisavana/adsession/ImpressionType;->$VALUES:[Lcom/iab/omid/library/hisavana/adsession/ImpressionType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/iab/omid/library/hisavana/adsession/ImpressionType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/iab/omid/library/hisavana/adsession/ImpressionType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/hisavana/adsession/ImpressionType;->impressionType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
