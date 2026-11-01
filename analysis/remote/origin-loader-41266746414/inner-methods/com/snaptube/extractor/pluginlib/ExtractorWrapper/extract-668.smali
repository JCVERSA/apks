.method public extract(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->b(Lorg/json/JSONObject;)Lcom/snaptube/extractor/pluginlib/models/PageContext;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->j()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lo/tc2;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "player"

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->j()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "extract_from"

    .line 29
    .line 30
    invoke-static {v1, v2}, Lo/tc2;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p1, v1}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->s(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 40
    .line 41
    const-string v2, "from_player"

    .line 42
    .line 43
    invoke-virtual {p1, v2, v1}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->n(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    if-nez v0, :cond_3

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->j()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Lo/if9;->D(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    invoke-static {}, Lo/xm3;->d()Lo/xm3;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lo/xm3;->a()Lo/ma3;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 67
    .line 68
    const-wide/16 v2, 0xa

    .line 69
    .line 70
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 71
    .line 72
    .line 73
    move-result-wide v1

    .line 74
    invoke-interface {v0, v1, v2}, Lo/ma3;->checkAndWait(J)Z

    .line 75
    .line 76
    .line 77
    const/4 v1, 0x1

    .line 78
    invoke-interface {v0, v1}, Lo/ma3;->isAvailable(Z)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_3

    .line 83
    .line 84
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->extractSourceTracker:Lo/uc2;

    .line 85
    .line 86
    invoke-virtual {v0, p2}, Lo/uc2;->h(Ljava/lang/Object;)Lo/uc2$b;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lo/uc2$b;->c()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_3

    .line 95
    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string p2, "Code:"

    .line 102
    .line 103
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-static {}, Lo/xm3;->d()Lo/xm3;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-virtual {p2}, Lo/xm3;->a()Lo/ma3;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-interface {p2}, Lo/ma3;->getLastHttpStatusCode()I

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string p2, " This website is not available in your country or region."

    .line 122
    .line 123
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {v0}, Lo/uc2$b;->b()Landroid/content/Context;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    if-eqz p2, :cond_1

    .line 135
    .line 136
    iget-object p2, p0, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->mainHandler:Landroid/os/Handler;

    .line 137
    .line 138
    new-instance v1, Lo/rd2;

    .line 139
    .line 140
    invoke-direct {v1, v0, p1}, Lo/rd2;-><init>(Lo/uc2$b;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    .line 145
    .line 146
    sget-object p2, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->TAG:Ljava/lang/String;

    .line 147
    .line 148
    const-string v1, "from choose format fragment"

    .line 149
    .line 150
    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    :cond_1
    invoke-virtual {v0}, Lo/uc2$b;->a()Ljava/lang/Runnable;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    if-eqz p2, :cond_2

    .line 158
    .line 159
    iget-object p2, p0, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->mainHandler:Landroid/os/Handler;

    .line 160
    .line 161
    invoke-virtual {v0}, Lo/uc2$b;->a()Ljava/lang/Runnable;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 166
    .line 167
    .line 168
    :cond_2
    new-instance p2, Lcom/snaptube/extractor/pluginlib/common/ExtractionException;

    .line 169
    .line 170
    sget-object v0, Lcom/snaptube/extractor/pluginlib/models/ExtractError;->NOT_SUPPORTED:Lcom/snaptube/extractor/pluginlib/models/ExtractError;

    .line 171
    .line 172
    invoke-direct {p2, v0, p1}, Lcom/snaptube/extractor/pluginlib/common/ExtractionException;-><init>(Lcom/snaptube/extractor/pluginlib/models/ExtractError;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw p2

    .line 176
    :cond_3
    invoke-static {p2}, Lo/no5;->i(Ljava/lang/Object;)Lo/no5;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    new-instance v0, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper$a;

    .line 181
    .line 182
    invoke-direct {v0, p0, p2}, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper$a;-><init>(Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;Lo/no5;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->j()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    const/4 v2, 0x0

    .line 190
    :try_start_0
    invoke-static {}, Lo/pz5;->a()Landroid/content/Context;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-static {v3}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->h(Landroid/content/Context;)Z

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    if-eqz v3, :cond_4

    .line 199
    .line 200
    invoke-direct {p0, p1}, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->buildForbiddenResult(Lcom/snaptube/extractor/pluginlib/models/PageContext;)Lcom/snaptube/extractor/pluginlib/models/ExtractResult;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    invoke-virtual {p2}, Lcom/snaptube/extractor/pluginlib/models/ExtractResult;->x()Lorg/json/JSONObject;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    invoke-virtual {p1, v1}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->s(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-static {}, Lo/yq8;->j()Lo/yq8;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-virtual {p1, v2}, Lo/yq8;->p(Lo/ic2;)V

    .line 220
    .line 221
    .line 222
    invoke-static {}, Lo/zb2;->d()V

    .line 223
    .line 224
    .line 225
    return-object p2

    .line 226
    :catchall_0
    move-exception p2

    .line 227
    goto :goto_1

    .line 228
    :cond_4
    :try_start_1
    invoke-direct {p0, v1}, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    invoke-virtual {p1, v3}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->s(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-static {}, Lo/yq8;->j()Lo/yq8;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    new-instance v4, Lo/sd2;

    .line 240
    .line 241
    invoke-direct {v4, p1, v0}, Lo/sd2;-><init>(Lcom/snaptube/extractor/pluginlib/models/PageContext;Lo/df3;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v3, v4}, Lo/yq8;->p(Lo/ic2;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->j()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    invoke-direct {p0, v3}, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->findSite(Ljava/lang/String;)Lo/qh3;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    if-nez p2, :cond_5

    .line 256
    .line 257
    move-object v0, v2

    .line 258
    :cond_5
    invoke-interface {v3, p1, v0}, Lo/qh3;->extract(Lcom/snaptube/extractor/pluginlib/models/PageContext;Lo/df3;)Lcom/snaptube/extractor/pluginlib/models/ExtractResult;

    .line 259
    .line 260
    .line 261
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    invoke-virtual {p1, v1}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->s(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-static {}, Lo/yq8;->j()Lo/yq8;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-virtual {p1, v2}, Lo/yq8;->p(Lo/ic2;)V

    .line 270
    .line 271
    .line 272
    invoke-static {}, Lo/zb2;->d()V

    .line 273
    .line 274
    .line 275
    invoke-direct {p0, p2}, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->fixTitle(Lcom/snaptube/extractor/pluginlib/models/ExtractResult;)V

    .line 276
    .line 277
    .line 278
    if-nez p2, :cond_6

    .line 279
    .line 280
    goto :goto_0

    .line 281
    :cond_6
    invoke-virtual {p2}, Lcom/snaptube/extractor/pluginlib/models/ExtractResult;->x()Lorg/json/JSONObject;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    :goto_0
    return-object v2

    .line 290
    :goto_1
    :try_start_2
    invoke-static {p2}, Lo/dc2;->c(Ljava/lang/Throwable;)V

    .line 291
    .line 292
    .line 293
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 294
    :catchall_1
    move-exception p2

    .line 295
    invoke-virtual {p1, v1}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->s(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-static {}, Lo/yq8;->j()Lo/yq8;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    invoke-virtual {p1, v2}, Lo/yq8;->p(Lo/ic2;)V

    .line 303
    .line 304
    .line 305
    invoke-static {}, Lo/zb2;->d()V

    .line 306
    .line 307
    .line 308
    throw p2
.end method
