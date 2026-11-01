.class public Lru/zdevs/zarchiver/activity/InstallApksDlg;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final synthetic f:I


# instance fields
.field public a:Landroid/os/Handler;

.field public b:Lg0/y;

.field public c:Z

.field public d:Lh0/h;

.field public final e:Lru/zdevs/zarchiver/activity/InstallApksDlg$e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lru/zdevs/zarchiver/activity/InstallApksDlg$e;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lru/zdevs/zarchiver/activity/InstallApksDlg$e;-><init>(Lru/zdevs/zarchiver/activity/InstallApksDlg;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg;->e:Lru/zdevs/zarchiver/activity/InstallApksDlg$e;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lru/zdevs/zarchiver/activity/InstallApksDlg$d;

    invoke-direct {v0, p0, p1, p2}, Lru/zdevs/zarchiver/activity/InstallApksDlg$d;-><init>(Lru/zdevs/zarchiver/activity/InstallApksDlg;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final finishAndRemoveTask()V
    .locals 2

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg;->b:Lg0/y;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lg0/y;->e()V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v1, 0x15

    .line 11
    .line 12
    if-ge v0, v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    const/16 v0, 0x4b3

    .line 2
    .line 3
    if-ne p1, v0, :cond_2

    .line 4
    .line 5
    const/4 p1, -0x1

    .line 6
    if-ne p2, p1, :cond_1

    .line 7
    .line 8
    if-eqz p3, :cond_1

    .line 9
    .line 10
    const-string p1, "apk_path"

    .line 11
    .line 12
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lh0/h;

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object p2, Lw0/c;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 22
    .line 23
    new-instance p3, Lru/zdevs/zarchiver/activity/InstallApksDlg$c;

    .line 24
    .line 25
    invoke-direct {p3, p0, p1}, Lru/zdevs/zarchiver/activity/InstallApksDlg$c;-><init>(Lru/zdevs/zarchiver/activity/InstallApksDlg;Lh0/h;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 33
    const/4 p2, 0x0

    .line 34
    invoke-virtual {p0, p1, p2}, Lru/zdevs/zarchiver/activity/InstallApksDlg;->a(Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    :cond_2
    :goto_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lru/zdevs/zarchiver/activity/InstallApksDlg;->finishAndRemoveTask()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v0, Lg0/y;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    const v3, 0x7f0c00af

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v2, p0, v3, v1}, Lg0/y;-><init>(Lru/zdevs/zarchiver/d;Landroid/content/Context;II)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg;->b:Lg0/y;

    .line 25
    .line 26
    invoke-virtual {v0}, Lg0/y;->t()V

    .line 27
    .line 28
    .line 29
    sget-object v0, Lw0/c;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 30
    .line 31
    new-instance v1, Lru/zdevs/zarchiver/activity/InstallApksDlg$a;

    .line 32
    .line 33
    invoke-direct {v1, p0, p1}, Lru/zdevs/zarchiver/activity/InstallApksDlg$a;-><init>(Lru/zdevs/zarchiver/activity/InstallApksDlg;Landroid/content/Intent;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    const-string v0, "ru.zdevs.zarchiver.APP_INSTALL_RESULT"

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_d

    .line 18
    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 20
    .line 21
    const/16 v1, 0x15

    .line 22
    .line 23
    if-lt v0, v1, :cond_d

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    const-string v1, "android.content.pm.extra.STATUS"

    .line 33
    .line 34
    const/4 v2, -0x1

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const-string v3, "android.content.pm.extra.STATUS_MESSAGE"

    .line 40
    .line 41
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const/4 v4, 0x0

    .line 50
    if-nez p1, :cond_2

    .line 51
    .line 52
    move-object v5, v4

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    new-instance v5, Lh0/h;

    .line 55
    .line 56
    invoke-direct {v5, p1}, Lh0/h;-><init>(Landroid/net/Uri;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    const/4 p1, 0x0

    .line 60
    const/4 v6, 0x1

    .line 61
    if-eqz v5, :cond_3

    .line 62
    .line 63
    iget-object v7, v5, Lh0/h;->c:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    const-string v8, ".xapk"

    .line 70
    .line 71
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-eqz v7, :cond_3

    .line 76
    .line 77
    const/4 v7, 0x1

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    const/4 v7, 0x0

    .line 80
    :goto_1
    if-eqz v7, :cond_4

    .line 81
    .line 82
    if-nez v1, :cond_4

    .line 83
    .line 84
    sget-object p1, Lw0/c;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 85
    .line 86
    new-instance v0, Lb0/d;

    .line 87
    .line 88
    invoke-direct {v0, p0, v4, v5}, Lb0/d;-><init>(Lru/zdevs/zarchiver/activity/InstallApksDlg;Lru/zdevs/zarchiver/c;Lh0/h;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_4
    if-eq v1, v2, :cond_5

    .line 96
    .line 97
    iget-object v5, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg;->b:Lg0/y;

    .line 98
    .line 99
    if-eqz v5, :cond_5

    .line 100
    .line 101
    invoke-virtual {v5}, Lg0/y;->e()V

    .line 102
    .line 103
    .line 104
    :cond_5
    const/4 v5, 0x3

    .line 105
    if-eq v1, v2, :cond_8

    .line 106
    .line 107
    if-eqz v1, :cond_7

    .line 108
    .line 109
    if-eq v1, v5, :cond_6

    .line 110
    .line 111
    new-instance p1, Lru/zdevs/zarchiver/activity/InstallApksDlg$b;

    .line 112
    .line 113
    invoke-direct {p1, p0, v3}, Lru/zdevs/zarchiver/activity/InstallApksDlg$b;-><init>(Lru/zdevs/zarchiver/activity/InstallApksDlg;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-static {p1}, Lw0/c;->h(Ljava/lang/Runnable;)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_6
    invoke-virtual {p0, v4, p1}, Lru/zdevs/zarchiver/activity/InstallApksDlg;->a(Ljava/lang/String;Z)V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_7
    invoke-virtual {p0, v4, v6}, Lru/zdevs/zarchiver/activity/InstallApksDlg;->a(Ljava/lang/String;Z)V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_8
    const-string v1, "android.intent.extra.INTENT"

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Landroid/content/Intent;

    .line 135
    .line 136
    if-nez v0, :cond_9

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    const-string v2, "Incorrect confirm pending"

    .line 148
    .line 149
    if-eqz v1, :cond_b

    .line 150
    .line 151
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    const-string v6, "ru.zdevs"

    .line 156
    .line 157
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    if-nez v3, :cond_a

    .line 162
    .line 163
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-eqz v1, :cond_b

    .line 172
    .line 173
    :cond_a
    invoke-virtual {p0, v2, p1}, Lru/zdevs/zarchiver/activity/InstallApksDlg;->a(Ljava/lang/String;Z)V

    .line 174
    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_b
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    invoke-static {v1, v5}, La0/c;->L(II)Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-eqz v1, :cond_c

    .line 186
    .line 187
    invoke-virtual {p0, v2, p1}, Lru/zdevs/zarchiver/activity/InstallApksDlg;->a(Ljava/lang/String;Z)V

    .line 188
    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_c
    new-instance p1, Lh1/g;

    .line 192
    .line 193
    const/16 v1, 0x70

    .line 194
    .line 195
    invoke-direct {p1, p0, v0, v1, v4}, Lh1/g;-><init>(Landroid/app/Activity;Landroid/content/Intent;ILjava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-static {p1}, Lw0/c;->h(Ljava/lang/Runnable;)V

    .line 199
    .line 200
    .line 201
    :cond_d
    :goto_2
    return-void
.end method

.method public final onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg;->a:Landroid/os/Handler;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg;->a:Landroid/os/Handler;

    .line 13
    .line 14
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg;->c:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg;->e:Lru/zdevs/zarchiver/activity/InstallApksDlg$e;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    :catch_0
    :cond_1
    return-void
.end method
