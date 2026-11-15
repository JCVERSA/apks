.class public final enum Lcom/amazonaws/logging/LogFactory$Level;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/logging/LogFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/logging/LogFactory$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/logging/LogFactory$Level;

.field public static final enum ALL:Lcom/amazonaws/logging/LogFactory$Level;

.field public static final enum DEBUG:Lcom/amazonaws/logging/LogFactory$Level;

.field public static final enum ERROR:Lcom/amazonaws/logging/LogFactory$Level;

.field public static final enum INFO:Lcom/amazonaws/logging/LogFactory$Level;

.field public static final enum OFF:Lcom/amazonaws/logging/LogFactory$Level;

.field public static final enum TRACE:Lcom/amazonaws/logging/LogFactory$Level;

.field public static final enum WARN:Lcom/amazonaws/logging/LogFactory$Level;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/amazonaws/logging/LogFactory$Level;

    .line 2
    .line 3
    const/high16 v1, -0x80000000

    .line 4
    .line 5
    const-string v2, "ALL"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/amazonaws/logging/LogFactory$Level;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/amazonaws/logging/LogFactory$Level;->ALL:Lcom/amazonaws/logging/LogFactory$Level;

    .line 12
    .line 13
    new-instance v1, Lcom/amazonaws/logging/LogFactory$Level;

    .line 14
    .line 15
    const-string v2, "TRACE"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-direct {v1, v2, v4, v3}, Lcom/amazonaws/logging/LogFactory$Level;-><init>(Ljava/lang/String;II)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/amazonaws/logging/LogFactory$Level;->TRACE:Lcom/amazonaws/logging/LogFactory$Level;

    .line 22
    .line 23
    new-instance v2, Lcom/amazonaws/logging/LogFactory$Level;

    .line 24
    .line 25
    const-string v5, "DEBUG"

    .line 26
    .line 27
    const/4 v6, 0x2

    .line 28
    invoke-direct {v2, v5, v6, v4}, Lcom/amazonaws/logging/LogFactory$Level;-><init>(Ljava/lang/String;II)V

    .line 29
    .line 30
    .line 31
    sput-object v2, Lcom/amazonaws/logging/LogFactory$Level;->DEBUG:Lcom/amazonaws/logging/LogFactory$Level;

    .line 32
    .line 33
    new-instance v5, Lcom/amazonaws/logging/LogFactory$Level;

    .line 34
    .line 35
    const-string v7, "INFO"

    .line 36
    .line 37
    const/4 v8, 0x3

    .line 38
    invoke-direct {v5, v7, v8, v6}, Lcom/amazonaws/logging/LogFactory$Level;-><init>(Ljava/lang/String;II)V

    .line 39
    .line 40
    .line 41
    sput-object v5, Lcom/amazonaws/logging/LogFactory$Level;->INFO:Lcom/amazonaws/logging/LogFactory$Level;

    .line 42
    .line 43
    new-instance v7, Lcom/amazonaws/logging/LogFactory$Level;

    .line 44
    .line 45
    const-string v9, "WARN"

    .line 46
    .line 47
    const/4 v10, 0x4

    .line 48
    invoke-direct {v7, v9, v10, v8}, Lcom/amazonaws/logging/LogFactory$Level;-><init>(Ljava/lang/String;II)V

    .line 49
    .line 50
    .line 51
    sput-object v7, Lcom/amazonaws/logging/LogFactory$Level;->WARN:Lcom/amazonaws/logging/LogFactory$Level;

    .line 52
    .line 53
    new-instance v9, Lcom/amazonaws/logging/LogFactory$Level;

    .line 54
    .line 55
    const-string v11, "ERROR"

    .line 56
    .line 57
    const/4 v12, 0x5

    .line 58
    invoke-direct {v9, v11, v12, v10}, Lcom/amazonaws/logging/LogFactory$Level;-><init>(Ljava/lang/String;II)V

    .line 59
    .line 60
    .line 61
    sput-object v9, Lcom/amazonaws/logging/LogFactory$Level;->ERROR:Lcom/amazonaws/logging/LogFactory$Level;

    .line 62
    .line 63
    new-instance v11, Lcom/amazonaws/logging/LogFactory$Level;

    .line 64
    .line 65
    const/4 v13, 0x6

    .line 66
    const v14, 0x7fffffff

    .line 67
    .line 68
    .line 69
    const-string v15, "OFF"

    .line 70
    .line 71
    invoke-direct {v11, v15, v13, v14}, Lcom/amazonaws/logging/LogFactory$Level;-><init>(Ljava/lang/String;II)V

    .line 72
    .line 73
    .line 74
    sput-object v11, Lcom/amazonaws/logging/LogFactory$Level;->OFF:Lcom/amazonaws/logging/LogFactory$Level;

    .line 75
    .line 76
    const/4 v14, 0x7

    .line 77
    new-array v14, v14, [Lcom/amazonaws/logging/LogFactory$Level;

    .line 78
    .line 79
    aput-object v0, v14, v3

    .line 80
    .line 81
    aput-object v1, v14, v4

    .line 82
    .line 83
    aput-object v2, v14, v6

    .line 84
    .line 85
    aput-object v5, v14, v8

    .line 86
    .line 87
    aput-object v7, v14, v10

    .line 88
    .line 89
    aput-object v9, v14, v12

    .line 90
    .line 91
    aput-object v11, v14, v13

    .line 92
    .line 93
    sput-object v14, Lcom/amazonaws/logging/LogFactory$Level;->$VALUES:[Lcom/amazonaws/logging/LogFactory$Level;

    .line 94
    .line 95
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
    iput p3, p0, Lcom/amazonaws/logging/LogFactory$Level;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/logging/LogFactory$Level;
    .locals 1

    .line 1
    const-class v0, Lcom/amazonaws/logging/LogFactory$Level;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/amazonaws/logging/LogFactory$Level;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/amazonaws/logging/LogFactory$Level;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazonaws/logging/LogFactory$Level;->$VALUES:[Lcom/amazonaws/logging/LogFactory$Level;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/amazonaws/logging/LogFactory$Level;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/amazonaws/logging/LogFactory$Level;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amazonaws/logging/LogFactory$Level;->value:I

    .line 2
    .line 3
    return v0
.end method
