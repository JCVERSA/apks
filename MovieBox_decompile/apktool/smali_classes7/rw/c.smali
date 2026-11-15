.class public final Lrw/c;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lrw/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lrw/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lrw/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lrw/c;->a:Lrw/c;

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


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/wrapperad/install/open/ChangeType;)Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;
    .locals 12

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "packageName"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "type"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 34
    .line 35
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const/4 v2, 0x0

    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    move-object v0, v2

    .line 51
    :cond_0
    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    move-object v1, v2

    .line 59
    :goto_1
    if-eqz v0, :cond_2

    .line 60
    .line 61
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 62
    .line 63
    if-eqz v3, :cond_2

    .line 64
    .line 65
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    if-eqz v3, :cond_2

    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    move-object v6, v3

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    move-object v6, v2

    .line 78
    :goto_2
    if-eqz v0, :cond_3

    .line 79
    .line 80
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 81
    .line 82
    move-object v7, v3

    .line 83
    goto :goto_3

    .line 84
    :cond_3
    move-object v7, v2

    .line 85
    :goto_3
    if-nez v0, :cond_4

    .line 86
    .line 87
    move-object v8, v2

    .line 88
    goto :goto_5

    .line 89
    :cond_4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 90
    .line 91
    const/16 v4, 0x1c

    .line 92
    .line 93
    if-lt v3, v4, :cond_5

    .line 94
    .line 95
    invoke-static {v0}, Lf7/a;->a(Landroid/content/pm/PackageInfo;)J

    .line 96
    .line 97
    .line 98
    move-result-wide v3

    .line 99
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    :goto_4
    move-object v8, v0

    .line 104
    goto :goto_5

    .line 105
    :cond_5
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 106
    .line 107
    int-to-long v3, v0

    .line 108
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    goto :goto_4

    .line 113
    :goto_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 114
    .line 115
    const/16 v3, 0x1e

    .line 116
    .line 117
    if-lt v0, v3, :cond_7

    .line 118
    .line 119
    :try_start_1
    invoke-static {p1, p2}, Lrw/a;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {v0}, Lrw/b;->a(Landroid/content/pm/InstallSourceInfo;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 131
    goto :goto_6

    .line 132
    :catchall_1
    move-exception v0

    .line 133
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 134
    .line 135
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    :goto_6
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-eqz v3, :cond_6

    .line 148
    .line 149
    move-object v0, v2

    .line 150
    :cond_6
    check-cast v0, Ljava/lang/String;

    .line 151
    .line 152
    :goto_7
    move-object v9, v0

    .line 153
    goto :goto_8

    .line 154
    :cond_7
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    goto :goto_7

    .line 159
    :goto_8
    if-eqz v1, :cond_8

    .line 160
    .line 161
    :try_start_2
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    goto :goto_9

    .line 166
    :catchall_2
    move-exception p1

    .line 167
    goto :goto_a

    .line 168
    :cond_8
    move-object p1, v2

    .line 169
    :goto_9
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 173
    goto :goto_b

    .line 174
    :goto_a
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 175
    .line 176
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    :goto_b
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_9

    .line 189
    .line 190
    goto :goto_c

    .line 191
    :cond_9
    move-object v2, p1

    .line 192
    :goto_c
    move-object v11, v2

    .line 193
    check-cast v11, Landroid/graphics/drawable/Drawable;

    .line 194
    .line 195
    new-instance p1, Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;

    .line 196
    .line 197
    move-object v4, p1

    .line 198
    move-object v5, p2

    .line 199
    move-object v10, p3

    .line 200
    invoke-direct/range {v4 .. v11}, Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/transsion/wrapperad/install/open/ChangeType;Landroid/graphics/drawable/Drawable;)V

    .line 201
    .line 202
    .line 203
    return-object p1
.end method
