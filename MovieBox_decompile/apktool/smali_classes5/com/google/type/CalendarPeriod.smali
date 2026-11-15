.class public final enum Lcom/google/type/CalendarPeriod;
.super Ljava/lang/Enum;
.source "source.java"

# interfaces
.implements Lcom/google/protobuf/y$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/type/CalendarPeriod$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/type/CalendarPeriod;",
        ">;",
        "Lcom/google/protobuf/y$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/type/CalendarPeriod;

.field public static final enum CALENDAR_PERIOD_UNSPECIFIED:Lcom/google/type/CalendarPeriod;

.field public static final CALENDAR_PERIOD_UNSPECIFIED_VALUE:I = 0x0

.field public static final enum DAY:Lcom/google/type/CalendarPeriod;

.field public static final DAY_VALUE:I = 0x1

.field public static final enum FORTNIGHT:Lcom/google/type/CalendarPeriod;

.field public static final FORTNIGHT_VALUE:I = 0x3

.field public static final enum HALF:Lcom/google/type/CalendarPeriod;

.field public static final HALF_VALUE:I = 0x6

.field public static final enum MONTH:Lcom/google/type/CalendarPeriod;

.field public static final MONTH_VALUE:I = 0x4

.field public static final enum QUARTER:Lcom/google/type/CalendarPeriod;

.field public static final QUARTER_VALUE:I = 0x5

.field public static final enum UNRECOGNIZED:Lcom/google/type/CalendarPeriod;

.field public static final enum WEEK:Lcom/google/type/CalendarPeriod;

.field public static final WEEK_VALUE:I = 0x2

.field public static final enum YEAR:Lcom/google/type/CalendarPeriod;

