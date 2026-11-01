.class public final Lru/zdevs/zarchiver/activity/SettingsDlg$c;
.super Lw0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/activity/SettingsDlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final e:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lw0/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lru/zdevs/zarchiver/activity/SettingsDlg$c;->e:Ljava/io/InputStream;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final f()Lw0/a$b;
    .locals 8

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/activity/SettingsDlg$c;->e:Ljava/io/InputStream;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    :try_start_0
    new-instance v5, Ljava/io/ObjectInputStream;

    .line 8
    .line 9
    invoke-direct {v5, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    .line 11
    .line 12
    :try_start_1
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v6

    .line 16
    check-cast v6, Ljava/lang/String;

    .line 17
    .line 18
    const-string v7, "ZA"

    .line 19
    .line 20
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    if-nez v4, :cond_0

    .line 25
    .line 26
    invoke-static {v5}, Ln0/e;->d(Ljava/io/Closeable;)V

    .line 27
    .line 28
    .line 29
    const/4 v4, 0x2

    .line 30
    goto/16 :goto_4

    .line 31
    .line 32
    :cond_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Ljava/util/Map;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    .line 38
    invoke-static {v5}, Ln0/e;->d(Ljava/io/Closeable;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Ln0/e;->d(Ljava/io/Closeable;)V

    .line 42
    .line 43
    .line 44
    sget-object v0, Lru/zdevs/zarchiver/ZApp;->c:Lru/zdevs/zarchiver/ZApp;

    .line 45
    .line 46
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 55
    .line 56
    .line 57
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_4

    .line 70
    .line 71
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    check-cast v5, Ljava/util/Map$Entry;

    .line 76
    .line 77
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    instance-of v6, v6, Ljava/lang/Boolean;

    .line 82
    .line 83
    if-eqz v6, :cond_2

    .line 84
    .line 85
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    check-cast v6, Ljava/lang/String;

    .line 90
    .line 91
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    check-cast v5, Ljava/lang/Boolean;

    .line 96
    .line 97
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    instance-of v6, v6, Ljava/lang/String;

    .line 110
    .line 111
    if-eqz v6, :cond_3

    .line 112
    .line 113
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    check-cast v6, Ljava/lang/String;

    .line 118
    .line 119
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    check-cast v5, Ljava/lang/String;

    .line 124
    .line 125
    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_3
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    instance-of v6, v6, Ljava/lang/Integer;

    .line 134
    .line 135
    if-eqz v6, :cond_1

    .line 136
    .line 137
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    check-cast v6, Ljava/lang/String;

    .line 142
    .line 143
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    check-cast v5, Ljava/lang/Integer;

    .line 148
    .line 149
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    xor-int/2addr v0, v3

    .line 162
    goto :goto_5

    .line 163
    :catch_0
    nop

    .line 164
    const/4 v4, 0x1

    .line 165
    goto :goto_2

    .line 166
    :catchall_0
    move-exception v1

    .line 167
    move-object v2, v1

    .line 168
    move-object v1, v5

    .line 169
    goto :goto_1

    .line 170
    :catch_1
    nop

    .line 171
    goto :goto_2

    .line 172
    :catchall_1
    move-exception v2

    .line 173
    :goto_1
    invoke-static {v1}, Ln0/e;->d(Ljava/io/Closeable;)V

    .line 174
    .line 175
    .line 176
    invoke-static {v0}, Ln0/e;->d(Ljava/io/Closeable;)V

    .line 177
    .line 178
    .line 179
    throw v2

    .line 180
    :catch_2
    nop

    .line 181
    move-object v5, v1

    .line 182
    :goto_2
    if-eqz v4, :cond_5

    .line 183
    .line 184
    const/4 v4, 0x1

    .line 185
    goto :goto_3

    .line 186
    :cond_5
    const/4 v4, 0x2

    .line 187
    :goto_3
    invoke-static {v5}, Ln0/e;->d(Ljava/io/Closeable;)V

    .line 188
    .line 189
    .line 190
    :goto_4
    invoke-static {v0}, Ln0/e;->d(Ljava/io/Closeable;)V

    .line 191
    .line 192
    .line 193
    move v0, v4

    .line 194
    :goto_5
    if-eqz v0, :cond_8

    .line 195
    .line 196
    if-eq v0, v3, :cond_7

    .line 197
    .line 198
    if-eq v0, v2, :cond_6

    .line 199
    .line 200
    goto :goto_6

    .line 201
    :cond_6
    const-string v0, "Invalid format"

    .line 202
    .line 203
    invoke-static {v0}, Lru/zdevs/zarchiver/ZApp;->j(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    goto :goto_6

    .line 207
    :cond_7
    const v0, 0x7f0c00e7

    .line 208
    .line 209
    .line 210
    invoke-static {v0}, Lru/zdevs/zarchiver/ZApp;->i(I)V

    .line 211
    .line 212
    .line 213
    goto :goto_6

    .line 214
    :cond_8
    const v0, 0x7f0c0104

    .line 215
    .line 216
    .line 217
    invoke-static {v0}, Lru/zdevs/zarchiver/ZApp;->i(I)V

    .line 218
    .line 219
    .line 220
    :goto_6
    return-object v1
.end method
