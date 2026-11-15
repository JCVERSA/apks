.class public final Lcom/transsion/transfer/wifi/util/a;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/transfer/wifi/util/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/transfer/wifi/util/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/transfer/wifi/util/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/transfer/wifi/util/a;->a:Lcom/transsion/transfer/wifi/util/a;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2

    .line 1
    const-string v0, "wifiConfig"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "numAssociation"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 17
    .line 18
    .line 19
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return p1

    .line 21
    :catch_0
    const/4 p1, 0x0

    .line 22
    return p1
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "OPEN"

    .line 2
    .line 3
    if-eqz p1, :cond_4

    .line 4
    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_4

    .line 10
    .line 11
    const-string v1, "WEP"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x2

    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-static {p1, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    if-eqz v5, :cond_1

    .line 21
    .line 22
    :cond_0
    :goto_0
    move-object v0, v1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const-string v1, "PSK"

    .line 25
    .line 26
    invoke-static {p1, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-nez v5, :cond_0

    .line 31
    .line 32
    const-string v5, "WPA"

    .line 33
    .line 34
    invoke-static {p1, v5, v2, v3, v4}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const-string v1, "EAP"

    .line 42
    .line 43
    invoke-static {p1, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_3

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    const-string v1, "OTHER"

    .line 51
    .line 52
    invoke-static {p1, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_4

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_4
    :goto_1
    return-object v0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v1, v0

    .line 10
    :goto_0
    const/16 v2, 0xa

    .line 11
    .line 12
    if-eq v1, v2, :cond_1

    .line 13
    .line 14
    const/16 v2, 0x1a

    .line 15
    .line 16
    if-eq v1, v2, :cond_1

    .line 17
    .line 18
    const/16 v2, 0x3a

    .line 19
    .line 20
    if-ne v1, v2, :cond_2

    .line 21
    .line 22
    :cond_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lkotlin/text/Regex;

    .line 26
    .line 27
    const-string v2, "[0-9A-Fa-f]*"

    .line 28
    .line 29
    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    :cond_2
    return v0
.end method

.method public final d(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2

    .line 1
    const-string v0, "wifiConfig"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "numNoInternetAccessReports"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    :catch_0
    return-void
.end method

.method public final e(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V
    .locals 3

    .line 1
    const-string v0, "wifiManager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "wifiConfig"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/4 v0, 0x0

    .line 20
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 31
    .line 32
    sget-object v2, Lcom/transsion/transfer/wifi/util/a;->a:Lcom/transsion/transfer/wifi/util/a;

    .line 33
    .line 34
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v1}, Lcom/transsion/transfer/wifi/util/a;->a(Landroid/net/wifi/WifiConfiguration;)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-le v1, v0, :cond_0

    .line 42
    .line 43
    move v0, v1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string v1, "numAssociation"

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const/4 v1, 0x1

    .line 56
    invoke-virtual {p1, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    :catch_0
    return-void
.end method

.method public final f(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p2}, Lcom/transsion/transfer/wifi/util/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v1, 0x3

    .line 40
    const/4 v2, 0x2

    .line 41
    const/4 v3, 0x0

    .line 42
    const/4 v4, 0x1

    .line 43
    sparse-switch v0, :sswitch_data_0

    .line 44
    .line 45
    .line 46
    goto/16 :goto_0

    .line 47
    .line 48
    :sswitch_0
    const-string v0, "OPEN"

    .line 49
    .line 50
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    if-eqz p2, :cond_3

    .line 55
    .line 56
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 57
    .line 58
    invoke-virtual {p2, v3}, Ljava/util/BitSet;->set(I)V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_1

    .line 62
    .line 63
    :sswitch_1
    const-string v0, "WEP"

    .line 64
    .line 65
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    if-nez p2, :cond_0

    .line 70
    .line 71
    goto/16 :goto_0

    .line 72
    .line 73
    :cond_0
    iput-boolean v4, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 74
    .line 75
    iput v3, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 76
    .line 77
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 78
    .line 79
    invoke-virtual {p2, v3}, Ljava/util/BitSet;->set(I)V

    .line 80
    .line 81
    .line 82
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 83
    .line 84
    invoke-virtual {p2, v4}, Ljava/util/BitSet;->set(I)V

    .line 85
    .line 86
    .line 87
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 88
    .line 89
    invoke-virtual {p2, v2}, Ljava/util/BitSet;->set(I)V

    .line 90
    .line 91
    .line 92
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 93
    .line 94
    invoke-virtual {p2, v4}, Ljava/util/BitSet;->set(I)V

    .line 95
    .line 96
    .line 97
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 98
    .line 99
    invoke-virtual {p2, v3}, Ljava/util/BitSet;->set(I)V

    .line 100
    .line 101
    .line 102
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 103
    .line 104
    invoke-virtual {p2, v4}, Ljava/util/BitSet;->set(I)V

    .line 105
    .line 106
    .line 107
    iput v2, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 108
    .line 109
    sget-object p2, Lcom/transsion/transfer/wifi/util/a;->a:Lcom/transsion/transfer/wifi/util/a;

    .line 110
    .line 111
    invoke-virtual {p2, p3}, Lcom/transsion/transfer/wifi/util/a;->c(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    if-eqz p2, :cond_1

    .line 116
    .line 117
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 118
    .line 119
    aput-object p3, p2, v3

    .line 120
    .line 121
    goto/16 :goto_1

    .line 122
    .line 123
    :cond_1
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 124
    .line 125
    sget-object v0, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    .line 126
    .line 127
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, p3}, Lcom/transsion/transfer/wifi/util/WifiUtils;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p3

    .line 134
    aput-object p3, p2, v3

    .line 135
    .line 136
    goto/16 :goto_1

    .line 137
    .line 138
    :sswitch_2
    const-string v0, "PSK"

    .line 139
    .line 140
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result p2

    .line 144
    if-nez p2, :cond_2

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_2
    iput-boolean v4, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 148
    .line 149
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 150
    .line 151
    invoke-virtual {p2, v3}, Ljava/util/BitSet;->set(I)V

    .line 152
    .line 153
    .line 154
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 155
    .line 156
    invoke-virtual {p2, v4}, Ljava/util/BitSet;->set(I)V

    .line 157
    .line 158
    .line 159
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 160
    .line 161
    invoke-virtual {p2, v3}, Ljava/util/BitSet;->set(I)V

    .line 162
    .line 163
    .line 164
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 165
    .line 166
    invoke-virtual {p2, v4}, Ljava/util/BitSet;->set(I)V

    .line 167
    .line 168
    .line 169
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 170
    .line 171
    invoke-virtual {p2, v2}, Ljava/util/BitSet;->set(I)V

    .line 172
    .line 173
    .line 174
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 175
    .line 176
    invoke-virtual {p2, v4}, Ljava/util/BitSet;->set(I)V

    .line 177
    .line 178
    .line 179
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 180
    .line 181
    invoke-virtual {p2, v3}, Ljava/util/BitSet;->set(I)V

    .line 182
    .line 183
    .line 184
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 185
    .line 186
    invoke-virtual {p2, v4}, Ljava/util/BitSet;->set(I)V

    .line 187
    .line 188
    .line 189
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 190
    .line 191
    invoke-virtual {p2, v1}, Ljava/util/BitSet;->set(I)V

    .line 192
    .line 193
    .line 194
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 195
    .line 196
    invoke-virtual {p2, v2}, Ljava/util/BitSet;->set(I)V

    .line 197
    .line 198
    .line 199
    sget-object p2, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    .line 200
    .line 201
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2, p3}, Lcom/transsion/transfer/wifi/util/WifiUtils;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    iput-object p2, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 209
    .line 210
    iput v2, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 211
    .line 212
    goto :goto_1

    .line 213
    :sswitch_3
    const-string v0, "EAP"

    .line 214
    .line 215
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result p2

    .line 219
    if-nez p2, :cond_4

    .line 220
    .line 221
    :cond_3
    :goto_0
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 222
    .line 223
    new-array p2, v4, [Ljava/lang/Object;

    .line 224
    .line 225
    aput-object p3, p2, v3

    .line 226
    .line 227
    invoke-static {p2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object p2

    .line 231
    const-string p3, "\"%s\""

    .line 232
    .line 233
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p2

    .line 237
    const-string p3, "format(...)"

    .line 238
    .line 239
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    iput-object p2, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 243
    .line 244
    goto :goto_1

    .line 245
    :cond_4
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 246
    .line 247
    invoke-virtual {p2, v4}, Ljava/util/BitSet;->set(I)V

    .line 248
    .line 249
    .line 250
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 251
    .line 252
    invoke-virtual {p2, v3}, Ljava/util/BitSet;->set(I)V

    .line 253
    .line 254
    .line 255
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 256
    .line 257
    invoke-virtual {p2, v3}, Ljava/util/BitSet;->set(I)V

    .line 258
    .line 259
    .line 260
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 261
    .line 262
    invoke-virtual {p2, v4}, Ljava/util/BitSet;->set(I)V

    .line 263
    .line 264
    .line 265
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 266
    .line 267
    invoke-virtual {p2, v2}, Ljava/util/BitSet;->set(I)V

    .line 268
    .line 269
    .line 270
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 271
    .line 272
    invoke-virtual {p2, v1}, Ljava/util/BitSet;->set(I)V

    .line 273
    .line 274
    .line 275
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 276
    .line 277
    invoke-virtual {p2, v4}, Ljava/util/BitSet;->set(I)V

    .line 278
    .line 279
    .line 280
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 281
    .line 282
    invoke-virtual {p2, v2}, Ljava/util/BitSet;->set(I)V

    .line 283
    .line 284
    .line 285
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 286
    .line 287
    invoke-virtual {p2, v2}, Ljava/util/BitSet;->set(I)V

    .line 288
    .line 289
    .line 290
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 291
    .line 292
    invoke-virtual {p2, v1}, Ljava/util/BitSet;->set(I)V

    .line 293
    .line 294
    .line 295
    sget-object p2, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    .line 296
    .line 297
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p2, p3}, Lcom/transsion/transfer/wifi/util/WifiUtils;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object p2

    .line 304
    iput-object p2, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 305
    .line 306
    :goto_1
    iput v2, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 307
    .line 308
    return-void

    .line 309
    :sswitch_data_0
    .sparse-switch
        0x10b34 -> :sswitch_3
        0x136a8 -> :sswitch_2
        0x14f42 -> :sswitch_1
        0x251e4a -> :sswitch_0
    .end sparse-switch
.end method

.method public final g(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)I
    .locals 1

    .line 1
    const-string v0, "wifiManager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "config"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/transsion/transfer/wifi/util/a;->a:Lcom/transsion/transfer/wifi/util/a;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Lcom/transsion/transfer/wifi/util/a;->e(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Lcom/transsion/transfer/wifi/util/a;->d(Landroid/net/wifi/WifiConfiguration;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1
.end method