.field public static final YEAR_VALUE:I = 0x7

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
    new-instance v0, Lcom/google/type/CalendarPeriod;

    .line 2
    .line 3
    const-string v1, "CALENDAR_PERIOD_UNSPECIFIED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/google/type/CalendarPeriod;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/type/CalendarPeriod;->CALENDAR_PERIOD_UNSPECIFIED:Lcom/google/type/CalendarPeriod;

    .line 10
    .line 11
    new-instance v1, Lcom/google/type/CalendarPeriod;

    .line 12
    .line 13
    const-string v3, "DAY"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lcom/google/type/CalendarPeriod;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/google/type/CalendarPeriod;->DAY:Lcom/google/type/CalendarPeriod;

    .line 20
    .line 21
    new-instance v3, Lcom/google/type/CalendarPeriod;

    .line 22
    .line 23
    const-string v5, "WEEK"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Lcom/google/type/CalendarPeriod;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lcom/google/type/CalendarPeriod;->WEEK:Lcom/google/type/CalendarPeriod;

    .line 30
    .line 31
    new-instance v5, Lcom/google/type/CalendarPeriod;

    .line 32
    .line 33
    const-string v7, "FORTNIGHT"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v8}, Lcom/google/type/CalendarPeriod;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lcom/google/type/CalendarPeriod;->FORTNIGHT:Lcom/google/type/CalendarPeriod;

    .line 40
    .line 41
    new-instance v7, Lcom/google/type/CalendarPeriod;

    .line 42
    .line 43
    const-string v9, "MONTH"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10, v10}, Lcom/google/type/CalendarPeriod;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v7, Lcom/google/type/CalendarPeriod;->MONTH:Lcom/google/type/CalendarPeriod;

    .line 50
    .line 51
    new-instance v9, Lcom/google/type/CalendarPeriod;

    .line 52
    .line 53
    const-string v11, "QUARTER"

    .line 54
    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12, v12}, Lcom/google/type/CalendarPeriod;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v9, Lcom/google/type/CalendarPeriod;->QUARTER:Lcom/google/type/CalendarPeriod;

    .line 60
    .line 61
    new-instance v11, Lcom/google/type/CalendarPeriod;

    .line 62
    .line 63
    const-string v13, "HALF"

    .line 64
    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14, v14}, Lcom/google/type/CalendarPeriod;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v11, Lcom/google/type/CalendarPeriod;->HALF:Lcom/google/type/CalendarPeriod;

    .line 70
    .line 71
    new-instance v13, Lcom/google/type/CalendarPeriod;

    .line 72
    .line 73
    const-string v15, "YEAR"

    .line 74
    .line 75
    const/4 v14, 0x7

    .line 76
    invoke-direct {v13, v15, v14, v14}, Lcom/google/type/CalendarPeriod;-><init>(Ljava/lang/String;II)V

    .line 77
    .line 78
    .line 79
    sput-object v13, Lcom/google/type/CalendarPeriod;->YEAR:Lcom/google/type/CalendarPeriod;

    .line 80
    .line 81
    new-instance v15, Lcom/google/type/CalendarPeriod;

    .line 82
    .line 83
    const/16 v14, 0x8

    .line 84
    .line 85
    const/4 v12, -0x1

    .line 86
    const-string v10, "UNRECOGNIZED"

    .line 87
    .line 88
    invoke-direct {v15, v10, v14, v12}, Lcom/google/type/CalendarPeriod;-><init>(Ljava/lang/String;II)V

    .line 89
    .line 90
    .line 91
    sput-object v15, Lcom/google/type/CalendarPeriod;->UNRECOGNIZED:Lcom/google/type/CalendarPeriod;

    .line 92
    .line 93
    const/16 v10, 0x9

    .line 94
    .line 95
    new-array v10, v10, [Lcom/google/type/CalendarPeriod;

    .line 96
    .line 97
    aput-object v0, v10, v2

    .line 98
    .line 99
    aput-object v1, v10, v4

    .line 100
    .line 101
    aput-object v3, v10, v6

    .line 102
    .line 103
    aput-object v5, v10, v8

    .line 104
    .line 105
    const/4 v0, 0x4

    .line 106
    aput-object v7, v10, v0

    .line 107
    .line 108
    const/4 v0, 0x5

    .line 109
    aput-object v9, v10, v0

    .line 110
    .line 111
    const/4 v0, 0x6

    .line 112
    aput-object v11, v10, v0

    .line 113
    .line 114
    const/4 v0, 0x7

    .line 115
    aput-object v13, v10, v0

    .line 116
    .line 117
    aput-object v15, v10, v14

    .line 118
    .line 119
    sput-object v10, Lcom/google/type/CalendarPeriod;->$VALUES:[Lcom/google/type/CalendarPeriod;

    .line 120
    .line 121
    new-instance v0, Lcom/google/type/CalendarPeriod$a;

    .line 122
    .line 123
    invoke-direct {v0}, Lcom/google/type/CalendarPeriod$a;-><init>()V

    .line 124
    .line 125
    .line 126
    sput-object v0, Lcom/google/type/CalendarPeriod;->internalValueMap:Lcom/google/protobuf/y$d;

    .line 127
    .line 128
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
    iput p3, p0, Lcom/google/type/CalendarPeriod;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/google/type/CalendarPeriod;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0

    .line 6
    :pswitch_0
    sget-object p0, Lcom/google/type/CalendarPeriod;->YEAR:Lcom/google/type/CalendarPeriod;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_1
    sget-object p0, Lcom/google/type/CalendarPeriod;->HALF:Lcom/google/type/CalendarPeriod;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_2
    sget-object p0, Lcom/google/type/CalendarPeriod;->QUARTER:Lcom/google/type/CalendarPeriod;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_3
    sget-object p0, Lcom/google/type/CalendarPeriod;->MONTH:Lcom/google/type/CalendarPeriod;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_4
    sget-object p0, Lcom/google/type/CalendarPeriod;->FORTNIGHT:Lcom/google/type/CalendarPeriod;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_5
    sget-object p0, Lcom/google/type/CalendarPeriod;->WEEK:Lcom/google/type/CalendarPeriod;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_6
    sget-object p0, Lcom/google/type/CalendarPeriod;->DAY:Lcom/google/type/CalendarPeriod;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_7
    sget-object p0, Lcom/google/type/CalendarPeriod;->CALENDAR_PERIOD_UNSPECIFIED:Lcom/google/type/CalendarPeriod;

    .line 28
    .line 29
    return-object p0

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
    sget-object v0, Lcom/google/type/CalendarPeriod;->internalValueMap:Lcom/google/protobuf/y$d;

    .line 2
    .line 3
    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/y$e;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/type/CalendarPeriod$b;->a:Lcom/google/protobuf/y$e;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(I)Lcom/google/type/CalendarPeriod;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/type/CalendarPeriod;->forNumber(I)Lcom/google/type/CalendarPeriod;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/type/CalendarPeriod;
    .locals 1

    .line 1
    const-class v0, Lcom/google/type/CalendarPeriod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/type/CalendarPeriod;

    return-object p0
.end method

.method public static values()[Lcom/google/type/CalendarPeriod;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/type/CalendarPeriod;->$VALUES:[Lcom/google/type/CalendarPeriod;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/type/CalendarPeriod;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/type/CalendarPeriod;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 1
    sget-object v0, Lcom/google/type/CalendarPeriod;->UNRECOGNIZED:Lcom/google/type/CalendarPeriod;

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/google/type/CalendarPeriod;->value:I

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
