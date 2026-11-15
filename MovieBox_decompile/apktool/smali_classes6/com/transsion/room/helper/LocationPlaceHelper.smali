.class public final Lcom/transsion/room/helper/LocationPlaceHelper;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/room/helper/LocationPlaceHelper;

.field private static b:Lcom/google/android/libraries/places/api/net/PlacesClient;

.field private static c:Lcom/google/android/gms/location/LocationCallback;

.field private static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/room/helper/LocationPlaceHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/room/helper/LocationPlaceHelper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/room/helper/LocationPlaceHelper;->a:Lcom/transsion/room/helper/LocationPlaceHelper;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final A(Lcom/google/android/gms/location/FusedLocationProviderClient;)V
    .locals 5

    .line 1
    sget v0, Lcom/transsion/room/helper/LocationPlaceHelper;->d:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const-string v2, "LocationP"

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 10
    .line 11
    const-string v0, "Location--update---- removeLocationUpdates, \u8d85\u8fc7\u4e0a\u96503\u6b21\uff0c\u4e0d\u518d\u79fb\u9664"

    .line 12
    .line 13
    invoke-virtual {p1, v2, v0, v3}, Lwf/a$a;->u(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    add-int/2addr v0, v3

    .line 18
    sput v0, Lcom/transsion/room/helper/LocationPlaceHelper;->d:I

    .line 19
    .line 20
    sget-object v0, Lcom/transsion/room/helper/LocationPlaceHelper;->c:Lcom/google/android/gms/location/LocationCallback;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 25
    .line 26
    const-string v4, "Location--update---- removeLocationUpdates"

    .line 27
    .line 28
    invoke-virtual {v1, v2, v4, v3}, Lwf/a$a;->u(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, v0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Lcom/google/android/gms/location/LocationCallback;)Lcom/google/android/gms/tasks/Task;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Lcom/transsion/room/helper/k;

    .line 36
    .line 37
    invoke-direct {v1, p1}, Lcom/transsion/room/helper/k;-><init>(Lcom/google/android/gms/location/FusedLocationProviderClient;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method private static final B(Lcom/google/android/gms/location/FusedLocationProviderClient;Lcom/google/android/gms/tasks/Task;)V
    .locals 12

    .line 1
    const-string v0, "task"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    sput-object p0, Lcom/transsion/room/helper/LocationPlaceHelper;->c:Lcom/google/android/gms/location/LocationCallback;

    .line 14
    .line 15
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 16
    .line 17
    const/4 v4, 0x4

    .line 18
    const/4 v5, 0x0

    .line 19
    const-string v1, "LocationP"

    .line 20
    .line 21
    const-string v2, "Location--update----\u6210\u529f\u79fb\u9664\u76d1\u542c"

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-static/range {v0 .. v5}, Lwf/a$a;->z(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 29
    .line 30
    const/4 v10, 0x4

    .line 31
    const/4 v11, 0x0

    .line 32
    const-string v7, "LocationP"

    .line 33
    .line 34
    const-string v8, "Location--update----\u79fb\u9664\u76d1\u542c\u5931\u8d25"

    .line 35
    .line 36
    const/4 v9, 0x0

    .line 37
    invoke-static/range {v6 .. v11}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    sget-object p1, Lcom/transsion/room/helper/LocationPlaceHelper;->a:Lcom/transsion/room/helper/LocationPlaceHelper;

    .line 41
    .line 42
    invoke-direct {p1, p0}, Lcom/transsion/room/helper/LocationPlaceHelper;->A(Lcom/google/android/gms/location/FusedLocationProviderClient;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void
.end method

.method public static synthetic a(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;ZLjava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/room/helper/LocationPlaceHelper;->w(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;ZLjava/util/List;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/google/android/gms/location/FusedLocationProviderClient;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/room/helper/LocationPlaceHelper;->B(Lcom/google/android/gms/location/FusedLocationProviderClient;Lcom/google/android/gms/tasks/Task;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/google/android/gms/location/FusedLocationProviderClient;Lkotlin/jvm/functions/Function1;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/room/helper/LocationPlaceHelper;->o(Lcom/google/android/gms/location/FusedLocationProviderClient;Lkotlin/jvm/functions/Function1;Lcom/google/android/gms/tasks/Task;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/room/helper/LocationPlaceHelper;->z(Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lcom/transsion/baseui/dialog/BaseDialog;Ljava/lang/Boolean;Lcom/permissionx/guolindev/callback/PermissionDialogClickType;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/room/helper/LocationPlaceHelper;->v(Lcom/transsion/baseui/dialog/BaseDialog;Ljava/lang/Boolean;Lcom/permissionx/guolindev/callback/PermissionDialogClickType;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(ZLgf/f;Ljava/util/List;ZZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/room/helper/LocationPlaceHelper;->u(ZLgf/f;Ljava/util/List;ZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic g(Lcom/transsion/room/helper/LocationPlaceHelper;DDLandroid/location/Address;)Lcom/transsion/room/api/bean/LocationPlace;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/transsion/room/helper/LocationPlaceHelper;->l(DDLandroid/location/Address;)Lcom/transsion/room/api/bean/LocationPlace;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/room/helper/LocationPlaceHelper;DD)Landroid/location/Address;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/room/helper/LocationPlaceHelper;->m(DD)Landroid/location/Address;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic i()Lcom/google/android/libraries/places/api/net/PlacesClient;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/room/helper/LocationPlaceHelper;->b:Lcom/google/android/libraries/places/api/net/PlacesClient;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic j(I)V
    .locals 0

    .line 1
    sput p0, Lcom/transsion/room/helper/LocationPlaceHelper;->d:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic k(Lcom/transsion/room/helper/LocationPlaceHelper;Lcom/google/android/gms/location/FusedLocationProviderClient;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/room/helper/LocationPlaceHelper;->A(Lcom/google/android/gms/location/FusedLocationProviderClient;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final l(DDLandroid/location/Address;)Lcom/transsion/room/api/bean/LocationPlace;
    .locals 20

    .line 1
    move-object/from16 v0, p5

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual/range {p5 .. p5}, Landroid/location/Address;->getMaxAddressLineIndex()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v2, v1

    .line 12
    :goto_0
    const/4 v3, 0x0

    .line 13
    if-ltz v2, :cond_2

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move-object v2, v3

    .line 23
    goto :goto_1

    .line 24
    :cond_2
    const-string v2, ""

    .line 25
    .line 26
    :goto_1
    const/4 v10, 0x1

    .line 27
    if-eqz v2, :cond_4

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_3

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_3
    move v4, v1

    .line 37
    goto :goto_3

    .line 38
    :cond_4
    :goto_2
    move v4, v10

    .line 39
    :goto_3
    if-eqz v4, :cond_9

    .line 40
    .line 41
    if-eqz v2, :cond_7

    .line 42
    .line 43
    if-eqz v0, :cond_6

    .line 44
    .line 45
    invoke-virtual/range {p5 .. p5}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    if-nez v4, :cond_5

    .line 50
    .line 51
    goto :goto_5

    .line 52
    :cond_5
    :goto_4
    move-object v5, v4

    .line 53
    goto :goto_6

    .line 54
    :cond_6
    :goto_5
    const-string v4, "-"

    .line 55
    .line 56
    goto :goto_4

    .line 57
    :goto_6
    const/4 v8, 0x6

    .line 58
    const/4 v9, 0x0

    .line 59
    const/4 v6, 0x0

    .line 60
    const/4 v7, 0x0

    .line 61
    move-object v4, v2

    .line 62
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->o0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    goto :goto_7

    .line 71
    :cond_7
    move-object v4, v3

    .line 72
    :goto_7
    if-eqz v4, :cond_8

    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    goto :goto_8

    .line 79
    :cond_8
    move v4, v1

    .line 80
    :goto_8
    const/4 v5, 0x5

    .line 81
    if-ge v4, v5, :cond_9

    .line 82
    .line 83
    move v4, v10

    .line 84
    goto :goto_9

    .line 85
    :cond_9
    move v4, v1

    .line 86
    :goto_9
    new-instance v11, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    if-eqz v0, :cond_a

    .line 92
    .line 93
    invoke-virtual/range {p5 .. p5}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    goto :goto_a

    .line 98
    :cond_a
    move-object v5, v3

    .line 99
    :goto_a
    if-eqz v5, :cond_c

    .line 100
    .line 101
    invoke-virtual/range {p5 .. p5}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    const-string v6, "getLocality(...)"

    .line 106
    .line 107
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-lez v5, :cond_b

    .line 115
    .line 116
    move v5, v10

    .line 117
    goto :goto_b

    .line 118
    :cond_b
    move v5, v1

    .line 119
    :goto_b
    if-eqz v5, :cond_c

    .line 120
    .line 121
    invoke-virtual/range {p5 .. p5}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    :cond_c
    if-eqz v0, :cond_d

    .line 132
    .line 133
    invoke-virtual/range {p5 .. p5}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    goto :goto_c

    .line 138
    :cond_d
    move-object v5, v3

    .line 139
    :goto_c
    if-eqz v5, :cond_f

    .line 140
    .line 141
    invoke-virtual/range {p5 .. p5}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    const-string v6, "getSubLocality(...)"

    .line 146
    .line 147
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    if-lez v5, :cond_e

    .line 155
    .line 156
    move v5, v10

    .line 157
    goto :goto_d

    .line 158
    :cond_e
    move v5, v1

    .line 159
    :goto_d
    if-eqz v5, :cond_f

    .line 160
    .line 161
    invoke-virtual/range {p5 .. p5}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    :cond_f
    if-eqz v0, :cond_10

    .line 172
    .line 173
    invoke-virtual/range {p5 .. p5}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    goto :goto_e

    .line 178
    :cond_10
    move-object v5, v3

    .line 179
    :goto_e
    if-eqz v5, :cond_12

    .line 180
    .line 181
    invoke-virtual/range {p5 .. p5}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    const-string v6, "getThoroughfare(...)"

    .line 186
    .line 187
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    if-lez v5, :cond_11

    .line 195
    .line 196
    move v5, v10

    .line 197
    goto :goto_f

    .line 198
    :cond_11
    move v5, v1

    .line 199
    :goto_f
    if-eqz v5, :cond_12

    .line 200
    .line 201
    invoke-virtual/range {p5 .. p5}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    :cond_12
    if-eqz v0, :cond_13

    .line 212
    .line 213
    invoke-virtual/range {p5 .. p5}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    goto :goto_10

    .line 218
    :cond_13
    move-object v5, v3

    .line 219
    :goto_10
    if-eqz v5, :cond_15

    .line 220
    .line 221
    invoke-virtual/range {p5 .. p5}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    const-string v6, "getFeatureName(...)"

    .line 226
    .line 227
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 231
    .line 232
    .line 233
    move-result v5

    .line 234
    if-lez v5, :cond_14

    .line 235
    .line 236
    move v1, v10

    .line 237
    :cond_14
    if-eqz v1, :cond_15

    .line 238
    .line 239
    invoke-virtual/range {p5 .. p5}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    :cond_15
    if-eqz v4, :cond_16

    .line 250
    .line 251
    const/16 v18, 0x3e

    .line 252
    .line 253
    const/16 v19, 0x0

    .line 254
    .line 255
    const-string v12, " "

    .line 256
    .line 257
    const/4 v13, 0x0

    .line 258
    const/4 v14, 0x0

    .line 259
    const/4 v15, 0x0

    .line 260
    const/16 v16, 0x0

    .line 261
    .line 262
    const/16 v17, 0x0

    .line 263
    .line 264
    invoke-static/range {v11 .. v19}, Lkotlin/collections/CollectionsKt;->s0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    goto :goto_11

    .line 269
    :cond_16
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->U(Ljava/util/List;)Ljava/util/List;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    move-object v4, v1

    .line 274
    check-cast v4, Ljava/lang/Iterable;

    .line 275
    .line 276
    const/16 v11, 0x3e

    .line 277
    .line 278
    const/4 v12, 0x0

    .line 279
    const-string v5, " "

    .line 280
    .line 281
    const/4 v6, 0x0

    .line 282
    const/4 v7, 0x0

    .line 283
    const/4 v8, 0x0

    .line 284
    const/4 v9, 0x0

    .line 285
    const/4 v10, 0x0

    .line 286
    invoke-static/range {v4 .. v12}, Lkotlin/collections/CollectionsKt;->s0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    :goto_11
    new-instance v11, Lcom/transsion/room/api/bean/LocationPlace;

    .line 291
    .line 292
    const/16 v9, 0xf

    .line 293
    .line 294
    const/4 v10, 0x0

    .line 295
    const/4 v5, 0x0

    .line 296
    const/4 v6, 0x0

    .line 297
    const/4 v7, 0x0

    .line 298
    const/4 v8, 0x0

    .line 299
    move-object v4, v11

    .line 300
    invoke-direct/range {v4 .. v10}, Lcom/transsion/room/api/bean/LocationPlace;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v11, v1}, Lcom/transsion/room/api/bean/LocationPlace;->setName(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    const-string v1, "<1m"

    .line 307
    .line 308
    invoke-virtual {v11, v1}, Lcom/transsion/room/api/bean/LocationPlace;->setDistance(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v11, v2}, Lcom/transsion/room/api/bean/LocationPlace;->setAddress(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v11, v0}, Lcom/transsion/room/api/bean/LocationPlace;->setLocationAddress(Landroid/location/Address;)V

    .line 315
    .line 316
    .line 317
    if-eqz v0, :cond_17

    .line 318
    .line 319
    invoke-virtual/range {p5 .. p5}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    :cond_17
    invoke-virtual {v11, v3}, Lcom/transsion/room/api/bean/LocationPlace;->setCountryCode(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    invoke-virtual {v11, v0}, Lcom/transsion/room/api/bean/LocationPlace;->setLat(Ljava/lang/Double;)V

    .line 331
    .line 332
    .line 333
    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    invoke-virtual {v11, v0}, Lcom/transsion/room/api/bean/LocationPlace;->setLon(Ljava/lang/Double;)V

    .line 338
    .line 339
    .line 340
    return-object v11
.end method

.method private final m(DD)Landroid/location/Address;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Landroid/location/Geocoder;

    .line 3
    .line 4
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-direct {v1, v2, v3}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 13
    .line 14
    .line 15
    const/4 v6, 0x1

    .line 16
    move-wide v2, p1

    .line 17
    move-wide v4, p3

    .line 18
    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    move-object p2, p1

    .line 23
    check-cast p2, Ljava/util/Collection;

    .line 24
    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p2, 0x0

    .line 35
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Landroid/location/Address;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    move-object v0, p1

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    return-object v0

    .line 46
    :goto_1
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 47
    .line 48
    new-instance p2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string p3, "Location-------------- ll2address error:"

    .line 54
    .line 55
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    const/4 v5, 0x4

    .line 66
    const/4 v6, 0x0

    .line 67
    const-string v2, "LocationP"

    .line 68
    .line 69
    const/4 v4, 0x0

    .line 70
    invoke-static/range {v1 .. v6}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    return-object v0
.end method

.method private static final o(Lcom/google/android/gms/location/FusedLocationProviderClient;Lkotlin/jvm/functions/Function1;Lcom/google/android/gms/tasks/Task;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v5, p1

    .line 4
    .line 5
    const-string v1, "task"

    .line 6
    .line 7
    move-object/from16 v2, p2

    .line 8
    .line 9
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v3, 0x1

    .line 17
    const-string v4, "LocationP"

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/location/Location;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    .line 30
    .line 31
    .line 32
    move-result-wide v6

    .line 33
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    .line 34
    .line 35
    .line 36
    move-result-wide v8

    .line 37
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 38
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v2, "Location--------------1 success "

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v2, ", :"

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v4, v1, v3}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 65
    .line 66
    .line 67
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    new-instance v13, Lcom/transsion/room/helper/LocationPlaceHelper$getCurrentLocation$2$1;

    .line 76
    .line 77
    const/4 v11, 0x0

    .line 78
    move-object v0, v13

    .line 79
    move-wide v1, v6

    .line 80
    move-wide v3, v8

    .line 81
    move-object/from16 v5, p1

    .line 82
    .line 83
    move-object v6, v11

    .line 84
    invoke-direct/range {v0 .. v6}, Lcom/transsion/room/helper/LocationPlaceHelper$getCurrentLocation$2$1;-><init>(DDLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 85
    .line 86
    .line 87
    const/4 v14, 0x3

    .line 88
    const/4 v15, 0x0

    .line 89
    const/4 v12, 0x0

    .line 90
    invoke-static/range {v10 .. v15}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_0
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 95
    .line 96
    const-string v2, "Location-------------- fail: location null---do update"

    .line 97
    .line 98
    invoke-virtual {v1, v4, v2, v3}, Lwf/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 99
    .line 100
    .line 101
    sget-object v1, Lcom/transsion/room/helper/LocationPlaceHelper;->a:Lcom/transsion/room/helper/LocationPlaceHelper;

    .line 102
    .line 103
    invoke-direct {v1, v0, v5}, Lcom/transsion/room/helper/LocationPlaceHelper;->y(Lcom/google/android/gms/location/FusedLocationProviderClient;Lkotlin/jvm/functions/Function1;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_1
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 108
    .line 109
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    new-instance v6, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    const-string v7, "Location-------------- fail: "

    .line 119
    .line 120
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v2, ", do update"

    .line 127
    .line 128
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v1, v4, v2, v3}, Lwf/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 136
    .line 137
    .line 138
    sget-object v1, Lcom/transsion/room/helper/LocationPlaceHelper;->a:Lcom/transsion/room/helper/LocationPlaceHelper;

    .line 139
    .line 140
    invoke-direct {v1, v0, v5}, Lcom/transsion/room/helper/LocationPlaceHelper;->y(Lcom/google/android/gms/location/FusedLocationProviderClient;Lkotlin/jvm/functions/Function1;)V

    .line 141
    .line 142
    .line 143
    :goto_0
    return-void
.end method

.method private final q(DDLkotlin/jvm/functions/Function1;)V
    .locals 17

    .line 1
    move-object/from16 v0, p5

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/transsion/room/helper/LocationPlaceHelper;->r()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_3

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {}, Lcom/google/android/libraries/places/api/Places;->isInitialized()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 24
    .line 25
    const-string v3, "getNearbyPlaces initialize place"

    .line 26
    .line 27
    filled-new-array {v3}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    const/4 v8, 0x4

    .line 32
    const/4 v9, 0x0

    .line 33
    const-string v5, "LocationP"

    .line 34
    .line 35
    const/4 v7, 0x0

    .line 36
    invoke-static/range {v4 .. v9}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-static {v3, v1}, Lcom/google/android/libraries/places/api/Places;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    sget-object v1, Lcom/transsion/room/helper/LocationPlaceHelper;->b:Lcom/google/android/libraries/places/api/net/PlacesClient;

    .line 47
    .line 48
    if-nez v1, :cond_2

    .line 49
    .line 50
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v1}, Lcom/google/android/libraries/places/api/Places;->createClient(Landroid/content/Context;)Lcom/google/android/libraries/places/api/net/PlacesClient;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    sput-object v1, Lcom/transsion/room/helper/LocationPlaceHelper;->b:Lcom/google/android/libraries/places/api/net/PlacesClient;

    .line 59
    .line 60
    :cond_2
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    .line 61
    .line 62
    move-wide/from16 v3, p1

    .line 63
    .line 64
    move-wide/from16 v5, p3

    .line 65
    .line 66
    invoke-direct {v1, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 67
    .line 68
    .line 69
    const/4 v3, 0x3

    .line 70
    new-array v3, v3, [Lcom/google/android/libraries/places/api/model/Place$Field;

    .line 71
    .line 72
    sget-object v4, Lcom/google/android/libraries/places/api/model/Place$Field;->NAME:Lcom/google/android/libraries/places/api/model/Place$Field;

    .line 73
    .line 74
    const/4 v5, 0x0

    .line 75
    aput-object v4, v3, v5

    .line 76
    .line 77
    sget-object v4, Lcom/google/android/libraries/places/api/model/Place$Field;->ADDRESS:Lcom/google/android/libraries/places/api/model/Place$Field;

    .line 78
    .line 79
    const/4 v5, 0x1

    .line 80
    aput-object v4, v3, v5

    .line 81
    .line 82
    sget-object v4, Lcom/google/android/libraries/places/api/model/Place$Field;->LAT_LNG:Lcom/google/android/libraries/places/api/model/Place$Field;

    .line 83
    .line 84
    const/4 v5, 0x2

    .line 85
    aput-object v4, v3, v5

    .line 86
    .line 87
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-static {v3}, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;->newInstance(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-static {v4}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    new-instance v8, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1;

    .line 104
    .line 105
    invoke-direct {v8, v0, v3, v1, v2}, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Lcom/google/android/gms/maps/model/LatLng;Lkotlin/coroutines/Continuation;)V

    .line 106
    .line 107
    .line 108
    const/4 v9, 0x3

    .line 109
    const/4 v10, 0x0

    .line 110
    const/4 v6, 0x0

    .line 111
    const/4 v7, 0x0

    .line 112
    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_3
    :goto_0
    sget-object v11, Lwf/a;->a:Lwf/a$a;

    .line 117
    .line 118
    const/4 v15, 0x4

    .line 119
    const/16 v16, 0x0

    .line 120
    .line 121
    const-string v12, "LocationP"

    .line 122
    .line 123
    const-string v13, "getNearbyPlaces apiKey isNullOrEmpty"

    .line 124
    .line 125
    const/4 v14, 0x0

    .line 126
    invoke-static/range {v11 .. v16}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method private final r()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcm/f;->c:Lcm/f$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcm/f$a;->a()Lcm/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "sa_lo_place_key"

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v2}, Lcm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v0, v1

    .line 23
    :goto_0
    if-eqz v0, :cond_3

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move-object v1, v0

    .line 40
    :cond_3
    :goto_1
    return-object v1
.end method

.method private final s()I
    .locals 3

    .line 1
    sget-object v0, Lcm/f;->c:Lcm/f$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcm/f$a;->a()Lcm/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "sa_lo_place_api"

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v2}, Lcm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-static {v0}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    :cond_2
    :goto_1
    return v2
.end method

.method private static final u(ZLgf/f;Ljava/util/List;ZZ)V
    .locals 23

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-string v2, "scope"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "deniedList"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    if-nez p3, :cond_0

    .line 16
    .line 17
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 18
    .line 19
    const/4 v7, 0x4

    .line 20
    const/4 v8, 0x0

    .line 21
    const-string v4, "LocationP"

    .line 22
    .line 23
    const-string v5, "location \u8bf7\u6c42\u6743\u9650\u4e4b\u540e\uff0c"

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    if-eqz p4, :cond_2

    .line 31
    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    sget-object v9, Lwf/a;->a:Lwf/a$a;

    .line 35
    .line 36
    const/4 v13, 0x4

    .line 37
    const/4 v14, 0x0

    .line 38
    const-string v10, "LocationP"

    .line 39
    .line 40
    const-string v11, "\u8bf7\u6c42\u6743\u9650\uff0c\u9700\u8981\u8df3\u5230\u8bbe\u7f6e\u9875\uff0c\u5148\u5c55\u793a\u63d0\u793a\u5f39\u7a97"

    .line 41
    .line 42
    const/4 v12, 0x0

    .line 43
    invoke-static/range {v9 .. v14}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    new-instance v2, Lff/a;

    .line 47
    .line 48
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    sget v4, Lcom/tn/lib/widget/R$string;->location_permission_dialog_tips:I

    .line 53
    .line 54
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v17

    .line 58
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    sget v4, Lcom/tn/lib/widget/R$string;->Enable:I

    .line 63
    .line 64
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v18

    .line 68
    sget v3, Lcom/tn/lib/widget/R$drawable;->ic_location_permission_tips:I

    .line 69
    .line 70
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v19

    .line 74
    sget v3, Lcom/tn/lib/widget/R$color;->white_20:I

    .line 75
    .line 76
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v20

    .line 80
    const/16 v21, 0x1

    .line 81
    .line 82
    const/16 v22, 0x0

    .line 83
    .line 84
    const/16 v16, 0x0

    .line 85
    .line 86
    move-object v15, v2

    .line 87
    invoke-direct/range {v15 .. v22}, Lff/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1, v2}, Lgf/f;->c(Ljava/util/List;Lff/a;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual/range {p1 .. p2}, Lgf/f;->a(Ljava/util/List;)V

    .line 95
    .line 96
    .line 97
    :goto_0
    return-void

    .line 98
    :cond_2
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 99
    .line 100
    const/4 v7, 0x4

    .line 101
    const/4 v8, 0x0

    .line 102
    const-string v4, "LocationP"

    .line 103
    .line 104
    const-string v5, "\u76f4\u63a5\u8bf7\u6c42\u6743\u9650"

    .line 105
    .line 106
    const/4 v6, 0x0

    .line 107
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual/range {p1 .. p2}, Lgf/f;->b(Ljava/util/List;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method private static final v(Lcom/transsion/baseui/dialog/BaseDialog;Ljava/lang/Boolean;Lcom/permissionx/guolindev/callback/PermissionDialogClickType;)V
    .locals 0

    .line 1
    return-void
.end method

.method private static final w(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;ZLjava/util/List;Ljava/util/List;)V
    .locals 6

    .line 1
    const-string v0, "grantedList"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "deniedList"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result p4

    .line 17
    const/4 v0, 0x1

    .line 18
    if-ne p4, v0, :cond_0

    .line 19
    .line 20
    const/4 p4, 0x0

    .line 21
    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->j(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-nez p0, :cond_0

    .line 32
    .line 33
    sget-object p0, Lcf/c;->a:Lcf/c;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcf/c;->d()Lcom/tencent/mmkv/MMKV;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    check-cast p3, Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p0, p3, p4}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 46
    .line 47
    .line 48
    :cond_0
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 49
    .line 50
    new-instance p0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string p3, "location \u8bf7\u6c42\u6743\u9650\u7ed3\u679c:"

    .line 56
    .line 57
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    const/4 v4, 0x4

    .line 68
    const/4 v5, 0x0

    .line 69
    const-string v1, "LocationP"

    .line 70
    .line 71
    const/4 v3, 0x0

    .line 72
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method private final x(Ljava/lang/Double;Ljava/lang/Double;Lkotlin/jvm/functions/Function1;)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/transsion/room/helper/LocationPlaceHelper;->r()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    if-eqz v4, :cond_2

    .line 12
    .line 13
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ","

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    new-instance v9, Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1;

    .line 49
    .line 50
    const/4 v8, 0x0

    .line 51
    const/16 v3, 0x4e20

    .line 52
    .line 53
    move-object v1, v9

    .line 54
    move-object v5, p1

    .line 55
    move-object v6, p2

    .line 56
    move-object v7, p3

    .line 57
    invoke-direct/range {v1 .. v8}, Lcom/transsion/room/helper/LocationPlaceHelper$searchNearbyPlaces$1;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 58
    .line 59
    .line 60
    const/4 p1, 0x3

    .line 61
    const/4 v10, 0x0

    .line 62
    const/4 v6, 0x0

    .line 63
    const/4 v7, 0x0

    .line 64
    move-object v5, v0

    .line 65
    move-object v8, v9

    .line 66
    move v9, p1

    .line 67
    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_2
    :goto_0
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_3
    :goto_1
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method private final y(Lcom/google/android/gms/location/FusedLocationProviderClient;Lkotlin/jvm/functions/Function1;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/location/LocationRequest$Builder;

    .line 2
    .line 3
    const/16 v1, 0x64

    .line 4
    .line 5
    const-wide/16 v2, 0x2710

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest$Builder;-><init>(IJ)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest$Builder;->setWaitForAccurateLocation(Z)Lcom/google/android/gms/location/LocationRequest$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-wide/16 v1, 0x1388

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest$Builder;->setMinUpdateIntervalMillis(J)Lcom/google/android/gms/location/LocationRequest$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest$Builder;->build()Lcom/google/android/gms/location/LocationRequest;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "build(...)"

    .line 26
    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v1, Lcom/transsion/room/helper/LocationPlaceHelper$startRealTimeUpdates$1;

    .line 31
    .line 32
    invoke-direct {v1, p1, p2}, Lcom/transsion/room/helper/LocationPlaceHelper$startRealTimeUpdates$1;-><init>(Lcom/google/android/gms/location/FusedLocationProviderClient;Lkotlin/jvm/functions/Function1;)V

    .line 33
    .line 34
    .line 35
    sput-object v1, Lcom/transsion/room/helper/LocationPlaceHelper;->c:Lcom/google/android/gms/location/LocationCallback;

    .line 36
    .line 37
    const-string p2, "null cannot be cast to non-null type com.google.android.gms.location.LocationCallback"

    .line 38
    .line 39
    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/gms/location/FusedLocationProviderClient;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;)Lcom/google/android/gms/tasks/Task;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    new-instance p2, Lcom/transsion/room/helper/j;

    .line 51
    .line 52
    invoke-direct {p2}, Lcom/transsion/room/helper/j;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method private static final z(Ljava/lang/Exception;)V
    .locals 7

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "Updates request failed: "

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const/4 v5, 0x4

    .line 30
    const/4 v6, 0x0

    .line 31
    const-string v2, "LocationP"

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-static/range {v1 .. v6}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final n(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;)V
    .locals 16

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    const-string v0, "activity"

    .line 6
    .line 7
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "callback"

    .line 11
    .line 12
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 16
    .line 17
    const/4 v7, 0x4

    .line 18
    const/4 v8, 0x0

    .line 19
    const-string v4, "LocationP"

    .line 20
    .line 21
    const-string v5, "Location-------------- start getCurrentLocation"

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    move-object v3, v0

    .line 25
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sget-object v3, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const-string v4, "key_lo_mock_test_lab_lat"

    .line 35
    .line 36
    const-string v5, ""

    .line 37
    .line 38
    invoke-virtual {v3, v4, v5}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    if-eqz v6, :cond_2

    .line 43
    .line 44
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-nez v3, :cond_0

    .line 49
    .line 50
    goto/16 :goto_1

    .line 51
    .line 52
    :cond_0
    const/4 v3, 0x0

    .line 53
    const-string v4, "|"

    .line 54
    .line 55
    const/4 v5, 0x0

    .line 56
    const/4 v12, 0x2

    .line 57
    invoke-static {v6, v4, v5, v12, v3}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_2

    .line 62
    .line 63
    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 64
    .line 65
    filled-new-array {v4}, [Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    const/4 v10, 0x6

    .line 70
    const/4 v11, 0x0

    .line 71
    const/4 v8, 0x0

    .line 72
    const/4 v9, 0x0

    .line 73
    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    check-cast v4, Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v4}, Lkotlin/text/StringsKt;->s(Ljava/lang/String;)Ljava/lang/Double;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    if-eqz v4, :cond_1

    .line 88
    .line 89
    const/4 v5, 0x1

    .line 90
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    check-cast v6, Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {v6}, Lkotlin/text/StringsKt;->s(Ljava/lang/String;)Ljava/lang/Double;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    if-eqz v6, :cond_1

    .line 101
    .line 102
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    check-cast v7, Ljava/lang/String;

    .line 107
    .line 108
    const/4 v8, 0x3

    .line 109
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    check-cast v3, Ljava/lang/String;

    .line 114
    .line 115
    new-instance v15, Lcom/transsion/room/api/bean/LocationPlace;

    .line 116
    .line 117
    const/16 v13, 0xf

    .line 118
    .line 119
    const/4 v14, 0x0

    .line 120
    const/4 v9, 0x0

    .line 121
    const/4 v10, 0x0

    .line 122
    const/4 v11, 0x0

    .line 123
    const/4 v12, 0x0

    .line 124
    move-object v8, v15

    .line 125
    invoke-direct/range {v8 .. v14}, Lcom/transsion/room/api/bean/LocationPlace;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v15, v7}, Lcom/transsion/room/api/bean/LocationPlace;->setName(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const-string v8, "<1m"

    .line 132
    .line 133
    invoke-virtual {v15, v8}, Lcom/transsion/room/api/bean/LocationPlace;->setDistance(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v15, v3}, Lcom/transsion/room/api/bean/LocationPlace;->setAddress(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v15, v4}, Lcom/transsion/room/api/bean/LocationPlace;->setLat(Ljava/lang/Double;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v15, v6}, Lcom/transsion/room/api/bean/LocationPlace;->setLon(Ljava/lang/Double;)V

    .line 143
    .line 144
    .line 145
    const-string v4, "LocationP"

    .line 146
    .line 147
    new-instance v6, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string v8, "Location-------------- mock \u7684\u5b9a\u4f4d\u6570\u636e name:"

    .line 153
    .line 154
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v7, ",address:"

    .line 161
    .line 162
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v3, ".\u4e0d\u4f7f\u7528\u5b9e\u9645\u5b9a\u4f4d,\u9700\u8981\u771f\u5b9e\u5b9a\u4f4d\u8bf7\u6c42\u6e05\u695amock\u6570\u636e"

    .line 169
    .line 170
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-virtual {v0, v4, v3, v5}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 178
    .line 179
    .line 180
    invoke-interface {v2, v15}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :catchall_0
    move-exception v0

    .line 185
    goto :goto_0

    .line 186
    :cond_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 187
    .line 188
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    .line 190
    .line 191
    goto :goto_1

    .line 192
    :goto_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 193
    .line 194
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    :cond_2
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/app/Activity;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    const-string v3, "getFusedLocationProviderClient(...)"

    .line 206
    .line 207
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-interface {v0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->getLastLocation()Lcom/google/android/gms/tasks/Task;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    new-instance v4, Lcom/transsion/room/helper/f;

    .line 215
    .line 216
    invoke-direct {v4, v0, v2}, Lcom/transsion/room/helper/f;-><init>(Lcom/google/android/gms/location/FusedLocationProviderClient;Lkotlin/jvm/functions/Function1;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v3, v1, v4}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 220
    .line 221
    .line 222
    return-void
.end method

.method public final p(DDLkotlin/jvm/functions/Function1;)V
    .locals 4

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/room/helper/LocationPlaceHelper;->s()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-string v1, "LocationP"

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    if-eq v0, v2, :cond_0

    .line 16
    .line 17
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 18
    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string p3, "place api ,null "

    .line 25
    .line 26
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p1, v1, p2, v2}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    invoke-interface {p5, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 45
    .line 46
    const-string v3, "place api use search"

    .line 47
    .line 48
    invoke-virtual {v0, v1, v3, v2}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 49
    .line 50
    .line 51
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-direct {p0, p1, p2, p5}, Lcom/transsion/room/helper/LocationPlaceHelper;->x(Ljava/lang/Double;Ljava/lang/Double;Lkotlin/jvm/functions/Function1;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 64
    .line 65
    const-string v3, "place api use detail"

    .line 66
    .line 67
    invoke-virtual {v0, v1, v3, v2}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 68
    .line 69
    .line 70
    invoke-direct/range {p0 .. p5}, Lcom/transsion/room/helper/LocationPlaceHelper;->q(DDLkotlin/jvm/functions/Function1;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    return-void
.end method

.method public final t(Landroidx/fragment/app/FragmentActivity;ZLkotlin/jvm/functions/Function1;)V
    .locals 2

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcf/c;->a:Lcf/c;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcf/c;->e(Landroidx/fragment/app/FragmentActivity;)Lcf/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 18
    .line 19
    filled-new-array {v1}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcf/a;->b([Ljava/lang/String;)Lgf/h;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Lgf/h;->b()Lgf/h;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Lcom/transsion/room/helper/g;

    .line 32
    .line 33
    invoke-direct {v1, p2}, Lcom/transsion/room/helper/g;-><init>(Z)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v1}, Lgf/h;->a(Ldf/b;)Lgf/h;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    new-instance v0, Lcom/transsion/room/helper/h;

    .line 41
    .line 42
    invoke-direct {v0}, Lcom/transsion/room/helper/h;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-interface {p2, v0}, Lgf/h;->c(Ldf/a;)Lgf/h;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    new-instance v0, Lcom/transsion/room/helper/i;

    .line 50
    .line 51
    invoke-direct {v0, p1, p3}, Lcom/transsion/room/helper/i;-><init>(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p2, v0}, Lgf/h;->d(Ldf/c;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
