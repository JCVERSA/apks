.class public Lcom/cloud/tmc/ad/TaErrorCode;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final ADMEDIA_NO_FILL:Lcom/cloud/tmc/ad/TaErrorCode;

.field private static final ADMEDIA_NO_FILL_CODE:I = 0x3ec

.field private static final ADM_SCALE_IS_WRONG:I = 0x3f8

.field public static final ADM_SCALE_NOT_FIT:Lcom/cloud/tmc/ad/TaErrorCode;

.field private static final AD_BE_FILTER_CODE:I = 0x3e9

.field public static final AD_CONFIG_SILENCE:Lcom/cloud/tmc/ad/TaErrorCode;

.field private static final AD_CONFIG_SILENCE_CODE:I = 0x3f6

.field public static final AD_DATA_PARSE_RESPONSE_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

.field private static final AD_DATA_PARSE_RESPONSE_ERROR_CODE:I = 0x3f7

.field public static final AD_EXPIRE:Lcom/cloud/tmc/ad/TaErrorCode;

.field private static final AD_IS_EMPTY_CODE:I = 0x232b

.field public static final AD_NOT_AVALID:Lcom/cloud/tmc/ad/TaErrorCode;

.field public static final AD_NO_CACHED:Lcom/cloud/tmc/ad/TaErrorCode;

.field private static final CONFIG_IS_NOT_EXIT:I = 0x3f9

.field public static final CONFIG_IS_NOT_EXIT_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

.field private static final CONFIG_SHOW_COUNT_LIMIT:I = 0x3fa

.field public static final CONFIG_SHOW_COUNT_LIMIT_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

.field public static final HTTP_RESPONSE_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

.field private static final HTTP_RESPONSE_ERROR_CODE:I = 0x232e

.field public static final INVALID_CRVT_CODE:I = 0x2332

.field public static final INVALID_CRVT_TYPE:Lcom/cloud/tmc/ad/TaErrorCode;

.field public static final INVALID_URL:Lcom/cloud/tmc/ad/TaErrorCode;

.field private static final INVALID_URL_CODE:I = 0x3ee

.field public static final LOAD_AD_TIMEOUT_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

.field public static final NETWORK_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

.field private static final NETWORK_ERROR_CODE:I = 0x2328

.field public static final NOT_ALLOW_DEEPLINK:Lcom/cloud/tmc/ad/TaErrorCode;

.field public static final NOT_ALLOW_DEEPLINK_CODE:I = 0x3f4

.field public static final NOT_SELF_AD:Lcom/cloud/tmc/ad/TaErrorCode;

.field private static final NOT_SELF_AD_CODE:I = 0x3f3

.field public static final NO_AD:Lcom/cloud/tmc/ad/TaErrorCode;

.field private static final NO_AD_CODE:I = 0x3ea

.field public static final PARSE_BITMAP_ERROR:I = 0x2335

.field public static final PLATFORM_IS_NOT_EXIT:Lcom/cloud/tmc/ad/TaErrorCode;

.field private static final PLATFORM_NOT_EXIT:I = 0x3f1

.field public static final REGISTER_VIEW_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

.field private static final REGISTER_VIEW_ERROR_CODE:I = 0x3ed

.field private static final RESPONSE_ADT_DIFFRENT_CODE:I = 0x2334

.field public static final RESPONSE_ADT_DIFFRENT_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

.field public static final RESPONSE_AD_IS_EMPTY:Lcom/cloud/tmc/ad/TaErrorCode;

.field private static final RESPONSE_PMID_DIFFRENT_CODE:I = 0x2333

.field public static final RESPONSE_PMID_DIFFRENT_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

.field public static final SELF_AD_BE_FILTER:Lcom/cloud/tmc/ad/TaErrorCode;

.field public static final SENSITIVE_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

.field private static final SENSITIVE_ERROR_CODE:I = 0x3eb

.field private static final SPLASH_AD_EXPIRED:I = 0x3ef

.field private static final SPLASH_AD_NOT_AVALID:I = 0x3f5

.field private static final SPLASH_AD_NO_CACHED:I = 0x3f0

.field public static final SUCCESS_CODE:I = 0xc8

.field public static final TIMEOUT_ERROR_CODE:I = 0x232f

.field public static final UNKNOWN_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

.field public static final UNKNOWN_ERROR_CODE:I = 0x2710

.field public static final UNKNOWN_ERROR_CODE_1:I = 0x2711

