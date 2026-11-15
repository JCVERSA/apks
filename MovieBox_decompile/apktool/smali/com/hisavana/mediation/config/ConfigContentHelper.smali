.class public Lcom/hisavana/mediation/config/ConfigContentHelper;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisavana/mediation/config/ConfigContentHelper$a;
    }
.end annotation


# instance fields
.field public final a:Lee/j;

.field public final b:Lee/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lee/g;->d()Lee/g;

    move-result-object v0

    iput-object v0, p0, Lcom/hisavana/mediation/config/ConfigContentHelper;->b:Lee/g;

    .line 4
    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAhaChannel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aha"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lee/f;->d()Lee/f;

    move-result-object v0

    iput-object v0, p0, Lcom/hisavana/mediation/config/ConfigContentHelper;->a:Lee/j;

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lee/e;->d()Lee/e;

    move-result-object v0

    iput-object v0, p0, Lcom/hisavana/mediation/config/ConfigContentHelper;->a:Lee/j;

    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(Lcom/hisavana/mediation/config/ConfigContentHelper$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hisavana/mediation/config/ConfigContentHelper;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/hisavana/mediation/config/ConfigContentHelper;)Lee/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/mediation/config/ConfigContentHelper;->a:Lee/j;

    .line 2
    .line 3
    return-object p0
.end method

.method public static g()Lcom/hisavana/mediation/config/ConfigContentHelper;
    .locals 1

    .line 1
    invoke-static {}, Lcom/hisavana/mediation/config/ConfigContentHelper$a;->a()Lcom/hisavana/mediation/config/ConfigContentHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/config/ConfigContentHelper;->b:Lee/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lee/g;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/config/ConfigContentHelper;->b:Lee/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lee/g;->b()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/hisavana/mediation/config/ConfigContentHelper;->a:Lee/j;

    .line 7
    .line 8
    invoke-interface {v0}, Lee/j;->a()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public d()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/config/ConfigContentHelper;->a:Lee/j;

    .line 2
    .line 3
    invoke-interface {v0}, Lee/j;->c()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public e(Ljava/lang/String;)Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "ConfigContentHelper"

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string p1, "getConfig,codeSeatId is empty"

    .line 11
    .line 12
    invoke-static {v2, p1}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, v2, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v3, "getConfig "

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v2, v0}, Lcom/hisavana/common/utils/MediaLogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/hisavana/mediation/config/ConfigContentHelper;->b:Lee/g;

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Lee/g;->a(Ljava/lang/String;)Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    sget-object v3, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    .line 52
    .line 53
    new-instance v4, Lcom/hisavana/mediation/config/ConfigContentHelper$1;

    .line 54
    .line 55
    invoke-direct {v4, p0}, Lcom/hisavana/mediation/config/ConfigContentHelper$1;-><init>(Lcom/hisavana/mediation/config/ConfigContentHelper;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v4}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->g(Ljava/lang/Runnable;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 65
    .line 66
    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAhaChannel()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    const-string v4, "aha"

    .line 71
    .line 72
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_2

    .line 77
    .line 78
    new-instance v0, Lcom/hisavana/common/bean/Network;

    .line 79
    .line 80
    invoke-direct {v0}, Lcom/hisavana/common/bean/Network;-><init>()V

    .line 81
    .line 82
    .line 83
    new-instance v3, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 84
    .line 85
    invoke-direct {v3}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;-><init>()V

    .line 86
    .line 87
    .line 88
    new-instance v4, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, v4}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->setNetworks(Ljava/util/List;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->setCodeSeatId(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, p1}, Lcom/hisavana/common/bean/Network;->setCodeSeatId(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const-wide/16 v4, 0x0

    .line 106
    .line 107
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v0, v4}, Lcom/hisavana/common/bean/Network;->setPrice(Ljava/lang/Double;)V

    .line 112
    .line 113
    .line 114
    const/4 v4, 0x1

    .line 115
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {v0, v4}, Lcom/hisavana/common/bean/Network;->setSource(Ljava/lang/Integer;)V

    .line 120
    .line 121
    .line 122
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    const-string v4, "aha channel return default config"

    .line 127
    .line 128
    invoke-virtual {v0, v2, v4}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .line 130
    .line 131
    move-object v0, v3

    .line 132
    :cond_2
    return-object v0

    .line 133
    :goto_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    new-instance v4, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v5, "ex "

    .line 143
    .line 144
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v3, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    const-string v3, "getConfig,codeSeatId "

    .line 167
    .line 168
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string p1, ",codeSeat is null"

    .line 175
    .line 176
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-static {v2, p1}, Lcom/hisavana/common/utils/MediaLogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    return-object v1
.end method

.method public f()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/config/ConfigContentHelper;->a:Lee/j;

    .line 2
    .line 3
    invoke-interface {v0}, Lee/j;->b()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public h()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "ConfigContentHelper"

    .line 6
    .line 7
    const-string v2, "getConfig from database"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/hisavana/mediation/config/ConfigContentHelper;->a:Lee/j;

    .line 13
    .line 14
    invoke-interface {v0}, Lee/j;->c()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/hisavana/mediation/config/ConfigContentHelper;->b:Lee/g;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lee/g;->c(Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public i(Ljava/util/List;)Z
    .locals 6

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "ConfigContentHelper"

    .line 6
    .line 7
    const-string v2, "insert "

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/hisavana/mediation/config/ConfigContentHelper;->d()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_3

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 39
    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_0

    .line 52
    .line 53
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 58
    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatId()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v3}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatId()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_2

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCurrentHourZeroClock()J

    .line 76
    .line 77
    .line 78
    move-result-wide v4

    .line 79
    invoke-virtual {v3, v4, v5}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->setCurrentHourZeroClock(J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getLastShowTime()J

    .line 83
    .line 84
    .line 85
    move-result-wide v4

    .line 86
    invoke-virtual {v3, v4, v5}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->setLastShowTime(J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCurrentHourShowTimes()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    invoke-virtual {v3, v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->setCurrentHourShowTimes(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getTodayZeroClock()J

    .line 97
    .line 98
    .line 99
    move-result-wide v4

    .line 100
    invoke-virtual {v3, v4, v5}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->setTodayZeroClock(J)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getTodayShowTimes()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    invoke-virtual {v3, v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->setTodayShowTimes(I)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/hisavana/mediation/config/ConfigContentHelper;->b:Lee/g;

    .line 112
    .line 113
    invoke-virtual {v0, p1}, Lee/g;->c(Ljava/util/List;)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/hisavana/mediation/config/ConfigContentHelper;->a:Lee/j;

    .line 117
    .line 118
    invoke-interface {v0, p1}, Lee/j;->a(Ljava/util/List;)Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    return p1
.end method

.method public j(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "updateConfig "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "ConfigContentHelper"

    .line 23
    .line 24
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    .line 28
    .line 29
    new-instance v1, Lcom/hisavana/mediation/config/ConfigContentHelper$2;

    .line 30
    .line 31
    invoke-direct {v1, p0, p1}, Lcom/hisavana/mediation/config/ConfigContentHelper$2;-><init>(Lcom/hisavana/mediation/config/ConfigContentHelper;Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->g(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
