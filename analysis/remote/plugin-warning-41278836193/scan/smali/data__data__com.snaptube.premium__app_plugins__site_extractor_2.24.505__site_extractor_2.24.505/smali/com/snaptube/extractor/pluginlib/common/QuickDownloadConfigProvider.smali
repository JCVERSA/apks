.class public Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider$a;
    }
.end annotation


# static fields
.field public static final METHOD_GET:Ljava/lang/String; = "get"

.field public static final METHOD_GET_INSTANCE:Ljava/lang/String; = "getInstance"

.field private static volatile instance:Lt/i;


# instance fields
.field private pluginProvider:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(LK/c;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider;->siteCodecToJson(LK/c;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private getFormatConfigs()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider$a;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v2, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider$a;

    .line 8
    .line 9
    sget-object v3, LV/a;->f:LV/a;

    .line 10
    .line 11
    sget-object v4, LV/a;->e:LV/a;

    .line 12
    .line 13
    const/4 v5, 0x2

    .line 14
    new-array v6, v5, [LK/c;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    aput-object v3, v6, v7

    .line 18
    .line 19
    const/4 v8, 0x1

    .line 20
    aput-object v4, v6, v8

    .line 21
    .line 22
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    const-string v9, ".*\\\\.xnxx(?!\\\\.gold)[^.]*\\\\.[a-z]+/video[-\\\\w]+/.*"

    .line 27
    .line 28
    invoke-direct {v2, v9, v6}, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider$a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    new-instance v2, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider$a;

    .line 35
    .line 36
    new-array v6, v5, [LK/c;

    .line 37
    .line 38
    aput-object v3, v6, v7

    .line 39
    .line 40
    aput-object v4, v6, v8

    .line 41
    .line 42
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const-string v4, ".*.xvideos[^.]*\\\\.[a-z]+/video[\\\\w.]*/.*"

    .line 47
    .line 48
    invoke-direct {v2, v4, v3}, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider$a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    new-instance v2, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider$a;

    .line 55
    .line 56
    new-array v3, v5, [LK/c;

    .line 57
    .line 58
    sget-object v4, LS/n;->f:LS/n;

    .line 59
    .line 60
    aput-object v4, v3, v7

    .line 61
    .line 62
    sget-object v4, LS/n;->h:LS/n;

    .line 63
    .line 64
    aput-object v4, v3, v8

    .line 65
    .line 66
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    const-string v4, ".*.tiktok.*/((v/\\\\d+\\\\.html.*)|(.*/video/\\\\d+/?.*))"

    .line 71
    .line 72
    invoke-direct {v2, v4, v3}, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider$a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lcom/snaptube/extractor/pluginlib/utils/j;->f()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    const-string v3, ".*.(instagram.*|ig.me)/reels?/(?!audio/).*"

    .line 83
    .line 84
    if-eqz v2, :cond_0

    .line 85
    .line 86
    new-instance v2, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider$a;

    .line 87
    .line 88
    new-array v4, v5, [LK/c;

    .line 89
    .line 90
    sget-object v6, LP/e;->q:LP/e;

    .line 91
    .line 92
    aput-object v6, v4, v7

    .line 93
    .line 94
    sget-object v6, LP/e;->f:LP/e;

    .line 95
    .line 96
    aput-object v6, v4, v8

    .line 97
    .line 98
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-direct {v2, v3, v4}, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider$a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_0
    new-instance v2, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider$a;

    .line 107
    .line 108
    sget-object v4, LP/e;->f:LP/e;

    .line 109
    .line 110
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-direct {v2, v3, v4}, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider$a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 115
    .line 116
    .line 117
    :goto_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    invoke-static {}, Lcom/snaptube/extractor/pluginlib/utils/j;->d()Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    const-string v3, ".*.facebook.*/(reel/|share/r/|share/v).*"

    .line 125
    .line 126
    if-eqz v2, :cond_1

    .line 127
    .line 128
    new-instance v2, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider$a;

    .line 129
    .line 130
    const/4 v4, 0x4

    .line 131
    new-array v4, v4, [LK/c;

    .line 132
    .line 133
    sget-object v6, LO/m$a;->g:LO/m$a;

    .line 134
    .line 135
    aput-object v6, v4, v7

    .line 136
    .line 137
    sget-object v6, LO/m$a;->e:LO/m$a;

    .line 138
    .line 139
    aput-object v6, v4, v8

    .line 140
    .line 141
    sget-object v6, LO/m$b;->u:LO/m$b;

    .line 142
    .line 143
    aput-object v6, v4, v5

    .line 144
    .line 145
    sget-object v5, LO/m$b;->v:LO/m$b;

    .line 146
    .line 147
    aput-object v5, v4, v0

    .line 148
    .line 149
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-direct {v2, v3, v0}, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider$a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_1
    new-instance v2, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider$a;

    .line 158
    .line 159
    new-array v0, v0, [LK/c;

    .line 160
    .line 161
    sget-object v4, LO/m$a;->g:LO/m$a;

    .line 162
    .line 163
    aput-object v4, v0, v7

    .line 164
    .line 165
    sget-object v4, LO/m$b;->t:LO/m$b;

    .line 166
    .line 167
    aput-object v4, v0, v8

    .line 168
    .line 169
    sget-object v4, LO/m$b;->s:LO/m$b;

    .line 170
    .line 171
    aput-object v4, v0, v5

    .line 172
    .line 173
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-direct {v2, v3, v0}, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider$a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 178
    .line 179
    .line 180
    :goto_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    return-object v1
.end method

.method public static getInstance()Lt/i;
    .locals 2

    .line 1
    sget-object v0, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider;->instance:Lt/i;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider;->instance:Lt/i;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider;->instance:Lt/i;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider;->instance:Lt/i;

    .line 27
    .line 28
    return-object v0
.end method

.method private getResultFormPlugin()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider;->pluginProvider:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    const-class v0, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v2, p0, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider;->pluginProvider:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-ne v0, v2, :cond_1

    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider;->pluginProvider:Ljava/lang/Object;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v2, "get"

    .line 33
    .line 34
    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v2, p0, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider;->pluginProvider:Ljava/lang/Object;

    .line 39
    .line 40
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    return-object v0

    .line 47
    :catchall_0
    return-object v1
.end method

.method private static siteCodecToJson(LK/c;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-interface {p0}, LK/c;->d()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0}, LK/c;->c()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {p0}, LK/c;->a()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 v2, 0x3

    .line 14
    new-array v2, v2, [Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    aput-object v0, v2, v3

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    aput-object v1, v2, v0

    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    aput-object p0, v2, v0

    .line 24
    .line 25
    const-string p0, "{\"alias\":\"%s\",\"tag\":\"%s\",\"mime\":\"%s\"}"

    .line 26
    .line 27
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider;->getResultFormPlugin()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider;->getFormatConfigs()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider$a;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-lez v3, :cond_1

    .line 38
    .line 39
    const-string v3, ","

    .line 40
    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {v2}, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider$a;->a()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const-string v1, "[%s]"

    .line 53
    .line 54
    const/4 v2, 0x1

    .line 55
    new-array v2, v2, [Ljava/lang/Object;

    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    aput-object v0, v2, v3

    .line 59
    .line 60
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    return-object v0
.end method

.method public loadPlugin(Ljava/lang/ClassLoader;)V
    .locals 2

    .line 1
    :try_start_0
    const-class v0, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "getInstance"

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider;->pluginProvider:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    :catchall_0
    return-void
.end method
