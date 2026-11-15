.class public Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private allowClassicFlow:Ljava/lang/Boolean;

.field private allowUnauthenticatedIdentities:Ljava/lang/Boolean;

.field private cognitoIdentityProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/cognitoidentity/model/CognitoIdentityProvider;",
            ">;"
        }
    .end annotation
.end field

.field private developerProviderName:Ljava/lang/String;

.field private identityPoolId:Ljava/lang/String;

.field private identityPoolName:Ljava/lang/String;

.field private identityPoolTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private openIdConnectProviderARNs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private samlProviderARNs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private supportedLoginProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public addIdentityPoolTagsEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->identityPoolTags:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->identityPoolTags:Ljava/util/Map;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->identityPoolTags:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->identityPoolTags:Ljava/util/Map;

    .line 21
    .line 22
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v1, "Duplicated keys ("

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p1, ") are provided."

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p2
.end method

.method public addSupportedLoginProvidersEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->supportedLoginProviders:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->supportedLoginProviders:Ljava/util/Map;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->supportedLoginProviders:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->supportedLoginProviders:Ljava/util/Map;

    .line 21
    .line 22
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v1, "Duplicated keys ("

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p1, ") are provided."

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p2
.end method

.method public clearIdentityPoolTagsEntries()Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->identityPoolTags:Ljava/util/Map;

    .line 3
    .line 4
    return-object p0
.end method

