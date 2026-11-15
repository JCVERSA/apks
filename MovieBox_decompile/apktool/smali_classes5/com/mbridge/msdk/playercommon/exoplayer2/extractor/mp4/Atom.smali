.class abstract Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;,
        Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;
    }
.end annotation


# static fields
.field public static final DEFINES_LARGE_SIZE:I = 0x1

.field public static final EXTENDS_TO_END_SIZE:I = 0x0

.field public static final FULL_HEADER_SIZE:I = 0xc

.field public static final HEADER_SIZE:I = 0x8

.field public static final LONG_HEADER_SIZE:I = 0x10

.field public static final TYPE_TTML:I

.field public static final TYPE__mp3:I

.field public static final TYPE_ac_3:I

.field public static final TYPE_alac:I

.field public static final TYPE_avc1:I

.field public static final TYPE_avc3:I

.field public static final TYPE_avcC:I

.field public static final TYPE_c608:I

.field public static final TYPE_camm:I

.field public static final TYPE_co64:I

.field public static final TYPE_ctts:I

.field public static final TYPE_d263:I

.field public static final TYPE_dac3:I

.field public static final TYPE_data:I

.field public static final TYPE_ddts:I

.field public static final TYPE_dec3:I

.field public static final TYPE_dtsc:I

.field public static final TYPE_dtse:I

.field public static final TYPE_dtsh:I

.field public static final TYPE_dtsl:I

.field public static final TYPE_ec_3:I

.field public static final TYPE_edts:I

.field public static final TYPE_elst:I

.field public static final TYPE_emsg:I

.field public static final TYPE_enca:I

.field public static final TYPE_encv:I

.field public static final TYPE_esds:I

.field public static final TYPE_frma:I

.field public static final TYPE_ftyp:I

.field public static final TYPE_hdlr:I

.field public static final TYPE_hev1:I

.field public static final TYPE_hvc1:I

.field public static final TYPE_hvcC:I

.field public static final TYPE_ilst:I

.field public static final TYPE_lpcm:I

.field public static final TYPE_mdat:I

.field public static final TYPE_mdhd:I

.field public static final TYPE_mdia:I

.field public static final TYPE_mean:I

.field public static final TYPE_mehd:I

.field public static final TYPE_meta:I

.field public static final TYPE_minf:I

.field public static final TYPE_moof:I

.field public static final TYPE_moov:I

.field public static final TYPE_mp4a:I

.field public static final TYPE_mp4v:I

.field public static final TYPE_mvex:I

.field public static final TYPE_mvhd:I

.field public static final TYPE_name:I

.field public static final TYPE_pasp:I

.field public static final TYPE_proj:I

.field public static final TYPE_pssh:I

.field public static final TYPE_s263:I

.field public static final TYPE_saio:I

.field public static final TYPE_saiz:I

.field public static final TYPE_samr:I

.field public static final TYPE_sawb:I

.field public static final TYPE_sbgp:I

.field public static final TYPE_schi:I

.field public static final TYPE_schm:I

.field public static final TYPE_senc:I

.field public static final TYPE_sgpd:I

.field public static final TYPE_sidx:I

.field public static final TYPE_sinf:I

.field public static final TYPE_sowt:I

.field public static final TYPE_st3d:I

.field public static final TYPE_stbl:I

.field public static final TYPE_stco:I

.field public static final TYPE_stpp:I

.field public static final TYPE_stsc:I

.field public static final TYPE_stsd:I

.field public static final TYPE_stss:I

.field public static final TYPE_stsz:I

.field public static final TYPE_stts:I

.field public static final TYPE_stz2:I

.field public static final TYPE_sv3d:I

.field public static final TYPE_tenc:I

.field public static final TYPE_tfdt:I

.field public static final TYPE_tfhd:I

.field public static final TYPE_tkhd:I

.field public static final TYPE_traf:I

.field public static final TYPE_trak:I

