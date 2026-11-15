.class final Lcom/gyf/immersionbar/j;
.super Landroid/database/ContentObserver;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gyf/immersionbar/j$b;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Landroid/app/Application;

.field private c:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/gyf/immersionbar/j;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/gyf/immersionbar/j$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gyf/immersionbar/j;-><init>()V

    return-void
.end method

.method static b()Lcom/gyf/immersionbar/j;
    .locals 1

    .line 1
    invoke-static {}, Lcom/gyf/immersionbar/j$b;->a()Lcom/gyf/immersionbar/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method a(Lcom/gyf/immersionbar/n;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gyf/immersionbar/j;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/gyf/immersionbar/j;->a:Ljava/util/ArrayList;

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/gyf/immersionbar/j;->a:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Lcom/gyf/immersionbar/j;->a:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    :cond_2
    return-void
.end method

.method c(Landroid/app/Application;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/gyf/immersionbar/j;->b:Landroid/app/Application;

    .line 2
    .line 3
    if-eqz p1, :cond_d

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_d

    .line 10
    .line 11
    iget-boolean p1, p0, Lcom/gyf/immersionbar/j;->c:Z

    .line 12
    .line 13
    if-nez p1, :cond_d

    .line 14
    .line 15
    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isHuaWei()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 v0, 0x0

    .line 20
    if-nez p1, :cond_9

    .line 21
    .line 22
    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isEMUI()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    goto/16 :goto_4

    .line 29
    .line 30
    :cond_0
    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isXiaoMi()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_8

    .line 35
    .line 36
    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isMIUI()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_1
    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isVivo()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_7

    .line 48
    .line 49
    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isFuntouchOrOriginOs()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isOppo()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_6

    .line 61
    .line 62
    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isColorOs()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isSamsung()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_5

    .line 74
    .line 75
    iget-object p1, p0, Lcom/gyf/immersionbar/j;->b:Landroid/app/Application;

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const-string v1, "navigationbar_hide_bar_enabled"

    .line 82
    .line 83
    const/4 v2, -0x1

    .line 84
    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-ne p1, v2, :cond_4

    .line 89
    .line 90
    const-string p1, "navigation_bar_gesture_while_hidden"

    .line 91
    .line 92
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const-string v0, "navigation_bar_gesture_detail_type"

    .line 97
    .line 98
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    const-string v1, "navigation_bar_gesture_hint"

    .line 103
    .line 104
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    goto :goto_5

    .line 109
    :cond_4
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    goto :goto_0

    .line 114
    :cond_5
    const-string p1, "navigation_mode"

    .line 115
    .line 116
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    :goto_0
    move-object v1, v0

    .line 121
    goto :goto_5

    .line 122
    :cond_6
    :goto_1
    const-string p1, "hide_navigationbar_enable"

    .line 123
    .line 124
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    goto :goto_0

    .line 129
    :cond_7
    :goto_2
    const-string p1, "navigation_gesture_on"

    .line 130
    .line 131
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    goto :goto_0

    .line 136
    :cond_8
    :goto_3
    const-string p1, "force_fsg_nav_bar"

    .line 137
    .line 138
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    const-string v1, "hide_gesture_line"

    .line 143
    .line 144
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    move-object v4, v1

    .line 149
    move-object v1, v0

    .line 150
    move-object v0, v4

    .line 151
    goto :goto_5

    .line 152
    :cond_9
    :goto_4
    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isEMUI3_x()Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    const-string v1, "navigationbar_is_min"

    .line 157
    .line 158
    if-nez p1, :cond_a

    .line 159
    .line 160
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    goto :goto_0

    .line 165
    :cond_a
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    goto :goto_0

    .line 170
    :goto_5
    const/4 v2, 0x1

    .line 171
    if-eqz p1, :cond_b

    .line 172
    .line 173
    iget-object v3, p0, Lcom/gyf/immersionbar/j;->b:Landroid/app/Application;

    .line 174
    .line 175
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-virtual {v3, p1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 180
    .line 181
    .line 182
    iput-boolean v2, p0, Lcom/gyf/immersionbar/j;->c:Z

    .line 183
    .line 184
    :cond_b
    if-eqz v0, :cond_c

    .line 185
    .line 186
    iget-object p1, p0, Lcom/gyf/immersionbar/j;->b:Landroid/app/Application;

    .line 187
    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {p1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 193
    .line 194
    .line 195
    :cond_c
    if-eqz v1, :cond_d

    .line 196
    .line 197
    iget-object p1, p0, Lcom/gyf/immersionbar/j;->b:Landroid/app/Application;

    .line 198
    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-virtual {p1, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 204
    .line 205
    .line 206
    :cond_d
    return-void
.end method

.method d(Lcom/gyf/immersionbar/n;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/gyf/immersionbar/j;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    :cond_1
    :goto_0
    return-void
.end method

.method public onChange(Z)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/gyf/immersionbar/j;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_2

    .line 13
    .line 14
    iget-object p1, p0, Lcom/gyf/immersionbar/j;->b:Landroid/app/Application;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/gyf/immersionbar/g;->a(Landroid/content/Context;)Lcom/gyf/immersionbar/g$a;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-boolean v0, p1, Lcom/gyf/immersionbar/g$a;->a:Z

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-boolean v0, p1, Lcom/gyf/immersionbar/g$a;->b:Z

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/gyf/immersionbar/j;->b:Landroid/app/Application;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/gyf/immersionbar/a;->f(Landroid/content/Context;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-lez v0, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v1, v2

    .line 40
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/gyf/immersionbar/j;->a:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Lcom/gyf/immersionbar/n;

    .line 57
    .line 58
    iget-object v3, p1, Lcom/gyf/immersionbar/g$a;->c:Lcom/gyf/immersionbar/NavigationBarType;

    .line 59
    .line 60
    invoke-interface {v2, v1, v3}, Lcom/gyf/immersionbar/n;->onNavigationBarChange(ZLcom/gyf/immersionbar/NavigationBarType;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    return-void
.end method
