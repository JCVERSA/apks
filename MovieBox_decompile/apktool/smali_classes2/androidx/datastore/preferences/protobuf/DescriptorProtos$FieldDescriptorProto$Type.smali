.class public final enum Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
.super Ljava/lang/Enum;
.source "source.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/w$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/w$a;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final enum TYPE_BOOL:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final TYPE_BOOL_VALUE:I = 0x8

.field public static final enum TYPE_BYTES:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final TYPE_BYTES_VALUE:I = 0xc

.field public static final enum TYPE_DOUBLE:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final TYPE_DOUBLE_VALUE:I = 0x1

.field public static final enum TYPE_ENUM:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final TYPE_ENUM_VALUE:I = 0xe

.field public static final enum TYPE_FIXED32:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final TYPE_FIXED32_VALUE:I = 0x7

.field public static final enum TYPE_FIXED64:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final TYPE_FIXED64_VALUE:I = 0x6

.field public static final enum TYPE_FLOAT:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final TYPE_FLOAT_VALUE:I = 0x2

.field public static final enum TYPE_GROUP:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final TYPE_GROUP_VALUE:I = 0xa

.field public static final enum TYPE_INT32:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final TYPE_INT32_VALUE:I = 0x5

.field public static final enum TYPE_INT64:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final TYPE_INT64_VALUE:I = 0x3

.field public static final enum TYPE_MESSAGE:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final TYPE_MESSAGE_VALUE:I = 0xb

.field public static final enum TYPE_SFIXED32:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final TYPE_SFIXED32_VALUE:I = 0xf

.field public static final enum TYPE_SFIXED64:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final TYPE_SFIXED64_VALUE:I = 0x10

.field public static final enum TYPE_SINT32:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final TYPE_SINT32_VALUE:I = 0x11

.field public static final enum TYPE_SINT64:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final TYPE_SINT64_VALUE:I = 0x12

.field public static final enum TYPE_STRING:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final TYPE_STRING_VALUE:I = 0x9

.field public static final enum TYPE_UINT32:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final TYPE_UINT32_VALUE:I = 0xd