.method public clearSupportedLoginProvidersEntries()Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->supportedLoginProviders:Ljava/util/Map;

    .line 3
    .line 4
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;

    .line 10
    .line 11
    if-nez v2, :cond_2

    .line 12
    .line 13
    return v1

    .line 14
    :cond_2
    check-cast p1, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-nez v2, :cond_3

    .line 21
    .line 22
    move v2, v0

    .line 23
    goto :goto_0

    .line 24
    :cond_3
    move v2, v1

    .line 25
    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    if-nez v3, :cond_4

    .line 30
    .line 31
    move v3, v0

    .line 32
    goto :goto_1

    .line 33
    :cond_4
    move v3, v1

    .line 34
    :goto_1
    xor-int/2addr v2, v3

    .line 35
    if-eqz v2, :cond_5

    .line 36
    .line 37
    return v1

    .line 38
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolId()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-eqz v2, :cond_6

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolId()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_6

    .line 57
    .line 58
    return v1

    .line 59
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    if-nez v2, :cond_7

    .line 64
    .line 65
    move v2, v0

    .line 66
    goto :goto_2

    .line 67
    :cond_7
    move v2, v1

    .line 68
    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    if-nez v3, :cond_8

    .line 73
    .line 74
    move v3, v0

    .line 75
    goto :goto_3

    .line 76
    :cond_8
    move v3, v1

    .line 77
    :goto_3
    xor-int/2addr v2, v3

    .line 78
    if-eqz v2, :cond_9

    .line 79
    .line 80
    return v1

    .line 81
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    if-eqz v2, :cond_a

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolName()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-nez v2, :cond_a

    .line 100
    .line 101
    return v1

    .line 102
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getAllowUnauthenticatedIdentities()Ljava/lang/Boolean;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    if-nez v2, :cond_b

    .line 107
    .line 108
    move v2, v0

    .line 109
    goto :goto_4

    .line 110
    :cond_b
    move v2, v1

    .line 111
    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getAllowUnauthenticatedIdentities()Ljava/lang/Boolean;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    if-nez v3, :cond_c

    .line 116
    .line 117
    move v3, v0

    .line 118
    goto :goto_5

    .line 119
    :cond_c
    move v3, v1

    .line 120
    :goto_5
    xor-int/2addr v2, v3

    .line 121
    if-eqz v2, :cond_d

    .line 122
    .line 123
    return v1

    .line 124
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getAllowUnauthenticatedIdentities()Ljava/lang/Boolean;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    if-eqz v2, :cond_e

    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getAllowUnauthenticatedIdentities()Ljava/lang/Boolean;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getAllowUnauthenticatedIdentities()Ljava/lang/Boolean;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-nez v2, :cond_e

    .line 143
    .line 144
    return v1

    .line 145
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getAllowClassicFlow()Ljava/lang/Boolean;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    if-nez v2, :cond_f

    .line 150
    .line 151
    move v2, v0

    .line 152
    goto :goto_6

    .line 153
    :cond_f
    move v2, v1

    .line 154
    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getAllowClassicFlow()Ljava/lang/Boolean;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    if-nez v3, :cond_10

    .line 159
    .line 160
    move v3, v0

    .line 161
    goto :goto_7

    .line 162
    :cond_10
    move v3, v1

    .line 163
    :goto_7
    xor-int/2addr v2, v3

    .line 164
    if-eqz v2, :cond_11

    .line 165
    .line 166
    return v1

    .line 167
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getAllowClassicFlow()Ljava/lang/Boolean;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    if-eqz v2, :cond_12

    .line 172
    .line 173
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getAllowClassicFlow()Ljava/lang/Boolean;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getAllowClassicFlow()Ljava/lang/Boolean;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-nez v2, :cond_12

    .line 186
    .line 187
    return v1

    .line 188
    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getSupportedLoginProviders()Ljava/util/Map;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    if-nez v2, :cond_13

    .line 193
    .line 194
    move v2, v0

    .line 195
    goto :goto_8

    .line 196
    :cond_13
    move v2, v1

    .line 197
    :goto_8
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getSupportedLoginProviders()Ljava/util/Map;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    if-nez v3, :cond_14

    .line 202
    .line 203
    move v3, v0

    .line 204
    goto :goto_9

    .line 205
    :cond_14
    move v3, v1

    .line 206
    :goto_9
    xor-int/2addr v2, v3

    .line 207
    if-eqz v2, :cond_15

    .line 208
    .line 209
    return v1

    .line 210
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getSupportedLoginProviders()Ljava/util/Map;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    if-eqz v2, :cond_16

    .line 215
    .line 216
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getSupportedLoginProviders()Ljava/util/Map;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getSupportedLoginProviders()Ljava/util/Map;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-nez v2, :cond_16

    .line 229
    .line 230
    return v1

    .line 231
    :cond_16
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getDeveloperProviderName()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    if-nez v2, :cond_17

    .line 236
    .line 237
    move v2, v0

    .line 238
    goto :goto_a

    .line 239
    :cond_17
    move v2, v1

    .line 240
    :goto_a
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getDeveloperProviderName()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    if-nez v3, :cond_18

    .line 245
    .line 246
    move v3, v0

    .line 247
    goto :goto_b

    .line 248
    :cond_18
    move v3, v1

    .line 249
    :goto_b
    xor-int/2addr v2, v3

    .line 250
    if-eqz v2, :cond_19

    .line 251
    .line 252
    return v1

    .line 253
    :cond_19
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getDeveloperProviderName()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    if-eqz v2, :cond_1a

    .line 258
    .line 259
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getDeveloperProviderName()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getDeveloperProviderName()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    if-nez v2, :cond_1a

    .line 272
    .line 273
    return v1

    .line 274
    :cond_1a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getOpenIdConnectProviderARNs()Ljava/util/List;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    if-nez v2, :cond_1b

    .line 279
    .line 280
    move v2, v0

    .line 281
    goto :goto_c

    .line 282
    :cond_1b
    move v2, v1

    .line 283
    :goto_c
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getOpenIdConnectProviderARNs()Ljava/util/List;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    if-nez v3, :cond_1c

    .line 288
    .line 289
    move v3, v0

    .line 290
    goto :goto_d

    .line 291
    :cond_1c
    move v3, v1

    .line 292
    :goto_d
    xor-int/2addr v2, v3

    .line 293
    if-eqz v2, :cond_1d

    .line 294
    .line 295
    return v1

    .line 296
    :cond_1d
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getOpenIdConnectProviderARNs()Ljava/util/List;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    if-eqz v2, :cond_1e

    .line 301
    .line 302
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getOpenIdConnectProviderARNs()Ljava/util/List;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getOpenIdConnectProviderARNs()Ljava/util/List;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v2

    .line 314
    if-nez v2, :cond_1e

    .line 315
    .line 316
    return v1

    .line 317
    :cond_1e
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getCognitoIdentityProviders()Ljava/util/List;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    if-nez v2, :cond_1f

    .line 322
    .line 323
    move v2, v0

    .line 324
    goto :goto_e

    .line 325
    :cond_1f
    move v2, v1

    .line 326
    :goto_e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getCognitoIdentityProviders()Ljava/util/List;

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    if-nez v3, :cond_20

    .line 331
    .line 332
    move v3, v0

    .line 333
    goto :goto_f

    .line 334
    :cond_20
    move v3, v1

    .line 335
    :goto_f
    xor-int/2addr v2, v3

    .line 336
    if-eqz v2, :cond_21

    .line 337
    .line 338
    return v1

    .line 339
    :cond_21
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getCognitoIdentityProviders()Ljava/util/List;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    if-eqz v2, :cond_22

    .line 344
    .line 345
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getCognitoIdentityProviders()Ljava/util/List;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getCognitoIdentityProviders()Ljava/util/List;

    .line 350
    .line 351
    .line 352
    move-result-object v3

    .line 353
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    if-nez v2, :cond_22

    .line 358
    .line 359
    return v1

    .line 360
    :cond_22
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getSamlProviderARNs()Ljava/util/List;

    .line 361
    .line 362
    .line 363
    move-result-object v2

    .line 364
    if-nez v2, :cond_23

    .line 365
    .line 366
    move v2, v0

    .line 367
    goto :goto_10

    .line 368
    :cond_23
    move v2, v1

    .line 369
    :goto_10
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getSamlProviderARNs()Ljava/util/List;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    if-nez v3, :cond_24

    .line 374
    .line 375
    move v3, v0

    .line 376
    goto :goto_11

    .line 377
    :cond_24
    move v3, v1

    .line 378
    :goto_11
    xor-int/2addr v2, v3

    .line 379
    if-eqz v2, :cond_25

    .line 380
    .line 381
    return v1

    .line 382
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getSamlProviderARNs()Ljava/util/List;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    if-eqz v2, :cond_26

    .line 387
    .line 388
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getSamlProviderARNs()Ljava/util/List;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getSamlProviderARNs()Ljava/util/List;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    move-result v2

    .line 400
    if-nez v2, :cond_26

    .line 401
    .line 402
    return v1

    .line 403
    :cond_26
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolTags()Ljava/util/Map;

    .line 404
    .line 405
    .line 406
    move-result-object v2

    .line 407
    if-nez v2, :cond_27

    .line 408
    .line 409
    move v2, v0

    .line 410
    goto :goto_12

    .line 411
    :cond_27
    move v2, v1

    .line 412
    :goto_12
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolTags()Ljava/util/Map;

    .line 413
    .line 414
    .line 415
    move-result-object v3

    .line 416
    if-nez v3, :cond_28

    .line 417
    .line 418
    move v3, v0

    .line 419
    goto :goto_13

    .line 420
    :cond_28
    move v3, v1

    .line 421
    :goto_13
    xor-int/2addr v2, v3

    .line 422
    if-eqz v2, :cond_29

    .line 423
    .line 424
    return v1

    .line 425
    :cond_29
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolTags()Ljava/util/Map;

    .line 426
    .line 427
    .line 428
    move-result-object v2

    .line 429
    if-eqz v2, :cond_2a

    .line 430
    .line 431
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolTags()Ljava/util/Map;

    .line 432
    .line 433
    .line 434
    move-result-object p1

    .line 435
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolTags()Ljava/util/Map;

    .line 436
    .line 437
    .line 438
    move-result-object v2

    .line 439
    invoke-interface {p1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 440
    .line 441
    .line 442
    move-result p1

    .line 443
    if-nez p1, :cond_2a

    .line 444
    .line 445
    return v1

    .line 446
    :cond_2a
    return v0
.end method

.method public getAllowClassicFlow()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->allowClassicFlow:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAllowUnauthenticatedIdentities()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->allowUnauthenticatedIdentities:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCognitoIdentityProviders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/cognitoidentity/model/CognitoIdentityProvider;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->cognitoIdentityProviders:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDeveloperProviderName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->developerProviderName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIdentityPoolId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->identityPoolId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIdentityPoolName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->identityPoolName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIdentityPoolTags()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->identityPoolTags:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOpenIdConnectProviderARNs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->openIdConnectProviderARNs:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSamlProviderARNs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->samlProviderARNs:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSupportedLoginProviders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->supportedLoginProviders:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolId()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    :goto_0
    const/16 v2, 0x1f

    .line 19
    .line 20
    add-int/2addr v0, v2

    .line 21
    mul-int/2addr v0, v2

    .line 22
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    move v3, v1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    :goto_1
    add-int/2addr v0, v3

    .line 39
    mul-int/2addr v0, v2

    .line 40
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getAllowUnauthenticatedIdentities()Ljava/lang/Boolean;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    if-nez v3, :cond_2

    .line 45
    .line 46
    move v3, v1

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getAllowUnauthenticatedIdentities()Ljava/lang/Boolean;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    :goto_2
    add-int/2addr v0, v3

    .line 57
    mul-int/2addr v0, v2

    .line 58
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getAllowClassicFlow()Ljava/lang/Boolean;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    if-nez v3, :cond_3

    .line 63
    .line 64
    move v3, v1

    .line 65
    goto :goto_3

    .line 66
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getAllowClassicFlow()Ljava/lang/Boolean;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    :goto_3
    add-int/2addr v0, v3

    .line 75
    mul-int/2addr v0, v2

    .line 76
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getSupportedLoginProviders()Ljava/util/Map;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    if-nez v3, :cond_4

    .line 81
    .line 82
    move v3, v1

    .line 83
    goto :goto_4

    .line 84
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getSupportedLoginProviders()Ljava/util/Map;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    :goto_4
    add-int/2addr v0, v3

    .line 93
    mul-int/2addr v0, v2

    .line 94
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getDeveloperProviderName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    if-nez v3, :cond_5

    .line 99
    .line 100
    move v3, v1

    .line 101
    goto :goto_5

    .line 102
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getDeveloperProviderName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    :goto_5
    add-int/2addr v0, v3

    .line 111
    mul-int/2addr v0, v2

    .line 112
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getOpenIdConnectProviderARNs()Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    if-nez v3, :cond_6

    .line 117
    .line 118
    move v3, v1

    .line 119
    goto :goto_6

    .line 120
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getOpenIdConnectProviderARNs()Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    :goto_6
    add-int/2addr v0, v3

    .line 129
    mul-int/2addr v0, v2

    .line 130
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getCognitoIdentityProviders()Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    if-nez v3, :cond_7

    .line 135
    .line 136
    move v3, v1

    .line 137
    goto :goto_7

    .line 138
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getCognitoIdentityProviders()Ljava/util/List;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    :goto_7
    add-int/2addr v0, v3

    .line 147
    mul-int/2addr v0, v2

    .line 148
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getSamlProviderARNs()Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    if-nez v3, :cond_8

    .line 153
    .line 154
    move v3, v1

    .line 155
    goto :goto_8

    .line 156
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getSamlProviderARNs()Ljava/util/List;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    :goto_8
    add-int/2addr v0, v3

    .line 165
    mul-int/2addr v0, v2

    .line 166
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolTags()Ljava/util/Map;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    if-nez v2, :cond_9

    .line 171
    .line 172
    goto :goto_9

    .line 173
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolTags()Ljava/util/Map;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    :goto_9
    add-int/2addr v0, v1

    .line 182
    return v0
.end method

.method public isAllowClassicFlow()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->allowClassicFlow:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public isAllowUnauthenticatedIdentities()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->allowUnauthenticatedIdentities:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAllowClassicFlow(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->allowClassicFlow:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setAllowUnauthenticatedIdentities(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->allowUnauthenticatedIdentities:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setCognitoIdentityProviders(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/cognitoidentity/model/CognitoIdentityProvider;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->cognitoIdentityProviders:Ljava/util/List;

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->cognitoIdentityProviders:Ljava/util/List;

    .line 13
    .line 14
    return-void
.end method

.method public setDeveloperProviderName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->developerProviderName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIdentityPoolId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->identityPoolId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIdentityPoolName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->identityPoolName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIdentityPoolTags(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->identityPoolTags:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public setOpenIdConnectProviderARNs(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->openIdConnectProviderARNs:Ljava/util/List;

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->openIdConnectProviderARNs:Ljava/util/List;

    .line 13
    .line 14
    return-void
.end method

.method public setSamlProviderARNs(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->samlProviderARNs:Ljava/util/List;

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->samlProviderARNs:Ljava/util/List;

    .line 13
    .line 14
    return-void
.end method

.method public setSupportedLoginProviders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->supportedLoginProviders:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "{"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, ","

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v3, "IdentityPoolId: "

    .line 25
    .line 26
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolId()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v3, "IdentityPoolName: "

    .line 58
    .line 59
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getAllowUnauthenticatedIdentities()Ljava/lang/Boolean;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-eqz v1, :cond_2

    .line 84
    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v3, "AllowUnauthenticatedIdentities: "

    .line 91
    .line 92
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getAllowUnauthenticatedIdentities()Ljava/lang/Boolean;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getAllowClassicFlow()Ljava/lang/Boolean;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    if-eqz v1, :cond_3

    .line 117
    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v3, "AllowClassicFlow: "

    .line 124
    .line 125
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getAllowClassicFlow()Ljava/lang/Boolean;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getSupportedLoginProviders()Ljava/util/Map;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    if-eqz v1, :cond_4

    .line 150
    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    const-string v3, "SupportedLoginProviders: "

    .line 157
    .line 158
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getSupportedLoginProviders()Ljava/util/Map;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getDeveloperProviderName()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    if-eqz v1, :cond_5

    .line 183
    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    const-string v3, "DeveloperProviderName: "

    .line 190
    .line 191
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getDeveloperProviderName()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getOpenIdConnectProviderARNs()Ljava/util/List;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    if-eqz v1, :cond_6

    .line 216
    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    const-string v3, "OpenIdConnectProviderARNs: "

    .line 223
    .line 224
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getOpenIdConnectProviderARNs()Ljava/util/List;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getCognitoIdentityProviders()Ljava/util/List;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    if-eqz v1, :cond_7

    .line 249
    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .line 254
    .line 255
    const-string v3, "CognitoIdentityProviders: "

    .line 256
    .line 257
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getCognitoIdentityProviders()Ljava/util/List;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getSamlProviderARNs()Ljava/util/List;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    if-eqz v1, :cond_8

    .line 282
    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .line 287
    .line 288
    const-string v3, "SamlProviderARNs: "

    .line 289
    .line 290
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getSamlProviderARNs()Ljava/util/List;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolTags()Ljava/util/Map;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    if-eqz v1, :cond_9

    .line 315
    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .line 320
    .line 321
    const-string v2, "IdentityPoolTags: "

    .line 322
    .line 323
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolTags()Ljava/util/Map;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    :cond_9
    const-string v1, "}"

    .line 341
    .line 342
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    return-object v0
.end method

.method public withAllowClassicFlow(Ljava/lang/Boolean;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->allowClassicFlow:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public withAllowUnauthenticatedIdentities(Ljava/lang/Boolean;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->allowUnauthenticatedIdentities:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public withCognitoIdentityProviders(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/cognitoidentity/model/CognitoIdentityProvider;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;"
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->setCognitoIdentityProviders(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withCognitoIdentityProviders([Lcom/amazonaws/services/cognitoidentity/model/CognitoIdentityProvider;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getCognitoIdentityProviders()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->cognitoIdentityProviders:Ljava/util/List;

    .line 3
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 4
    iget-object v3, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->cognitoIdentityProviders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withDeveloperProviderName(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->developerProviderName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public withIdentityPoolId(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->identityPoolId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public withIdentityPoolName(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->identityPoolName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public withIdentityPoolTags(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->identityPoolTags:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public withOpenIdConnectProviderARNs(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;"
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->setOpenIdConnectProviderARNs(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withOpenIdConnectProviderARNs([Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getOpenIdConnectProviderARNs()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->openIdConnectProviderARNs:Ljava/util/List;

    .line 3
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 4
    iget-object v3, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->openIdConnectProviderARNs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withSamlProviderARNs(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;"
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->setSamlProviderARNs(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withSamlProviderARNs([Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getSamlProviderARNs()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->samlProviderARNs:Ljava/util/List;

    .line 3
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 4
    iget-object v3, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->samlProviderARNs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withSupportedLoginProviders(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->supportedLoginProviders:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method