.field public static final TYPE_trex:I

.field public static final TYPE_trun:I

.field public static final TYPE_tx3g:I

.field public static final TYPE_udta:I

.field public static final TYPE_uuid:I

.field public static final TYPE_vmhd:I

.field public static final TYPE_vp08:I

.field public static final TYPE_vp09:I

.field public static final TYPE_vpcC:I

.field public static final TYPE_wave:I

.field public static final TYPE_wvtt:I


# instance fields
.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "ftyp"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_ftyp:I

    .line 8
    .line 9
    const-string v0, "avc1"

    .line 10
    .line 11
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_avc1:I

    .line 16
    .line 17
    const-string v0, "avc3"

    .line 18
    .line 19
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_avc3:I

    .line 24
    .line 25
    const-string v0, "hvc1"

    .line 26
    .line 27
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_hvc1:I

    .line 32
    .line 33
    const-string v0, "hev1"

    .line 34
    .line 35
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_hev1:I

    .line 40
    .line 41
    const-string v0, "s263"

    .line 42
    .line 43
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_s263:I

    .line 48
    .line 49
    const-string v0, "d263"

    .line 50
    .line 51
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_d263:I

    .line 56
    .line 57
    const-string v0, "mdat"

    .line 58
    .line 59
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_mdat:I

    .line 64
    .line 65
    const-string v0, "mp4a"

    .line 66
    .line 67
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_mp4a:I

    .line 72
    .line 73
    const-string v0, ".mp3"

    .line 74
    .line 75
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE__mp3:I

    .line 80
    .line 81
    const-string v0, "wave"

    .line 82
    .line 83
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_wave:I

    .line 88
    .line 89
    const-string v0, "lpcm"

    .line 90
    .line 91
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_lpcm:I

    .line 96
    .line 97
    const-string v0, "sowt"

    .line 98
    .line 99
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_sowt:I

    .line 104
    .line 105
    const-string v0, "ac-3"

    .line 106
    .line 107
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_ac_3:I

    .line 112
    .line 113
    const-string v0, "dac3"

    .line 114
    .line 115
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_dac3:I

    .line 120
    .line 121
    const-string v0, "ec-3"

    .line 122
    .line 123
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_ec_3:I

    .line 128
    .line 129
    const-string v0, "dec3"

    .line 130
    .line 131
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_dec3:I

    .line 136
    .line 137
    const-string v0, "dtsc"

    .line 138
    .line 139
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_dtsc:I

    .line 144
    .line 145
    const-string v0, "dtsh"

    .line 146
    .line 147
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_dtsh:I

    .line 152
    .line 153
    const-string v0, "dtsl"

    .line 154
    .line 155
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_dtsl:I

    .line 160
    .line 161
    const-string v0, "dtse"

    .line 162
    .line 163
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_dtse:I

    .line 168
    .line 169
    const-string v0, "ddts"

    .line 170
    .line 171
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_ddts:I

    .line 176
    .line 177
    const-string v0, "tfdt"

    .line 178
    .line 179
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_tfdt:I

    .line 184
    .line 185
    const-string v0, "tfhd"

    .line 186
    .line 187
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_tfhd:I

    .line 192
    .line 193
    const-string v0, "trex"

    .line 194
    .line 195
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_trex:I

    .line 200
    .line 201
    const-string v0, "trun"

    .line 202
    .line 203
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_trun:I

    .line 208
    .line 209
    const-string v0, "sidx"

    .line 210
    .line 211
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_sidx:I

    .line 216
    .line 217
    const-string v0, "moov"

    .line 218
    .line 219
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_moov:I

    .line 224
    .line 225
    const-string v0, "mvhd"

    .line 226
    .line 227
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_mvhd:I

    .line 232
    .line 233
    const-string v0, "trak"

    .line 234
    .line 235
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_trak:I

    .line 240
    .line 241
    const-string v0, "mdia"

    .line 242
    .line 243
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_mdia:I

    .line 248
    .line 249
    const-string v0, "minf"

    .line 250
    .line 251
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_minf:I

    .line 256
    .line 257
    const-string v0, "stbl"

    .line 258
    .line 259
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_stbl:I

    .line 264
    .line 265
    const-string v0, "avcC"

    .line 266
    .line 267
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_avcC:I

    .line 272
    .line 273
    const-string v0, "hvcC"

    .line 274
    .line 275
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_hvcC:I

    .line 280
    .line 281
    const-string v0, "esds"

    .line 282
    .line 283
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_esds:I

    .line 288
    .line 289
    const-string v0, "moof"

    .line 290
    .line 291
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_moof:I

    .line 296
    .line 297
    const-string v0, "traf"

    .line 298
    .line 299
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_traf:I

    .line 304
    .line 305
    const-string v0, "mvex"

    .line 306
    .line 307
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_mvex:I

    .line 312
    .line 313
    const-string v0, "mehd"

    .line 314
    .line 315
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_mehd:I

    .line 320
    .line 321
    const-string v0, "tkhd"

    .line 322
    .line 323
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_tkhd:I

    .line 328
    .line 329
    const-string v0, "edts"

    .line 330
    .line 331
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 332
    .line 333
    .line 334
    move-result v0

    .line 335
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_edts:I

    .line 336
    .line 337
    const-string v0, "elst"

    .line 338
    .line 339
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_elst:I

    .line 344
    .line 345
    const-string v0, "mdhd"

    .line 346
    .line 347
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_mdhd:I

    .line 352
    .line 353
    const-string v0, "hdlr"

    .line 354
    .line 355
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 356
    .line 357
    .line 358
    move-result v0

    .line 359
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_hdlr:I

    .line 360
    .line 361
    const-string v0, "stsd"

    .line 362
    .line 363
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_stsd:I

    .line 368
    .line 369
    const-string v0, "pssh"

    .line 370
    .line 371
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_pssh:I

    .line 376
    .line 377
    const-string v0, "sinf"

    .line 378
    .line 379
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 380
    .line 381
    .line 382
    move-result v0

    .line 383
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_sinf:I

    .line 384
    .line 385
    const-string v0, "schm"

    .line 386
    .line 387
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 388
    .line 389
    .line 390
    move-result v0

    .line 391
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_schm:I

    .line 392
    .line 393
    const-string v0, "schi"

    .line 394
    .line 395
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 396
    .line 397
    .line 398
    move-result v0

    .line 399
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_schi:I

    .line 400
    .line 401
    const-string v0, "tenc"

    .line 402
    .line 403
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_tenc:I

    .line 408
    .line 409
    const-string v0, "encv"

    .line 410
    .line 411
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 412
    .line 413
    .line 414
    move-result v0

    .line 415
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_encv:I

    .line 416
    .line 417
    const-string v0, "enca"

    .line 418
    .line 419
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 420
    .line 421
    .line 422
    move-result v0

    .line 423
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_enca:I

    .line 424
    .line 425
    const-string v0, "frma"

    .line 426
    .line 427
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 428
    .line 429
    .line 430
    move-result v0

    .line 431
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_frma:I

    .line 432
    .line 433
    const-string v0, "saiz"

    .line 434
    .line 435
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 436
    .line 437
    .line 438
    move-result v0

    .line 439
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_saiz:I

    .line 440
    .line 441
    const-string v0, "saio"

    .line 442
    .line 443
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 444
    .line 445
    .line 446
    move-result v0

    .line 447
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_saio:I

    .line 448
    .line 449
    const-string v0, "sbgp"

    .line 450
    .line 451
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 452
    .line 453
    .line 454
    move-result v0

    .line 455
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_sbgp:I

    .line 456
    .line 457
    const-string v0, "sgpd"

    .line 458
    .line 459
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 460
    .line 461
    .line 462
    move-result v0

    .line 463
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_sgpd:I

    .line 464
    .line 465
    const-string v0, "uuid"

    .line 466
    .line 467
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 468
    .line 469
    .line 470
    move-result v0

    .line 471
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_uuid:I

    .line 472
    .line 473
    const-string v0, "senc"

    .line 474
    .line 475
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 476
    .line 477
    .line 478
    move-result v0

    .line 479
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_senc:I

    .line 480
    .line 481
    const-string v0, "pasp"

    .line 482
    .line 483
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 484
    .line 485
    .line 486
    move-result v0

    .line 487
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_pasp:I

    .line 488
    .line 489
    const-string v0, "TTML"

    .line 490
    .line 491
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 492
    .line 493
    .line 494
    move-result v0

    .line 495
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_TTML:I

    .line 496
    .line 497
    const-string v0, "vmhd"

    .line 498
    .line 499
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 500
    .line 501
    .line 502
    move-result v0

    .line 503
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_vmhd:I

    .line 504
    .line 505
    const-string v0, "mp4v"

    .line 506
    .line 507
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 508
    .line 509
    .line 510
    move-result v0

    .line 511
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_mp4v:I

    .line 512
    .line 513
    const-string v0, "stts"

    .line 514
    .line 515
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 516
    .line 517
    .line 518
    move-result v0

    .line 519
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_stts:I

    .line 520
    .line 521
    const-string v0, "stss"

    .line 522
    .line 523
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 524
    .line 525
    .line 526
    move-result v0

    .line 527
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_stss:I

    .line 528
    .line 529
    const-string v0, "ctts"

    .line 530
    .line 531
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 532
    .line 533
    .line 534
    move-result v0

    .line 535
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_ctts:I

    .line 536
    .line 537
    const-string v0, "stsc"

    .line 538
    .line 539
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 540
    .line 541
    .line 542
    move-result v0

    .line 543
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_stsc:I

    .line 544
    .line 545
    const-string v0, "stsz"

    .line 546
    .line 547
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 548
    .line 549
    .line 550
    move-result v0

    .line 551
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_stsz:I

    .line 552
    .line 553
    const-string v0, "stz2"

    .line 554
    .line 555
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 556
    .line 557
    .line 558
    move-result v0

    .line 559
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_stz2:I

    .line 560
    .line 561
    const-string v0, "stco"

    .line 562
    .line 563
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 564
    .line 565
    .line 566
    move-result v0

    .line 567
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_stco:I

    .line 568
    .line 569
    const-string v0, "co64"

    .line 570
    .line 571
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 572
    .line 573
    .line 574
    move-result v0

    .line 575
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_co64:I

    .line 576
    .line 577
    const-string v0, "tx3g"

    .line 578
    .line 579
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 580
    .line 581
    .line 582
    move-result v0

    .line 583
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_tx3g:I

    .line 584
    .line 585
    const-string v0, "wvtt"

    .line 586
    .line 587
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 588
    .line 589
    .line 590
    move-result v0

    .line 591
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_wvtt:I

    .line 592
    .line 593
    const-string v0, "stpp"

    .line 594
    .line 595
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 596
    .line 597
    .line 598
    move-result v0

    .line 599
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_stpp:I

    .line 600
    .line 601
    const-string v0, "c608"

    .line 602
    .line 603
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 604
    .line 605
    .line 606
    move-result v0

    .line 607
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_c608:I

    .line 608
    .line 609
    const-string v0, "samr"

    .line 610
    .line 611
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 612
    .line 613
    .line 614
    move-result v0

    .line 615
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_samr:I

    .line 616
    .line 617
    const-string v0, "sawb"

    .line 618
    .line 619
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 620
    .line 621
    .line 622
    move-result v0

    .line 623
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_sawb:I

    .line 624
    .line 625
    const-string v0, "udta"

    .line 626
    .line 627
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 628
    .line 629
    .line 630
    move-result v0

    .line 631
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_udta:I

    .line 632
    .line 633
    const-string v0, "meta"

    .line 634
    .line 635
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 636
    .line 637
    .line 638
    move-result v0

    .line 639
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_meta:I

    .line 640
    .line 641
    const-string v0, "ilst"

    .line 642
    .line 643
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 644
    .line 645
    .line 646
    move-result v0

    .line 647
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_ilst:I

    .line 648
    .line 649
    const-string v0, "mean"

    .line 650
    .line 651
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 652
    .line 653
    .line 654
    move-result v0

    .line 655
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_mean:I

    .line 656
    .line 657
    const-string v0, "name"

    .line 658
    .line 659
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 660
    .line 661
    .line 662
    move-result v0

    .line 663
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_name:I

    .line 664
    .line 665
    const-string v0, "data"

    .line 666
    .line 667
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 668
    .line 669
    .line 670
    move-result v0

    .line 671
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_data:I

    .line 672
    .line 673
    const-string v0, "emsg"

    .line 674
    .line 675
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 676
    .line 677
    .line 678
    move-result v0

    .line 679
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_emsg:I

    .line 680
    .line 681
    const-string v0, "st3d"

    .line 682
    .line 683
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 684
    .line 685
    .line 686
    move-result v0

    .line 687
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_st3d:I

    .line 688
    .line 689
    const-string v0, "sv3d"

    .line 690
    .line 691
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 692
    .line 693
    .line 694
    move-result v0

    .line 695
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_sv3d:I

    .line 696
    .line 697
    const-string v0, "proj"

    .line 698
    .line 699
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 700
    .line 701
    .line 702
    move-result v0

    .line 703
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_proj:I

    .line 704
    .line 705
    const-string v0, "vp08"

    .line 706
    .line 707
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 708
    .line 709
    .line 710
    move-result v0

    .line 711
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_vp08:I

    .line 712
    .line 713
    const-string v0, "vp09"

    .line 714
    .line 715
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 716
    .line 717
    .line 718
    move-result v0

    .line 719
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_vp09:I

    .line 720
    .line 721
    const-string v0, "vpcC"

    .line 722
    .line 723
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 724
    .line 725
    .line 726
    move-result v0

    .line 727
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_vpcC:I

    .line 728
    .line 729
    const-string v0, "camm"

    .line 730
    .line 731
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 732
    .line 733
    .line 734
    move-result v0

    .line 735
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_camm:I

    .line 736
    .line 737
    const-string v0, "alac"

    .line 738
    .line 739
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 740
    .line 741
    .line 742
    move-result v0

    .line 743
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_alac:I

    .line 744
    .line 745
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->type:I

    .line 5
    .line 6
    return-void
.end method

.method public static getAtomTypeString(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    shr-int/lit8 v1, p0, 0x18

    .line 12
    .line 13
    and-int/lit16 v1, v1, 0xff

    .line 14
    .line 15
    int-to-char v1, v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    shr-int/lit8 v1, p0, 0x10

    .line 20
    .line 21
    and-int/lit16 v1, v1, 0xff

    .line 22
    .line 23
    int-to-char v1, v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    shr-int/lit8 v1, p0, 0x8

    .line 28
    .line 29
    and-int/lit16 v1, v1, 0xff

    .line 30
    .line 31
    int-to-char v1, v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    and-int/lit16 p0, p0, 0xff

    .line 36
    .line 37
    int-to-char p0, p0

    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public static parseFullAtomFlags(I)I
    .locals 1

    .line 1
    const v0, 0xffffff

    .line 2
    .line 3
    .line 4
    and-int/2addr p0, v0

    .line 5
    return p0
.end method

.method public static parseFullAtomVersion(I)I
    .locals 0

    .line 1
    shr-int/lit8 p0, p0, 0x18

    .line 2
    .line 3
    and-int/lit16 p0, p0, 0xff

    .line 4
    .line 5
    return p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->type:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