.field public static final UNKNOWN_ERROR_CODE_2:I = 0x2712


# instance fields
.field private final errorCode:I

.field private final errorMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    .line 2
    .line 3
    const/16 v1, 0x2328

    .line 4
    .line 5
    const-string v2, "Network Error"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->NETWORK_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

    .line 11
    .line 12
    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    .line 13
    .line 14
    const-string v1, "request\'s pmid is diffrent with response\'s"

    .line 15
    .line 16
    const/16 v2, 0x2333

    .line 17
    .line 18
    invoke-direct {v0, v2, v1}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->RESPONSE_PMID_DIFFRENT_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

    .line 22
    .line 23
    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    .line 24
    .line 25
    const-string v1, "request\'s adt is diffrent with response\'s"

    .line 26
    .line 27
    invoke-direct {v0, v2, v1}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->RESPONSE_ADT_DIFFRENT_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

    .line 31
    .line 32
    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    .line 33
    .line 34
    const/16 v1, 0x232b

    .line 35
    .line 36
    const-string v2, "Response Ad is empty"

    .line 37
    .line 38
    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->RESPONSE_AD_IS_EMPTY:Lcom/cloud/tmc/ad/TaErrorCode;

    .line 42
    .line 43
    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    .line 44
    .line 45
    const/16 v1, 0x232e

    .line 46
    .line 47
    const-string v2, "http response is empty"

    .line 48
    .line 49
    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->HTTP_RESPONSE_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

    .line 53
    .line 54
    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    .line 55
    .line 56
    const/16 v1, 0x2332

    .line 57
    .line 58
    const-string v2, "Invalid Crvt type."

    .line 59
    .line 60
    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->INVALID_CRVT_TYPE:Lcom/cloud/tmc/ad/TaErrorCode;

    .line 64
    .line 65
    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    .line 66
    .line 67
    const/16 v1, 0x3e9

    .line 68
    .line 69
    const-string v2, "ad be filter"

    .line 70
    .line 71
    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->SELF_AD_BE_FILTER:Lcom/cloud/tmc/ad/TaErrorCode;

    .line 75
    .line 76
    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    .line 77
    .line 78
    const/16 v1, 0x3f3

    .line 79
    .line 80
    const-string v2, "not self ad error"

    .line 81
    .line 82
    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->NOT_SELF_AD:Lcom/cloud/tmc/ad/TaErrorCode;

    .line 86
    .line 87
    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    .line 88
    .line 89
    const/16 v1, 0x3ea

    .line 90
    .line 91
    const-string v2, "no ad show, set visible gone"

    .line 92
    .line 93
    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->NO_AD:Lcom/cloud/tmc/ad/TaErrorCode;

    .line 97
    .line 98
    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    .line 99
    .line 100
    const/16 v1, 0x3eb

    .line 101
    .line 102
    const-string v2, "Sensitive AD"

    .line 103
    .line 104
    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    .line 105
    .line 106
    .line 107
    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->SENSITIVE_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

    .line 108
    .line 109
    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    .line 110
    .line 111
    const/16 v1, 0x3ec

    .line 112
    .line 113
    const-string v2, "Admedia can not provide ad to this device, please contact the ad manager."

    .line 114
    .line 115
    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    .line 116
    .line 117
    .line 118
    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->ADMEDIA_NO_FILL:Lcom/cloud/tmc/ad/TaErrorCode;

    .line 119
    .line 120
    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    .line 121
    .line 122
    const/16 v1, 0x3ed

    .line 123
    .line 124
    const-string v2, "register view error"

    .line 125
    .line 126
    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    .line 127
    .line 128
    .line 129
    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->REGISTER_VIEW_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

    .line 130
    .line 131
    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    .line 132
    .line 133
    const/16 v1, 0x3ee

    .line 134
    .line 135
    const-string v2, "Invalid url."

    .line 136
    .line 137
    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    .line 138
    .line 139
    .line 140
    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->INVALID_URL:Lcom/cloud/tmc/ad/TaErrorCode;

    .line 141
    .line 142
    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    .line 143
    .line 144
    const/16 v1, 0x3ef

    .line 145
    .line 146
    const-string v2, "ad expired"

    .line 147
    .line 148
    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    .line 149
    .line 150
    .line 151
    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->AD_EXPIRE:Lcom/cloud/tmc/ad/TaErrorCode;

    .line 152
    .line 153
    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    .line 154
    .line 155
    const/16 v1, 0x3f0

    .line 156
    .line 157
    const-string v2, "no ad"

    .line 158
    .line 159
    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    .line 160
    .line 161
    .line 162
    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->AD_NO_CACHED:Lcom/cloud/tmc/ad/TaErrorCode;

    .line 163
    .line 164
    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    .line 165
    .line 166
    const/16 v1, 0x3f5

    .line 167
    .line 168
    const-string v2, "ad not avalid"

    .line 169
    .line 170
    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    .line 171
    .line 172
    .line 173
    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->AD_NOT_AVALID:Lcom/cloud/tmc/ad/TaErrorCode;

    .line 174
    .line 175
    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    .line 176
    .line 177
    const/16 v1, 0x3f6

    .line 178
    .line 179
    const-string v2, "ad is at silence"

    .line 180
    .line 181
    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    .line 182
    .line 183
    .line 184
    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->AD_CONFIG_SILENCE:Lcom/cloud/tmc/ad/TaErrorCode;

    .line 185
    .line 186
    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    .line 187
    .line 188
    const/16 v1, 0x3f1

    .line 189
    .line 190
    const-string v2, "ad platform is not exit."

    .line 191
    .line 192
    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    .line 193
    .line 194
    .line 195
    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->PLATFORM_IS_NOT_EXIT:Lcom/cloud/tmc/ad/TaErrorCode;

    .line 196
    .line 197
    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    .line 198
    .line 199
    const/16 v1, 0x2710

    .line 200
    .line 201
    const-string v2, "Unkown error."

    .line 202
    .line 203
    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    .line 204
    .line 205
    .line 206
    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->UNKNOWN_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

    .line 207
    .line 208
    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    .line 209
    .line 210
    const/16 v1, 0x3f4

    .line 211
    .line 212
    const-string v2, "Not_allow_deeplink"

    .line 213
    .line 214
    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    .line 215
    .line 216
    .line 217
    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->NOT_ALLOW_DEEPLINK:Lcom/cloud/tmc/ad/TaErrorCode;

    .line 218
    .line 219
    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    .line 220
    .line 221
    const/16 v1, 0x3f8

    .line 222
    .line 223
    const-string v2, "adm scales is not fit"

    .line 224
    .line 225
    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    .line 226
    .line 227
    .line 228
    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->ADM_SCALE_NOT_FIT:Lcom/cloud/tmc/ad/TaErrorCode;

    .line 229
    .line 230
    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    .line 231
    .line 232
    const/16 v1, 0x3f7

    .line 233
    .line 234
    const-string v2, "ad data parse response error"

    .line 235
    .line 236
    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    .line 237
    .line 238
    .line 239
    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->AD_DATA_PARSE_RESPONSE_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

    .line 240
    .line 241
    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    .line 242
    .line 243
    const/16 v1, 0x3f9

    .line 244
    .line 245
    const-string v2, "code seat is not exit"

    .line 246
    .line 247
    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    .line 248
    .line 249
    .line 250
    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->CONFIG_IS_NOT_EXIT_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

    .line 251
    .line 252
    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    .line 253
    .line 254
    const/16 v1, 0x3fa

    .line 255
    .line 256
    const-string v2, "code seat show count limit"

    .line 257
    .line 258
    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    .line 259
    .line 260
    .line 261
    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->CONFIG_SHOW_COUNT_LIMIT_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

    .line 262
    .line 263
    new-instance v0, Lcom/cloud/tmc/ad/TaErrorCode;

    .line 264
    .line 265
    const/16 v1, 0x232f

    .line 266
    .line 267
    const-string v2, "load ad time out"

    .line 268
    .line 269
    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/ad/TaErrorCode;-><init>(ILjava/lang/String;)V

    .line 270
    .line 271
    .line 272
    sput-object v0, Lcom/cloud/tmc/ad/TaErrorCode;->LOAD_AD_TIMEOUT_ERROR:Lcom/cloud/tmc/ad/TaErrorCode;

    .line 273
    .line 274
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string p2, "empty msg"

    .line 11
    .line 12
    :cond_0
    iput p1, p0, Lcom/cloud/tmc/ad/TaErrorCode;->errorCode:I

    .line 13
    .line 14
    iput-object p2, p0, Lcom/cloud/tmc/ad/TaErrorCode;->errorMessage:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/ad/TaErrorCode;->errorCode:I

    .line 2
    .line 3
    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/TaErrorCode;->errorMessage:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
