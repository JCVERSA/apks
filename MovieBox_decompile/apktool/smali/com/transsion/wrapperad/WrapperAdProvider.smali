.class public final Lcom/transsion/wrapperad/WrapperAdProvider;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lvw/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/wrapperad/WrapperAdProvider$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/wrapperad/WrapperAdProvider$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/wrapperad/WrapperAdProvider$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/wrapperad/WrapperAdProvider$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/wrapperad/WrapperAdProvider;->a:Lcom/transsion/wrapperad/WrapperAdProvider$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p1, Lcom/transsion/wrapperad/WrapperAdProvider$initAd$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/transsion/wrapperad/WrapperAdProvider$initAd$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/wrapperad/WrapperAdProvider$initAd$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/transsion/wrapperad/WrapperAdProvider$initAd$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/wrapperad/WrapperAdProvider$initAd$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/transsion/wrapperad/WrapperAdProvider$initAd$1;-><init>(Lcom/transsion/wrapperad/WrapperAdProvider;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/transsion/wrapperad/WrapperAdProvider$initAd$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/wrapperad/WrapperAdProvider$initAd$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x3

    .line 35
    const/4 v5, 0x2

    .line 36
    const/4 v6, 0x1

    .line 37
    if-eqz v2, :cond_4

    .line 38
    .line 39
    if-eq v2, v6, :cond_3

    .line 40
    .line 41
    if-eq v2, v5, :cond_2

    .line 42
    .line 43
    if-ne v2, v4, :cond_1

    .line 44
    .line 45
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_3

    .line 49
    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    new-instance v2, Lcom/transsion/wrapperad/WrapperAdProvider$initAd$2;

    .line 74
    .line 75
    invoke-direct {v2, v3}, Lcom/transsion/wrapperad/WrapperAdProvider$initAd$2;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 76
    .line 77
    .line 78
    iput v6, v0, Lcom/transsion/wrapperad/WrapperAdProvider$initAd$1;->label:I

    .line 79
    .line 80
    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-ne p1, v1, :cond_5

    .line 85
    .line 86
    return-object v1

    .line 87
    :cond_5
    :goto_1
    sget-object p1, Lcom/transsion/ad/MBAd;->a:Lcom/transsion/ad/MBAd;

    .line 88
    .line 89
    new-instance v2, Lcom/transsion/ad/MBAd$b;

    .line 90
    .line 91
    invoke-direct {v2}, Lcom/transsion/ad/MBAd$b;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v7, "2301069UF9YjuO"

    .line 95
    .line 96
    invoke-virtual {v2, v7}, Lcom/transsion/ad/MBAd$b;->f(Ljava/lang/String;)Lcom/transsion/ad/MBAd$b;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    const/4 v7, 0x0

    .line 101
    invoke-virtual {v2, v7}, Lcom/transsion/ad/MBAd$b;->c(Z)Lcom/transsion/ad/MBAd$b;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v2, v7}, Lcom/transsion/ad/MBAd$b;->h(Z)Lcom/transsion/ad/MBAd$b;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    sget-object v7, Lcom/transsion/ad/strategy/AppManager$AppEnum;->APP_MOVIE_BOX:Lcom/transsion/ad/strategy/AppManager$AppEnum;

    .line 110
    .line 111
    invoke-virtual {v2, v7}, Lcom/transsion/ad/MBAd$b;->d(Lcom/transsion/ad/strategy/AppManager$AppEnum;)Lcom/transsion/ad/MBAd$b;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    const-string v7, "HotStartScene"

    .line 116
    .line 117
    invoke-virtual {v2, v7}, Lcom/transsion/ad/MBAd$b;->g(Ljava/lang/String;)Lcom/transsion/ad/MBAd$b;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    const-string v7, "/wefeed-mobile-bff/ad/config"

    .line 122
    .line 123
    invoke-virtual {v2, v7}, Lcom/transsion/ad/MBAd$b;->b(Ljava/lang/String;)Lcom/transsion/ad/MBAd$b;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v2, v6}, Lcom/transsion/ad/MBAd$b;->i(Z)Lcom/transsion/ad/MBAd$b;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {v2, v6}, Lcom/transsion/ad/MBAd$b;->j(Z)Lcom/transsion/ad/MBAd$b;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v2, v6}, Lcom/transsion/ad/MBAd$b;->k(Z)Lcom/transsion/ad/MBAd$b;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {v2, v6}, Lcom/transsion/ad/MBAd$b;->l(Z)Lcom/transsion/ad/MBAd$b;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    new-instance v6, Lcom/transsion/wrapperad/WrapperAdProvider$b;

    .line 144
    .line 145
    invoke-direct {v6}, Lcom/transsion/wrapperad/WrapperAdProvider$b;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2, v6}, Lcom/transsion/ad/MBAd$b;->e(Lrh/a;)Lcom/transsion/ad/MBAd$b;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {v2}, Lcom/transsion/ad/MBAd$b;->a()Lcom/transsion/ad/MBAd$a;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    iput v5, v0, Lcom/transsion/wrapperad/WrapperAdProvider$initAd$1;->label:I

    .line 157
    .line 158
    invoke-virtual {p1, v2, v0}, Lcom/transsion/ad/MBAd;->d(Lcom/transsion/ad/MBAd$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    if-ne p1, v1, :cond_6

    .line 163
    .line 164
    return-object v1

    .line 165
    :cond_6
    :goto_2
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    new-instance v2, Lcom/transsion/wrapperad/WrapperAdProvider$initAd$4;

    .line 170
    .line 171
    invoke-direct {v2, v3}, Lcom/transsion/wrapperad/WrapperAdProvider$initAd$4;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 172
    .line 173
    .line 174
    iput v4, v0, Lcom/transsion/wrapperad/WrapperAdProvider$initAd$1;->label:I

    .line 175
    .line 176
    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    if-ne p1, v1, :cond_7

    .line 181
    .line 182
    return-object v1

    .line 183
    :cond_7
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 184
    .line 185
    return-object p1
.end method

.method public b(Ljava/lang/String;Lvw/a;)V
    .locals 2

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object p1, Lcom/transsion/wrapperadapi/H5AdStateEnum;->MB_H5_AD_STATE_ON_FAIL:Lcom/transsion/wrapperadapi/H5AdStateEnum;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/transsion/wrapperadapi/H5AdStateEnum;->getValue()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "adConfig is empty"

    .line 19
    .line 20
    invoke-interface {p2, p1, v0}, Lvw/a;->onAdStateCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 25
    .line 26
    new-instance v0, Lorg/json/JSONObject;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    const-string p1, "{}"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_2

    .line 35
    :cond_1
    :goto_0
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string p1, "sceneId"

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    sget-object p1, Lcom/transsion/wrapperadapi/H5AdStateEnum;->MB_H5_AD_STATE_ON_FAIL:Lcom/transsion/wrapperadapi/H5AdStateEnum;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/transsion/wrapperadapi/H5AdStateEnum;->getValue()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-string v0, "sceneId is empty"

    .line 57
    .line 58
    invoke-interface {p2, p1, v0}, Lvw/a;->onAdStateCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    const-string v1, "adType"

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    const/4 v1, 0x3

    .line 69
    if-eq v0, v1, :cond_4

    .line 70
    .line 71
    const/4 v1, 0x4

    .line 72
    if-eq v0, v1, :cond_3

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    sget-object v0, Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider;->a:Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider;

    .line 76
    .line 77
    invoke-virtual {v0, p1, p2}, Lcom/transsion/wrapperad/h5/H5InterstitialAdProvider;->f(Ljava/lang/String;Lvw/a;)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_4
    sget-object v0, Lcom/transsion/wrapperad/h5/H5VideoAdProvider;->a:Lcom/transsion/wrapperad/h5/H5VideoAdProvider;

    .line 82
    .line 83
    invoke-virtual {v0, p1, p2}, Lcom/transsion/wrapperad/h5/H5VideoAdProvider;->h(Ljava/lang/String;Lvw/a;)V

    .line 84
    .line 85
    .line 86
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 87
    .line 88
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    goto :goto_3

    .line 93
    :goto_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 94
    .line 95
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    :goto_3
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    if-nez p1, :cond_5

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_5
    sget-object v0, Lcom/transsion/wrapperadapi/H5AdStateEnum;->MB_H5_AD_STATE_ON_FAIL:Lcom/transsion/wrapperadapi/H5AdStateEnum;

    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/transsion/wrapperadapi/H5AdStateEnum;->getValue()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-interface {p2, v0, p1}, Lvw/a;->onAdStateCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :goto_4
    return-void
.end method

.method public c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/ad/MBAd;->a:Lcom/transsion/ad/MBAd;

    .line 2
    .line 3
    const-string v1, "/wefeed-mobile-bff/ad/config"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/transsion/ad/MBAd;->e(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-ne p1, v0, :cond_0

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p1
.end method
