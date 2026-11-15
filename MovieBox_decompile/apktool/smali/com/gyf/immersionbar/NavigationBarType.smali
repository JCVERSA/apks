.class public final enum Lcom/gyf/immersionbar/NavigationBarType;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gyf/immersionbar/NavigationBarType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gyf/immersionbar/NavigationBarType;

.field public static final enum CLASSIC:Lcom/gyf/immersionbar/NavigationBarType;

.field public static final enum DOUBLE:Lcom/gyf/immersionbar/NavigationBarType;

.field public static final enum GESTURES:Lcom/gyf/immersionbar/NavigationBarType;

.field public static final enum GESTURES_THREE_STAGE:Lcom/gyf/immersionbar/NavigationBarType;

.field public static final enum UNKNOWN:Lcom/gyf/immersionbar/NavigationBarType;


# instance fields
.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/gyf/immersionbar/NavigationBarType;

    .line 2
    .line 3
    const-string v1, "CLASSIC"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/gyf/immersionbar/NavigationBarType;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/gyf/immersionbar/NavigationBarType;->CLASSIC:Lcom/gyf/immersionbar/NavigationBarType;

    .line 10
    .line 11
    new-instance v1, Lcom/gyf/immersionbar/NavigationBarType;

    .line 12
    .line 13
    const-string v3, "GESTURES"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lcom/gyf/immersionbar/NavigationBarType;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/gyf/immersionbar/NavigationBarType;->GESTURES:Lcom/gyf/immersionbar/NavigationBarType;

    .line 20
    .line 21
    new-instance v3, Lcom/gyf/immersionbar/NavigationBarType;

    .line 22
    .line 23
    const-string v5, "GESTURES_THREE_STAGE"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Lcom/gyf/immersionbar/NavigationBarType;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lcom/gyf/immersionbar/NavigationBarType;->GESTURES_THREE_STAGE:Lcom/gyf/immersionbar/NavigationBarType;

    .line 30
    .line 31
    new-instance v5, Lcom/gyf/immersionbar/NavigationBarType;

    .line 32
    .line 33
    const-string v7, "DOUBLE"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v8}, Lcom/gyf/immersionbar/NavigationBarType;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lcom/gyf/immersionbar/NavigationBarType;->DOUBLE:Lcom/gyf/immersionbar/NavigationBarType;

    .line 40
    .line 41
    new-instance v7, Lcom/gyf/immersionbar/NavigationBarType;

    .line 42
    .line 43
    const/4 v9, 0x4

    .line 44
    const/4 v10, -0x1

    .line 45
    const-string v11, "UNKNOWN"

    .line 46
    .line 47
    invoke-direct {v7, v11, v9, v10}, Lcom/gyf/immersionbar/NavigationBarType;-><init>(Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    sput-object v7, Lcom/gyf/immersionbar/NavigationBarType;->UNKNOWN:Lcom/gyf/immersionbar/NavigationBarType;

    .line 51
    .line 52
    const/4 v10, 0x5

    .line 53
    new-array v10, v10, [Lcom/gyf/immersionbar/NavigationBarType;

    .line 54
    .line 55
    aput-object v0, v10, v2

    .line 56
    .line 57
    aput-object v1, v10, v4

    .line 58
    .line 59
    aput-object v3, v10, v6

    .line 60
    .line 61
    aput-object v5, v10, v8

    .line 62
    .line 63
    aput-object v7, v10, v9

    .line 64
    .line 65
    sput-object v10, Lcom/gyf/immersionbar/NavigationBarType;->$VALUES:[Lcom/gyf/immersionbar/NavigationBarType;

    .line 66
    .line 67
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
    iput p3, p0, Lcom/gyf/immersionbar/NavigationBarType;->type:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gyf/immersionbar/NavigationBarType;
    .locals 1

    .line 1
    const-class v0, Lcom/gyf/immersionbar/NavigationBarType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/gyf/immersionbar/NavigationBarType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/gyf/immersionbar/NavigationBarType;
    .locals 1

    .line 1
    sget-object v0, Lcom/gyf/immersionbar/NavigationBarType;->$VALUES:[Lcom/gyf/immersionbar/NavigationBarType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/gyf/immersionbar/NavigationBarType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/gyf/immersionbar/NavigationBarType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gyf/immersionbar/NavigationBarType;->type:I

    .line 2
    .line 3
    return v0
.end method
