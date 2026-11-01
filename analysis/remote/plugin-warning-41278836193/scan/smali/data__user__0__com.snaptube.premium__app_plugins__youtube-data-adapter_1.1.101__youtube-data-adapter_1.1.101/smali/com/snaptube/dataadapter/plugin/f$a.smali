.class public abstract Lcom/snaptube/dataadapter/plugin/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snaptube/dataadapter/plugin/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public static a(Lokhttp3/OkHttpClient;Lcom/snaptube/dataadapter/youtube/m;)Lcom/snaptube/dataadapter/IBaseYouTubeDataAdapter;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    new-instance v2, Lcom/google/gson/f;

    .line 4
    .line 5
    invoke-direct {v2}, Lcom/google/gson/f;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v2}, Lcom/google/gson/f;->d()Lcom/google/gson/f;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {v2}, Lcom/snaptube/dataadapter/youtube/deserializers/b;->a(Lcom/google/gson/f;)Lcom/google/gson/f;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Lcom/google/gson/f;->b()Lcom/google/gson/e;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    new-instance p0, Lokhttp3/OkHttpClient$Builder;

    .line 23
    .line 24
    invoke-direct {p0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    :cond_0
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p1}, Lcom/snaptube/dataadapter/youtube/m;->g()Lokhttp3/CookieJar;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {p0, v3}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    new-instance v3, Lcom/snaptube/dataadapter/plugin/b;

    .line 44
    .line 45
    invoke-direct {v3}, Lcom/snaptube/dataadapter/plugin/b;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v3}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {p0, p1}, Lcom/snaptube/dataadapter/youtube/r;->a(Lokhttp3/OkHttpClient;Lcom/snaptube/dataadapter/youtube/m;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    new-instance v4, Lcom/snaptube/dataadapter/plugin/i;

    .line 61
    .line 62
    invoke-direct {v4}, Lcom/snaptube/dataadapter/plugin/i;-><init>()V

    .line 63
    .line 64
    .line 65
    const-class v5, Lcom/snaptube/dataadapter/plugin/f$a;

    .line 66
    .line 67
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    new-array v7, v1, [Ljava/lang/Class;

    .line 72
    .line 73
    const-class v8, Lcom/snaptube/dataadapter/youtube/engine/YoutubeDataEngine;

    .line 74
    .line 75
    aput-object v8, v7, v0

    .line 76
    .line 77
    new-instance v8, Lcom/snaptube/dataadapter/plugin/g;

    .line 78
    .line 79
    invoke-direct {v8, v3, v4}, Lcom/snaptube/dataadapter/plugin/g;-><init>(Ljava/util/List;Lcom/snaptube/dataadapter/plugin/i;)V

    .line 80
    .line 81
    .line 82
    invoke-static {v6, v7, v8}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    check-cast v3, Lcom/snaptube/dataadapter/youtube/engine/YoutubeDataEngine;

    .line 87
    .line 88
    invoke-static {}, La/a;->a()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-static {v6}, Lb/c;->c(Landroid/content/Context;)I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    invoke-static {}, Lcom/snaptube/dataadapter/plugin/f;->g()I

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    if-ge v6, v7, :cond_1

    .line 101
    .line 102
    if-lez v6, :cond_1

    .line 103
    .line 104
    new-instance v6, Lcom/snaptube/dataadapter/youtube/o;

    .line 105
    .line 106
    invoke-direct {v6, p0, p1, v2, v3}, Lcom/snaptube/dataadapter/youtube/o;-><init>(Lokhttp3/OkHttpClient;Lcom/snaptube/dataadapter/youtube/m;Lcom/google/gson/e;Lcom/snaptube/dataadapter/youtube/engine/YoutubeDataEngine;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v6}, Lcom/snaptube/dataadapter/youtube/BaseYoutubeDataAdapter;->b0()Lg/b;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {v4, p0}, Lcom/snaptube/dataadapter/plugin/i;->i(Lg/b;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    new-array v1, v1, [Ljava/lang/Class;

    .line 121
    .line 122
    const-class v2, Lcom/snaptube/dataadapter/IYouTubeDataAdapterCompat;

    .line 123
    .line 124
    aput-object v2, v1, v0

    .line 125
    .line 126
    new-instance v0, Lcom/snaptube/dataadapter/plugin/f;

    .line 127
    .line 128
    new-instance v2, Lcom/snaptube/dataadapter/plugin/a$b;

    .line 129
    .line 130
    invoke-direct {v2}, Lcom/snaptube/dataadapter/plugin/a$b;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-direct {v0, v6, v2, p1}, Lcom/snaptube/dataadapter/plugin/f;-><init>(Lcom/snaptube/dataadapter/IBaseYouTubeDataAdapter;Lcom/snaptube/dataadapter/IBaseYouTubeDataAdapter;Lcom/snaptube/dataadapter/youtube/m;)V

    .line 134
    .line 135
    .line 136
    invoke-static {p0, v1, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    check-cast p0, Lcom/snaptube/dataadapter/IYouTubeDataAdapterCompat;

    .line 141
    .line 142
    return-object p0

    .line 143
    :cond_1
    new-instance v6, Lcom/snaptube/dataadapter/youtube/n;

    .line 144
    .line 145
    invoke-direct {v6, p0, p1, v2, v3}, Lcom/snaptube/dataadapter/youtube/n;-><init>(Lokhttp3/OkHttpClient;Lcom/snaptube/dataadapter/youtube/m;Lcom/google/gson/e;Lcom/snaptube/dataadapter/youtube/engine/YoutubeDataEngine;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v6}, Lcom/snaptube/dataadapter/youtube/BaseYoutubeDataAdapter;->b0()Lg/b;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-virtual {v4, p0}, Lcom/snaptube/dataadapter/plugin/i;->i(Lg/b;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    new-array v1, v1, [Ljava/lang/Class;

    .line 160
    .line 161
    const-class v2, Lcom/snaptube/dataadapter/IYouTubeDataAdapter;

    .line 162
    .line 163
    aput-object v2, v1, v0

    .line 164
    .line 165
    new-instance v0, Lcom/snaptube/dataadapter/plugin/f;

    .line 166
    .line 167
    new-instance v2, Lcom/snaptube/dataadapter/plugin/a$a;

    .line 168
    .line 169
    invoke-direct {v2}, Lcom/snaptube/dataadapter/plugin/a$a;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-direct {v0, v6, v2, p1}, Lcom/snaptube/dataadapter/plugin/f;-><init>(Lcom/snaptube/dataadapter/IBaseYouTubeDataAdapter;Lcom/snaptube/dataadapter/IBaseYouTubeDataAdapter;Lcom/snaptube/dataadapter/youtube/m;)V

    .line 173
    .line 174
    .line 175
    invoke-static {p0, v1, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    check-cast p0, Lcom/snaptube/dataadapter/IYouTubeDataAdapter;

    .line 180
    .line 181
    return-object p0
.end method
