.class public final Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity$a;
.super Loh/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;


# direct methods
.method constructor <init>(Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity$a;->d:Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Loh/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Loh/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity$a;->d:Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorMessage()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "onBiddingError() --> p0 = "

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const/16 v5, 0xc

    .line 32
    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v1, 0x6

    .line 35
    const/4 v3, 0x0

    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-static/range {v0 .. v6}, Lxh/b$a;->c(Lxh/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public k(Ljava/util/List;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Loh/a;->k(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity$a;->d:Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;

    .line 7
    .line 8
    const/4 v8, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v2, v8

    .line 21
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v4, "\u83b7\u53d6\u5230\u5e7f\u544a "

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, " \u6761\u5e7f\u544a\u6570\u636e\uff0c\u5f00\u59cb\u6e32\u67d3\u5e7f\u544a\u89c6\u56fe..."

    .line 35
    .line 36
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const/16 v6, 0xd

    .line 44
    .line 45
    const/4 v7, 0x0

    .line 46
    const/4 v2, 0x0

    .line 47
    const/4 v4, 0x0

    .line 48
    const/4 v5, 0x0

    .line 49
    invoke-static/range {v1 .. v7}, Lxh/b$a;->c(Lxh/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    if-eqz p1, :cond_b

    .line 53
    .line 54
    move-object/from16 v1, p1

    .line 55
    .line 56
    check-cast v1, Ljava/lang/Iterable;

    .line 57
    .line 58
    iget-object v2, v0, Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity$a;->d:Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;

    .line 59
    .line 60
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const/4 v3, 0x0

    .line 65
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_b

    .line 70
    .line 71
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    add-int/lit8 v5, v3, 0x1

    .line 76
    .line 77
    if-gez v3, :cond_1

    .line 78
    .line 79
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 80
    .line 81
    .line 82
    :cond_1
    move-object v13, v4

    .line 83
    check-cast v13, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 84
    .line 85
    const-string v4, "nativeManager"

    .line 86
    .line 87
    const-string v6, "binding"

    .line 88
    .line 89
    if-eqz v3, :cond_8

    .line 90
    .line 91
    const/4 v7, 0x1

    .line 92
    if-eq v3, v7, :cond_5

    .line 93
    .line 94
    const/4 v7, 0x2

    .line 95
    if-eq v3, v7, :cond_2

    .line 96
    .line 97
    goto/16 :goto_5

    .line 98
    .line 99
    :cond_2
    invoke-static {v2}, Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;->P(Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;)Lsh/q;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    if-nez v3, :cond_3

    .line 104
    .line 105
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    move-object v3, v8

    .line 109
    :cond_3
    iget-object v9, v3, Lsh/q;->e:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 110
    .line 111
    invoke-static {v2}, Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;->R(Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;)Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    if-nez v3, :cond_4

    .line 116
    .line 117
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    move-object v10, v8

    .line 121
    goto :goto_2

    .line 122
    :cond_4
    move-object v10, v3

    .line 123
    :goto_2
    new-instance v12, Lcom/transsion/ad/test/ad_example/w;

    .line 124
    .line 125
    invoke-direct {v12, v2}, Lcom/transsion/ad/test/ad_example/w;-><init>(Landroid/content/Context;)V

    .line 126
    .line 127
    .line 128
    const/4 v14, 0x2

    .line 129
    const/4 v15, 0x0

    .line 130
    const/4 v11, 0x0

    .line 131
    invoke-static/range {v9 .. v15}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;->bindSspNativeView$default(Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/u;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;ILjava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    goto :goto_5

    .line 135
    :cond_5
    invoke-static {v2}, Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;->P(Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;)Lsh/q;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    if-nez v3, :cond_6

    .line 140
    .line 141
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    move-object v3, v8

    .line 145
    :cond_6
    iget-object v9, v3, Lsh/q;->d:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 146
    .line 147
    invoke-static {v2}, Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;->R(Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;)Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    if-nez v3, :cond_7

    .line 152
    .line 153
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    move-object v10, v8

    .line 157
    goto :goto_3

    .line 158
    :cond_7
    move-object v10, v3

    .line 159
    :goto_3
    new-instance v12, Lcom/transsion/ad/test/ad_example/w;

    .line 160
    .line 161
    invoke-direct {v12, v2}, Lcom/transsion/ad/test/ad_example/w;-><init>(Landroid/content/Context;)V

    .line 162
    .line 163
    .line 164
    const/4 v14, 0x2

    .line 165
    const/4 v15, 0x0

    .line 166
    const/4 v11, 0x0

    .line 167
    invoke-static/range {v9 .. v15}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;->bindSspNativeView$default(Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/u;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;ILjava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    goto :goto_5

    .line 171
    :cond_8
    invoke-static {v2}, Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;->P(Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;)Lsh/q;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    if-nez v3, :cond_9

    .line 176
    .line 177
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    move-object v3, v8

    .line 181
    :cond_9
    iget-object v9, v3, Lsh/q;->c:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 182
    .line 183
    invoke-static {v2}, Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;->R(Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;)Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    if-nez v3, :cond_a

    .line 188
    .line 189
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    move-object v10, v8

    .line 193
    goto :goto_4

    .line 194
    :cond_a
    move-object v10, v3

    .line 195
    :goto_4
    new-instance v12, Lcom/transsion/ad/test/ad_example/w;

    .line 196
    .line 197
    invoke-direct {v12, v2}, Lcom/transsion/ad/test/ad_example/w;-><init>(Landroid/content/Context;)V

    .line 198
    .line 199
    .line 200
    const/4 v14, 0x2

    .line 201
    const/4 v15, 0x0

    .line 202
    const/4 v11, 0x0

    .line 203
    invoke-static/range {v9 .. v15}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;->bindSspNativeView$default(Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/u;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;ILjava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    :goto_5
    move v3, v5

    .line 207
    goto/16 :goto_1

    .line 208
    .line 209
    :cond_b
    return-void
.end method
