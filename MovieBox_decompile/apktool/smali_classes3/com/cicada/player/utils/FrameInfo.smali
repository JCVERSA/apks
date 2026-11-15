.class public Lcom/cicada/player/utils/FrameInfo;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cicada/player/utils/FrameInfo$PixelFormat;,
        Lcom/cicada/player/utils/FrameInfo$SampleFormat;,
        Lcom/cicada/player/utils/FrameInfo$Rational;
    }
.end annotation


# static fields
.field public static final FrameType_audio:I = 0x2

.field public static final FrameType_unknow:I = 0x0

.field public static final FrameType_video:I = 0x1


# instance fields
.field public audio_channel_layout:J

.field public audio_channels:I

.field public audio_data:[[B

.field public audio_data_addr:[J

.field public audio_data_addr_lineSize:I

.field public audio_format:I

.field public audio_nb_samples:I

.field public audio_sample_rate:I

.field public duration:J

.field public frameType:I

.field public key:Z

.field public pts:J

.field public sei_data:[B

.field public sei_type:I

.field public timePosition:J

.field public video_colorRange:I

.field public video_colorSpace:I

.field public video_crop_bottom:I

.field public video_crop_left:I

.field public video_crop_right:I

.field public video_crop_top:I

.field public video_dar:D

.field public video_data:[[B

.field public video_data_addr:[J

.field public video_data_addr_lineSize:[I

.field public video_format:I

.field public video_glContext:J

.field public video_height:I

.field public video_rotate:I

.field public video_texture2D_id:[I

.field public video_textureOES_id:I

.field public video_textureOES_matrix:[F

.field public video_width:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/cicada/player/utils/FrameInfo;->audio_data:[[B

    .line 6
    .line 7
    iput-object v0, p0, Lcom/cicada/player/utils/FrameInfo;->audio_data_addr:[J

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lcom/cicada/player/utils/FrameInfo;->audio_data_addr_lineSize:I

    .line 11
    .line 12
    const-wide/16 v2, -0x1

    .line 13
    .line 14
    iput-wide v2, p0, Lcom/cicada/player/utils/FrameInfo;->video_glContext:J

    .line 15
    .line 16
    const/4 v2, -0x1

    .line 17
    iput v2, p0, Lcom/cicada/player/utils/FrameInfo;->video_textureOES_id:I

    .line 18
    .line 19
    iput-object v0, p0, Lcom/cicada/player/utils/FrameInfo;->video_textureOES_matrix:[F

    .line 20
    .line 21
    iput-object v0, p0, Lcom/cicada/player/utils/FrameInfo;->video_data:[[B

    .line 22
    .line 23
    iput-object v0, p0, Lcom/cicada/player/utils/FrameInfo;->video_data_addr:[J

    .line 24
    .line 25
    iput-object v0, p0, Lcom/cicada/player/utils/FrameInfo;->video_data_addr_lineSize:[I

    .line 26
    .line 27
    iput-object v0, p0, Lcom/cicada/player/utils/FrameInfo;->video_texture2D_id:[I

    .line 28
    .line 29
    iput v1, p0, Lcom/cicada/player/utils/FrameInfo;->sei_type:I

    .line 30
    .line 31
    iput-object v0, p0, Lcom/cicada/player/utils/FrameInfo;->sei_data:[B

    .line 32
    .line 33
    return-void
.end method

.method private setAudioData([[B)V
    .locals 0
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cicada/player/utils/FrameInfo;->audio_data:[[B

    .line 2
    .line 3
    return-void
.end method

.method private setAudioDataAddr([J)V
    .locals 0
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cicada/player/utils/FrameInfo;->audio_data_addr:[J

    .line 2
    .line 3
    return-void
.end method

.method private setSEIData(I[B)V
    .locals 0
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 1
    iput p1, p0, Lcom/cicada/player/utils/FrameInfo;->sei_type:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cicada/player/utils/FrameInfo;->sei_data:[B

    .line 4
    .line 5
    return-void
.end method

.method private setVideoData([[B)V
    .locals 0
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cicada/player/utils/FrameInfo;->video_data:[[B

    .line 2
    .line 3
    return-void
.end method

.method private setVideoDataAddr([J)V
    .locals 0
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cicada/player/utils/FrameInfo;->video_data_addr:[J

    .line 2
    .line 3
    return-void
.end method

.method private setVideoDataAddrLineSize([I)V
    .locals 0
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cicada/player/utils/FrameInfo;->video_data_addr_lineSize:[I

    .line 2
    .line 3
    return-void
.end method

.method private setVideoTextureOESMatrix([F)V
    .locals 0
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cicada/player/utils/FrameInfo;->video_textureOES_matrix:[F

    .line 2
    .line 3
    return-void
.end method

.method private setVideo_texture2D_id([I)V
    .locals 0
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cicada/player/utils/FrameInfo;->video_texture2D_id:[I

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "FrameInfo{frameType="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->frameType:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", pts="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-wide v1, p0, Lcom/cicada/player/utils/FrameInfo;->pts:J

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", duration="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-wide v1, p0, Lcom/cicada/player/utils/FrameInfo;->duration:J

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", key="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-boolean v1, p0, Lcom/cicada/player/utils/FrameInfo;->key:Z

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", timePosition="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-wide v1, p0, Lcom/cicada/player/utils/FrameInfo;->timePosition:J

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", audio_format="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->audio_format:I

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", audio_nb_samples="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->audio_nb_samples:I

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", audio_channels="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->audio_channels:I

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", audio_sample_rate="

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->audio_sample_rate:I

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", audio_channel_layout="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-wide v1, p0, Lcom/cicada/player/utils/FrameInfo;->audio_channel_layout:J

    .line 102
    .line 103
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, ", audio_data="

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lcom/cicada/player/utils/FrameInfo;->audio_data:[[B

    .line 112
    .line 113
    const-string v2, "null"

    .line 114
    .line 115
    if-nez v1, :cond_0

    .line 116
    .line 117
    move-object v1, v2

    .line 118
    goto :goto_0

    .line 119
    :cond_0
    array-length v1, v1

    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v1, ", video_format="

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_format:I

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v1, ", video_width="

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_width:I

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v1, ", video_height="

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_height:I

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v1, ", video_rotate="

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_rotate:I

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v1, ", video_crop_top="

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_crop_top:I

    .line 173
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v1, ", video_crop_bottom="

    .line 178
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_crop_bottom:I

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v1, ", video_crop_left="

    .line 188
    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_crop_left:I

    .line 193
    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v1, ", video_crop_right="

    .line 198
    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_crop_right:I

    .line 203
    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string v1, ", video_colorRange="

    .line 208
    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_colorRange:I

    .line 213
    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v1, ", video_colorSpace="

    .line 218
    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_colorSpace:I

    .line 223
    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v1, ", video_glContext="

    .line 228
    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    iget-wide v3, p0, Lcom/cicada/player/utils/FrameInfo;->video_glContext:J

    .line 233
    .line 234
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    const-string v1, ", video_textureOES_id="

    .line 238
    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_textureOES_id:I

    .line 243
    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    const-string v1, ", video_textureOES_matrix="

    .line 248
    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    iget-object v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_textureOES_matrix:[F

    .line 253
    .line 254
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    const-string v1, ", video_data="

    .line 262
    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    iget-object v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_data:[[B

    .line 267
    .line 268
    if-nez v1, :cond_1

    .line 269
    .line 270
    goto :goto_1

    .line 271
    :cond_1
    array-length v1, v1

    .line 272
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    const-string v1, ", video_data_addr="

    .line 280
    .line 281
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    iget-object v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_data_addr:[J

    .line 285
    .line 286
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    const-string v1, ", video_texture2D_id="

    .line 294
    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    iget-object v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_texture2D_id:[I

    .line 299
    .line 300
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    const-string v1, ", video_dar="

    .line 308
    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    iget-wide v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_dar:D

    .line 313
    .line 314
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    const/16 v1, 0x7d

    .line 318
    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    return-object v0
.end method
