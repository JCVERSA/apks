.class public final Lqu/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;


# instance fields
.field public final synthetic a:Lqu/f;

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Lqu/f;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqu/e;->a:Lqu/f;

    .line 2
    .line 3
    iput-boolean p2, p0, Lqu/e;->b:Z

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onDialogClick(I)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "\u81ea\u5b9a\u4e49\u5f39\u7a97\u6309\u94ae\u70b9\u51fb: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "tag"

    .line 16
    .line 17
    const-string v2, "UpgradeSdkManager"

    .line 18
    .line 19
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "msg"

    .line 23
    .line 24
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    sget-boolean v2, Ltu/g;->a:Z

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    sget-wide v5, Ltu/g;->b:J

    .line 39
    .line 40
    sub-long v5, v0, v5

    .line 41
    .line 42
    const-wide/16 v7, 0x1388

    .line 43
    .line 44
    cmp-long v5, v5, v7

    .line 45
    .line 46
    if-gez v5, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    sput-wide v0, Ltu/g;->b:J

    .line 50
    .line 51
    const-string v0, "upgradeSdkLog"

    .line 52
    .line 53
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    sput-boolean v4, Ltu/g;->a:Z

    .line 60
    .line 61
    :cond_2
    sget-boolean v2, Ltu/g;->a:Z

    .line 62
    .line 63
    :goto_0
    sget-object v0, Lqu/f;->o:Lqu/d;

    .line 64
    .line 65
    invoke-virtual {v0}, Lqu/d;->a()Lqu/f;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-boolean v0, v0, Lqu/f;->d:Z

    .line 70
    .line 71
    iget-object v0, p0, Lqu/e;->a:Lqu/f;

    .line 72
    .line 73
    iget-object v0, v0, Lqu/f;->b:Lcom/transsion/upgradesdk/bean/UpgradeData;

    .line 74
    .line 75
    const/4 v1, 0x2

    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/transsion/upgradesdk/bean/UpgradeData;->isForceUpdate()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-ne v0, v4, :cond_3

    .line 83
    .line 84
    move v0, v1

    .line 85
    goto :goto_1

    .line 86
    :cond_3
    move v0, v4

    .line 87
    :goto_1
    iget-object v2, p0, Lqu/e;->a:Lqu/f;

    .line 88
    .line 89
    iget-boolean v5, p0, Lqu/e;->b:Z

    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    if-eq p1, v4, :cond_7

    .line 95
    .line 96
    if-eq p1, v1, :cond_6

    .line 97
    .line 98
    if-eq p1, v3, :cond_5

    .line 99
    .line 100
    const/4 v1, 0x4

    .line 101
    if-eq p1, v1, :cond_4

    .line 102
    .line 103
    const-string p1, "back_exit"

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_4
    const-string p1, "back"

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_5
    const-string p1, "later"

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_6
    const-string p1, "exitapp"

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_7
    iget-object p1, v2, Lqu/f;->b:Lcom/transsion/upgradesdk/bean/UpgradeData;

    .line 116
    .line 117
    if-eqz p1, :cond_8

    .line 118
    .line 119
    iget-boolean v1, v2, Lqu/f;->c:Z

    .line 120
    .line 121
    if-eqz v1, :cond_8

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getPkg()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {p1}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getDirectDwl()I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    invoke-virtual {p1}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getHoverBtn()I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    sget-object v3, Lcom/transsion/upgradesdk/manager/f;->a:Lcom/transsion/upgradesdk/manager/f;

    .line 136
    .line 137
    invoke-static {v1, v2, p1, v3}, Ltu/n;->c(Ljava/lang/String;IILkotlin/jvm/functions/Function0;)V

    .line 138
    .line 139
    .line 140
    :cond_8
    const-string p1, "update"

    .line 141
    .line 142
    :goto_2
    sget-object v1, Lcom/transsion/upgradesdk/bean/c;->d:Lcom/transsion/upgradesdk/bean/c;

    .line 143
    .line 144
    invoke-static {v0, v5, p1, v1}, Ltu/l;->e(IZLjava/lang/String;Lcom/transsion/upgradesdk/bean/c;)V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method public final onDialogDismiss()V
    .locals 8

    .line 1
    const-string v0, "tag"

    .line 2
    .line 3
    const-string v1, "msg"

    .line 4
    .line 5
    const-string v2, "UpgradeSdkManager"

    .line 6
    .line 7
    const-string v3, "\u81ea\u5b9a\u4e49\u5f39\u7a97\u5173\u95ed"

    .line 8
    .line 9
    invoke-static {v2, v0, v3, v1}, Lnu/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    sget-boolean v2, Ltu/g;->a:Z

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-wide v4, Ltu/g;->b:J

    .line 20
    .line 21
    sub-long v4, v0, v4

    .line 22
    .line 23
    const-wide/16 v6, 0x1388

    .line 24
    .line 25
    cmp-long v4, v4, v6

    .line 26
    .line 27
    if-gez v4, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    sput-wide v0, Ltu/g;->b:J

    .line 31
    .line 32
    const-string v0, "upgradeSdkLog"

    .line 33
    .line 34
    const/4 v1, 0x3

    .line 35
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    sput-boolean v3, Ltu/g;->a:Z

    .line 42
    .line 43
    :cond_2
    sget-boolean v2, Ltu/g;->a:Z

    .line 44
    .line 45
    :goto_0
    sget-object v0, Lqu/f;->o:Lqu/d;

    .line 46
    .line 47
    invoke-virtual {v0}, Lqu/d;->a()Lqu/f;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-boolean v0, v0, Lqu/f;->d:Z

    .line 52
    .line 53
    iget-object v0, p0, Lqu/e;->a:Lqu/f;

    .line 54
    .line 55
    iget-object v0, v0, Lqu/f;->b:Lcom/transsion/upgradesdk/bean/UpgradeData;

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/transsion/upgradesdk/bean/UpgradeData;->isForceUpdate()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-ne v0, v3, :cond_3

    .line 64
    .line 65
    const/4 v3, 0x2

    .line 66
    :cond_3
    iget-boolean v0, p0, Lqu/e;->b:Z

    .line 67
    .line 68
    sget-object v1, Lcom/transsion/upgradesdk/bean/c;->d:Lcom/transsion/upgradesdk/bean/c;

    .line 69
    .line 70
    const-string v2, "dismiss"

    .line 71
    .line 72
    invoke-static {v3, v0, v2, v1}, Ltu/l;->e(IZLjava/lang/String;Lcom/transsion/upgradesdk/bean/c;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final onDialogShow()V
    .locals 8

    .line 1
    const-string v0, "tag"

    .line 2
    .line 3
    const-string v1, "msg"

    .line 4
    .line 5
    const-string v2, "UpgradeSdkManager"

    .line 6
    .line 7
    const-string v3, "\u81ea\u5b9a\u4e49\u5f39\u7a97\u663e\u793a"

    .line 8
    .line 9
    invoke-static {v2, v0, v3, v1}, Lnu/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    sget-boolean v2, Ltu/g;->a:Z

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-wide v4, Ltu/g;->b:J

    .line 20
    .line 21
    sub-long v4, v0, v4

    .line 22
    .line 23
    const-wide/16 v6, 0x1388

    .line 24
    .line 25
    cmp-long v4, v4, v6

    .line 26
    .line 27
    if-gez v4, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    sput-wide v0, Ltu/g;->b:J

    .line 31
    .line 32
    const-string v0, "upgradeSdkLog"

    .line 33
    .line 34
    const/4 v1, 0x3

    .line 35
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    sput-boolean v3, Ltu/g;->a:Z

    .line 42
    .line 43
    :cond_2
    sget-boolean v2, Ltu/g;->a:Z

    .line 44
    .line 45
    :goto_0
    sget-object v0, Lqu/f;->o:Lqu/d;

    .line 46
    .line 47
    invoke-virtual {v0}, Lqu/d;->a()Lqu/f;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-boolean v0, v0, Lqu/f;->d:Z

    .line 52
    .line 53
    iget-object v0, p0, Lqu/e;->a:Lqu/f;

    .line 54
    .line 55
    iget-object v0, v0, Lqu/f;->b:Lcom/transsion/upgradesdk/bean/UpgradeData;

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/transsion/upgradesdk/bean/UpgradeData;->isForceUpdate()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-ne v0, v3, :cond_3

    .line 64
    .line 65
    const/4 v3, 0x2

    .line 66
    :cond_3
    iget-boolean v0, p0, Lqu/e;->b:Z

    .line 67
    .line 68
    sget-object v1, Lcom/transsion/upgradesdk/bean/c;->d:Lcom/transsion/upgradesdk/bean/c;

    .line 69
    .line 70
    invoke-static {v3, v0, v1}, Ltu/l;->d(IZLcom/transsion/upgradesdk/bean/c;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method
