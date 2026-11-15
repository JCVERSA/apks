.class public final enum Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;
.super Ljava/lang/Enum;
.source "source.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/w$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/w$a;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

.field public static final enum EDITION_1_TEST_ONLY:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

.field public static final EDITION_1_TEST_ONLY_VALUE:I = 0x1

.field public static final enum EDITION_2023:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

.field public static final EDITION_2023_VALUE:I = 0x3e8

.field public static final enum EDITION_2024:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

.field public static final EDITION_2024_VALUE:I = 0x3e9

.field public static final enum EDITION_2_TEST_ONLY:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

.field public static final EDITION_2_TEST_ONLY_VALUE:I = 0x2

.field public static final enum EDITION_99997_TEST_ONLY:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

.field public static final EDITION_99997_TEST_ONLY_VALUE:I = 0x1869d

.field public static final enum EDITION_99998_TEST_ONLY:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

.field public static final EDITION_99998_TEST_ONLY_VALUE:I = 0x1869e

.field public static final enum EDITION_99999_TEST_ONLY:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

.field public static final EDITION_99999_TEST_ONLY_VALUE:I = 0x1869f

.field public static final enum EDITION_LEGACY:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

.field public static final EDITION_LEGACY_VALUE:I = 0x384

.field public static final enum EDITION_MAX:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

.field public static final EDITION_MAX_VALUE:I = 0x7fffffff

.field public static final enum EDITION_PROTO2:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

.field public static final EDITION_PROTO2_VALUE:I = 0x3e6

.field public static final enum EDITION_PROTO3:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

.field public static final EDITION_PROTO3_VALUE:I = 0x3e7

.field public static final enum EDITION_UNKNOWN:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

.field public static final EDITION_UNKNOWN_VALUE:I

