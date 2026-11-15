.class public final Lcom/cloud/tmc/miniutils/constant/PermissionConstants;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniutils/constant/PermissionConstants$PermissionGroup;
    }
.end annotation


# static fields
.field public static final ACTIVITY_RECOGNITION:Ljava/lang/String; = "ACTIVITY_RECOGNITION"

.field public static final CALENDAR:Ljava/lang/String; = "CALENDAR"

.field public static final CAMERA:Ljava/lang/String; = "CAMERA"

.field public static final CONTACTS:Ljava/lang/String; = "CONTACTS"

.field private static final GROUP_ACTIVITY_RECOGNITION:[Ljava/lang/String;

.field private static final GROUP_CALENDAR:[Ljava/lang/String;

.field private static final GROUP_CAMERA:[Ljava/lang/String;

.field private static final GROUP_CONTACTS:[Ljava/lang/String;

.field private static final GROUP_LOCATION:[Ljava/lang/String;

.field private static final GROUP_MEDIA:[Ljava/lang/String;

.field private static final GROUP_MEDIA_AUDIO:[Ljava/lang/String;

.field private static final GROUP_MEDIA_IMAGES:[Ljava/lang/String;

.field private static final GROUP_MEDIA_IMAGES_VIDEO:[Ljava/lang/String;

.field private static final GROUP_MEDIA_VIDEO:[Ljava/lang/String;

.field private static final GROUP_MICROPHONE:[Ljava/lang/String;

.field private static final GROUP_PHONE:[Ljava/lang/String;

.field private static final GROUP_PHONE_BELOW_O:[Ljava/lang/String;

.field private static final GROUP_SELECT_MEDIA:[Ljava/lang/String;

.field private static final GROUP_SELECT_MEDIA_IMAGES:[Ljava/lang/String;

.field private static final GROUP_SELECT_MEDIA_IMAGES_VIDEO:[Ljava/lang/String;

.field private static final GROUP_SELECT_MEDIA_VIDEO:[Ljava/lang/String;

.field private static final GROUP_SENSORS:[Ljava/lang/String;

.field private static final GROUP_SMS:[Ljava/lang/String;

.field private static final GROUP_STORAGE:[Ljava/lang/String;

.field private static final GROUP_STORAGE_READ:[Ljava/lang/String;

.field private static final GROUP_STORAGE_WRITE:[Ljava/lang/String;

.field public static final LOCATION:Ljava/lang/String; = "LOCATION"

.field public static final MEDIA:Ljava/lang/String; = "MEDIA"

.field public static final MEDIA_AUDIO:Ljava/lang/String; = "MEDIA_AUDIO"

.field public static final MEDIA_IMAGES:Ljava/lang/String; = "MEDIA_IMAGES"

.field public static final MEDIA_IMAGES_VIDEO:Ljava/lang/String; = "MEDIA_IMAGES_VIDEO"

.field public static final MEDIA_VIDEO:Ljava/lang/String; = "MEDIA_VIDEO"

.field public static final MICROPHONE:Ljava/lang/String; = "MICROPHONE"

.field public static final PHONE:Ljava/lang/String; = "PHONE"

.field public static final SENSORS:Ljava/lang/String; = "SENSORS"

.field public static final SMS:Ljava/lang/String; = "SMS"

.field public static final STORAGE:Ljava/lang/String; = "STORAGE"

.field public static final STORAGE_READ:Ljava/lang/String; = "STORAGE_READ"

.field public static final STORAGE_WRITE:Ljava/lang/String; = "STORAGE_WRITE"


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const-string v0, "android.permission.READ_CALENDAR"

    .line 2
    .line 3
    const-string v1, "android.permission.WRITE_CALENDAR"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_CALENDAR:[Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "android.permission.CAMERA"

    .line 12
    .line 13
    filled-new-array {v0}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_CAMERA:[Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "android.permission.WRITE_CONTACTS"

    .line 20
    .line 21
    const-string v1, "android.permission.GET_ACCOUNTS"

    .line 22
    .line 23
    const-string v2, "android.permission.READ_CONTACTS"

    .line 24
    .line 25
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_CONTACTS:[Ljava/lang/String;

    .line 30
    .line 31
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 32
    .line 33
    filled-new-array {v0}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_LOCATION:[Ljava/lang/String;

    .line 38
    .line 39
    const-string v0, "android.permission.RECORD_AUDIO"

    .line 40
    .line 41
    filled-new-array {v0}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_MICROPHONE:[Ljava/lang/String;

    .line 46
    .line 47
    const-string v8, "android.permission.PROCESS_OUTGOING_CALLS"

    .line 48
    .line 49
    const-string v9, "android.permission.ANSWER_PHONE_CALLS"

    .line 50
    .line 51
    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 52
    .line 53
    const-string v2, "android.permission.READ_PHONE_NUMBERS"

    .line 54
    .line 55
    const-string v3, "android.permission.CALL_PHONE"

    .line 56
    .line 57
    const-string v4, "android.permission.READ_CALL_LOG"

    .line 58
    .line 59
    const-string v5, "android.permission.WRITE_CALL_LOG"

    .line 60
    .line 61
    const-string v6, "com.android.voicemail.permission.ADD_VOICEMAIL"

    .line 62
    .line 63
    const-string v7, "android.permission.USE_SIP"

    .line 64
    .line 65
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sput-object v0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_PHONE:[Ljava/lang/String;

    .line 70
    .line 71
    const-string v7, "android.permission.USE_SIP"

    .line 72
    .line 73
    const-string v8, "android.permission.PROCESS_OUTGOING_CALLS"

    .line 74
    .line 75
    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 76
    .line 77
    const-string v2, "android.permission.READ_PHONE_NUMBERS"

    .line 78
    .line 79
    const-string v3, "android.permission.CALL_PHONE"

    .line 80
    .line 81
    const-string v4, "android.permission.READ_CALL_LOG"

    .line 82
    .line 83
    const-string v5, "android.permission.WRITE_CALL_LOG"

    .line 84
    .line 85
    const-string v6, "com.android.voicemail.permission.ADD_VOICEMAIL"

    .line 86
    .line 87
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    sput-object v0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_PHONE_BELOW_O:[Ljava/lang/String;

    .line 92
    .line 93
    const-string v0, "android.permission.BODY_SENSORS"

    .line 94
    .line 95
    filled-new-array {v0}, [Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    sput-object v0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_SENSORS:[Ljava/lang/String;

    .line 100
    .line 101
    const-string v0, "android.permission.RECEIVE_WAP_PUSH"

    .line 102
    .line 103
    const-string v1, "android.permission.RECEIVE_MMS"

    .line 104
    .line 105
    const-string v2, "android.permission.SEND_SMS"

    .line 106
    .line 107
    const-string v3, "android.permission.RECEIVE_SMS"

    .line 108
    .line 109
    const-string v4, "android.permission.READ_SMS"

    .line 110
    .line 111
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    sput-object v0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_SMS:[Ljava/lang/String;

    .line 116
    .line 117
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 118
    .line 119
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 120
    .line 121
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    sput-object v2, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_STORAGE:[Ljava/lang/String;

    .line 126
    .line 127
    filled-new-array {v0}, [Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    sput-object v0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_STORAGE_READ:[Ljava/lang/String;

    .line 132
    .line 133
    filled-new-array {v1}, [Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    sput-object v0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_STORAGE_WRITE:[Ljava/lang/String;

    .line 138
    .line 139
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    .line 140
    .line 141
    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    .line 142
    .line 143
    const-string v2, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    .line 144
    .line 145
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    sput-object v3, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_SELECT_MEDIA:[Ljava/lang/String;

    .line 150
    .line 151
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    sput-object v3, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_MEDIA:[Ljava/lang/String;

    .line 156
    .line 157
    filled-new-array {v0, v2}, [Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    sput-object v3, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_SELECT_MEDIA_IMAGES:[Ljava/lang/String;

    .line 162
    .line 163
    filled-new-array {v0}, [Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    sput-object v3, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_MEDIA_IMAGES:[Ljava/lang/String;

    .line 168
    .line 169
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    sput-object v3, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_SELECT_MEDIA_VIDEO:[Ljava/lang/String;

    .line 174
    .line 175
    filled-new-array {v1}, [Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    sput-object v3, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_MEDIA_VIDEO:[Ljava/lang/String;

    .line 180
    .line 181
    const-string v3, "android.permission.READ_MEDIA_AUDIO"

    .line 182
    .line 183
    filled-new-array {v3}, [Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    sput-object v3, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_MEDIA_AUDIO:[Ljava/lang/String;

    .line 188
    .line 189
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    sput-object v2, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_SELECT_MEDIA_IMAGES_VIDEO:[Ljava/lang/String;

    .line 194
    .line 195
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    sput-object v0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_MEDIA_IMAGES_VIDEO:[Ljava/lang/String;

    .line 200
    .line 201
    const-string v0, "android.permission.ACTIVITY_RECOGNITION"

    .line 202
    .line 203
    filled-new-array {v0}, [Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    sput-object v0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_ACTIVITY_RECOGNITION:[Ljava/lang/String;

    .line 208
    .line 209
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getPermissions(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    new-array p0, v0, [Ljava/lang/String;

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    const/16 v1, 0x22

    .line 8
    .line 9
    const/16 v2, 0x21

    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    sparse-switch v4, :sswitch_data_0

    .line 17
    .line 18
    .line 19
    :goto_0
    move v0, v3

    .line 20
    goto/16 :goto_1

    .line 21
    .line 22
    :sswitch_0
    const-string v0, "CAMERA"

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/16 v0, 0x10

    .line 32
    .line 33
    goto/16 :goto_1

    .line 34
    .line 35
    :sswitch_1
    const-string v0, "MICROPHONE"

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/16 v0, 0xf

    .line 45
    .line 46
    goto/16 :goto_1

    .line 47
    .line 48
    :sswitch_2
    const-string v0, "STORAGE_WRITE"

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    const/16 v0, 0xe

    .line 58
    .line 59
    goto/16 :goto_1

    .line 60
    .line 61
    :sswitch_3
    const-string v0, "MEDIA_IMAGES_VIDEO"

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_4

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    const/16 v0, 0xd

    .line 71
    .line 72
    goto/16 :goto_1

    .line 73
    .line 74
    :sswitch_4
    const-string v0, "CALENDAR"

    .line 75
    .line 76
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_5

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_5
    const/16 v0, 0xc

    .line 84
    .line 85
    goto/16 :goto_1

    .line 86
    .line 87
    :sswitch_5
    const-string v0, "MEDIA_IMAGES"

    .line 88
    .line 89
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-nez v0, :cond_6

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_6
    const/16 v0, 0xb

    .line 97
    .line 98
    goto/16 :goto_1

    .line 99
    .line 100
    :sswitch_6
    const-string v0, "CONTACTS"

    .line 101
    .line 102
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-nez v0, :cond_7

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_7
    const/16 v0, 0xa

    .line 110
    .line 111
    goto/16 :goto_1

    .line 112
    .line 113
    :sswitch_7
    const-string v0, "ACTIVITY_RECOGNITION"

    .line 114
    .line 115
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-nez v0, :cond_8

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_8
    const/16 v0, 0x9

    .line 123
    .line 124
    goto/16 :goto_1

    .line 125
    .line 126
    :sswitch_8
    const-string v0, "PHONE"

    .line 127
    .line 128
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-nez v0, :cond_9

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_9
    const/16 v0, 0x8

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :sswitch_9
    const-string v0, "MEDIA"

    .line 139
    .line 140
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-nez v0, :cond_a

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_a
    const/4 v0, 0x7

    .line 148
    goto :goto_1

    .line 149
    :sswitch_a
    const-string v0, "SMS"

    .line 150
    .line 151
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-nez v0, :cond_b

    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :cond_b
    const/4 v0, 0x6

    .line 160
    goto :goto_1

    .line 161
    :sswitch_b
    const-string v0, "STORAGE_READ"

    .line 162
    .line 163
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-nez v0, :cond_c

    .line 168
    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    :cond_c
    const/4 v0, 0x5

    .line 172
    goto :goto_1

    .line 173
    :sswitch_c
    const-string v0, "STORAGE"

    .line 174
    .line 175
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-nez v0, :cond_d

    .line 180
    .line 181
    goto/16 :goto_0

    .line 182
    .line 183
    :cond_d
    const/4 v0, 0x4

    .line 184
    goto :goto_1

    .line 185
    :sswitch_d
    const-string v0, "MEDIA_VIDEO"

    .line 186
    .line 187
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-nez v0, :cond_e

    .line 192
    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    :cond_e
    const/4 v0, 0x3

    .line 196
    goto :goto_1

    .line 197
    :sswitch_e
    const-string v0, "MEDIA_AUDIO"

    .line 198
    .line 199
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-nez v0, :cond_f

    .line 204
    .line 205
    goto/16 :goto_0

    .line 206
    .line 207
    :cond_f
    const/4 v0, 0x2

    .line 208
    goto :goto_1

    .line 209
    :sswitch_f
    const-string v0, "SENSORS"

    .line 210
    .line 211
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-nez v0, :cond_10

    .line 216
    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    :cond_10
    const/4 v0, 0x1

    .line 220
    goto :goto_1

    .line 221
    :sswitch_10
    const-string v4, "LOCATION"

    .line 222
    .line 223
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    if-nez v4, :cond_11

    .line 228
    .line 229
    goto/16 :goto_0

    .line 230
    .line 231
    :cond_11
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 232
    .line 233
    .line 234
    filled-new-array {p0}, [Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    return-object p0

    .line 239
    :pswitch_0
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_CAMERA:[Ljava/lang/String;

    .line 240
    .line 241
    return-object p0

    .line 242
    :pswitch_1
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_MICROPHONE:[Ljava/lang/String;

    .line 243
    .line 244
    return-object p0

    .line 245
    :pswitch_2
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 246
    .line 247
    if-lt p0, v2, :cond_12

    .line 248
    .line 249
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_MEDIA:[Ljava/lang/String;

    .line 250
    .line 251
    return-object p0

    .line 252
    :cond_12
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_STORAGE_WRITE:[Ljava/lang/String;

    .line 253
    .line 254
    return-object p0

    .line 255
    :pswitch_3
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 256
    .line 257
    if-lt p0, v1, :cond_13

    .line 258
    .line 259
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_SELECT_MEDIA_IMAGES_VIDEO:[Ljava/lang/String;

    .line 260
    .line 261
    return-object p0

    .line 262
    :cond_13
    if-lt p0, v2, :cond_14

    .line 263
    .line 264
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_MEDIA_IMAGES_VIDEO:[Ljava/lang/String;

    .line 265
    .line 266
    return-object p0

    .line 267
    :cond_14
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_STORAGE:[Ljava/lang/String;

    .line 268
    .line 269
    return-object p0

    .line 270
    :pswitch_4
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_CALENDAR:[Ljava/lang/String;

    .line 271
    .line 272
    return-object p0

    .line 273
    :pswitch_5
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 274
    .line 275
    if-lt p0, v1, :cond_15

    .line 276
    .line 277
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_SELECT_MEDIA_IMAGES:[Ljava/lang/String;

    .line 278
    .line 279
    return-object p0

    .line 280
    :cond_15
    if-lt p0, v2, :cond_16

    .line 281
    .line 282
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_MEDIA_IMAGES:[Ljava/lang/String;

    .line 283
    .line 284
    return-object p0

    .line 285
    :cond_16
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_STORAGE:[Ljava/lang/String;

    .line 286
    .line 287
    return-object p0

    .line 288
    :pswitch_6
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_CONTACTS:[Ljava/lang/String;

    .line 289
    .line 290
    return-object p0

    .line 291
    :pswitch_7
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_ACTIVITY_RECOGNITION:[Ljava/lang/String;

    .line 292
    .line 293
    return-object p0

    .line 294
    :pswitch_8
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 295
    .line 296
    const/16 v0, 0x1a

    .line 297
    .line 298
    if-ge p0, v0, :cond_17

    .line 299
    .line 300
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_PHONE_BELOW_O:[Ljava/lang/String;

    .line 301
    .line 302
    return-object p0

    .line 303
    :cond_17
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_PHONE:[Ljava/lang/String;

    .line 304
    .line 305
    return-object p0

    .line 306
    :pswitch_9
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_SMS:[Ljava/lang/String;

    .line 307
    .line 308
    return-object p0

    .line 309
    :pswitch_a
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 310
    .line 311
    if-lt p0, v2, :cond_18

    .line 312
    .line 313
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_MEDIA:[Ljava/lang/String;

    .line 314
    .line 315
    return-object p0

    .line 316
    :cond_18
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_STORAGE_READ:[Ljava/lang/String;

    .line 317
    .line 318
    return-object p0

    .line 319
    :pswitch_b
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 320
    .line 321
    if-lt p0, v1, :cond_19

    .line 322
    .line 323
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_SELECT_MEDIA:[Ljava/lang/String;

    .line 324
    .line 325
    return-object p0

    .line 326
    :cond_19
    if-lt p0, v2, :cond_1a

    .line 327
    .line 328
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_MEDIA:[Ljava/lang/String;

    .line 329
    .line 330
    return-object p0

    .line 331
    :cond_1a
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_STORAGE:[Ljava/lang/String;

    .line 332
    .line 333
    return-object p0

    .line 334
    :pswitch_c
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 335
    .line 336
    if-lt p0, v1, :cond_1b

    .line 337
    .line 338
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_SELECT_MEDIA_VIDEO:[Ljava/lang/String;

    .line 339
    .line 340
    return-object p0

    .line 341
    :cond_1b
    if-lt p0, v2, :cond_1c

    .line 342
    .line 343
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_MEDIA_VIDEO:[Ljava/lang/String;

    .line 344
    .line 345
    return-object p0

    .line 346
    :cond_1c
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_STORAGE:[Ljava/lang/String;

    .line 347
    .line 348
    return-object p0

    .line 349
    :pswitch_d
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 350
    .line 351
    if-lt p0, v2, :cond_1d

    .line 352
    .line 353
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_MEDIA_AUDIO:[Ljava/lang/String;

    .line 354
    .line 355
    return-object p0

    .line 356
    :cond_1d
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_STORAGE:[Ljava/lang/String;

    .line 357
    .line 358
    return-object p0

    .line 359
    :pswitch_e
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_SENSORS:[Ljava/lang/String;

    .line 360
    .line 361
    return-object p0

    .line 362
    :pswitch_f
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_LOCATION:[Ljava/lang/String;

    .line 363
    .line 364
    return-object p0

    .line 365
    :sswitch_data_0
    .sparse-switch
        -0x600a704b -> :sswitch_10
        -0x5f2a5027 -> :sswitch_f
        -0x49ba6485 -> :sswitch_e
        -0x4897ebe0 -> :sswitch_d
        -0x458431a5 -> :sswitch_c
        -0x3ea10306 -> :sswitch_b
        0x14139 -> :sswitch_a
        0x45d77c4 -> :sswitch_9
        0x489454e -> :sswitch_8
        0x8623667 -> :sswitch_7
        0xcd35053 -> :sswitch_6
        0x1fa27753 -> :sswitch_5
        0x2404eb3e -> :sswitch_4
        0x314cec6f -> :sswitch_3
        0x6acd20db -> :sswitch_2
        0x6ea0852a -> :sswitch_1
        0x760cb725 -> :sswitch_0
    .end sparse-switch

    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_b
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
