.class public final Lcom/cloud/hisavana/sdk/F0;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/F0;->a:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/F0;->a:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/iab/omid/library/hisavana/adsession/b;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/iab/omid/library/hisavana/adsession/b;->c()V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "OmSdk"

    .line 37
    .line 38
    const-string v3, "omid session finish"

    .line 39
    .line 40
    invoke-virtual {v1, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/F0;->a:Ljava/util/Map;

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/F0;->a:Ljava/util/Map;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getUuid()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v2, v1

    .line 12
    :goto_0
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    const-string v0, "OmSdk"

    .line 20
    .line 21
    if-eqz p1, :cond_8

    .line 22
    .line 23
    if-nez p2, :cond_2

    .line 24
    .line 25
    goto/16 :goto_5

    .line 26
    .line 27
    :cond_2
    sget-object v2, Lcom/cloud/hisavana/sdk/g0;->a:Lcom/cloud/hisavana/sdk/g0$a;

    .line 28
    .line 29
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    sget-object v4, Lcom/iab/omid/library/hisavana/adsession/CreativeType;->NATIVE_DISPLAY:Lcom/iab/omid/library/hisavana/adsession/CreativeType;

    .line 34
    .line 35
    invoke-virtual {v2, v3, v4, p1}, Lcom/cloud/hisavana/sdk/g0$a;->b(Landroid/content/Context;Lcom/iab/omid/library/hisavana/adsession/CreativeType;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Lcom/iab/omid/library/hisavana/adsession/b;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_6

    .line 40
    .line 41
    :try_start_0
    invoke-virtual {v2, p2}, Lcom/iab/omid/library/hisavana/adsession/b;->d(Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    if-eqz p3, :cond_5

    .line 45
    .line 46
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-eqz p2, :cond_3

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_3
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->f0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_4

    .line 66
    .line 67
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Landroid/view/View;

    .line 72
    .line 73
    sget-object v4, Lcom/iab/omid/library/hisavana/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/hisavana/adsession/FriendlyObstructionPurpose;

    .line 74
    .line 75
    invoke-virtual {v2, v3, v4, v1}, Lcom/iab/omid/library/hisavana/adsession/b;->a(Landroid/view/View;Lcom/iab/omid/library/hisavana/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catch_0
    move-exception p1

    .line 80
    goto :goto_3

    .line 81
    :cond_4
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 82
    .line 83
    .line 84
    :cond_5
    :goto_2
    invoke-virtual {v2}, Lcom/iab/omid/library/hisavana/adsession/b;->e()V

    .line 85
    .line 86
    .line 87
    invoke-static {v2}, Lcom/iab/omid/library/hisavana/adsession/a;->a(Lcom/iab/omid/library/hisavana/adsession/b;)Lcom/iab/omid/library/hisavana/adsession/a;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-virtual {p2}, Lcom/iab/omid/library/hisavana/adsession/a;->c()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Lcom/iab/omid/library/hisavana/adsession/a;->b()V

    .line 95
    .line 96
    .line 97
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    const-string v1, "omid adEvents impressionOccurred"

    .line 102
    .line 103
    invoke-virtual {p2, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/F0;->a:Ljava/util/Map;

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getUuid()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    const-string v0, "getUuid(...)"

    .line 113
    .line 114
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    goto :goto_4

    .line 122
    :goto_3
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v1, "setup omid native failed : "

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p2, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 151
    .line 152
    :goto_4
    if-nez p1, :cond_7

    .line 153
    .line 154
    :cond_6
    new-instance p1, Lcom/cloud/hisavana/sdk/F0$a;

    .line 155
    .line 156
    invoke-direct {p1, p3}, Lcom/cloud/hisavana/sdk/F0$a;-><init>(Ljava/util/List;)V

    .line 157
    .line 158
    .line 159
    :cond_7
    return-void

    .line 160
    :cond_8
    :goto_5
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    const-string p2, "omid adSession == null"

    .line 165
    .line 166
    invoke-virtual {p1, v0, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    if-eqz p3, :cond_9

    .line 170
    .line 171
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 172
    .line 173
    .line 174
    :cond_9
    return-void
.end method
