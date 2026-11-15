.class final Lcom/cloud/hisavana/sdk/manager/a$i;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/manager/a;->e(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)I"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.cloud.hisavana.sdk.manager.CustomTabsManager$loadURLBySession$2"
    f = "CustomTabsManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field a:I

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field final synthetic d:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;",
            "Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/cloud/hisavana/sdk/manager/a$i;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/manager/a$i;->b:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/manager/a$i;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/hisavana/sdk/manager/a$i;->d:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/manager/a$i;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/cloud/hisavana/sdk/manager/a$i;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/manager/a$i;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/cloud/hisavana/sdk/manager/a$i;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/manager/a$i;->b:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/manager/a$i;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/manager/a$i;->d:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/cloud/hisavana/sdk/manager/a$i;-><init>(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/manager/a$i;->a(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    iget v1, p0, Lcom/cloud/hisavana/sdk/manager/a$i;->a:I

    .line 6
    .line 7
    if-nez v1, :cond_7

    .line 8
    .line 9
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/manager/a$i;->b:Landroid/content/Context;

    .line 13
    .line 14
    instance-of v1, p1, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    xor-int/lit8 v2, v1, 0x1

    .line 17
    .line 18
    const-string v3, "getSimpleName(...)"

    .line 19
    .line 20
    const-string v4, ""

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    :try_start_1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/m;->h()Landroid/app/Activity;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    sget-object p1, Lcom/cloud/hisavana/sdk/manager/a;->a:Lcom/cloud/hisavana/sdk/manager/a;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/manager/a;->B(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/manager/a;->C(Z)V

    .line 48
    .line 49
    .line 50
    move-object p1, v1

    .line 51
    move v2, v5

    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception p1

    .line 54
    goto/16 :goto_4

    .line 55
    .line 56
    :cond_0
    invoke-static {v4}, Lcom/cloud/hisavana/sdk/manager/a;->B(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/manager/a;->C(Z)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/manager/a;->B(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :goto_0
    sget-object v1, Lcom/cloud/hisavana/sdk/manager/a;->a:Lcom/cloud/hisavana/sdk/manager/a;

    .line 78
    .line 79
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/manager/a$i;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 80
    .line 81
    invoke-static {v1, v3}, Lcom/cloud/hisavana/sdk/manager/a;->y(Lcom/cloud/hisavana/sdk/manager/a;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 82
    .line 83
    .line 84
    new-instance v1, Landroidx/browser/customtabs/d$b;

    .line 85
    .line 86
    invoke-static {}, Lcom/cloud/hisavana/sdk/manager/a;->P()Landroidx/browser/customtabs/j;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-direct {v1, v3}, Landroidx/browser/customtabs/d$b;-><init>(Landroidx/browser/customtabs/j;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    .line 92
    .line 93
    const/4 v3, 0x2

    .line 94
    :try_start_2
    invoke-virtual {v1, v3}, Landroidx/browser/customtabs/d$b;->e(I)Landroidx/browser/customtabs/d$b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    .line 96
    .line 97
    :catchall_0
    :try_start_3
    invoke-virtual {v1, v0}, Landroidx/browser/customtabs/d$b;->f(Z)Landroidx/browser/customtabs/d$b;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Landroidx/browser/customtabs/d$b;->a()Landroidx/browser/customtabs/d;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    const-string v3, "build(...)"

    .line 105
    .line 106
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    if-eqz v2, :cond_2

    .line 110
    .line 111
    iget-object v2, v1, Landroidx/browser/customtabs/d;->a:Landroid/content/Intent;

    .line 112
    .line 113
    const/high16 v3, 0x10000000

    .line 114
    .line 115
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 116
    .line 117
    .line 118
    :cond_2
    iget-object v2, v1, Landroidx/browser/customtabs/d;->a:Landroid/content/Intent;

    .line 119
    .line 120
    const-string v3, "com.android.chrome"

    .line 121
    .line 122
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    .line 124
    .line 125
    iget-object v2, v1, Landroidx/browser/customtabs/d;->a:Landroid/content/Intent;

    .line 126
    .line 127
    const-string v3, "android.support.customtabs.extra.TITLE_VISIBILITY"

    .line 128
    .line 129
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 130
    .line 131
    .line 132
    iget-object v2, v1, Landroidx/browser/customtabs/d;->a:Landroid/content/Intent;

    .line 133
    .line 134
    const-string v3, "androidx.browser.customtabs.extra.ACTIVITY_SIDE_SHEET_ENABLE_MAXIMIZATION"

    .line 135
    .line 136
    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 137
    .line 138
    .line 139
    iget-object v2, v1, Landroidx/browser/customtabs/d;->a:Landroid/content/Intent;

    .line 140
    .line 141
    const-string v3, "org.chromium.chrome.browser.customtabs.EXTRA_DISABLE_DOWNLOAD_BUTTON"

    .line 142
    .line 143
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 144
    .line 145
    .line 146
    iget-object v2, v1, Landroidx/browser/customtabs/d;->a:Landroid/content/Intent;

    .line 147
    .line 148
    const-string v3, "org.chromium.chrome.browser.customtabs.EXTRA_DISABLE_STAR_BUTTON"

    .line 149
    .line 150
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 151
    .line 152
    .line 153
    sget-object v0, Lcom/cloud/hisavana/sdk/manager/a;->a:Lcom/cloud/hisavana/sdk/manager/a;

    .line 154
    .line 155
    const/16 v2, 0x13

    .line 156
    .line 157
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/manager/a;->A(Ljava/lang/Integer;)V

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/manager/a$i;->d:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    .line 165
    .line 166
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/manager/a$i;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 167
    .line 168
    invoke-static {v0, v2}, Lcom/cloud/hisavana/sdk/common/activity/b;->a(Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Lcom/cloud/hisavana/sdk/common/bean/SSPParamSplicedResult;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/SSPParamSplicedResult;->getSplicedURL()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    if-nez v2, :cond_3

    .line 177
    .line 178
    move-object v2, v4

    .line 179
    :cond_3
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/SSPParamSplicedResult;->getOriginalUrl()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    if-nez v0, :cond_4

    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_4
    move-object v4, v0

    .line 187
    :goto_1
    sget-object v0, Lcom/cloud/hisavana/sdk/common/util/b;->a:Lcom/cloud/hisavana/sdk/common/util/b;

    .line 188
    .line 189
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/manager/a$i;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 190
    .line 191
    invoke-virtual {v0, v3}, Lcom/cloud/hisavana/sdk/common/util/b;->g(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    .line 192
    .line 193
    .line 194
    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 195
    const-string v6, "parse(this)"

    .line 196
    .line 197
    if-eqz v3, :cond_6

    .line 198
    .line 199
    :try_start_4
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/manager/a$i;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 200
    .line 201
    const/4 v7, 0x0

    .line 202
    if-eqz v3, :cond_5

    .line 203
    .line 204
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getRealLandUrl()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    goto :goto_2

    .line 209
    :cond_5
    move-object v3, v7

    .line 210
    :goto_2
    invoke-virtual {v0, v3}, Lcom/cloud/hisavana/sdk/common/util/b;->h(Ljava/lang/String;)Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-eqz v0, :cond_6

    .line 215
    .line 216
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/manager/a$i;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 217
    .line 218
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getRealLandUrl()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    const-string v3, "getRealLandUrl(...)"

    .line 226
    .line 227
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1, p1, v0}, Landroidx/browser/customtabs/d;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 238
    .line 239
    .line 240
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/manager/a$i;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 241
    .line 242
    new-instance v0, Lcom/cloud/hisavana/sdk/Y0$d;

    .line 243
    .line 244
    invoke-direct {v0, p1}, Lcom/cloud/hisavana/sdk/Y0$d;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 245
    .line 246
    .line 247
    invoke-static {v2, p1, v7, v0}, Lcom/cloud/hisavana/sdk/Y0;->m(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Lcom/cloud/hisavana/sdk/manager/g$c;)V

    .line 248
    .line 249
    .line 250
    goto :goto_3

    .line 251
    :cond_6
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1, p1, v0}, Landroidx/browser/customtabs/d;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 259
    .line 260
    .line 261
    :goto_3
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/manager/a$i;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 262
    .line 263
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-static {v4, p1, v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->G(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Boolean;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 268
    .line 269
    .line 270
    goto :goto_5

    .line 271
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .line 275
    .line 276
    const-string v1, "launchUrl failed,error: "

    .line 277
    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    const-string v0, "CustomTabsManager"

    .line 293
    .line 294
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .line 296
    .line 297
    const/16 v5, 0x1b5d

    .line 298
    .line 299
    :goto_5
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    return-object p1

    .line 304
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 305
    .line 306
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 307
    .line 308
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    throw p1
.end method
