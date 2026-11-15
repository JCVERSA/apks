.class public abstract Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lte/b;

.field private c:Lcom/iab/omid/library/mmadbridge/adsession/a;

.field private d:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

.field private e:Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher$a;

.field private f:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->a()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    .line 8
    .line 9
    new-instance p1, Lte/b;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {p1, v0}, Lte/b;-><init>(Landroid/webkit/WebView;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->b:Lte/b;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-static {}, Lre/f;->b()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->f:J

    .line 6
    .line 7
    sget-object v0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher$a;->a:Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher$a;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->e:Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher$a;

    .line 10
    .line 11
    return-void
.end method

.method public b(F)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/h;->a()Lcom/iab/omid/library/mmadbridge/internal/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->w()Landroid/webkit/WebView;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2, p1}, Lcom/iab/omid/library/mmadbridge/internal/h;->c(Landroid/webkit/WebView;Ljava/lang/String;F)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method c(Landroid/webkit/WebView;)V
    .locals 1

    .line 1
    new-instance v0, Lte/b;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lte/b;-><init>(Landroid/webkit/WebView;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->b:Lte/b;

    .line 7
    .line 8
    return-void
.end method

.method public d(Lcom/iab/omid/library/mmadbridge/adsession/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->c:Lcom/iab/omid/library/mmadbridge/adsession/a;

    .line 2
    .line 3
    return-void
.end method

.method public e(Lcom/iab/omid/library/mmadbridge/adsession/c;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/h;->a()Lcom/iab/omid/library/mmadbridge/internal/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->w()Landroid/webkit/WebView;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/iab/omid/library/mmadbridge/adsession/c;->d()Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, v1, v2, p1}, Lcom/iab/omid/library/mmadbridge/internal/h;->f(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public f(Lcom/iab/omid/library/mmadbridge/adsession/h;Lcom/iab/omid/library/mmadbridge/adsession/d;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->g(Lcom/iab/omid/library/mmadbridge/adsession/h;Lcom/iab/omid/library/mmadbridge/adsession/d;Lorg/json/JSONObject;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method protected g(Lcom/iab/omid/library/mmadbridge/adsession/h;Lcom/iab/omid/library/mmadbridge/adsession/d;Lorg/json/JSONObject;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/iab/omid/library/mmadbridge/adsession/h;->s()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v2

    .line 5
    new-instance v3, Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string p1, "environment"

    .line 11
    .line 12
    const-string v0, "app"

    .line 13
    .line 14
    invoke-static {v3, p1, v0}, Lre/c;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/iab/omid/library/mmadbridge/adsession/d;->c()Lcom/iab/omid/library/mmadbridge/adsession/AdSessionContextType;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v1, "adSessionType"

    .line 22
    .line 23
    invoke-static {v3, v1, p1}, Lre/c;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lre/b;->d()Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v1, "deviceInfo"

    .line 31
    .line 32
    invoke-static {v3, v1, p1}, Lre/c;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lre/a;->a()Lcom/iab/omid/library/mmadbridge/adsession/DeviceCategory;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/iab/omid/library/mmadbridge/adsession/DeviceCategory;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string v1, "deviceCategory"

    .line 44
    .line 45
    invoke-static {v3, v1, p1}, Lre/c;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    new-instance p1, Lorg/json/JSONArray;

    .line 49
    .line 50
    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v1, "clid"

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 56
    .line 57
    .line 58
    const-string v1, "vlid"

    .line 59
    .line 60
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 61
    .line 62
    .line 63
    const-string v1, "supports"

    .line 64
    .line 65
    invoke-static {v3, v1, p1}, Lre/c;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    new-instance p1, Lorg/json/JSONObject;

    .line 69
    .line 70
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Lcom/iab/omid/library/mmadbridge/adsession/d;->h()Lcom/iab/omid/library/mmadbridge/adsession/f;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1}, Lcom/iab/omid/library/mmadbridge/adsession/f;->b()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const-string v4, "partnerName"

    .line 82
    .line 83
    invoke-static {p1, v4, v1}, Lre/c;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Lcom/iab/omid/library/mmadbridge/adsession/d;->h()Lcom/iab/omid/library/mmadbridge/adsession/f;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1}, Lcom/iab/omid/library/mmadbridge/adsession/f;->c()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const-string v4, "partnerVersion"

    .line 95
    .line 96
    invoke-static {p1, v4, v1}, Lre/c;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    const-string v1, "omidNativeInfo"

    .line 100
    .line 101
    invoke-static {v3, v1, p1}, Lre/c;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    new-instance p1, Lorg/json/JSONObject;

    .line 105
    .line 106
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v1, "libraryVersion"

    .line 110
    .line 111
    const-string v4, "1.4.13-Mmadbridge"

    .line 112
    .line 113
    invoke-static {p1, v1, v4}, Lre/c;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/g;->c()Lcom/iab/omid/library/mmadbridge/internal/g;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v1}, Lcom/iab/omid/library/mmadbridge/internal/g;->a()Landroid/content/Context;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    const-string v4, "appId"

    .line 133
    .line 134
    invoke-static {p1, v4, v1}, Lre/c;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    invoke-static {v3, v0, p1}, Lre/c;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2}, Lcom/iab/omid/library/mmadbridge/adsession/d;->d()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    if-eqz p1, :cond_0

    .line 145
    .line 146
    invoke-virtual {p2}, Lcom/iab/omid/library/mmadbridge/adsession/d;->d()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    const-string v0, "contentUrl"

    .line 151
    .line 152
    invoke-static {v3, v0, p1}, Lre/c;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    :cond_0
    invoke-virtual {p2}, Lcom/iab/omid/library/mmadbridge/adsession/d;->e()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    if-eqz p1, :cond_1

    .line 160
    .line 161
    invoke-virtual {p2}, Lcom/iab/omid/library/mmadbridge/adsession/d;->e()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    const-string v0, "customReferenceData"

    .line 166
    .line 167
    invoke-static {v3, v0, p1}, Lre/c;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    .line 171
    .line 172
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p2}, Lcom/iab/omid/library/mmadbridge/adsession/d;->i()Ljava/util/List;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 184
    .line 185
    .line 186
    move-result p2

    .line 187
    if-eqz p2, :cond_2

    .line 188
    .line 189
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    check-cast p2, Lcom/iab/omid/library/mmadbridge/adsession/g;

    .line 194
    .line 195
    invoke-virtual {p2}, Lcom/iab/omid/library/mmadbridge/adsession/g;->d()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {p2}, Lcom/iab/omid/library/mmadbridge/adsession/g;->e()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    invoke-static {v4, v0, p2}, Lre/c;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    goto :goto_0

    .line 207
    :cond_2
    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/h;->a()Lcom/iab/omid/library/mmadbridge/internal/h;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->w()Landroid/webkit/WebView;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    move-object v5, p3

    .line 216
    invoke-virtual/range {v0 .. v5}, Lcom/iab/omid/library/mmadbridge/internal/h;->g(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 217
    .line 218
    .line 219
    return-void
.end method

.method public h(Lcom/iab/omid/library/mmadbridge/adsession/media/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->d:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    .line 2
    .line 3
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->k(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public j(Ljava/lang/String;J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->f:J

    .line 2
    .line 3
    cmp-long p2, p2, v0

    .line 4
    .line 5
    if-ltz p2, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->e:Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher$a;

    .line 8
    .line 9
    sget-object p3, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher$a;->c:Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher$a;

    .line 10
    .line 11
    if-eq p2, p3, :cond_0

    .line 12
    .line 13
    iput-object p3, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->e:Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher$a;

    .line 14
    .line 15
    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/h;->a()Lcom/iab/omid/library/mmadbridge/internal/h;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->w()Landroid/webkit/WebView;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p2, p3, v0, p1}, Lcom/iab/omid/library/mmadbridge/internal/h;->m(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public k(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/h;->a()Lcom/iab/omid/library/mmadbridge/internal/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->w()Landroid/webkit/WebView;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/iab/omid/library/mmadbridge/internal/h;->e(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public l(Ljava/util/Date;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v1, "timestamp"

    .line 18
    .line 19
    invoke-static {v0, v1, p1}, Lre/c;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/h;->a()Lcom/iab/omid/library/mmadbridge/internal/h;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->w()Landroid/webkit/WebView;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p1, v1, v0}, Lcom/iab/omid/library/mmadbridge/internal/h;->j(Landroid/webkit/WebView;Lorg/json/JSONObject;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public m(Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/h;->a()Lcom/iab/omid/library/mmadbridge/internal/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->w()Landroid/webkit/WebView;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2, p1}, Lcom/iab/omid/library/mmadbridge/internal/h;->n(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public n(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->t()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const-string p1, "foregrounded"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string p1, "backgrounded"

    .line 13
    .line 14
    :goto_0
    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/h;->a()Lcom/iab/omid/library/mmadbridge/internal/h;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->w()Landroid/webkit/WebView;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2, p1}, Lcom/iab/omid/library/mmadbridge/internal/h;->o(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->b:Lte/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public p(Ljava/lang/String;J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->f:J

    .line 2
    .line 3
    cmp-long p2, p2, v0

    .line 4
    .line 5
    if-ltz p2, :cond_0

    .line 6
    .line 7
    sget-object p2, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher$a;->b:Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher$a;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->e:Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher$a;

    .line 10
    .line 11
    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/h;->a()Lcom/iab/omid/library/mmadbridge/internal/h;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->w()Landroid/webkit/WebView;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p2, p3, v0, p1}, Lcom/iab/omid/library/mmadbridge/internal/h;->m(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public q(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->t()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const-string p1, "locked"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string p1, "unlocked"

    .line 13
    .line 14
    :goto_0
    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/h;->a()Lcom/iab/omid/library/mmadbridge/internal/h;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->w()Landroid/webkit/WebView;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2, p1}, Lcom/iab/omid/library/mmadbridge/internal/h;->d(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public r()Lcom/iab/omid/library/mmadbridge/adsession/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->c:Lcom/iab/omid/library/mmadbridge/adsession/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public s()Lcom/iab/omid/library/mmadbridge/adsession/media/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->d:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->b:Lte/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public u()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/h;->a()Lcom/iab/omid/library/mmadbridge/internal/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->w()Landroid/webkit/WebView;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/iab/omid/library/mmadbridge/internal/h;->b(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public v()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/h;->a()Lcom/iab/omid/library/mmadbridge/internal/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->w()Landroid/webkit/WebView;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/iab/omid/library/mmadbridge/internal/h;->l(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public w()Landroid/webkit/WebView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->b:Lte/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/webkit/WebView;

    .line 8
    .line 9
    return-object v0
.end method

.method public x()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->m(Lorg/json/JSONObject;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public y()V
    .locals 0

    .line 1
    return-void
.end method