.field public static final enum TYPE_UINT64:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final TYPE_UINT64_VALUE:I = 0x4

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
    .locals 21

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 2
    .line 3
    const-string v1, "TYPE_DOUBLE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_DOUBLE:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 11
    .line 12
    new-instance v1, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 13
    .line 14
    const-string v4, "TYPE_FLOAT"

    .line 15
    .line 16
    const/4 v5, 0x2

    .line 17
    invoke-direct {v1, v4, v3, v5}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_FLOAT:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 21
    .line 22
    new-instance v4, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 23
    .line 24
    const-string v6, "TYPE_INT64"

    .line 25
    .line 26
    const/4 v7, 0x3

    .line 27
    invoke-direct {v4, v6, v5, v7}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v4, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_INT64:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 31
    .line 32
    new-instance v6, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 33
    .line 34
    const-string v8, "TYPE_UINT64"

    .line 35
    .line 36
    const/4 v9, 0x4

    .line 37
    invoke-direct {v6, v8, v7, v9}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    sput-object v6, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_UINT64:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 41
    .line 42
    new-instance v8, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 43
    .line 44
    const-string v10, "TYPE_INT32"

    .line 45
    .line 46
    const/4 v11, 0x5

    .line 47
    invoke-direct {v8, v10, v9, v11}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    sput-object v8, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_INT32:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 51
    .line 52
    new-instance v10, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 53
    .line 54
    const-string v12, "TYPE_FIXED64"

    .line 55
    .line 56
    const/4 v13, 0x6

    .line 57
    invoke-direct {v10, v12, v11, v13}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    .line 58
    .line 59
    .line 60
    sput-object v10, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_FIXED64:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 61
    .line 62
    new-instance v12, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 63
    .line 64
    const-string v14, "TYPE_FIXED32"

    .line 65
    .line 66
    const/4 v15, 0x7

    .line 67
    invoke-direct {v12, v14, v13, v15}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    .line 68
    .line 69
    .line 70
    sput-object v12, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_FIXED32:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 71
    .line 72
    new-instance v14, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 73
    .line 74
    const-string v13, "TYPE_BOOL"

    .line 75
    .line 76
    const/16 v11, 0x8

    .line 77
    .line 78
    invoke-direct {v14, v13, v15, v11}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    .line 79
    .line 80
    .line 81
    sput-object v14, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_BOOL:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 82
    .line 83
    new-instance v13, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 84
    .line 85
    const-string v15, "TYPE_STRING"

    .line 86
    .line 87
    const/16 v9, 0x9

    .line 88
    .line 89
    invoke-direct {v13, v15, v11, v9}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    .line 90
    .line 91
    .line 92
    sput-object v13, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_STRING:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 93
    .line 94
    new-instance v15, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 95
    .line 96
    const-string v11, "TYPE_GROUP"

    .line 97
    .line 98
    const/16 v7, 0xa

    .line 99
    .line 100
    invoke-direct {v15, v11, v9, v7}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    .line 101
    .line 102
    .line 103
    sput-object v15, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_GROUP:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 104
    .line 105
    new-instance v11, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 106
    .line 107
    const-string v9, "TYPE_MESSAGE"

    .line 108
    .line 109
    const/16 v5, 0xb

    .line 110
    .line 111
    invoke-direct {v11, v9, v7, v5}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    .line 112
    .line 113
    .line 114
    sput-object v11, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_MESSAGE:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 115
    .line 116
    new-instance v9, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 117
    .line 118
    const-string v7, "TYPE_BYTES"

    .line 119
    .line 120
    const/16 v3, 0xc

    .line 121
    .line 122
    invoke-direct {v9, v7, v5, v3}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    .line 123
    .line 124
    .line 125
    sput-object v9, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_BYTES:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 126
    .line 127
    new-instance v7, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 128
    .line 129
    const-string v5, "TYPE_UINT32"

    .line 130
    .line 131
    const/16 v2, 0xd

    .line 132
    .line 133
    invoke-direct {v7, v5, v3, v2}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    .line 134
    .line 135
    .line 136
    sput-object v7, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_UINT32:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 137
    .line 138
    new-instance v5, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 139
    .line 140
    const-string v3, "TYPE_ENUM"

    .line 141
    .line 142
    move-object/from16 v16, v7

    .line 143
    .line 144
    const/16 v7, 0xe

    .line 145
    .line 146
    invoke-direct {v5, v3, v2, v7}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    .line 147
    .line 148
    .line 149
    sput-object v5, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_ENUM:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 150
    .line 151
    new-instance v3, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 152
    .line 153
    const-string v2, "TYPE_SFIXED32"

    .line 154
    .line 155
    move-object/from16 v17, v5

    .line 156
    .line 157
    const/16 v5, 0xf

    .line 158
    .line 159
    invoke-direct {v3, v2, v7, v5}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    .line 160
    .line 161
    .line 162
    sput-object v3, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SFIXED32:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 163
    .line 164
    new-instance v2, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 165
    .line 166
    const-string v7, "TYPE_SFIXED64"

    .line 167
    .line 168
    move-object/from16 v18, v3

    .line 169
    .line 170
    const/16 v3, 0x10

    .line 171
    .line 172
    invoke-direct {v2, v7, v5, v3}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    .line 173
    .line 174
    .line 175
    sput-object v2, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SFIXED64:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 176
    .line 177
    new-instance v7, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 178
    .line 179
    const-string v5, "TYPE_SINT32"

    .line 180
    .line 181
    move-object/from16 v19, v2

    .line 182
    .line 183
    const/16 v2, 0x11

    .line 184
    .line 185
    invoke-direct {v7, v5, v3, v2}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    .line 186
    .line 187
    .line 188
    sput-object v7, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SINT32:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 189
    .line 190
    new-instance v5, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 191
    .line 192
    const-string v3, "TYPE_SINT64"

    .line 193
    .line 194
    move-object/from16 v20, v7

    .line 195
    .line 196
    const/16 v7, 0x12

    .line 197
    .line 198
    invoke-direct {v5, v3, v2, v7}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    .line 199
    .line 200
    .line 201
    sput-object v5, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SINT64:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 202
    .line 203
    new-array v3, v7, [Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 204
    .line 205
    const/4 v7, 0x0

    .line 206
    aput-object v0, v3, v7

    .line 207
    .line 208
    const/4 v0, 0x1

    .line 209
    aput-object v1, v3, v0

    .line 210
    .line 211
    const/4 v0, 0x2

    .line 212
    aput-object v4, v3, v0

    .line 213
    .line 214
    const/4 v0, 0x3

    .line 215
    aput-object v6, v3, v0

    .line 216
    .line 217
    const/4 v0, 0x4

    .line 218
    aput-object v8, v3, v0

    .line 219
    .line 220
    const/4 v0, 0x5

    .line 221
    aput-object v10, v3, v0

    .line 222
    .line 223
    const/4 v0, 0x6

    .line 224
    aput-object v12, v3, v0

    .line 225
    .line 226
    const/4 v0, 0x7

    .line 227
    aput-object v14, v3, v0

    .line 228
    .line 229
    const/16 v0, 0x8

    .line 230
    .line 231
    aput-object v13, v3, v0

    .line 232
    .line 233
    const/16 v0, 0x9

    .line 234
    .line 235
    aput-object v15, v3, v0

    .line 236
    .line 237
    const/16 v0, 0xa

    .line 238
    .line 239
    aput-object v11, v3, v0

    .line 240
    .line 241
    const/16 v0, 0xb

    .line 242
    .line 243
    aput-object v9, v3, v0

    .line 244
    .line 245
    const/16 v0, 0xc

    .line 246
    .line 247
    aput-object v16, v3, v0

    .line 248
    .line 249
    const/16 v0, 0xd

    .line 250
    .line 251
    aput-object v17, v3, v0

    .line 252
    .line 253
    const/16 v0, 0xe

    .line 254
    .line 255
    aput-object v18, v3, v0

    .line 256
    .line 257
    const/16 v0, 0xf

    .line 258
    .line 259
    aput-object v19, v3, v0

    .line 260
    .line 261
    const/16 v0, 0x10

    .line 262
    .line 263
    aput-object v20, v3, v0

    .line 264
    .line 265
    aput-object v5, v3, v2

    .line 266
    .line 267
    sput-object v3, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->$VALUES:[Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 268
    .line 269
    new-instance v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type$a;

    .line 270
    .line 271
    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type$a;-><init>()V

    .line 272
    .line 273
    .line 274
    sput-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->internalValueMap:Landroidx/datastore/preferences/protobuf/w$b;

    .line 275
    .line 276
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
    iput p3, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
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
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SINT64:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_1
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SINT32:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_2
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SFIXED64:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_3
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SFIXED32:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_4
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_ENUM:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_5
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_UINT32:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_6
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_BYTES:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_7
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_MESSAGE:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_8
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_GROUP:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_9
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_STRING:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_a
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_BOOL:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_b
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_FIXED32:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_c
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_FIXED64:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_d
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_INT32:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_e
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_UINT64:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_f
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_INT64:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 52
    .line 53
    return-object p0

    .line 54
    :pswitch_10
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_FLOAT:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 55
    .line 56
    return-object p0

    .line 57
    :pswitch_11
    sget-object p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_DOUBLE:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 58
    .line 59
    return-object p0

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public static internalGetValueMap()Landroidx/datastore/preferences/protobuf/w$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/protobuf/w$b;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->internalValueMap:Landroidx/datastore/preferences/protobuf/w$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public static internalGetVerifier()Landroidx/datastore/preferences/protobuf/w$c;
    .locals 1

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type$b;->a:Landroidx/datastore/preferences/protobuf/w$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(I)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->forNumber(I)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
    .locals 1

    .line 1
    const-class v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    return-object p0
.end method

.method public static values()[Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
    .locals 1

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->$VALUES:[Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 2
    .line 3
    invoke-virtual {v0}, [Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->value:I

    .line 2
    .line 3
    return v0
.end method