.field private static final internalValueMap:Landroidx/datastore/preferences/protobuf/w$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/w$b;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    .line 2
    .line 3
    const-string v1, "EDITION_UNKNOWN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_UNKNOWN:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    .line 10
    .line 11
    new-instance v1, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    .line 12
    .line 13
    const/16 v3, 0x384

    .line 14
    .line 15
    const-string v4, "EDITION_LEGACY"

    .line 16
    .line 17
    const/4 v5, 0x1

    .line 18
    invoke-direct {v1, v4, v5, v3}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;-><init>(Ljava/lang/String;II)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_LEGACY:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    .line 22
    .line 23
    new-instance v3, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    .line 24
    .line 25
    const/16 v4, 0x3e6

    .line 26
    .line 27
    const-string v6, "EDITION_PROTO2"

    .line 28
    .line 29
    const/4 v7, 0x2

    .line 30
    invoke-direct {v3, v6, v7, v4}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;-><init>(Ljava/lang/String;II)V

    .line 31
    .line 32
    .line 33
    sput-object v3, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_PROTO2:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    .line 34
    .line 35
    new-instance v4, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    .line 36
    .line 37
    const/4 v6, 0x3

    .line 38
    const/16 v8, 0x3e7

    .line 39
    .line 40
    const-string v9, "EDITION_PROTO3"

    .line 41
    .line 42
    invoke-direct {v4, v9, v6, v8}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;-><init>(Ljava/lang/String;II)V

    .line 43
    .line 44
    .line 45
    sput-object v4, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_PROTO3:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    .line 46
    .line 47
    new-instance v8, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    .line 48
    .line 49
    const/4 v9, 0x4

    .line 50
    const/16 v10, 0x3e8

    .line 51
    .line 52
    const-string v11, "EDITION_2023"

    .line 53
    .line 54
    invoke-direct {v8, v11, v9, v10}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;-><init>(Ljava/lang/String;II)V

    .line 55
    .line 56
    .line 57
    sput-object v8, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_2023:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    .line 58
    .line 59
    new-instance v10, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    .line 60
    .line 61
    const/4 v11, 0x5

    .line 62
    const/16 v12, 0x3e9

    .line 63
    .line 64
    const-string v13, "EDITION_2024"

    .line 65
    .line 66
    invoke-direct {v10, v13, v11, v12}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v10, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_2024:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    .line 70
    .line 71
    new-instance v12, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    .line 72
    .line 73
    const-string v13, "EDITION_1_TEST_ONLY"

    .line 74
    .line 75
    const/4 v14, 0x6

    .line 76
    invoke-direct {v12, v13, v14, v5}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;-><init>(Ljava/lang/String;II)V

    .line 77
    .line 78
    .line 79
    sput-object v12, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_1_TEST_ONLY:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    .line 80
    .line 81
    new-instance v13, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    .line 82
    .line 83
    const-string v15, "EDITION_2_TEST_ONLY"

    .line 84
    .line 85
    const/4 v14, 0x7

    .line 86
    invoke-direct {v13, v15, v14, v7}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;-><init>(Ljava/lang/String;II)V

    .line 87
    .line 88
    .line 89
    sput-object v13, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_2_TEST_ONLY:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    .line 90
    .line 91
    new-instance v15, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    .line 92
    .line 93
    const/16 v14, 0x8

    .line 94
    .line 95
    const v11, 0x1869d

    .line 96
    .line 97
    .line 98
    const-string v9, "EDITION_99997_TEST_ONLY"

    .line 99
    .line 100
    invoke-direct {v15, v9, v14, v11}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;-><init>(Ljava/lang/String;II)V

    .line 101
    .line 102
    .line 103
    sput-object v15, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_99997_TEST_ONLY:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    .line 104
    .line 105
    new-instance v9, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    .line 106
    .line 107
    const/16 v11, 0x9

    .line 108
    .line 109
    const v14, 0x1869e

    .line 110
    .line 111
    .line 112
    const-string v6, "EDITION_99998_TEST_ONLY"

    .line 113
    .line 114
    invoke-direct {v9, v6, v11, v14}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;-><init>(Ljava/lang/String;II)V

    .line 115
    .line 116
    .line 117
    sput-object v9, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_99998_TEST_ONLY:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    .line 118
    .line 119
    new-instance v6, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    .line 120
    .line 121
    const/16 v14, 0xa

    .line 122
    .line 123
    const v11, 0x1869f

    .line 124
    .line 125
    .line 126
    const-string v7, "EDITION_99999_TEST_ONLY"

    .line 127
    .line 128
    invoke-direct {v6, v7, v14, v11}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;-><init>(Ljava/lang/String;II)V

    .line 129
    .line 130
    .line 131
    sput-object v6, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_99999_TEST_ONLY:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    .line 132
    .line 133
    new-instance v7, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    .line 134
    .line 135
    const/16 v11, 0xb

    .line 136
    .line 137
    const v14, 0x7fffffff

    .line 138
    .line 139
    .line 140
    const-string v5, "EDITION_MAX"

    .line 141
    .line 142
    invoke-direct {v7, v5, v11, v14}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;-><init>(Ljava/lang/String;II)V

    .line 143
    .line 144
    .line 145
    sput-object v7, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_MAX:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    .line 146
    .line 147
    const/16 v5, 0xc

    .line 148
    .line 149
    new-array v5, v5, [Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    .line 150
    .line 151
    aput-object v0, v5, v2

    .line 152
    .line 153
    const/4 v0, 0x1

    .line 154
    aput-object v1, v5, v0

    .line 155
    .line 156
    const/4 v0, 0x2

    .line 157
    aput-object v3, v5, v0

    .line 158
    .line 159
    const/4 v0, 0x3

    .line 160
    aput-object v4, v5, v0

    .line 161
    .line 162
    const/4 v0, 0x4

    .line 163
    aput-object v8, v5, v0

    .line 164
    .line 165
    const/4 v0, 0x5

    .line 166
    aput-object v10, v5, v0

    .line 167
    .line 168
    const/4 v0, 0x6

    .line 169
    aput-object v12, v5, v0

    .line 170
    .line 171
    const/4 v0, 0x7

    .line 172
    aput-object v13, v5, v0

    .line 173
    .line 174
    const/16 v0, 0x8

    .line 175
    .line 176
    aput-object v15, v5, v0

    .line 177
    .line 178
    const/16 v0, 0x9

    .line 179
    .line 180
    aput-object v9, v5, v0

    .line 181
    .line 182
    const/16 v0, 0xa

    .line 183
    .line 184
    aput-object v6, v5, v0

    .line 185
    .line 186
    aput-object v7, v5, v11

    .line 187
    .line 188
    sput-object v5, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->$VALUES:[Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    .line 189
    .line 190
    new-instance v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition$a;

    .line 191
    .line 192
    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition$a;-><init>()V

    .line 193
    .line 194
    .line 195
    sput-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->internalValueMap:Landroidx/datastore/preferences/protobuf/w$b;

    .line 196
    .line 197
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
    iput p3, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;
    .locals 1

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_3

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_2

    .line 8
    .line 9
    const/16 v0, 0x384

    .line 10
    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const v0, 0x7fffffff

    .line 14
    .line 15
    .line 16
    if-eq p0, v0, :cond_0

    .line 17
    .line 18
    packed-switch p0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    packed-switch p0, :pswitch_data_1

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return-object p0

    .line 26
    :pswitch_0
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_99999_TEST_ONLY:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_1
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_99998_TEST_ONLY:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_2
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_99997_TEST_ONLY:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_3
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_2024:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    .line 36
    .line 37
    return-object p0

    .line 38
    :pswitch_4
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_2023:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    .line 39
    .line 40
    return-object p0

    .line 41
    :pswitch_5
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_PROTO3:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    .line 42
    .line 43
    return-object p0

    .line 44
    :pswitch_6
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_PROTO2:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_0
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_MAX:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_1
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_LEGACY:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_2
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_2_TEST_ONLY:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_3
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_1_TEST_ONLY:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    .line 57
    .line 58
    return-object p0

    .line 59
    :cond_4
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->EDITION_UNKNOWN:Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    .line 60
    .line 61
    return-object p0

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x3e6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    :pswitch_data_1
    .packed-switch 0x1869d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static internalGetValueMap()Landroidx/datastore/preferences/protobuf/w$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/protobuf/w$b;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->internalValueMap:Landroidx/datastore/preferences/protobuf/w$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public static internalGetVerifier()Landroidx/datastore/preferences/protobuf/w$c;
    .locals 1

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition$b;->a:Landroidx/datastore/preferences/protobuf/w$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(I)Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->forNumber(I)Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;
    .locals 1

    .line 1
    const-class v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    return-object p0
.end method

.method public static values()[Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;
    .locals 1

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->$VALUES:[Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    .line 2
    .line 3
    invoke-virtual {v0}, [Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$Edition;->value:I

    .line 2
    .line 3
    return v0
.end method
