.class public final enum Lcom/google/api/FieldBehavior;
.super Ljava/lang/Enum;
.source "source.java"

# interfaces
.implements Lcom/google/protobuf/y$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/FieldBehavior$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/api/FieldBehavior;",
        ">;",
        "Lcom/google/protobuf/y$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/api/FieldBehavior;

.field public static final enum FIELD_BEHAVIOR_UNSPECIFIED:Lcom/google/api/FieldBehavior;

.field public static final FIELD_BEHAVIOR_UNSPECIFIED_VALUE:I = 0x0

.field public static final enum IMMUTABLE:Lcom/google/api/FieldBehavior;

.field public static final IMMUTABLE_VALUE:I = 0x5

.field public static final enum INPUT_ONLY:Lcom/google/api/FieldBehavior;

.field public static final INPUT_ONLY_VALUE:I = 0x4

.field public static final enum OPTIONAL:Lcom/google/api/FieldBehavior;

.field public static final OPTIONAL_VALUE:I = 0x1

.field public static final enum OUTPUT_ONLY:Lcom/google/api/FieldBehavior;

.field public static final OUTPUT_ONLY_VALUE:I = 0x3

.field public static final enum REQUIRED:Lcom/google/api/FieldBehavior;

.field public static final REQUIRED_VALUE:I = 0x2

.field public static final enum UNRECOGNIZED:Lcom/google/api/FieldBehavior;

.field private static final internalValueMap:Lcom/google/protobuf/y$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/y$d;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/google/api/FieldBehavior;

    .line 2
    .line 3
    const-string v1, "FIELD_BEHAVIOR_UNSPECIFIED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/google/api/FieldBehavior;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/api/FieldBehavior;->FIELD_BEHAVIOR_UNSPECIFIED:Lcom/google/api/FieldBehavior;

    .line 10
    .line 11
    new-instance v1, Lcom/google/api/FieldBehavior;

    .line 12
    .line 13
    const-string v3, "OPTIONAL"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lcom/google/api/FieldBehavior;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/google/api/FieldBehavior;->OPTIONAL:Lcom/google/api/FieldBehavior;

    .line 20
    .line 21
    new-instance v3, Lcom/google/api/FieldBehavior;

    .line 22
    .line 23
    const-string v5, "REQUIRED"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Lcom/google/api/FieldBehavior;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lcom/google/api/FieldBehavior;->REQUIRED:Lcom/google/api/FieldBehavior;

    .line 30
    .line 31
    new-instance v5, Lcom/google/api/FieldBehavior;

    .line 32
    .line 33
    const-string v7, "OUTPUT_ONLY"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v8}, Lcom/google/api/FieldBehavior;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lcom/google/api/FieldBehavior;->OUTPUT_ONLY:Lcom/google/api/FieldBehavior;

    .line 40
    .line 41
    new-instance v7, Lcom/google/api/FieldBehavior;

    .line 42
    .line 43
    const-string v9, "INPUT_ONLY"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10, v10}, Lcom/google/api/FieldBehavior;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v7, Lcom/google/api/FieldBehavior;->INPUT_ONLY:Lcom/google/api/FieldBehavior;

    .line 50
    .line 51
    new-instance v9, Lcom/google/api/FieldBehavior;

    .line 52
    .line 53
    const-string v11, "IMMUTABLE"

    .line 54
    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12, v12}, Lcom/google/api/FieldBehavior;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v9, Lcom/google/api/FieldBehavior;->IMMUTABLE:Lcom/google/api/FieldBehavior;

    .line 60
    .line 61
    new-instance v11, Lcom/google/api/FieldBehavior;

    .line 62
    .line 63
    const/4 v13, 0x6

    .line 64
    const/4 v14, -0x1

    .line 65
    const-string v15, "UNRECOGNIZED"

    .line 66
    .line 67
    invoke-direct {v11, v15, v13, v14}, Lcom/google/api/FieldBehavior;-><init>(Ljava/lang/String;II)V

    .line 68
    .line 69
    .line 70
    sput-object v11, Lcom/google/api/FieldBehavior;->UNRECOGNIZED:Lcom/google/api/FieldBehavior;

    .line 71
    .line 72
    const/4 v14, 0x7

    .line 73
    new-array v14, v14, [Lcom/google/api/FieldBehavior;

    .line 74
    .line 75
    aput-object v0, v14, v2

    .line 76
    .line 77
    aput-object v1, v14, v4

    .line 78
    .line 79
    aput-object v3, v14, v6

    .line 80
    .line 81
    aput-object v5, v14, v8

    .line 82
    .line 83
    aput-object v7, v14, v10

    .line 84
    .line 85
    aput-object v9, v14, v12

    .line 86
    .line 87
    aput-object v11, v14, v13

    .line 88
    .line 89
    sput-object v14, Lcom/google/api/FieldBehavior;->$VALUES:[Lcom/google/api/FieldBehavior;

    .line 90
    .line 91
    new-instance v0, Lcom/google/api/FieldBehavior$a;

    .line 92
    .line 93
    invoke-direct {v0}, Lcom/google/api/FieldBehavior$a;-><init>()V

    .line 94
    .line 95
    .line 96
    sput-object v0, Lcom/google/api/FieldBehavior;->internalValueMap:Lcom/google/protobuf/y$d;

    .line 97
    .line 98
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
    iput p3, p0, Lcom/google/api/FieldBehavior;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/google/api/FieldBehavior;
    .locals 1

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_4

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_3

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x5

    .line 16
    if-eq p0, v0, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return-object p0

    .line 20
    :cond_0
    sget-object p0, Lcom/google/api/FieldBehavior;->IMMUTABLE:Lcom/google/api/FieldBehavior;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    sget-object p0, Lcom/google/api/FieldBehavior;->INPUT_ONLY:Lcom/google/api/FieldBehavior;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_2
    sget-object p0, Lcom/google/api/FieldBehavior;->OUTPUT_ONLY:Lcom/google/api/FieldBehavior;

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_3
    sget-object p0, Lcom/google/api/FieldBehavior;->REQUIRED:Lcom/google/api/FieldBehavior;

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_4
    sget-object p0, Lcom/google/api/FieldBehavior;->OPTIONAL:Lcom/google/api/FieldBehavior;

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_5
    sget-object p0, Lcom/google/api/FieldBehavior;->FIELD_BEHAVIOR_UNSPECIFIED:Lcom/google/api/FieldBehavior;

    .line 36
    .line 37
    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/y$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/y$d;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/api/FieldBehavior;->internalValueMap:Lcom/google/protobuf/y$d;

    .line 2
    .line 3
    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/y$e;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/FieldBehavior$b;->a:Lcom/google/protobuf/y$e;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(I)Lcom/google/api/FieldBehavior;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/api/FieldBehavior;->forNumber(I)Lcom/google/api/FieldBehavior;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/api/FieldBehavior;
    .locals 1

    .line 1
    const-class v0, Lcom/google/api/FieldBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/api/FieldBehavior;

    return-object p0
.end method

.method public static values()[Lcom/google/api/FieldBehavior;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/FieldBehavior;->$VALUES:[Lcom/google/api/FieldBehavior;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/api/FieldBehavior;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/api/FieldBehavior;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 1
    sget-object v0, Lcom/google/api/FieldBehavior;->UNRECOGNIZED:Lcom/google/api/FieldBehavior;

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/google/api/FieldBehavior;->value:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string v1, "Can\'t get the number of an unknown enum value."

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method
