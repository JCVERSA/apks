.class public final Lru/zdevs/zarchiver/activity/OpenAsDlg$e;
.super Lw0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/activity/OpenAsDlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final e:[Landroid/os/Parcelable;

.field public final f:Ljava/lang/String;

.field public final g:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>([Landroid/os/Parcelable;Ljava/lang/String;Landroid/content/pm/PackageManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lw0/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lru/zdevs/zarchiver/activity/OpenAsDlg$e;->e:[Landroid/os/Parcelable;

    .line 5
    .line 6
    iput-object p2, p0, Lru/zdevs/zarchiver/activity/OpenAsDlg$e;->f:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lru/zdevs/zarchiver/activity/OpenAsDlg$e;->g:Landroid/content/pm/PackageManager;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final f()Lw0/a$b;
    .locals 15

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, 0xa

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iget-object v3, p0, Lru/zdevs/zarchiver/activity/OpenAsDlg$e;->f:Ljava/lang/String;

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    const/16 v4, 0x3e8

    .line 20
    .line 21
    invoke-static {v4, v3}, La0/c;->p(ILjava/lang/String;)Lu0/b;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v3, v2

    .line 27
    :goto_0
    iget-object v4, p0, Lru/zdevs/zarchiver/activity/OpenAsDlg$e;->e:[Landroid/os/Parcelable;

    .line 28
    .line 29
    if-eqz v4, :cond_a

    .line 30
    .line 31
    new-instance v5, Ljava/util/ArrayList;

    .line 32
    .line 33
    array-length v6, v4

    .line 34
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    .line 36
    .line 37
    array-length v6, v4

    .line 38
    const/4 v7, 0x0

    .line 39
    const/4 v8, 0x0

    .line 40
    :goto_1
    if-ge v8, v6, :cond_8

    .line 41
    .line 42
    aget-object v9, v4, v8

    .line 43
    .line 44
    check-cast v9, Landroid/content/Intent;

    .line 45
    .line 46
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 47
    .line 48
    .line 49
    move-result-object v10

    .line 50
    iget-object v11, p0, Lru/zdevs/zarchiver/activity/OpenAsDlg$e;->g:Landroid/content/pm/PackageManager;

    .line 51
    .line 52
    if-eqz v10, :cond_1

    .line 53
    .line 54
    :try_start_0
    invoke-virtual {v11, v10, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 55
    .line 56
    .line 57
    move-result-object v10
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 58
    :try_start_1
    new-instance v12, Landroid/content/pm/ResolveInfo;

    .line 59
    .line 60
    invoke-direct {v12}, Landroid/content/pm/ResolveInfo;-><init>()V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 61
    .line 62
    .line 63
    :try_start_2
    iput-object v10, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :catch_0
    nop

    .line 67
    goto :goto_2

    .line 68
    :catch_1
    nop

    .line 69
    move-object v12, v2

    .line 70
    goto :goto_2

    .line 71
    :catch_2
    nop

    .line 72
    :cond_1
    move-object v10, v2

    .line 73
    move-object v12, v10

    .line 74
    :goto_2
    if-nez v10, :cond_3

    .line 75
    .line 76
    const/high16 v10, 0x10000

    .line 77
    .line 78
    invoke-virtual {v11, v9, v10}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 79
    .line 80
    .line 81
    move-result-object v12

    .line 82
    if-eqz v12, :cond_2

    .line 83
    .line 84
    iget-object v10, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_2
    move-object v10, v2

    .line 88
    :cond_3
    :goto_3
    if-nez v10, :cond_4

    .line 89
    .line 90
    new-instance v10, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v11, "No activity found for "

    .line 93
    .line 94
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    const-string v10, "TaskResolve"

    .line 105
    .line 106
    invoke-static {v10, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    goto :goto_6

    .line 110
    :cond_4
    new-instance v10, Lc0/i$a;

    .line 111
    .line 112
    invoke-direct {v10, v9, v12, v11}, Lc0/i$a;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)V

    .line 113
    .line 114
    .line 115
    if-eqz v3, :cond_7

    .line 116
    .line 117
    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 118
    .line 119
    .line 120
    move-result-object v11

    .line 121
    if-eqz v11, :cond_7

    .line 122
    .line 123
    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 124
    .line 125
    .line 126
    move-result-object v9

    .line 127
    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v9

    .line 131
    const-string v11, "file"

    .line 132
    .line 133
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v9

    .line 137
    const/4 v11, 0x1

    .line 138
    xor-int/2addr v9, v11

    .line 139
    iget-object v13, v3, Lu0/b;->b:Ljava/lang/String;

    .line 140
    .line 141
    if-eqz v13, :cond_6

    .line 142
    .line 143
    iget-object v14, v3, Lu0/b;->c:Ljava/lang/String;

    .line 144
    .line 145
    if-eqz v14, :cond_6

    .line 146
    .line 147
    iget-object v14, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 148
    .line 149
    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v13

    .line 155
    if-eqz v13, :cond_6

    .line 156
    .line 157
    iget-object v13, v3, Lu0/b;->c:Ljava/lang/String;

    .line 158
    .line 159
    iget-object v12, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 160
    .line 161
    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v12

    .line 167
    if-eqz v12, :cond_6

    .line 168
    .line 169
    iget v12, v3, Lu0/b;->d:I

    .line 170
    .line 171
    if-ne v12, v11, :cond_5

    .line 172
    .line 173
    const/4 v12, 0x1

    .line 174
    goto :goto_4

    .line 175
    :cond_5
    const/4 v12, 0x0

    .line 176
    :goto_4
    if-ne v9, v12, :cond_6

    .line 177
    .line 178
    const/4 v9, 0x1

    .line 179
    goto :goto_5

    .line 180
    :cond_6
    const/4 v9, 0x0

    .line 181
    :goto_5
    if-eqz v9, :cond_7

    .line 182
    .line 183
    iput-boolean v11, v10, Lc0/i$a;->g:Z

    .line 184
    .line 185
    :cond_7
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    :goto_6
    add-int/lit8 v8, v8, 0x1

    .line 189
    .line 190
    goto/16 :goto_1

    .line 191
    .line 192
    :cond_8
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    :goto_7
    const/4 v3, 0x4

    .line 200
    if-ge v7, v3, :cond_9

    .line 201
    .line 202
    if-ge v7, v2, :cond_9

    .line 203
    .line 204
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    check-cast v3, Lc0/i$a;

    .line 209
    .line 210
    invoke-virtual {v3}, Lc0/i$a;->b()Landroid/graphics/drawable/Drawable;

    .line 211
    .line 212
    .line 213
    add-int/lit8 v7, v7, 0x1

    .line 214
    .line 215
    goto :goto_7

    .line 216
    :cond_9
    move-object v2, v5

    .line 217
    :cond_a
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 218
    .line 219
    .line 220
    new-instance v0, Lru/zdevs/zarchiver/activity/OpenAsDlg$c;

    .line 221
    .line 222
    invoke-direct {v0, v2}, Lru/zdevs/zarchiver/activity/OpenAsDlg$c;-><init>(Ljava/util/ArrayList;)V

    .line 223
    .line 224
    .line 225
    return-object v0
.end method

.method public final j()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
