.class public Landroidx/exifinterface/media/a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/exifinterface/media/a$b;,
        Landroidx/exifinterface/media/a$f;,
        Landroidx/exifinterface/media/a$d;,
        Landroidx/exifinterface/media/a$c;,
        Landroidx/exifinterface/media/a$e;
    }
.end annotation


# static fields
.field static final A:[B

.field private static final B:[B

.field private static final C:[B

.field private static final D:[B

.field private static final E:[B

.field private static final F:[B

.field private static final G:[B

.field private static final H:[B

.field private static final I:[B

.field private static final J:[B

.field private static final K:[B

.field private static final L:[B

.field private static final M:[B

.field private static final N:[B

.field private static final O:[B

.field private static final P:[B

.field private static final Q:[B

.field private static final R:[B

.field private static final S:[B

.field private static T:Ljava/text/SimpleDateFormat;

.field private static U:Ljava/text/SimpleDateFormat;

.field static final V:[Ljava/lang/String;

.field static final W:[I

.field static final X:[B

.field private static final Y:[Landroidx/exifinterface/media/a$d;

.field private static final Z:[Landroidx/exifinterface/media/a$d;

.field private static final a0:[Landroidx/exifinterface/media/a$d;

.field private static final b0:[Landroidx/exifinterface/media/a$d;

.field private static final c0:[Landroidx/exifinterface/media/a$d;

.field private static final d0:Landroidx/exifinterface/media/a$d;

.field private static final e0:[Landroidx/exifinterface/media/a$d;

.field private static final f0:[Landroidx/exifinterface/media/a$d;

.field private static final g0:[Landroidx/exifinterface/media/a$d;

.field private static final h0:[Landroidx/exifinterface/media/a$d;

.field static final i0:[[Landroidx/exifinterface/media/a$d;

.field private static final j0:[Landroidx/exifinterface/media/a$d;

.field private static final k0:[Ljava/util/HashMap;

.field private static final l0:[Ljava/util/HashMap;

.field private static final m0:Ljava/util/HashSet;

.field private static final n0:Ljava/util/HashMap;

.field static final o0:Ljava/nio/charset/Charset;

.field static final p0:[B

.field private static final q0:[B

.field private static final r0:Ljava/util/regex/Pattern;

.field private static final s0:Ljava/util/regex/Pattern;

.field private static final t0:Ljava/util/regex/Pattern;

.field private static final u:Z

.field private static final u0:Ljava/util/regex/Pattern;

.field private static final v:Ljava/util/List;

.field private static final w:Ljava/util/List;

.field public static final x:[I

.field public static final y:[I

.field public static final z:[I


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/io/FileDescriptor;

.field private c:Landroid/content/res/AssetManager$AssetInputStream;

.field private d:I

.field private e:Z

.field private final f:[Ljava/util/HashMap;

.field private g:Ljava/util/Set;

.field private h:Ljava/nio/ByteOrder;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:[B

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 108

    .line 1
    const-string v0, "ExifInterface"

    const/4 v1, 0x3

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/exifinterface/media/a;->u:Z

    const/4 v0, 0x1

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x6

    .line 5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x4

    new-array v9, v8, [Ljava/lang/Integer;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    aput-object v5, v9, v0

    const/4 v5, 0x2

    aput-object v2, v9, v5

    aput-object v7, v9, v1

    .line 6
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    sput-object v9, Landroidx/exifinterface/media/a;->v:Ljava/util/List;

    .line 7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x5

    .line 8
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-array v11, v8, [Ljava/lang/Integer;

    aput-object v9, v11, v10

    aput-object v12, v11, v0

    aput-object v13, v11, v5

    aput-object v15, v11, v1

    .line 9
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    sput-object v11, Landroidx/exifinterface/media/a;->w:Ljava/util/List;

    .line 10
    filled-new-array {v6, v6, v6}, [I

    move-result-object v11

    sput-object v11, Landroidx/exifinterface/media/a;->x:[I

    .line 11
    filled-new-array {v8}, [I

    move-result-object v11

    sput-object v11, Landroidx/exifinterface/media/a;->y:[I

    .line 12
    filled-new-array {v6}, [I

    move-result-object v11

    sput-object v11, Landroidx/exifinterface/media/a;->z:[I

    .line 13
    new-array v11, v1, [B

    fill-array-data v11, :array_0

    sput-object v11, Landroidx/exifinterface/media/a;->A:[B

    .line 14
    new-array v11, v8, [B

    fill-array-data v11, :array_1

    sput-object v11, Landroidx/exifinterface/media/a;->B:[B

    .line 15
    new-array v11, v8, [B

    fill-array-data v11, :array_2

    sput-object v11, Landroidx/exifinterface/media/a;->C:[B

    .line 16
    new-array v11, v8, [B

    fill-array-data v11, :array_3

    sput-object v11, Landroidx/exifinterface/media/a;->D:[B

    .line 17
    new-array v11, v4, [B

    fill-array-data v11, :array_4

    sput-object v11, Landroidx/exifinterface/media/a;->E:[B

    const/16 v13, 0xa

    .line 18
    new-array v11, v13, [B

    fill-array-data v11, :array_5

    sput-object v11, Landroidx/exifinterface/media/a;->F:[B

    .line 19
    new-array v11, v6, [B

    fill-array-data v11, :array_6

    sput-object v11, Landroidx/exifinterface/media/a;->G:[B

    .line 20
    new-array v11, v8, [B

    fill-array-data v11, :array_7

    sput-object v11, Landroidx/exifinterface/media/a;->H:[B

    .line 21
    new-array v11, v8, [B

    fill-array-data v11, :array_8

    sput-object v11, Landroidx/exifinterface/media/a;->I:[B

    .line 22
    new-array v11, v8, [B

    fill-array-data v11, :array_9

    sput-object v11, Landroidx/exifinterface/media/a;->J:[B

    .line 23
    new-array v11, v8, [B

    fill-array-data v11, :array_a

    sput-object v11, Landroidx/exifinterface/media/a;->K:[B

    .line 24
    new-array v11, v8, [B

    fill-array-data v11, :array_b

    sput-object v11, Landroidx/exifinterface/media/a;->L:[B

    .line 25
    new-array v11, v8, [B

    fill-array-data v11, :array_c

    sput-object v11, Landroidx/exifinterface/media/a;->M:[B

    .line 26
    new-array v11, v1, [B

    fill-array-data v11, :array_d

    sput-object v11, Landroidx/exifinterface/media/a;->N:[B

    .line 27
    const-string v11, "VP8X"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    sput-object v11, Landroidx/exifinterface/media/a;->O:[B

    .line 28
    const-string v11, "VP8L"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    sput-object v11, Landroidx/exifinterface/media/a;->P:[B

    .line 29
    const-string v11, "VP8 "

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    sput-object v11, Landroidx/exifinterface/media/a;->Q:[B

    .line 30
    const-string v11, "ANIM"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    sput-object v11, Landroidx/exifinterface/media/a;->R:[B

    .line 31
    const-string v11, "ANMF"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    sput-object v11, Landroidx/exifinterface/media/a;->S:[B

    .line 32
    const-string v29, "DOUBLE"

    const-string v30, "IFD"

    const-string v17, ""

    const-string v18, "BYTE"

    const-string v19, "STRING"

    const-string v20, "USHORT"

    const-string v21, "ULONG"

    const-string v22, "URATIONAL"

    const-string v23, "SBYTE"

    const-string v24, "UNDEFINED"

    const-string v25, "SSHORT"

    const-string v26, "SLONG"

    const-string v27, "SRATIONAL"

    const-string v28, "SINGLE"

    filled-new-array/range {v17 .. v30}, [Ljava/lang/String;

    move-result-object v11

    sput-object v11, Landroidx/exifinterface/media/a;->V:[Ljava/lang/String;

    const/16 v11, 0xe

    .line 33
    new-array v13, v11, [I

    fill-array-data v13, :array_e

    sput-object v13, Landroidx/exifinterface/media/a;->W:[I

    .line 34
    new-array v13, v6, [B

    fill-array-data v13, :array_f

    sput-object v13, Landroidx/exifinterface/media/a;->X:[B

    .line 35
    new-instance v13, Landroidx/exifinterface/media/a$d;

    const-string v11, "NewSubfileType"

    const/16 v6, 0xfe

    invoke-direct {v13, v11, v6, v8}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v6, Landroidx/exifinterface/media/a$d;

    const-string v11, "SubfileType"

    const/16 v10, 0xff

    invoke-direct {v6, v11, v10, v8}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v10, Landroidx/exifinterface/media/a$d;

    const-string v11, "ImageWidth"

    const/16 v0, 0x100

    invoke-direct {v10, v11, v0, v1, v8}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;III)V

    new-instance v11, Landroidx/exifinterface/media/a$d;

    const-string v0, "ImageLength"

    const/16 v4, 0x101

    invoke-direct {v11, v0, v4, v1, v8}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;III)V

    new-instance v0, Landroidx/exifinterface/media/a$d;

    const-string v4, "BitsPerSample"

    const/16 v14, 0x102

    invoke-direct {v0, v4, v14, v1}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v4, Landroidx/exifinterface/media/a$d;

    const-string v14, "Compression"

    const/16 v8, 0x103

    invoke-direct {v4, v14, v8, v1}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/a$d;

    const-string v14, "PhotometricInterpretation"

    const/16 v5, 0x106

    invoke-direct {v8, v14, v5, v1}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/a$d;

    const-string v14, "ImageDescription"

    const/16 v1, 0x10e

    move-object/from16 v29, v7

    const/4 v7, 0x2

    invoke-direct {v5, v14, v1, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/a$d;

    const-string v14, "Make"

    move-object/from16 v30, v12

    const/16 v12, 0x10f

    invoke-direct {v1, v14, v12, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v12, Landroidx/exifinterface/media/a$d;

    const-string v14, "Model"

    move-object/from16 v31, v2

    const/16 v2, 0x110

    invoke-direct {v12, v14, v2, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/exifinterface/media/a$d;

    const-string v7, "StripOffsets"

    const/16 v14, 0x111

    move-object/from16 v33, v3

    move-object/from16 v32, v9

    const/4 v3, 0x4

    const/4 v9, 0x3

    invoke-direct {v2, v7, v14, v9, v3}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;III)V

    new-instance v3, Landroidx/exifinterface/media/a$d;

    const-string v14, "Orientation"

    move-object/from16 v34, v15

    const/16 v15, 0x112

    invoke-direct {v3, v14, v15, v9}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v14, Landroidx/exifinterface/media/a$d;

    const-string v15, "SamplesPerPixel"

    move-object/from16 v35, v7

    const/16 v7, 0x115

    invoke-direct {v14, v15, v7, v9}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/a$d;

    const-string v15, "RowsPerStrip"

    move-object/from16 v36, v14

    const/16 v14, 0x116

    move-object/from16 v37, v3

    const/4 v3, 0x4

    invoke-direct {v7, v15, v14, v9, v3}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;III)V

    new-instance v14, Landroidx/exifinterface/media/a$d;

    const-string v15, "StripByteCounts"

    move-object/from16 v38, v7

    const/16 v7, 0x117

    invoke-direct {v14, v15, v7, v9, v3}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;III)V

    new-instance v3, Landroidx/exifinterface/media/a$d;

    const-string v7, "XResolution"

    const/16 v9, 0x11a

    const/4 v15, 0x5

    invoke-direct {v3, v7, v9, v15}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/a$d;

    const-string v9, "YResolution"

    move-object/from16 v39, v3

    const/16 v3, 0x11b

    invoke-direct {v7, v9, v3, v15}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v3, Landroidx/exifinterface/media/a$d;

    const-string v9, "PlanarConfiguration"

    const/16 v15, 0x11c

    move-object/from16 v40, v7

    const/4 v7, 0x3

    invoke-direct {v3, v9, v15, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v9, Landroidx/exifinterface/media/a$d;

    const-string v15, "ResolutionUnit"

    move-object/from16 v41, v3

    const/16 v3, 0x128

    invoke-direct {v9, v15, v3, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v3, Landroidx/exifinterface/media/a$d;

    const-string v15, "TransferFunction"

    move-object/from16 v42, v9

    const/16 v9, 0x12d

    invoke-direct {v3, v15, v9, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/a$d;

    const-string v9, "Software"

    const/16 v15, 0x131

    move-object/from16 v43, v3

    const/4 v3, 0x2

    invoke-direct {v7, v9, v15, v3}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v9, Landroidx/exifinterface/media/a$d;

    const-string v15, "DateTime"

    move-object/from16 v44, v7

    const/16 v7, 0x132

    invoke-direct {v9, v15, v7, v3}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/a$d;

    const-string v15, "Artist"

    move-object/from16 v45, v9

    const/16 v9, 0x13b

    invoke-direct {v7, v15, v9, v3}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v3, Landroidx/exifinterface/media/a$d;

    const-string v9, "WhitePoint"

    const/16 v15, 0x13e

    move-object/from16 v46, v7

    const/4 v7, 0x5

    invoke-direct {v3, v9, v15, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v9, Landroidx/exifinterface/media/a$d;

    const-string v15, "PrimaryChromaticities"

    move-object/from16 v47, v3

    const/16 v3, 0x13f

    invoke-direct {v9, v15, v3, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v3, Landroidx/exifinterface/media/a$d;

    const-string v7, "SubIFDPointer"

    const/16 v15, 0x14a

    move-object/from16 v48, v9

    const/4 v9, 0x4

    invoke-direct {v3, v7, v15, v9}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v15, Landroidx/exifinterface/media/a$d;

    move-object/from16 v49, v7

    const-string v7, "JPEGInterchangeFormat"

    move-object/from16 v50, v3

    const/16 v3, 0x201

    invoke-direct {v15, v7, v3, v9}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v3, Landroidx/exifinterface/media/a$d;

    const-string v7, "JPEGInterchangeFormatLength"

    move-object/from16 v51, v15

    const/16 v15, 0x202

    invoke-direct {v3, v7, v15, v9}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/a$d;

    const-string v9, "YCbCrCoefficients"

    const/16 v15, 0x211

    move-object/from16 v52, v3

    const/4 v3, 0x5

    invoke-direct {v7, v9, v15, v3}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v3, Landroidx/exifinterface/media/a$d;

    const-string v9, "YCbCrSubSampling"

    const/16 v15, 0x212

    move-object/from16 v53, v7

    const/4 v7, 0x3

    invoke-direct {v3, v9, v15, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v9, Landroidx/exifinterface/media/a$d;

    const-string v15, "YCbCrPositioning"

    move-object/from16 v54, v3

    const/16 v3, 0x213

    invoke-direct {v9, v15, v3, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v3, Landroidx/exifinterface/media/a$d;

    const-string v7, "ReferenceBlackWhite"

    const/16 v15, 0x214

    move-object/from16 v55, v9

    const/4 v9, 0x5

    invoke-direct {v3, v7, v15, v9}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/a$d;

    const-string v9, "Copyright"

    const v15, 0x8298

    move-object/from16 v56, v3

    const/4 v3, 0x2

    invoke-direct {v7, v9, v15, v3}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v3, Landroidx/exifinterface/media/a$d;

    const v9, 0x8769

    const-string v15, "ExifIFDPointer"

    move-object/from16 v57, v7

    const/4 v7, 0x4

    invoke-direct {v3, v15, v9, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v9, Landroidx/exifinterface/media/a$d;

    move-object/from16 v58, v15

    const-string v15, "GPSInfoIFDPointer"

    move-object/from16 v59, v3

    const v3, 0x8825

    invoke-direct {v9, v15, v3, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v3, Landroidx/exifinterface/media/a$d;

    const-string v15, "SensorTopBorder"

    invoke-direct {v3, v15, v7, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v15, Landroidx/exifinterface/media/a$d;

    move-object/from16 v60, v3

    const-string v3, "SensorLeftBorder"

    move-object/from16 v61, v9

    const/4 v9, 0x5

    invoke-direct {v15, v3, v9, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v3, Landroidx/exifinterface/media/a$d;

    const-string v9, "SensorBottomBorder"

    move-object/from16 v62, v15

    const/4 v15, 0x6

    invoke-direct {v3, v9, v15, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v9, Landroidx/exifinterface/media/a$d;

    const-string v15, "SensorRightBorder"

    move-object/from16 v63, v3

    const/4 v3, 0x7

    invoke-direct {v9, v15, v3, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/a$d;

    const-string v15, "ISO"

    const/16 v3, 0x17

    move-object/from16 v64, v9

    const/4 v9, 0x3

    invoke-direct {v7, v15, v3, v9}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v9, Landroidx/exifinterface/media/a$d;

    const-string v15, "JpgFromRaw"

    const/16 v3, 0x2e

    move-object/from16 v65, v7

    const/4 v7, 0x7

    invoke-direct {v9, v15, v3, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v3, Landroidx/exifinterface/media/a$d;

    const-string v7, "Xmp"

    const/16 v15, 0x2bc

    move-object/from16 v66, v9

    const/4 v9, 0x1

    invoke-direct {v3, v7, v15, v9}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x2a

    new-array v7, v7, [Landroidx/exifinterface/media/a$d;

    const/4 v15, 0x0

    aput-object v13, v7, v15

    aput-object v6, v7, v9

    const/4 v6, 0x2

    aput-object v10, v7, v6

    const/4 v6, 0x3

    aput-object v11, v7, v6

    const/4 v6, 0x4

    aput-object v0, v7, v6

    const/4 v0, 0x5

    aput-object v4, v7, v0

    const/4 v0, 0x6

    aput-object v8, v7, v0

    const/4 v0, 0x7

    aput-object v5, v7, v0

    const/16 v0, 0x8

    aput-object v1, v7, v0

    const/16 v0, 0x9

    aput-object v12, v7, v0

    const/16 v1, 0xa

    aput-object v2, v7, v1

    const/16 v1, 0xb

    aput-object v37, v7, v1

    const/16 v2, 0xc

    aput-object v36, v7, v2

    const/16 v4, 0xd

    aput-object v38, v7, v4

    const/16 v4, 0xe

    aput-object v14, v7, v4

    const/16 v4, 0xf

    aput-object v39, v7, v4

    const/16 v5, 0x10

    aput-object v40, v7, v5

    const/16 v6, 0x11

    aput-object v41, v7, v6

    const/16 v8, 0x12

    aput-object v42, v7, v8

    const/16 v9, 0x13

    aput-object v43, v7, v9

    const/16 v9, 0x14

    aput-object v44, v7, v9

    const/16 v9, 0x15

    aput-object v45, v7, v9

    const/16 v9, 0x16

    aput-object v46, v7, v9

    const/16 v9, 0x17

    aput-object v47, v7, v9

    const/16 v9, 0x18

    aput-object v48, v7, v9

    const/16 v9, 0x19

    aput-object v50, v7, v9

    const/16 v9, 0x1a

    aput-object v51, v7, v9

    const/16 v9, 0x1b

    aput-object v52, v7, v9

    const/16 v9, 0x1c

    aput-object v53, v7, v9

    const/16 v9, 0x1d

    aput-object v54, v7, v9

    const/16 v9, 0x1e

    aput-object v55, v7, v9

    const/16 v9, 0x1f

    aput-object v56, v7, v9

    const/16 v9, 0x20

    aput-object v57, v7, v9

    const/16 v9, 0x21

    aput-object v59, v7, v9

    const/16 v9, 0x22

    aput-object v61, v7, v9

    const/16 v9, 0x23

    aput-object v60, v7, v9

    const/16 v9, 0x24

    aput-object v62, v7, v9

    const/16 v9, 0x25

    aput-object v63, v7, v9

    const/16 v9, 0x26

    aput-object v64, v7, v9

    const/16 v9, 0x27

    aput-object v65, v7, v9

    const/16 v9, 0x28

    aput-object v66, v7, v9

    const/16 v9, 0x29

    aput-object v3, v7, v9

    sput-object v7, Landroidx/exifinterface/media/a;->Y:[Landroidx/exifinterface/media/a$d;

    .line 36
    new-instance v3, Landroidx/exifinterface/media/a$d;

    const-string v9, "ExposureTime"

    const v10, 0x829a

    const/4 v11, 0x5

    invoke-direct {v3, v9, v10, v11}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v9, Landroidx/exifinterface/media/a$d;

    const-string v10, "FNumber"

    const v12, 0x829d

    invoke-direct {v9, v10, v12, v11}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v10, Landroidx/exifinterface/media/a$d;

    const-string v11, "ExposureProgram"

    const v12, 0x8822

    const/4 v13, 0x3

    invoke-direct {v10, v11, v12, v13}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v11, Landroidx/exifinterface/media/a$d;

    const-string v12, "SpectralSensitivity"

    const v14, 0x8824

    const/4 v15, 0x2

    invoke-direct {v11, v12, v14, v15}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v12, Landroidx/exifinterface/media/a$d;

    const-string v14, "PhotographicSensitivity"

    const v15, 0x8827

    invoke-direct {v12, v14, v15, v13}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v14, Landroidx/exifinterface/media/a$d;

    const-string v15, "OECF"

    const v8, 0x8828

    const/4 v6, 0x7

    invoke-direct {v14, v15, v8, v6}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v6, Landroidx/exifinterface/media/a$d;

    const-string v8, "SensitivityType"

    const v15, 0x8830

    invoke-direct {v6, v8, v15, v13}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/a$d;

    const-string v13, "StandardOutputSensitivity"

    const v15, 0x8831

    const/4 v5, 0x4

    invoke-direct {v8, v13, v15, v5}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v13, Landroidx/exifinterface/media/a$d;

    const-string v15, "RecommendedExposureIndex"

    const v4, 0x8832

    invoke-direct {v13, v15, v4, v5}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v4, Landroidx/exifinterface/media/a$d;

    const-string v15, "ISOSpeed"

    const v2, 0x8833

    invoke-direct {v4, v15, v2, v5}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/exifinterface/media/a$d;

    const-string v15, "ISOSpeedLatitudeyyy"

    const v1, 0x8834

    invoke-direct {v2, v15, v1, v5}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/a$d;

    const-string v15, "ISOSpeedLatitudezzz"

    const v0, 0x8835

    invoke-direct {v1, v15, v0, v5}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/a$d;

    const-string v5, "ExifVersion"

    const v15, 0x9000

    move-object/from16 v43, v7

    const/4 v7, 0x2

    invoke-direct {v0, v5, v15, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/a$d;

    const-string v15, "DateTimeOriginal"

    move-object/from16 v44, v0

    const v0, 0x9003

    invoke-direct {v5, v15, v0, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/a$d;

    const-string v15, "DateTimeDigitized"

    move-object/from16 v45, v5

    const v5, 0x9004

    invoke-direct {v0, v15, v5, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/a$d;

    const-string v15, "OffsetTime"

    move-object/from16 v46, v0

    const v0, 0x9010

    invoke-direct {v5, v15, v0, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/a$d;

    const-string v15, "OffsetTimeOriginal"

    move-object/from16 v47, v5

    const v5, 0x9011

    invoke-direct {v0, v15, v5, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/a$d;

    const-string v15, "OffsetTimeDigitized"

    move-object/from16 v48, v0

    const v0, 0x9012

    invoke-direct {v5, v15, v0, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/a$d;

    const-string v7, "ComponentsConfiguration"

    const v15, 0x9101

    move-object/from16 v50, v5

    const/4 v5, 0x7

    invoke-direct {v0, v7, v15, v5}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/a$d;

    const-string v7, "CompressedBitsPerPixel"

    const v15, 0x9102

    move-object/from16 v51, v0

    const/4 v0, 0x5

    invoke-direct {v5, v7, v15, v0}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/a$d;

    const-string v15, "ShutterSpeedValue"

    const v0, 0x9201

    move-object/from16 v52, v5

    const/16 v5, 0xa

    invoke-direct {v7, v15, v0, v5}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/a$d;

    const-string v15, "ApertureValue"

    const v5, 0x9202

    move-object/from16 v53, v7

    const/4 v7, 0x5

    invoke-direct {v0, v15, v5, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/a$d;

    const-string v7, "BrightnessValue"

    const v15, 0x9203

    move-object/from16 v54, v0

    const/16 v0, 0xa

    invoke-direct {v5, v7, v15, v0}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/a$d;

    const-string v15, "ExposureBiasValue"

    move-object/from16 v55, v5

    const v5, 0x9204

    invoke-direct {v7, v15, v5, v0}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/a$d;

    const-string v5, "MaxApertureValue"

    const v15, 0x9205

    move-object/from16 v56, v7

    const/4 v7, 0x5

    invoke-direct {v0, v5, v15, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/a$d;

    const-string v15, "SubjectDistance"

    move-object/from16 v57, v0

    const v0, 0x9206

    invoke-direct {v5, v15, v0, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/a$d;

    const-string v7, "MeteringMode"

    const v15, 0x9207

    move-object/from16 v59, v5

    const/4 v5, 0x3

    invoke-direct {v0, v7, v15, v5}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/a$d;

    const-string v15, "LightSource"

    move-object/from16 v60, v0

    const v0, 0x9208

    invoke-direct {v7, v15, v0, v5}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/a$d;

    const-string v15, "Flash"

    move-object/from16 v61, v7

    const v7, 0x9209

    invoke-direct {v0, v15, v7, v5}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/a$d;

    const-string v15, "FocalLength"

    const v5, 0x920a

    move-object/from16 v62, v0

    const/4 v0, 0x5

    invoke-direct {v7, v15, v5, v0}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/a$d;

    const-string v5, "SubjectArea"

    const v15, 0x9214

    move-object/from16 v63, v7

    const/4 v7, 0x3

    invoke-direct {v0, v5, v15, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/a$d;

    const-string v7, "MakerNote"

    const v15, 0x927c

    move-object/from16 v64, v0

    const/4 v0, 0x7

    invoke-direct {v5, v7, v15, v0}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/a$d;

    const-string v15, "UserComment"

    move-object/from16 v65, v5

    const v5, 0x9286

    invoke-direct {v7, v15, v5, v0}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/a$d;

    const-string v5, "SubSecTime"

    const v15, 0x9290

    move-object/from16 v66, v7

    const/4 v7, 0x2

    invoke-direct {v0, v5, v15, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/a$d;

    const-string v15, "SubSecTimeOriginal"

    move-object/from16 v67, v0

    const v0, 0x9291

    invoke-direct {v5, v15, v0, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/a$d;

    const-string v15, "SubSecTimeDigitized"

    move-object/from16 v68, v5

    const v5, 0x9292

    invoke-direct {v0, v15, v5, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/a$d;

    const-string v7, "FlashpixVersion"

    const v15, 0xa000

    move-object/from16 v69, v0

    const/4 v0, 0x7

    invoke-direct {v5, v7, v15, v0}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/a$d;

    const-string v7, "ColorSpace"

    const v15, 0xa001

    move-object/from16 v70, v5

    const/4 v5, 0x3

    invoke-direct {v0, v7, v15, v5}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/a$d;

    const-string v15, "PixelXDimension"

    move-object/from16 v71, v0

    const v0, 0xa002

    move-object/from16 v72, v1

    const/4 v1, 0x4

    invoke-direct {v7, v15, v0, v5, v1}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;III)V

    new-instance v0, Landroidx/exifinterface/media/a$d;

    const-string v15, "PixelYDimension"

    move-object/from16 v73, v7

    const v7, 0xa003

    invoke-direct {v0, v15, v7, v5, v1}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;III)V

    new-instance v5, Landroidx/exifinterface/media/a$d;

    const-string v7, "RelatedSoundFile"

    const v15, 0xa004

    const/4 v1, 0x2

    invoke-direct {v5, v7, v15, v1}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/a$d;

    const-string v7, "InteroperabilityIFDPointer"

    const v15, 0xa005

    move-object/from16 v74, v5

    const/4 v5, 0x4

    invoke-direct {v1, v7, v15, v5}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/a$d;

    const-string v7, "FlashEnergy"

    const v15, 0xa20b

    move-object/from16 v75, v1

    const/4 v1, 0x5

    invoke-direct {v5, v7, v15, v1}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/a$d;

    const-string v15, "SpatialFrequencyResponse"

    const v1, 0xa20c

    move-object/from16 v76, v5

    const/4 v5, 0x7

    invoke-direct {v7, v15, v1, v5}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/a$d;

    const-string v5, "FocalPlaneXResolution"

    const v15, 0xa20e

    move-object/from16 v77, v7

    const/4 v7, 0x5

    invoke-direct {v1, v5, v15, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/a$d;

    const-string v15, "FocalPlaneYResolution"

    move-object/from16 v78, v1

    const v1, 0xa20f

    invoke-direct {v5, v15, v1, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/a$d;

    const-string v7, "FocalPlaneResolutionUnit"

    const v15, 0xa210

    move-object/from16 v79, v5

    const/4 v5, 0x3

    invoke-direct {v1, v7, v15, v5}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/a$d;

    const-string v15, "SubjectLocation"

    move-object/from16 v80, v1

    const v1, 0xa214

    invoke-direct {v7, v15, v1, v5}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/a$d;

    const-string v15, "ExposureIndex"

    const v5, 0xa215

    move-object/from16 v81, v7

    const/4 v7, 0x5

    invoke-direct {v1, v15, v5, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/a$d;

    const-string v7, "SensingMethod"

    const v15, 0xa217

    move-object/from16 v82, v1

    const/4 v1, 0x3

    invoke-direct {v5, v7, v15, v1}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/a$d;

    const-string v7, "FileSource"

    const v15, 0xa300

    move-object/from16 v83, v5

    const/4 v5, 0x7

    invoke-direct {v1, v7, v15, v5}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/a$d;

    const-string v15, "SceneType"

    move-object/from16 v84, v1

    const v1, 0xa301

    invoke-direct {v7, v15, v1, v5}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/a$d;

    const-string v15, "CFAPattern"

    move-object/from16 v85, v7

    const v7, 0xa302

    invoke-direct {v1, v15, v7, v5}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/a$d;

    const-string v7, "CustomRendered"

    const v15, 0xa401

    move-object/from16 v86, v1

    const/4 v1, 0x3

    invoke-direct {v5, v7, v15, v1}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/a$d;

    const-string v15, "ExposureMode"

    move-object/from16 v87, v5

    const v5, 0xa402

    invoke-direct {v7, v15, v5, v1}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/a$d;

    const-string v15, "WhiteBalance"

    move-object/from16 v88, v7

    const v7, 0xa403

    invoke-direct {v5, v15, v7, v1}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/a$d;

    const-string v15, "DigitalZoomRatio"

    const v1, 0xa404

    move-object/from16 v89, v5

    const/4 v5, 0x5

    invoke-direct {v7, v15, v1, v5}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/a$d;

    const-string v5, "FocalLengthIn35mmFilm"

    const v15, 0xa405

    move-object/from16 v90, v7

    const/4 v7, 0x3

    invoke-direct {v1, v5, v15, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/a$d;

    const-string v15, "SceneCaptureType"

    move-object/from16 v91, v1

    const v1, 0xa406

    invoke-direct {v5, v15, v1, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/a$d;

    const-string v15, "GainControl"

    move-object/from16 v92, v5

    const v5, 0xa407

    invoke-direct {v1, v15, v5, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/a$d;

    const-string v15, "Contrast"

    move-object/from16 v93, v1

    const v1, 0xa408

    invoke-direct {v5, v15, v1, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/a$d;

    const-string v15, "Saturation"

    move-object/from16 v94, v5

    const v5, 0xa409

    invoke-direct {v1, v15, v5, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/a$d;

    const-string v15, "Sharpness"

    move-object/from16 v95, v1

    const v1, 0xa40a

    invoke-direct {v5, v15, v1, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/a$d;

    const-string v15, "DeviceSettingDescription"

    const v7, 0xa40b

    move-object/from16 v96, v5

    const/4 v5, 0x7

    invoke-direct {v1, v15, v7, v5}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/a$d;

    const-string v7, "SubjectDistanceRange"

    const v15, 0xa40c

    move-object/from16 v97, v1

    const/4 v1, 0x3

    invoke-direct {v5, v7, v15, v1}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/a$d;

    const-string v7, "ImageUniqueID"

    const v15, 0xa420

    move-object/from16 v98, v5

    const/4 v5, 0x2

    invoke-direct {v1, v7, v15, v5}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/a$d;

    const-string v15, "CameraOwnerName"

    move-object/from16 v99, v1

    const v1, 0xa430

    invoke-direct {v7, v15, v1, v5}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/a$d;

    const-string v15, "BodySerialNumber"

    move-object/from16 v100, v7

    const v7, 0xa431

    invoke-direct {v1, v15, v7, v5}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/a$d;

    const-string v15, "LensSpecification"

    const v5, 0xa432

    move-object/from16 v101, v1

    const/4 v1, 0x5

    invoke-direct {v7, v15, v5, v1}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/a$d;

    const-string v5, "LensMake"

    const v15, 0xa433

    move-object/from16 v102, v7

    const/4 v7, 0x2

    invoke-direct {v1, v5, v15, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/a$d;

    const-string v15, "LensModel"

    move-object/from16 v103, v1

    const v1, 0xa434

    invoke-direct {v5, v15, v1, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/a$d;

    const-string v7, "Gamma"

    const v15, 0xa500

    move-object/from16 v104, v5

    const/4 v5, 0x5

    invoke-direct {v1, v7, v15, v5}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/a$d;

    const-string v7, "DNGVersion"

    const v15, 0xc612

    move-object/from16 v105, v1

    const/4 v1, 0x1

    invoke-direct {v5, v7, v15, v1}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/a$d;

    const-string v15, "DefaultCropSize"

    const v1, 0xc620

    move-object/from16 v107, v0

    move-object/from16 v106, v5

    const/4 v0, 0x4

    const/4 v5, 0x3

    invoke-direct {v7, v15, v1, v5, v0}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;III)V

    const/16 v1, 0x4a

    new-array v1, v1, [Landroidx/exifinterface/media/a$d;

    const/4 v15, 0x0

    aput-object v3, v1, v15

    const/4 v3, 0x1

    aput-object v9, v1, v3

    const/4 v3, 0x2

    aput-object v10, v1, v3

    aput-object v11, v1, v5

    aput-object v12, v1, v0

    const/4 v0, 0x5

    aput-object v14, v1, v0

    const/4 v0, 0x6

    aput-object v6, v1, v0

    const/4 v0, 0x7

    aput-object v8, v1, v0

    const/16 v0, 0x8

    aput-object v13, v1, v0

    const/16 v0, 0x9

    aput-object v4, v1, v0

    const/16 v0, 0xa

    aput-object v2, v1, v0

    const/16 v0, 0xb

    aput-object v72, v1, v0

    const/16 v0, 0xc

    aput-object v44, v1, v0

    const/16 v0, 0xd

    aput-object v45, v1, v0

    const/16 v0, 0xe

    aput-object v46, v1, v0

    const/16 v0, 0xf

    aput-object v47, v1, v0

    const/16 v0, 0x10

    aput-object v48, v1, v0

    const/16 v0, 0x11

    aput-object v50, v1, v0

    const/16 v0, 0x12

    aput-object v51, v1, v0

    const/16 v0, 0x13

    aput-object v52, v1, v0

    const/16 v0, 0x14

    aput-object v53, v1, v0

    const/16 v0, 0x15

    aput-object v54, v1, v0

    const/16 v0, 0x16

    aput-object v55, v1, v0

    const/16 v0, 0x17

    aput-object v56, v1, v0

    const/16 v0, 0x18

    aput-object v57, v1, v0

    const/16 v0, 0x19

    aput-object v59, v1, v0

    const/16 v0, 0x1a

    aput-object v60, v1, v0

    const/16 v0, 0x1b

    aput-object v61, v1, v0

    const/16 v0, 0x1c

    aput-object v62, v1, v0

    const/16 v0, 0x1d

    aput-object v63, v1, v0

    const/16 v0, 0x1e

    aput-object v64, v1, v0

    const/16 v0, 0x1f

    aput-object v65, v1, v0

    const/16 v0, 0x20

    aput-object v66, v1, v0

    const/16 v0, 0x21

    aput-object v67, v1, v0

    const/16 v0, 0x22

    aput-object v68, v1, v0

    const/16 v0, 0x23

    aput-object v69, v1, v0

    const/16 v0, 0x24

    aput-object v70, v1, v0

    const/16 v0, 0x25

    aput-object v71, v1, v0

    const/16 v0, 0x26

    aput-object v73, v1, v0

    const/16 v0, 0x27

    aput-object v107, v1, v0

    const/16 v0, 0x28

    aput-object v74, v1, v0

    const/16 v0, 0x29

    aput-object v75, v1, v0

    const/16 v0, 0x2a

    aput-object v76, v1, v0

    const/16 v0, 0x2b

    aput-object v77, v1, v0

    const/16 v0, 0x2c

    aput-object v78, v1, v0

    const/16 v0, 0x2d

    aput-object v79, v1, v0

    const/16 v0, 0x2e

    aput-object v80, v1, v0

    const/16 v0, 0x2f

    aput-object v81, v1, v0

    const/16 v0, 0x30

    aput-object v82, v1, v0

    const/16 v0, 0x31

    aput-object v83, v1, v0

    const/16 v0, 0x32

    aput-object v84, v1, v0

    const/16 v0, 0x33

    aput-object v85, v1, v0

    const/16 v0, 0x34

    aput-object v86, v1, v0

    const/16 v0, 0x35

    aput-object v87, v1, v0

    const/16 v0, 0x36

    aput-object v88, v1, v0

    const/16 v0, 0x37

    aput-object v89, v1, v0

    const/16 v0, 0x38

    aput-object v90, v1, v0

    const/16 v0, 0x39

    aput-object v91, v1, v0

    const/16 v0, 0x3a

    aput-object v92, v1, v0

    const/16 v0, 0x3b

    aput-object v93, v1, v0

    const/16 v0, 0x3c

    aput-object v94, v1, v0

    const/16 v0, 0x3d

    aput-object v95, v1, v0

    const/16 v0, 0x3e

    aput-object v96, v1, v0

    const/16 v0, 0x3f

    aput-object v97, v1, v0

    const/16 v0, 0x40

    aput-object v98, v1, v0

    const/16 v0, 0x41

    aput-object v99, v1, v0

    const/16 v0, 0x42

    aput-object v100, v1, v0

    const/16 v0, 0x43

    aput-object v101, v1, v0

    const/16 v0, 0x44

    aput-object v102, v1, v0

    const/16 v0, 0x45

    aput-object v103, v1, v0

    const/16 v0, 0x46

    aput-object v104, v1, v0

    const/16 v0, 0x47

    aput-object v105, v1, v0

    const/16 v0, 0x48

    aput-object v106, v1, v0

    const/16 v0, 0x49

    aput-object v7, v1, v0

    sput-object v1, Landroidx/exifinterface/media/a;->Z:[Landroidx/exifinterface/media/a$d;

    .line 37
    new-instance v0, Landroidx/exifinterface/media/a$d;

    const-string v2, "GPSVersionID"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v3}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/exifinterface/media/a$d;

    const-string v4, "GPSLatitudeRef"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v3, v5}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v3, Landroidx/exifinterface/media/a$d;

    const-string v4, "GPSLatitude"

    const/4 v6, 0x5

    const/16 v7, 0xa

    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;III)V

    new-instance v4, Landroidx/exifinterface/media/a$d;

    const-string v8, "GPSLongitudeRef"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v5}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/a$d;

    const-string v8, "GPSLongitude"

    const/4 v9, 0x4

    invoke-direct {v5, v8, v9, v6, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;III)V

    new-instance v7, Landroidx/exifinterface/media/a$d;

    const-string v8, "GPSAltitudeRef"

    const/4 v9, 0x1

    invoke-direct {v7, v8, v6, v9}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/a$d;

    const-string v9, "GPSAltitude"

    const/4 v10, 0x6

    invoke-direct {v8, v9, v10, v6}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v9, Landroidx/exifinterface/media/a$d;

    const-string v10, "GPSTimeStamp"

    const/4 v11, 0x7

    invoke-direct {v9, v10, v11, v6}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v6, Landroidx/exifinterface/media/a$d;

    const-string v10, "GPSSatellites"

    const/16 v11, 0x8

    const/4 v12, 0x2

    invoke-direct {v6, v10, v11, v12}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v10, Landroidx/exifinterface/media/a$d;

    const-string v11, "GPSStatus"

    const/16 v13, 0x9

    invoke-direct {v10, v11, v13, v12}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v11, Landroidx/exifinterface/media/a$d;

    const-string v13, "GPSMeasureMode"

    const/16 v14, 0xa

    invoke-direct {v11, v13, v14, v12}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v13, Landroidx/exifinterface/media/a$d;

    const-string v14, "GPSDOP"

    const/16 v12, 0xb

    const/4 v15, 0x5

    invoke-direct {v13, v14, v12, v15}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v12, Landroidx/exifinterface/media/a$d;

    const-string v14, "GPSSpeedRef"

    move-object/from16 v16, v1

    const/16 v1, 0xc

    const/4 v15, 0x2

    invoke-direct {v12, v14, v1, v15}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/a$d;

    const-string v14, "GPSSpeed"

    move-object/from16 v44, v12

    const/16 v12, 0xd

    const/4 v15, 0x5

    invoke-direct {v1, v14, v12, v15}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v12, Landroidx/exifinterface/media/a$d;

    const-string v14, "GPSTrackRef"

    move-object/from16 v45, v1

    const/16 v1, 0xe

    const/4 v15, 0x2

    invoke-direct {v12, v14, v1, v15}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/a$d;

    const-string v14, "GPSTrack"

    move-object/from16 v46, v12

    const/16 v12, 0xf

    const/4 v15, 0x5

    invoke-direct {v1, v14, v12, v15}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v12, Landroidx/exifinterface/media/a$d;

    const-string v14, "GPSImgDirectionRef"

    move-object/from16 v47, v1

    const/16 v1, 0x10

    const/4 v15, 0x2

    invoke-direct {v12, v14, v1, v15}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/a$d;

    const-string v14, "GPSImgDirection"

    move-object/from16 v48, v12

    const/16 v12, 0x11

    const/4 v15, 0x5

    invoke-direct {v1, v14, v12, v15}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v12, Landroidx/exifinterface/media/a$d;

    const-string v14, "GPSMapDatum"

    move-object/from16 v50, v1

    const/16 v1, 0x12

    const/4 v15, 0x2

    invoke-direct {v12, v14, v1, v15}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/a$d;

    const-string v14, "GPSDestLatitudeRef"

    move-object/from16 v51, v12

    const/16 v12, 0x13

    invoke-direct {v1, v14, v12, v15}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v12, Landroidx/exifinterface/media/a$d;

    const-string v14, "GPSDestLatitude"

    const/16 v15, 0x14

    move-object/from16 v52, v1

    const/4 v1, 0x5

    invoke-direct {v12, v14, v15, v1}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v14, Landroidx/exifinterface/media/a$d;

    const-string v15, "GPSDestLongitudeRef"

    const/16 v1, 0x15

    move-object/from16 v53, v12

    const/4 v12, 0x2

    invoke-direct {v14, v15, v1, v12}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/a$d;

    const-string v15, "GPSDestLongitude"

    const/16 v12, 0x16

    move-object/from16 v54, v14

    const/4 v14, 0x5

    invoke-direct {v1, v15, v12, v14}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v12, Landroidx/exifinterface/media/a$d;

    const-string v15, "GPSDestBearingRef"

    move-object/from16 v55, v1

    const/4 v1, 0x2

    const/16 v14, 0x17

    invoke-direct {v12, v15, v14, v1}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v14, Landroidx/exifinterface/media/a$d;

    const-string v15, "GPSDestBearing"

    const/16 v1, 0x18

    move-object/from16 v56, v12

    const/4 v12, 0x5

    invoke-direct {v14, v15, v1, v12}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/a$d;

    const-string v15, "GPSDestDistanceRef"

    const/16 v12, 0x19

    move-object/from16 v57, v14

    const/4 v14, 0x2

    invoke-direct {v1, v15, v12, v14}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v12, Landroidx/exifinterface/media/a$d;

    const-string v14, "GPSDestDistance"

    move-object/from16 v59, v1

    const/16 v1, 0x1a

    const/4 v15, 0x5

    invoke-direct {v12, v14, v1, v15}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/a$d;

    const-string v14, "GPSProcessingMethod"

    const/16 v15, 0x1b

    move-object/from16 v60, v12

    const/4 v12, 0x7

    invoke-direct {v1, v14, v15, v12}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v14, Landroidx/exifinterface/media/a$d;

    const-string v15, "GPSAreaInformation"

    move-object/from16 v61, v1

    const/16 v1, 0x1c

    invoke-direct {v14, v15, v1, v12}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/a$d;

    const-string v12, "GPSDateStamp"

    const/16 v15, 0x1d

    move-object/from16 v62, v14

    const/4 v14, 0x2

    invoke-direct {v1, v12, v15, v14}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v12, Landroidx/exifinterface/media/a$d;

    const-string v14, "GPSDifferential"

    const/16 v15, 0x1e

    move-object/from16 v63, v1

    const/4 v1, 0x3

    invoke-direct {v12, v14, v15, v1}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v14, Landroidx/exifinterface/media/a$d;

    const-string v15, "GPSHPositioningError"

    const/16 v1, 0x1f

    move-object/from16 v64, v12

    const/4 v12, 0x5

    invoke-direct {v14, v15, v1, v12}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x20

    new-array v1, v1, [Landroidx/exifinterface/media/a$d;

    const/4 v15, 0x0

    aput-object v0, v1, v15

    const/4 v0, 0x1

    aput-object v2, v1, v0

    const/4 v0, 0x2

    aput-object v3, v1, v0

    const/4 v0, 0x3

    aput-object v4, v1, v0

    const/4 v0, 0x4

    aput-object v5, v1, v0

    aput-object v7, v1, v12

    const/4 v0, 0x6

    aput-object v8, v1, v0

    const/4 v0, 0x7

    aput-object v9, v1, v0

    const/16 v0, 0x8

    aput-object v6, v1, v0

    const/16 v0, 0x9

    aput-object v10, v1, v0

    const/16 v0, 0xa

    aput-object v11, v1, v0

    const/16 v0, 0xb

    aput-object v13, v1, v0

    const/16 v0, 0xc

    aput-object v44, v1, v0

    const/16 v0, 0xd

    aput-object v45, v1, v0

    const/16 v0, 0xe

    aput-object v46, v1, v0

    const/16 v0, 0xf

    aput-object v47, v1, v0

    const/16 v0, 0x10

    aput-object v48, v1, v0

    const/16 v0, 0x11

    aput-object v50, v1, v0

    const/16 v0, 0x12

    aput-object v51, v1, v0

    const/16 v0, 0x13

    aput-object v52, v1, v0

    const/16 v0, 0x14

    aput-object v53, v1, v0

    const/16 v0, 0x15

    aput-object v54, v1, v0

    const/16 v0, 0x16

    aput-object v55, v1, v0

    const/16 v0, 0x17

    aput-object v56, v1, v0

    const/16 v0, 0x18

    aput-object v57, v1, v0

    const/16 v0, 0x19

    aput-object v59, v1, v0

    const/16 v0, 0x1a

    aput-object v60, v1, v0

    const/16 v0, 0x1b

    aput-object v61, v1, v0

    const/16 v0, 0x1c

    aput-object v62, v1, v0

    const/16 v0, 0x1d

    aput-object v63, v1, v0

    const/16 v0, 0x1e

    aput-object v64, v1, v0

    const/16 v0, 0x1f

    aput-object v14, v1, v0

    sput-object v1, Landroidx/exifinterface/media/a;->a0:[Landroidx/exifinterface/media/a$d;

    .line 38
    new-instance v0, Landroidx/exifinterface/media/a$d;

    const-string v2, "InteroperabilityIndex"

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {v0, v2, v3, v4}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-array v2, v3, [Landroidx/exifinterface/media/a$d;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    sput-object v2, Landroidx/exifinterface/media/a;->b0:[Landroidx/exifinterface/media/a$d;

    .line 39
    new-instance v0, Landroidx/exifinterface/media/a$d;

    const-string v3, "NewSubfileType"

    const/16 v4, 0xfe

    const/4 v5, 0x4

    invoke-direct {v0, v3, v4, v5}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v3, Landroidx/exifinterface/media/a$d;

    const-string v4, "SubfileType"

    const/16 v6, 0xff

    invoke-direct {v3, v4, v6, v5}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v4, Landroidx/exifinterface/media/a$d;

    const-string v6, "ThumbnailImageWidth"

    const/4 v7, 0x3

    const/16 v8, 0x100

    invoke-direct {v4, v6, v8, v7, v5}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;III)V

    new-instance v6, Landroidx/exifinterface/media/a$d;

    const-string v8, "ThumbnailImageLength"

    const/16 v9, 0x101

    invoke-direct {v6, v8, v9, v7, v5}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;III)V

    new-instance v5, Landroidx/exifinterface/media/a$d;

    const-string v8, "BitsPerSample"

    const/16 v9, 0x102

    invoke-direct {v5, v8, v9, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/a$d;

    const-string v9, "Compression"

    const/16 v10, 0x103

    invoke-direct {v8, v9, v10, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v9, Landroidx/exifinterface/media/a$d;

    const-string v10, "PhotometricInterpretation"

    const/16 v11, 0x106

    invoke-direct {v9, v10, v11, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/a$d;

    const-string v10, "ImageDescription"

    const/16 v11, 0x10e

    const/4 v12, 0x2

    invoke-direct {v7, v10, v11, v12}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v10, Landroidx/exifinterface/media/a$d;

    const-string v11, "Make"

    const/16 v13, 0x10f

    invoke-direct {v10, v11, v13, v12}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v11, Landroidx/exifinterface/media/a$d;

    const-string v13, "Model"

    const/16 v14, 0x110

    invoke-direct {v11, v13, v14, v12}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v12, Landroidx/exifinterface/media/a$d;

    move-object/from16 v14, v35

    const/4 v13, 0x3

    const/16 v15, 0x111

    move-object/from16 v35, v2

    const/4 v2, 0x4

    invoke-direct {v12, v14, v15, v13, v2}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;III)V

    new-instance v2, Landroidx/exifinterface/media/a$d;

    const-string v15, "ThumbnailOrientation"

    move-object/from16 v44, v1

    const/16 v1, 0x112

    invoke-direct {v2, v15, v1, v13}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/a$d;

    const-string v15, "SamplesPerPixel"

    move-object/from16 v45, v14

    const/16 v14, 0x115

    invoke-direct {v1, v15, v14, v13}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v14, Landroidx/exifinterface/media/a$d;

    const-string v15, "RowsPerStrip"

    move-object/from16 v46, v1

    const/16 v1, 0x116

    move-object/from16 v47, v2

    const/4 v2, 0x4

    invoke-direct {v14, v15, v1, v13, v2}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;III)V

    new-instance v1, Landroidx/exifinterface/media/a$d;

    const-string v15, "StripByteCounts"

    move-object/from16 v48, v14

    const/16 v14, 0x117

    invoke-direct {v1, v15, v14, v13, v2}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;III)V

    new-instance v2, Landroidx/exifinterface/media/a$d;

    const-string v13, "XResolution"

    const/16 v14, 0x11a

    const/4 v15, 0x5

    invoke-direct {v2, v13, v14, v15}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v13, Landroidx/exifinterface/media/a$d;

    const-string v14, "YResolution"

    move-object/from16 v50, v2

    const/16 v2, 0x11b

    invoke-direct {v13, v14, v2, v15}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/exifinterface/media/a$d;

    const-string v14, "PlanarConfiguration"

    const/16 v15, 0x11c

    move-object/from16 v51, v13

    const/4 v13, 0x3

    invoke-direct {v2, v14, v15, v13}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v14, Landroidx/exifinterface/media/a$d;

    const-string v15, "ResolutionUnit"

    move-object/from16 v52, v2

    const/16 v2, 0x128

    invoke-direct {v14, v15, v2, v13}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/exifinterface/media/a$d;

    const-string v15, "TransferFunction"

    move-object/from16 v53, v14

    const/16 v14, 0x12d

    invoke-direct {v2, v15, v14, v13}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v13, Landroidx/exifinterface/media/a$d;

    const-string v14, "Software"

    const/16 v15, 0x131

    move-object/from16 v54, v2

    const/4 v2, 0x2

    invoke-direct {v13, v14, v15, v2}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v14, Landroidx/exifinterface/media/a$d;

    const-string v15, "DateTime"

    move-object/from16 v55, v13

    const/16 v13, 0x132

    invoke-direct {v14, v15, v13, v2}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v13, Landroidx/exifinterface/media/a$d;

    const-string v15, "Artist"

    move-object/from16 v56, v14

    const/16 v14, 0x13b

    invoke-direct {v13, v15, v14, v2}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/exifinterface/media/a$d;

    const-string v14, "WhitePoint"

    const/16 v15, 0x13e

    move-object/from16 v57, v13

    const/4 v13, 0x5

    invoke-direct {v2, v14, v15, v13}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v14, Landroidx/exifinterface/media/a$d;

    const-string v15, "PrimaryChromaticities"

    move-object/from16 v59, v2

    const/16 v2, 0x13f

    invoke-direct {v14, v15, v2, v13}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/exifinterface/media/a$d;

    move-object/from16 v13, v49

    const/16 v15, 0x14a

    move-object/from16 v49, v14

    const/4 v14, 0x4

    invoke-direct {v2, v13, v15, v14}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v15, Landroidx/exifinterface/media/a$d;

    move-object/from16 v60, v13

    const-string v13, "JPEGInterchangeFormat"

    move-object/from16 v61, v2

    const/16 v2, 0x201

    invoke-direct {v15, v13, v2, v14}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/exifinterface/media/a$d;

    const-string v13, "JPEGInterchangeFormatLength"

    move-object/from16 v62, v15

    const/16 v15, 0x202

    invoke-direct {v2, v13, v15, v14}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v13, Landroidx/exifinterface/media/a$d;

    const-string v14, "YCbCrCoefficients"

    const/16 v15, 0x211

    move-object/from16 v63, v2

    const/4 v2, 0x5

    invoke-direct {v13, v14, v15, v2}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/exifinterface/media/a$d;

    const-string v14, "YCbCrSubSampling"

    const/16 v15, 0x212

    move-object/from16 v64, v13

    const/4 v13, 0x3

    invoke-direct {v2, v14, v15, v13}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v14, Landroidx/exifinterface/media/a$d;

    const-string v15, "YCbCrPositioning"

    move-object/from16 v65, v2

    const/16 v2, 0x213

    invoke-direct {v14, v15, v2, v13}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/exifinterface/media/a$d;

    const-string v13, "ReferenceBlackWhite"

    const/16 v15, 0x214

    move-object/from16 v66, v14

    const/4 v14, 0x5

    invoke-direct {v2, v13, v15, v14}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v13, Landroidx/exifinterface/media/a$d;

    const-string v14, "Copyright"

    const v15, 0x8298

    move-object/from16 v67, v2

    const/4 v2, 0x2

    invoke-direct {v13, v14, v15, v2}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/exifinterface/media/a$d;

    const v14, 0x8769

    move-object/from16 v15, v58

    move-object/from16 v58, v13

    const/4 v13, 0x4

    invoke-direct {v2, v15, v14, v13}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v14, Landroidx/exifinterface/media/a$d;

    move-object/from16 v68, v15

    const-string v15, "GPSInfoIFDPointer"

    move-object/from16 v69, v2

    const v2, 0x8825

    invoke-direct {v14, v15, v2, v13}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/exifinterface/media/a$d;

    const-string v15, "DNGVersion"

    const v13, 0xc612

    move-object/from16 v70, v14

    const/4 v14, 0x1

    invoke-direct {v2, v15, v13, v14}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v13, Landroidx/exifinterface/media/a$d;

    const-string v15, "DefaultCropSize"

    const v14, 0xc620

    move-object/from16 v72, v1

    move-object/from16 v71, v2

    const/4 v1, 0x4

    const/4 v2, 0x3

    invoke-direct {v13, v15, v14, v2, v1}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;III)V

    const/16 v14, 0x25

    new-array v14, v14, [Landroidx/exifinterface/media/a$d;

    const/4 v15, 0x0

    aput-object v0, v14, v15

    const/4 v0, 0x1

    aput-object v3, v14, v0

    const/4 v0, 0x2

    aput-object v4, v14, v0

    aput-object v6, v14, v2

    aput-object v5, v14, v1

    const/4 v0, 0x5

    aput-object v8, v14, v0

    const/4 v0, 0x6

    aput-object v9, v14, v0

    const/4 v0, 0x7

    aput-object v7, v14, v0

    const/16 v0, 0x8

    aput-object v10, v14, v0

    const/16 v0, 0x9

    aput-object v11, v14, v0

    const/16 v0, 0xa

    aput-object v12, v14, v0

    const/16 v0, 0xb

    aput-object v47, v14, v0

    const/16 v0, 0xc

    aput-object v46, v14, v0

    const/16 v0, 0xd

    aput-object v48, v14, v0

    const/16 v0, 0xe

    aput-object v72, v14, v0

    const/16 v0, 0xf

    aput-object v50, v14, v0

    const/16 v0, 0x10

    aput-object v51, v14, v0

    const/16 v0, 0x11

    aput-object v52, v14, v0

    const/16 v0, 0x12

    aput-object v53, v14, v0

    const/16 v0, 0x13

    aput-object v54, v14, v0

    const/16 v0, 0x14

    aput-object v55, v14, v0

    const/16 v0, 0x15

    aput-object v56, v14, v0

    const/16 v0, 0x16

    aput-object v57, v14, v0

    const/16 v0, 0x17

    aput-object v59, v14, v0

    const/16 v0, 0x18

    aput-object v49, v14, v0

    const/16 v0, 0x19

    aput-object v61, v14, v0

    const/16 v0, 0x1a

    aput-object v62, v14, v0

    const/16 v0, 0x1b

    aput-object v63, v14, v0

    const/16 v0, 0x1c

    aput-object v64, v14, v0

    const/16 v0, 0x1d

    aput-object v65, v14, v0

    const/16 v0, 0x1e

    aput-object v66, v14, v0

    const/16 v0, 0x1f

    aput-object v67, v14, v0

    const/16 v0, 0x20

    aput-object v58, v14, v0

    const/16 v0, 0x21

    aput-object v69, v14, v0

    const/16 v0, 0x22

    aput-object v70, v14, v0

    const/16 v0, 0x23

    aput-object v71, v14, v0

    const/16 v0, 0x24

    aput-object v13, v14, v0

    sput-object v14, Landroidx/exifinterface/media/a;->c0:[Landroidx/exifinterface/media/a$d;

    .line 40
    new-instance v0, Landroidx/exifinterface/media/a$d;

    move-object/from16 v2, v45

    const/4 v1, 0x3

    const/16 v3, 0x111

    invoke-direct {v0, v2, v3, v1}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/exifinterface/media/a;->d0:Landroidx/exifinterface/media/a$d;

    .line 41
    new-instance v0, Landroidx/exifinterface/media/a$d;

    const-string v1, "ThumbnailImage"

    const/4 v2, 0x7

    const/16 v3, 0x100

    invoke-direct {v0, v1, v3, v2}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/a$d;

    const-string v2, "CameraSettingsIFDPointer"

    const/16 v3, 0x2020

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/exifinterface/media/a$d;

    const-string v3, "ImageProcessingIFDPointer"

    const/16 v5, 0x2040

    invoke-direct {v2, v3, v5, v4}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v3, 0x3

    new-array v5, v3, [Landroidx/exifinterface/media/a$d;

    const/4 v3, 0x0

    aput-object v0, v5, v3

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v1, 0x2

    aput-object v2, v5, v1

    sput-object v5, Landroidx/exifinterface/media/a;->e0:[Landroidx/exifinterface/media/a$d;

    .line 42
    new-instance v2, Landroidx/exifinterface/media/a$d;

    const-string v6, "PreviewImageStart"

    const/16 v7, 0x101

    invoke-direct {v2, v6, v7, v4}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v6, Landroidx/exifinterface/media/a$d;

    const-string v7, "PreviewImageLength"

    const/16 v8, 0x102

    invoke-direct {v6, v7, v8, v4}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-array v4, v1, [Landroidx/exifinterface/media/a$d;

    aput-object v2, v4, v3

    aput-object v6, v4, v0

    sput-object v4, Landroidx/exifinterface/media/a;->f0:[Landroidx/exifinterface/media/a$d;

    .line 43
    new-instance v1, Landroidx/exifinterface/media/a$d;

    const-string v2, "AspectFrame"

    const/16 v6, 0x1113

    const/4 v7, 0x3

    invoke-direct {v1, v2, v6, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-array v2, v0, [Landroidx/exifinterface/media/a$d;

    aput-object v1, v2, v3

    sput-object v2, Landroidx/exifinterface/media/a;->g0:[Landroidx/exifinterface/media/a$d;

    .line 44
    new-instance v1, Landroidx/exifinterface/media/a$d;

    const-string v6, "ColorSpace"

    const/16 v8, 0x37

    invoke-direct {v1, v6, v8, v7}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-array v6, v0, [Landroidx/exifinterface/media/a$d;

    aput-object v1, v6, v3

    sput-object v6, Landroidx/exifinterface/media/a;->h0:[Landroidx/exifinterface/media/a$d;

    const/16 v1, 0xa

    .line 45
    new-array v1, v1, [[Landroidx/exifinterface/media/a$d;

    aput-object v43, v1, v3

    aput-object v16, v1, v0

    const/4 v0, 0x2

    aput-object v44, v1, v0

    aput-object v35, v1, v7

    const/4 v0, 0x4

    aput-object v14, v1, v0

    const/4 v3, 0x5

    aput-object v43, v1, v3

    const/4 v3, 0x6

    aput-object v5, v1, v3

    const/4 v3, 0x7

    aput-object v4, v1, v3

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const/16 v2, 0x9

    aput-object v6, v1, v2

    sput-object v1, Landroidx/exifinterface/media/a;->i0:[[Landroidx/exifinterface/media/a$d;

    .line 46
    new-instance v2, Landroidx/exifinterface/media/a$d;

    move-object/from16 v3, v60

    const/16 v4, 0x14a

    invoke-direct {v2, v3, v4, v0}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v3, Landroidx/exifinterface/media/a$d;

    const v4, 0x8769

    move-object/from16 v5, v68

    invoke-direct {v3, v5, v4, v0}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v4, Landroidx/exifinterface/media/a$d;

    const-string v5, "GPSInfoIFDPointer"

    const v6, 0x8825

    invoke-direct {v4, v5, v6, v0}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/a$d;

    const-string v6, "InteroperabilityIFDPointer"

    const v7, 0xa005

    invoke-direct {v5, v6, v7, v0}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/a$d;

    const-string v6, "CameraSettingsIFDPointer"

    const/16 v7, 0x2020

    const/4 v8, 0x1

    invoke-direct {v0, v6, v7, v8}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    new-instance v6, Landroidx/exifinterface/media/a$d;

    const-string v7, "ImageProcessingIFDPointer"

    const/16 v9, 0x2040

    invoke-direct {v6, v7, v9, v8}, Landroidx/exifinterface/media/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v7, 0x6

    new-array v7, v7, [Landroidx/exifinterface/media/a$d;

    const/4 v9, 0x0

    aput-object v2, v7, v9

    aput-object v3, v7, v8

    const/4 v2, 0x2

    aput-object v4, v7, v2

    const/4 v2, 0x3

    aput-object v5, v7, v2

    const/4 v2, 0x4

    aput-object v0, v7, v2

    const/4 v0, 0x5

    aput-object v6, v7, v0

    sput-object v7, Landroidx/exifinterface/media/a;->j0:[Landroidx/exifinterface/media/a$d;

    .line 47
    array-length v0, v1

    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Landroidx/exifinterface/media/a;->k0:[Ljava/util/HashMap;

    .line 48
    array-length v0, v1

    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Landroidx/exifinterface/media/a;->l0:[Ljava/util/HashMap;

    .line 49
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "SubjectDistance"

    const-string v2, "GPSTimeStamp"

    const-string v3, "FNumber"

    const-string v4, "DigitalZoomRatio"

    const-string v5, "ExposureTime"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroidx/exifinterface/media/a;->m0:Ljava/util/HashSet;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/exifinterface/media/a;->n0:Ljava/util/HashMap;

    .line 51
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroidx/exifinterface/media/a;->o0:Ljava/nio/charset/Charset;

    .line 52
    const-string v1, "Exif\u0000\u0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Landroidx/exifinterface/media/a;->p0:[B

    .line 53
    const-string v1, "http://ns.adobe.com/xap/1.0/\u0000"

    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Landroidx/exifinterface/media/a;->q0:[B

    .line 55
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroidx/exifinterface/media/a;->T:Ljava/text/SimpleDateFormat;

    .line 56
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 57
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroidx/exifinterface/media/a;->U:Ljava/text/SimpleDateFormat;

    .line 58
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v15, 0x0

    .line 59
    :goto_0
    sget-object v0, Landroidx/exifinterface/media/a;->i0:[[Landroidx/exifinterface/media/a$d;

    array-length v1, v0

    if-ge v15, v1, :cond_1

    .line 60
    sget-object v1, Landroidx/exifinterface/media/a;->k0:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v1, v15

    .line 61
    sget-object v1, Landroidx/exifinterface/media/a;->l0:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v1, v15

    .line 62
    aget-object v0, v0, v15

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 63
    sget-object v4, Landroidx/exifinterface/media/a;->k0:[Ljava/util/HashMap;

    aget-object v4, v4, v15

    iget v5, v3, Landroidx/exifinterface/media/a$d;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v4, Landroidx/exifinterface/media/a;->l0:[Ljava/util/HashMap;

    aget-object v4, v4, v15

    iget-object v5, v3, Landroidx/exifinterface/media/a$d;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    add-int/2addr v2, v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    add-int/2addr v15, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    .line 65
    sget-object v0, Landroidx/exifinterface/media/a;->n0:Ljava/util/HashMap;

    sget-object v1, Landroidx/exifinterface/media/a;->j0:[Landroidx/exifinterface/media/a$d;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    iget v2, v2, Landroidx/exifinterface/media/a$d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v4, v34

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    aget-object v2, v1, v3

    iget v2, v2, Landroidx/exifinterface/media/a$d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v33

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    .line 67
    aget-object v2, v1, v2

    iget v2, v2, Landroidx/exifinterface/media/a$d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v32

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    .line 68
    aget-object v2, v1, v2

    iget v2, v2, Landroidx/exifinterface/media/a$d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v31

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    .line 69
    aget-object v2, v1, v2

    iget v2, v2, Landroidx/exifinterface/media/a$d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v30

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x5

    .line 70
    aget-object v1, v1, v2

    iget v1, v1, Landroidx/exifinterface/media/a$d;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v0, ".*[1-9].*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/exifinterface/media/a;->r0:Ljava/util/regex/Pattern;

    .line 72
    const-string v0, "^(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 73
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/exifinterface/media/a;->s0:Ljava/util/regex/Pattern;

    .line 74
    const-string v0, "^(\\d{4}):(\\d{2}):(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 75
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/exifinterface/media/a;->t0:Ljava/util/regex/Pattern;

    .line 76
    const-string v0, "^(\\d{4})-(\\d{2})-(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 77
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/exifinterface/media/a;->u0:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_1
    .array-data 1
        0x66t
        0x74t
        0x79t
        0x70t
    .end array-data

    :array_2
    .array-data 1
        0x6dt
        0x69t
        0x66t
        0x31t
    .end array-data

    :array_3
    .array-data 1
        0x68t
        0x65t
        0x69t
        0x63t
    .end array-data

    :array_4
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x55t
        0x53t
        0x0t
        0x49t
        0x49t
    .end array-data

    nop

    :array_6
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_7
    .array-data 1
        0x65t
        0x58t
        0x49t
        0x66t
    .end array-data

    :array_8
    .array-data 1
        0x49t
        0x48t
        0x44t
        0x52t
    .end array-data

    :array_9
    .array-data 1
        0x49t
        0x45t
        0x4et
        0x44t
    .end array-data

    :array_a
    .array-data 1
        0x52t
        0x49t
        0x46t
        0x46t
    .end array-data

    :array_b
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x50t
    .end array-data

    :array_c
    .array-data 1
        0x45t
        0x58t
        0x49t
        0x46t
    .end array-data

    :array_d
    .array-data 1
        -0x63t
        0x1t
        0x2at
    .end array-data

    :array_e
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x1
    .end array-data

    :array_f
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/a;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Landroidx/exifinterface/media/a;->i0:[[Landroidx/exifinterface/media/a$d;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 4
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroidx/exifinterface/media/a;->g:Ljava/util/Set;

    .line 5
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Landroidx/exifinterface/media/a;->a:Ljava/lang/String;

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 7
    new-instance p2, Ljava/io/BufferedInputStream;

    sget-object v2, Landroidx/exifinterface/media/a;->p0:[B

    array-length v2, v2

    invoke-direct {p2, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 8
    invoke-static {p2}, Landroidx/exifinterface/media/a;->r(Ljava/io/BufferedInputStream;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 9
    const-string p1, "ExifInterface"

    const-string p2, "Given data does not follow the structure of an Exif-only data."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 10
    :cond_0
    iput-boolean v1, p0, Landroidx/exifinterface/media/a;->e:Z

    .line 11
    iput-object v0, p0, Landroidx/exifinterface/media/a;->c:Landroid/content/res/AssetManager$AssetInputStream;

    .line 12
    iput-object v0, p0, Landroidx/exifinterface/media/a;->b:Ljava/io/FileDescriptor;

    move-object p1, p2

    goto :goto_0

    .line 13
    :cond_1
    instance-of p2, p1, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz p2, :cond_2

    .line 14
    move-object p2, p1

    check-cast p2, Landroid/content/res/AssetManager$AssetInputStream;

    iput-object p2, p0, Landroidx/exifinterface/media/a;->c:Landroid/content/res/AssetManager$AssetInputStream;

    .line 15
    iput-object v0, p0, Landroidx/exifinterface/media/a;->b:Ljava/io/FileDescriptor;

    goto :goto_0

    .line 16
    :cond_2
    instance-of p2, p1, Ljava/io/FileInputStream;

    if-eqz p2, :cond_3

    move-object p2, p1

    check-cast p2, Ljava/io/FileInputStream;

    .line 17
    invoke-virtual {p2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroidx/exifinterface/media/a;->y(Ljava/io/FileDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 18
    iput-object v0, p0, Landroidx/exifinterface/media/a;->c:Landroid/content/res/AssetManager$AssetInputStream;

    .line 19
    invoke-virtual {p2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p2

    iput-object p2, p0, Landroidx/exifinterface/media/a;->b:Ljava/io/FileDescriptor;

    goto :goto_0

    .line 20
    :cond_3
    iput-object v0, p0, Landroidx/exifinterface/media/a;->c:Landroid/content/res/AssetManager$AssetInputStream;

    .line 21
    iput-object v0, p0, Landroidx/exifinterface/media/a;->b:Ljava/io/FileDescriptor;

    .line 22
    :goto_0
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/a;->C(Ljava/io/InputStream;)V

    return-void

    .line 23
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "inputStream cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private A(Ljava/util/HashMap;)Z
    .locals 2

    .line 1
    const-string v0, "ImageLength"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/exifinterface/media/a$c;

    .line 8
    .line 9
    const-string v1, "ImageWidth"

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroidx/exifinterface/media/a$c;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/a$c;->i(Ljava/nio/ByteOrder;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/a$c;->i(Ljava/nio/ByteOrder;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/16 v1, 0x200

    .line 34
    .line 35
    if-gt v0, v1, :cond_0

    .line 36
    .line 37
    if-gt p1, v1, :cond_0

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    return p1

    .line 41
    :cond_0
    const/4 p1, 0x0

    .line 42
    return p1
.end method

.method private B([B)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    sget-object v2, Landroidx/exifinterface/media/a;->K:[B

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    if-ge v1, v3, :cond_1

    .line 7
    .line 8
    aget-byte v3, p1, v1

    .line 9
    .line 10
    aget-byte v2, v2, v1

    .line 11
    .line 12
    if-eq v3, v2, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    move v1, v0

    .line 19
    :goto_1
    sget-object v2, Landroidx/exifinterface/media/a;->L:[B

    .line 20
    .line 21
    array-length v3, v2

    .line 22
    if-ge v1, v3, :cond_3

    .line 23
    .line 24
    sget-object v3, Landroidx/exifinterface/media/a;->K:[B

    .line 25
    .line 26
    array-length v3, v3

    .line 27
    add-int/2addr v3, v1

    .line 28
    add-int/lit8 v3, v3, 0x4

    .line 29
    .line 30
    aget-byte v3, p1, v3

    .line 31
    .line 32
    aget-byte v2, v2, v1

    .line 33
    .line 34
    if-eq v3, v2, :cond_2

    .line 35
    .line 36
    return v0

    .line 37
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_3
    const/4 p1, 0x1

    .line 41
    return p1
.end method

.method private C(Ljava/io/InputStream;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_e

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    move v1, v0

    .line 5
    :goto_0
    :try_start_0
    sget-object v2, Landroidx/exifinterface/media/a;->i0:[[Landroidx/exifinterface/media/a$d;

    .line 6
    .line 7
    array-length v2, v2

    .line 8
    if-ge v1, v2, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 11
    .line 12
    new-instance v3, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    aput-object v3, v2, v1

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto/16 :goto_6

    .line 24
    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto/16 :goto_4

    .line 27
    .line 28
    :catch_1
    move-exception p1

    .line 29
    goto/16 :goto_4

    .line 30
    .line 31
    :cond_0
    iget-boolean v1, p0, Landroidx/exifinterface/media/a;->e:Z

    .line 32
    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 36
    .line 37
    const/16 v2, 0x1388

    .line 38
    .line 39
    invoke-direct {v1, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, v1}, Landroidx/exifinterface/media/a;->g(Ljava/io/BufferedInputStream;)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    iput p1, p0, Landroidx/exifinterface/media/a;->d:I

    .line 47
    .line 48
    move-object p1, v1

    .line 49
    :cond_1
    iget v1, p0, Landroidx/exifinterface/media/a;->d:I

    .line 50
    .line 51
    invoke-static {v1}, Landroidx/exifinterface/media/a;->L(I)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_6

    .line 56
    .line 57
    new-instance v0, Landroidx/exifinterface/media/a$f;

    .line 58
    .line 59
    invoke-direct {v0, p1}, Landroidx/exifinterface/media/a$f;-><init>(Ljava/io/InputStream;)V

    .line 60
    .line 61
    .line 62
    iget-boolean p1, p0, Landroidx/exifinterface/media/a;->e:Z

    .line 63
    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/a;->n(Landroidx/exifinterface/media/a$f;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    iget p1, p0, Landroidx/exifinterface/media/a;->d:I

    .line 71
    .line 72
    const/16 v1, 0xc

    .line 73
    .line 74
    if-ne p1, v1, :cond_3

    .line 75
    .line 76
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/a;->e(Landroidx/exifinterface/media/a$f;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    const/4 v1, 0x7

    .line 81
    if-ne p1, v1, :cond_4

    .line 82
    .line 83
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/a;->h(Landroidx/exifinterface/media/a$f;)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    const/16 v1, 0xa

    .line 88
    .line 89
    if-ne p1, v1, :cond_5

    .line 90
    .line 91
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/a;->m(Landroidx/exifinterface/media/a$f;)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_5
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/a;->k(Landroidx/exifinterface/media/a$f;)V

    .line 96
    .line 97
    .line 98
    :goto_1
    iget p1, p0, Landroidx/exifinterface/media/a;->p:I

    .line 99
    .line 100
    int-to-long v1, p1

    .line 101
    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/a$f;->l(J)V

    .line 102
    .line 103
    .line 104
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/a;->K(Landroidx/exifinterface/media/a$b;)V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_6
    new-instance v1, Landroidx/exifinterface/media/a$b;

    .line 109
    .line 110
    invoke-direct {v1, p1}, Landroidx/exifinterface/media/a$b;-><init>(Ljava/io/InputStream;)V

    .line 111
    .line 112
    .line 113
    iget p1, p0, Landroidx/exifinterface/media/a;->d:I

    .line 114
    .line 115
    const/4 v2, 0x4

    .line 116
    if-ne p1, v2, :cond_7

    .line 117
    .line 118
    invoke-direct {p0, v1, v0, v0}, Landroidx/exifinterface/media/a;->f(Landroidx/exifinterface/media/a$b;II)V

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_7
    const/16 v0, 0xd

    .line 123
    .line 124
    if-ne p1, v0, :cond_8

    .line 125
    .line 126
    invoke-direct {p0, v1}, Landroidx/exifinterface/media/a;->i(Landroidx/exifinterface/media/a$b;)V

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_8
    const/16 v0, 0x9

    .line 131
    .line 132
    if-ne p1, v0, :cond_9

    .line 133
    .line 134
    invoke-direct {p0, v1}, Landroidx/exifinterface/media/a;->j(Landroidx/exifinterface/media/a$b;)V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_9
    const/16 v0, 0xe

    .line 139
    .line 140
    if-ne p1, v0, :cond_a

    .line 141
    .line 142
    invoke-direct {p0, v1}, Landroidx/exifinterface/media/a;->o(Landroidx/exifinterface/media/a$b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .line 144
    .line 145
    :cond_a
    :goto_2
    invoke-direct {p0}, Landroidx/exifinterface/media/a;->a()V

    .line 146
    .line 147
    .line 148
    sget-boolean p1, Landroidx/exifinterface/media/a;->u:Z

    .line 149
    .line 150
    if-eqz p1, :cond_c

    .line 151
    .line 152
    :goto_3
    invoke-direct {p0}, Landroidx/exifinterface/media/a;->E()V

    .line 153
    .line 154
    .line 155
    goto :goto_5

    .line 156
    :goto_4
    :try_start_1
    sget-boolean v0, Landroidx/exifinterface/media/a;->u:Z

    .line 157
    .line 158
    if-eqz v0, :cond_b

    .line 159
    .line 160
    const-string v1, "ExifInterface"

    .line 161
    .line 162
    const-string v2, "Invalid image: ExifInterface got an unsupported image format file(ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface."

    .line 163
    .line 164
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    .line 166
    .line 167
    :cond_b
    invoke-direct {p0}, Landroidx/exifinterface/media/a;->a()V

    .line 168
    .line 169
    .line 170
    if-eqz v0, :cond_c

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_c
    :goto_5
    return-void

    .line 174
    :goto_6
    invoke-direct {p0}, Landroidx/exifinterface/media/a;->a()V

    .line 175
    .line 176
    .line 177
    sget-boolean v0, Landroidx/exifinterface/media/a;->u:Z

    .line 178
    .line 179
    if-eqz v0, :cond_d

    .line 180
    .line 181
    invoke-direct {p0}, Landroidx/exifinterface/media/a;->E()V

    .line 182
    .line 183
    .line 184
    :cond_d
    throw p1

    .line 185
    :cond_e
    new-instance p1, Ljava/lang/NullPointerException;

    .line 186
    .line 187
    const-string v0, "inputstream shouldn\'t be null"

    .line 188
    .line 189
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw p1
.end method

.method private D(Landroidx/exifinterface/media/a$b;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/a;->F(Landroidx/exifinterface/media/a$b;)Ljava/nio/ByteOrder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/a$b;->j(Ljava/nio/ByteOrder;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/exifinterface/media/a$b;->readUnsignedShort()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget v1, p0, Landroidx/exifinterface/media/a;->d:I

    .line 15
    .line 16
    const/4 v2, 0x7

    .line 17
    if-eq v1, v2, :cond_1

    .line 18
    .line 19
    const/16 v2, 0xa

    .line 20
    .line 21
    if-eq v1, v2, :cond_1

    .line 22
    .line 23
    const/16 v1, 0x2a

    .line 24
    .line 25
    if-ne v0, v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "Invalid start code: "

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/exifinterface/media/a$b;->readInt()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    const/16 v1, 0x8

    .line 60
    .line 61
    if-lt v0, v1, :cond_3

    .line 62
    .line 63
    add-int/lit8 v0, v0, -0x8

    .line 64
    .line 65
    if-lez v0, :cond_2

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/a$b;->k(I)V

    .line 68
    .line 69
    .line 70
    :cond_2
    return-void

    .line 71
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 72
    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v2, "Invalid first Ifd offset: "

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p1
.end method

.method private E()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 3
    .line 4
    array-length v1, v1

    .line 5
    if-ge v0, v1, :cond_1

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "The size of tag group["

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, "]: "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 26
    .line 27
    aget-object v2, v2, v0

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 37
    .line 38
    aget-object v1, v1, v0

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_0

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Ljava/util/Map$Entry;

    .line 59
    .line 60
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Landroidx/exifinterface/media/a$c;

    .line 65
    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v5, "tagName: "

    .line 72
    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v2, ", tagType: "

    .line 86
    .line 87
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Landroidx/exifinterface/media/a$c;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v2, ", tagValue: \'"

    .line 98
    .line 99
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget-object v2, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 103
    .line 104
    invoke-virtual {v3, v2}, Landroidx/exifinterface/media/a$c;->j(Ljava/nio/ByteOrder;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v2, "\'"

    .line 112
    .line 113
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_1
    return-void
.end method

.method private F(Landroidx/exifinterface/media/a$b;)Ljava/nio/ByteOrder;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/exifinterface/media/a$b;->readShort()S

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/16 v0, 0x4949

    .line 6
    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x4d4d

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "Invalid byte order: "

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :cond_1
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 44
    .line 45
    return-object p1
.end method

.method private G([BI)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/exifinterface/media/a$f;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/exifinterface/media/a$f;-><init>([B)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/a;->D(Landroidx/exifinterface/media/a$b;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0, p2}, Landroidx/exifinterface/media/a;->H(Landroidx/exifinterface/media/a$f;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private H(Landroidx/exifinterface/media/a$f;I)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    const/4 v5, 0x5

    .line 8
    const/4 v7, 0x0

    .line 9
    const/4 v8, 0x1

    .line 10
    iget-object v9, v0, Landroidx/exifinterface/media/a;->g:Ljava/util/Set;

    .line 11
    .line 12
    iget v10, v1, Landroidx/exifinterface/media/a$b;->c:I

    .line 13
    .line 14
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v10

    .line 18
    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->readShort()S

    .line 22
    .line 23
    .line 24
    move-result v9

    .line 25
    sget-boolean v10, Landroidx/exifinterface/media/a;->u:Z

    .line 26
    .line 27
    if-eqz v10, :cond_0

    .line 28
    .line 29
    new-instance v10, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v11, "numberOfDirectoryEntry: "

    .line 35
    .line 36
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    :cond_0
    if-gtz v9, :cond_1

    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    move v10, v7

    .line 46
    :goto_0
    if-ge v10, v9, :cond_22

    .line 47
    .line 48
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->readUnsignedShort()I

    .line 49
    .line 50
    .line 51
    move-result v13

    .line 52
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->readUnsignedShort()I

    .line 53
    .line 54
    .line 55
    move-result v14

    .line 56
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->readInt()I

    .line 57
    .line 58
    .line 59
    move-result v15

    .line 60
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->d()I

    .line 61
    .line 62
    .line 63
    move-result v11

    .line 64
    int-to-long v11, v11

    .line 65
    const-wide/16 v18, 0x4

    .line 66
    .line 67
    add-long v11, v11, v18

    .line 68
    .line 69
    sget-object v20, Landroidx/exifinterface/media/a;->k0:[Ljava/util/HashMap;

    .line 70
    .line 71
    aget-object v6, v20, v2

    .line 72
    .line 73
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    check-cast v3, Landroidx/exifinterface/media/a$d;

    .line 82
    .line 83
    sget-boolean v6, Landroidx/exifinterface/media/a;->u:Z

    .line 84
    .line 85
    if-eqz v6, :cond_3

    .line 86
    .line 87
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v20

    .line 91
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v21

    .line 95
    if-eqz v3, :cond_2

    .line 96
    .line 97
    iget-object v4, v3, Landroidx/exifinterface/media/a$d;->b:Ljava/lang/String;

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    const/4 v4, 0x0

    .line 101
    :goto_1
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v22

    .line 105
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v23

    .line 109
    move/from16 v24, v9

    .line 110
    .line 111
    new-array v9, v5, [Ljava/lang/Object;

    .line 112
    .line 113
    aput-object v20, v9, v7

    .line 114
    .line 115
    aput-object v21, v9, v8

    .line 116
    .line 117
    const/16 v20, 0x2

    .line 118
    .line 119
    aput-object v4, v9, v20

    .line 120
    .line 121
    const/4 v4, 0x3

    .line 122
    aput-object v22, v9, v4

    .line 123
    .line 124
    const/4 v4, 0x4

    .line 125
    aput-object v23, v9, v4

    .line 126
    .line 127
    const-string v4, "ifdType: %d, tagNumber: %d, tagName: %s, dataFormat: %d, numberOfComponents: %d"

    .line 128
    .line 129
    invoke-static {v4, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_3
    move/from16 v24, v9

    .line 134
    .line 135
    :goto_2
    const/4 v4, 0x7

    .line 136
    if-nez v3, :cond_4

    .line 137
    .line 138
    if-eqz v6, :cond_c

    .line 139
    .line 140
    new-instance v9, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    const-string v5, "Skip the tag entry since tag number is not defined: "

    .line 146
    .line 147
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    goto :goto_5

    .line 154
    :cond_4
    if-lez v14, :cond_b

    .line 155
    .line 156
    sget-object v5, Landroidx/exifinterface/media/a;->W:[I

    .line 157
    .line 158
    array-length v9, v5

    .line 159
    if-lt v14, v9, :cond_5

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_5
    invoke-virtual {v3, v14}, Landroidx/exifinterface/media/a$d;->a(I)Z

    .line 163
    .line 164
    .line 165
    move-result v9

    .line 166
    if-nez v9, :cond_6

    .line 167
    .line 168
    if-eqz v6, :cond_c

    .line 169
    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    const-string v9, "Skip the tag entry since data format ("

    .line 176
    .line 177
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    sget-object v9, Landroidx/exifinterface/media/a;->V:[Ljava/lang/String;

    .line 181
    .line 182
    aget-object v9, v9, v14

    .line 183
    .line 184
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v9, ") is unexpected for tag: "

    .line 188
    .line 189
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    iget-object v9, v3, Landroidx/exifinterface/media/a$d;->b:Ljava/lang/String;

    .line 193
    .line 194
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_6
    if-ne v14, v4, :cond_7

    .line 199
    .line 200
    iget v14, v3, Landroidx/exifinterface/media/a$d;->c:I

    .line 201
    .line 202
    :cond_7
    int-to-long v8, v15

    .line 203
    aget v5, v5, v14

    .line 204
    .line 205
    int-to-long v4, v5

    .line 206
    mul-long/2addr v4, v8

    .line 207
    const-wide/16 v8, 0x0

    .line 208
    .line 209
    cmp-long v23, v4, v8

    .line 210
    .line 211
    if-ltz v23, :cond_9

    .line 212
    .line 213
    const-wide/32 v8, 0x7fffffff

    .line 214
    .line 215
    .line 216
    cmp-long v8, v4, v8

    .line 217
    .line 218
    if-lez v8, :cond_8

    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_8
    const/4 v8, 0x1

    .line 222
    goto :goto_6

    .line 223
    :cond_9
    :goto_3
    if-eqz v6, :cond_a

    .line 224
    .line 225
    new-instance v8, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    const-string v9, "Skip the tag entry since the number of components is invalid: "

    .line 231
    .line 232
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    :cond_a
    move v8, v7

    .line 239
    goto :goto_6

    .line 240
    :cond_b
    :goto_4
    if-eqz v6, :cond_c

    .line 241
    .line 242
    new-instance v4, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .line 246
    .line 247
    const-string v5, "Skip the tag entry since data format is invalid: "

    .line 248
    .line 249
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    :cond_c
    :goto_5
    move v8, v7

    .line 256
    const-wide/16 v4, 0x0

    .line 257
    .line 258
    :goto_6
    if-nez v8, :cond_d

    .line 259
    .line 260
    invoke-virtual {v1, v11, v12}, Landroidx/exifinterface/media/a$f;->l(J)V

    .line 261
    .line 262
    .line 263
    move/from16 v25, v10

    .line 264
    .line 265
    const/4 v3, 0x1

    .line 266
    const/4 v4, 0x3

    .line 267
    const/4 v10, 0x2

    .line 268
    goto/16 :goto_11

    .line 269
    .line 270
    :cond_d
    cmp-long v8, v4, v18

    .line 271
    .line 272
    const-string v9, "Compression"

    .line 273
    .line 274
    if-lez v8, :cond_11

    .line 275
    .line 276
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->readInt()I

    .line 277
    .line 278
    .line 279
    move-result v8

    .line 280
    if-eqz v6, :cond_e

    .line 281
    .line 282
    new-instance v7, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .line 286
    .line 287
    move/from16 v25, v10

    .line 288
    .line 289
    const-string v10, "seek to data offset: "

    .line 290
    .line 291
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    goto :goto_7

    .line 298
    :cond_e
    move/from16 v25, v10

    .line 299
    .line 300
    :goto_7
    iget v7, v0, Landroidx/exifinterface/media/a;->d:I

    .line 301
    .line 302
    const/4 v10, 0x7

    .line 303
    if-ne v7, v10, :cond_f

    .line 304
    .line 305
    iget-object v7, v3, Landroidx/exifinterface/media/a$d;->b:Ljava/lang/String;

    .line 306
    .line 307
    const-string v10, "MakerNote"

    .line 308
    .line 309
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v7

    .line 313
    if-eqz v7, :cond_10

    .line 314
    .line 315
    iput v8, v0, Landroidx/exifinterface/media/a;->q:I

    .line 316
    .line 317
    :cond_f
    move-wide/from16 v26, v11

    .line 318
    .line 319
    move/from16 v18, v15

    .line 320
    .line 321
    goto :goto_8

    .line 322
    :cond_10
    const/4 v7, 0x6

    .line 323
    if-ne v2, v7, :cond_f

    .line 324
    .line 325
    const-string v10, "ThumbnailImage"

    .line 326
    .line 327
    iget-object v7, v3, Landroidx/exifinterface/media/a$d;->b:Ljava/lang/String;

    .line 328
    .line 329
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v7

    .line 333
    if-eqz v7, :cond_f

    .line 334
    .line 335
    iput v8, v0, Landroidx/exifinterface/media/a;->r:I

    .line 336
    .line 337
    iput v15, v0, Landroidx/exifinterface/media/a;->s:I

    .line 338
    .line 339
    iget-object v7, v0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 340
    .line 341
    const/4 v10, 0x6

    .line 342
    invoke-static {v10, v7}, Landroidx/exifinterface/media/a$c;->f(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$c;

    .line 343
    .line 344
    .line 345
    move-result-object v7

    .line 346
    iget v10, v0, Landroidx/exifinterface/media/a;->r:I

    .line 347
    .line 348
    move-wide/from16 v26, v11

    .line 349
    .line 350
    int-to-long v10, v10

    .line 351
    iget-object v12, v0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 352
    .line 353
    invoke-static {v10, v11, v12}, Landroidx/exifinterface/media/a$c;->b(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$c;

    .line 354
    .line 355
    .line 356
    move-result-object v10

    .line 357
    iget v11, v0, Landroidx/exifinterface/media/a;->s:I

    .line 358
    .line 359
    int-to-long v11, v11

    .line 360
    move/from16 v18, v15

    .line 361
    .line 362
    iget-object v15, v0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 363
    .line 364
    invoke-static {v11, v12, v15}, Landroidx/exifinterface/media/a$c;->b(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$c;

    .line 365
    .line 366
    .line 367
    move-result-object v11

    .line 368
    iget-object v12, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 369
    .line 370
    const/4 v15, 0x4

    .line 371
    aget-object v12, v12, v15

    .line 372
    .line 373
    invoke-virtual {v12, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    iget-object v7, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 377
    .line 378
    aget-object v7, v7, v15

    .line 379
    .line 380
    const-string v12, "JPEGInterchangeFormat"

    .line 381
    .line 382
    invoke-virtual {v7, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    iget-object v7, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 386
    .line 387
    aget-object v7, v7, v15

    .line 388
    .line 389
    const-string v10, "JPEGInterchangeFormatLength"

    .line 390
    .line 391
    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    :goto_8
    int-to-long v7, v8

    .line 395
    invoke-virtual {v1, v7, v8}, Landroidx/exifinterface/media/a$f;->l(J)V

    .line 396
    .line 397
    .line 398
    goto :goto_9

    .line 399
    :cond_11
    move/from16 v25, v10

    .line 400
    .line 401
    move-wide/from16 v26, v11

    .line 402
    .line 403
    move/from16 v18, v15

    .line 404
    .line 405
    :goto_9
    sget-object v7, Landroidx/exifinterface/media/a;->n0:Ljava/util/HashMap;

    .line 406
    .line 407
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 408
    .line 409
    .line 410
    move-result-object v8

    .line 411
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v7

    .line 415
    check-cast v7, Ljava/lang/Integer;

    .line 416
    .line 417
    if-eqz v6, :cond_12

    .line 418
    .line 419
    new-instance v8, Ljava/lang/StringBuilder;

    .line 420
    .line 421
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 422
    .line 423
    .line 424
    const-string v10, "nextIfdType: "

    .line 425
    .line 426
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    const-string v10, " byteCount: "

    .line 433
    .line 434
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    :cond_12
    const/16 v8, 0x8

    .line 441
    .line 442
    if-eqz v7, :cond_1b

    .line 443
    .line 444
    const/4 v10, 0x3

    .line 445
    if-eq v14, v10, :cond_16

    .line 446
    .line 447
    const/4 v4, 0x4

    .line 448
    if-eq v14, v4, :cond_15

    .line 449
    .line 450
    if-eq v14, v8, :cond_14

    .line 451
    .line 452
    const/16 v4, 0x9

    .line 453
    .line 454
    if-eq v14, v4, :cond_13

    .line 455
    .line 456
    const/16 v4, 0xd

    .line 457
    .line 458
    if-eq v14, v4, :cond_13

    .line 459
    .line 460
    const-wide/16 v4, -0x1

    .line 461
    .line 462
    goto :goto_b

    .line 463
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->readInt()I

    .line 464
    .line 465
    .line 466
    move-result v4

    .line 467
    :goto_a
    int-to-long v4, v4

    .line 468
    goto :goto_b

    .line 469
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->readShort()S

    .line 470
    .line 471
    .line 472
    move-result v4

    .line 473
    goto :goto_a

    .line 474
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->h()J

    .line 475
    .line 476
    .line 477
    move-result-wide v4

    .line 478
    goto :goto_b

    .line 479
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->readUnsignedShort()I

    .line 480
    .line 481
    .line 482
    move-result v4

    .line 483
    goto :goto_a

    .line 484
    :goto_b
    if-eqz v6, :cond_17

    .line 485
    .line 486
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 487
    .line 488
    .line 489
    move-result-object v8

    .line 490
    iget-object v3, v3, Landroidx/exifinterface/media/a$d;->b:Ljava/lang/String;

    .line 491
    .line 492
    const/4 v10, 0x2

    .line 493
    new-array v9, v10, [Ljava/lang/Object;

    .line 494
    .line 495
    const/4 v11, 0x0

    .line 496
    aput-object v8, v9, v11

    .line 497
    .line 498
    const/4 v8, 0x1

    .line 499
    aput-object v3, v9, v8

    .line 500
    .line 501
    const-string v3, "Offset: %d, tagName: %s"

    .line 502
    .line 503
    invoke-static {v3, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    :goto_c
    const-wide/16 v8, 0x0

    .line 507
    .line 508
    goto :goto_d

    .line 509
    :cond_17
    const/4 v10, 0x2

    .line 510
    goto :goto_c

    .line 511
    :goto_d
    cmp-long v3, v4, v8

    .line 512
    .line 513
    if-lez v3, :cond_1a

    .line 514
    .line 515
    iget-object v3, v0, Landroidx/exifinterface/media/a;->g:Ljava/util/Set;

    .line 516
    .line 517
    long-to-int v8, v4

    .line 518
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 519
    .line 520
    .line 521
    move-result-object v8

    .line 522
    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 523
    .line 524
    .line 525
    move-result v3

    .line 526
    if-nez v3, :cond_19

    .line 527
    .line 528
    invoke-virtual {v1, v4, v5}, Landroidx/exifinterface/media/a$f;->l(J)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 532
    .line 533
    .line 534
    move-result v3

    .line 535
    invoke-direct {v0, v1, v3}, Landroidx/exifinterface/media/a;->H(Landroidx/exifinterface/media/a$f;I)V

    .line 536
    .line 537
    .line 538
    :cond_18
    :goto_e
    move-wide/from16 v11, v26

    .line 539
    .line 540
    goto :goto_f

    .line 541
    :cond_19
    if-eqz v6, :cond_18

    .line 542
    .line 543
    new-instance v3, Ljava/lang/StringBuilder;

    .line 544
    .line 545
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 546
    .line 547
    .line 548
    const-string v6, "Skip jump into the IFD since it has already been read: IfdType "

    .line 549
    .line 550
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    const-string v6, " (at "

    .line 557
    .line 558
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    .line 560
    .line 561
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 562
    .line 563
    .line 564
    const-string v4, ")"

    .line 565
    .line 566
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    goto :goto_e

    .line 570
    :cond_1a
    if-eqz v6, :cond_18

    .line 571
    .line 572
    new-instance v3, Ljava/lang/StringBuilder;

    .line 573
    .line 574
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 575
    .line 576
    .line 577
    const-string v6, "Skip jump into the IFD since its offset is invalid: "

    .line 578
    .line 579
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    .line 581
    .line 582
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    goto :goto_e

    .line 586
    :goto_f
    invoke-virtual {v1, v11, v12}, Landroidx/exifinterface/media/a$f;->l(J)V

    .line 587
    .line 588
    .line 589
    const/4 v3, 0x1

    .line 590
    const/4 v4, 0x3

    .line 591
    goto/16 :goto_11

    .line 592
    .line 593
    :cond_1b
    move-wide/from16 v11, v26

    .line 594
    .line 595
    const/4 v10, 0x2

    .line 596
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->d()I

    .line 597
    .line 598
    .line 599
    move-result v6

    .line 600
    iget v7, v0, Landroidx/exifinterface/media/a;->p:I

    .line 601
    .line 602
    add-int/2addr v6, v7

    .line 603
    long-to-int v4, v4

    .line 604
    new-array v4, v4, [B

    .line 605
    .line 606
    invoke-virtual {v1, v4}, Landroidx/exifinterface/media/a$b;->readFully([B)V

    .line 607
    .line 608
    .line 609
    new-instance v5, Landroidx/exifinterface/media/a$c;

    .line 610
    .line 611
    int-to-long v6, v6

    .line 612
    move/from16 v13, v18

    .line 613
    .line 614
    move-object v15, v5

    .line 615
    move/from16 v16, v14

    .line 616
    .line 617
    move/from16 v17, v13

    .line 618
    .line 619
    move-wide/from16 v18, v6

    .line 620
    .line 621
    move-object/from16 v20, v4

    .line 622
    .line 623
    invoke-direct/range {v15 .. v20}, Landroidx/exifinterface/media/a$c;-><init>(IIJ[B)V

    .line 624
    .line 625
    .line 626
    iget-object v4, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 627
    .line 628
    aget-object v4, v4, v2

    .line 629
    .line 630
    iget-object v6, v3, Landroidx/exifinterface/media/a$d;->b:Ljava/lang/String;

    .line 631
    .line 632
    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    .line 634
    .line 635
    const-string v4, "DNGVersion"

    .line 636
    .line 637
    iget-object v6, v3, Landroidx/exifinterface/media/a$d;->b:Ljava/lang/String;

    .line 638
    .line 639
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 640
    .line 641
    .line 642
    move-result v4

    .line 643
    if-eqz v4, :cond_1c

    .line 644
    .line 645
    const/4 v4, 0x3

    .line 646
    iput v4, v0, Landroidx/exifinterface/media/a;->d:I

    .line 647
    .line 648
    goto :goto_10

    .line 649
    :cond_1c
    const/4 v4, 0x3

    .line 650
    :goto_10
    const-string v6, "Make"

    .line 651
    .line 652
    iget-object v7, v3, Landroidx/exifinterface/media/a$d;->b:Ljava/lang/String;

    .line 653
    .line 654
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 655
    .line 656
    .line 657
    move-result v6

    .line 658
    if-nez v6, :cond_1d

    .line 659
    .line 660
    const-string v6, "Model"

    .line 661
    .line 662
    iget-object v7, v3, Landroidx/exifinterface/media/a$d;->b:Ljava/lang/String;

    .line 663
    .line 664
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 665
    .line 666
    .line 667
    move-result v6

    .line 668
    if-eqz v6, :cond_1e

    .line 669
    .line 670
    :cond_1d
    iget-object v6, v0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 671
    .line 672
    invoke-virtual {v5, v6}, Landroidx/exifinterface/media/a$c;->j(Ljava/nio/ByteOrder;)Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v6

    .line 676
    const-string v7, "PENTAX"

    .line 677
    .line 678
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 679
    .line 680
    .line 681
    move-result v6

    .line 682
    if-nez v6, :cond_1f

    .line 683
    .line 684
    :cond_1e
    iget-object v3, v3, Landroidx/exifinterface/media/a$d;->b:Ljava/lang/String;

    .line 685
    .line 686
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 687
    .line 688
    .line 689
    move-result v3

    .line 690
    if-eqz v3, :cond_20

    .line 691
    .line 692
    iget-object v3, v0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 693
    .line 694
    invoke-virtual {v5, v3}, Landroidx/exifinterface/media/a$c;->i(Ljava/nio/ByteOrder;)I

    .line 695
    .line 696
    .line 697
    move-result v3

    .line 698
    const v5, 0xffff

    .line 699
    .line 700
    .line 701
    if-ne v3, v5, :cond_20

    .line 702
    .line 703
    :cond_1f
    iput v8, v0, Landroidx/exifinterface/media/a;->d:I

    .line 704
    .line 705
    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->d()I

    .line 706
    .line 707
    .line 708
    move-result v3

    .line 709
    int-to-long v5, v3

    .line 710
    cmp-long v3, v5, v11

    .line 711
    .line 712
    if-eqz v3, :cond_21

    .line 713
    .line 714
    invoke-virtual {v1, v11, v12}, Landroidx/exifinterface/media/a$f;->l(J)V

    .line 715
    .line 716
    .line 717
    :cond_21
    const/4 v3, 0x1

    .line 718
    :goto_11
    add-int/lit8 v5, v25, 0x1

    .line 719
    .line 720
    int-to-short v5, v5

    .line 721
    move v8, v3

    .line 722
    move v10, v5

    .line 723
    move/from16 v9, v24

    .line 724
    .line 725
    const/4 v5, 0x5

    .line 726
    const/4 v7, 0x0

    .line 727
    goto/16 :goto_0

    .line 728
    .line 729
    :cond_22
    move v3, v8

    .line 730
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->readInt()I

    .line 731
    .line 732
    .line 733
    move-result v2

    .line 734
    sget-boolean v4, Landroidx/exifinterface/media/a;->u:Z

    .line 735
    .line 736
    if-eqz v4, :cond_23

    .line 737
    .line 738
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 739
    .line 740
    .line 741
    move-result-object v5

    .line 742
    new-array v3, v3, [Ljava/lang/Object;

    .line 743
    .line 744
    const/4 v6, 0x0

    .line 745
    aput-object v5, v3, v6

    .line 746
    .line 747
    const-string v5, "nextIfdOffset: %d"

    .line 748
    .line 749
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    :cond_23
    int-to-long v5, v2

    .line 753
    const-wide/16 v7, 0x0

    .line 754
    .line 755
    cmp-long v3, v5, v7

    .line 756
    .line 757
    if-lez v3, :cond_26

    .line 758
    .line 759
    iget-object v3, v0, Landroidx/exifinterface/media/a;->g:Ljava/util/Set;

    .line 760
    .line 761
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 762
    .line 763
    .line 764
    move-result-object v7

    .line 765
    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 766
    .line 767
    .line 768
    move-result v3

    .line 769
    if-nez v3, :cond_25

    .line 770
    .line 771
    invoke-virtual {v1, v5, v6}, Landroidx/exifinterface/media/a$f;->l(J)V

    .line 772
    .line 773
    .line 774
    iget-object v2, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 775
    .line 776
    const/4 v3, 0x4

    .line 777
    aget-object v2, v2, v3

    .line 778
    .line 779
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 780
    .line 781
    .line 782
    move-result v2

    .line 783
    if-eqz v2, :cond_24

    .line 784
    .line 785
    invoke-direct {v0, v1, v3}, Landroidx/exifinterface/media/a;->H(Landroidx/exifinterface/media/a$f;I)V

    .line 786
    .line 787
    .line 788
    goto :goto_12

    .line 789
    :cond_24
    iget-object v2, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 790
    .line 791
    const/4 v3, 0x5

    .line 792
    aget-object v2, v2, v3

    .line 793
    .line 794
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 795
    .line 796
    .line 797
    move-result v2

    .line 798
    if-eqz v2, :cond_27

    .line 799
    .line 800
    invoke-direct {v0, v1, v3}, Landroidx/exifinterface/media/a;->H(Landroidx/exifinterface/media/a$f;I)V

    .line 801
    .line 802
    .line 803
    goto :goto_12

    .line 804
    :cond_25
    if-eqz v4, :cond_27

    .line 805
    .line 806
    new-instance v1, Ljava/lang/StringBuilder;

    .line 807
    .line 808
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 809
    .line 810
    .line 811
    const-string v3, "Stop reading file since re-reading an IFD may cause an infinite loop: "

    .line 812
    .line 813
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    .line 815
    .line 816
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 817
    .line 818
    .line 819
    goto :goto_12

    .line 820
    :cond_26
    if-eqz v4, :cond_27

    .line 821
    .line 822
    new-instance v1, Ljava/lang/StringBuilder;

    .line 823
    .line 824
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 825
    .line 826
    .line 827
    const-string v3, "Stop reading file since a wrong offset may cause an infinite loop: "

    .line 828
    .line 829
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    .line 831
    .line 832
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 833
    .line 834
    .line 835
    :cond_27
    :goto_12
    return-void
.end method

.method private I(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 2
    .line 3
    aget-object v0, v0, p1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 12
    .line 13
    aget-object v0, v0, p1

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 22
    .line 23
    aget-object v0, v0, p1

    .line 24
    .line 25
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    iget-object p3, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 33
    .line 34
    aget-object p1, p3, p1

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method private J(Landroidx/exifinterface/media/a$f;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 2
    .line 3
    aget-object v0, v0, p2

    .line 4
    .line 5
    const-string v1, "ImageLength"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/exifinterface/media/a$c;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 14
    .line 15
    aget-object v1, v1, p2

    .line 16
    .line 17
    const-string v2, "ImageWidth"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroidx/exifinterface/media/a$c;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 30
    .line 31
    aget-object v0, v0, p2

    .line 32
    .line 33
    const-string v1, "JPEGInterchangeFormat"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroidx/exifinterface/media/a$c;

    .line 40
    .line 41
    iget-object v1, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 42
    .line 43
    aget-object v1, v1, p2

    .line 44
    .line 45
    const-string v2, "JPEGInterchangeFormatLength"

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroidx/exifinterface/media/a$c;

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    iget-object v1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/a$c;->i(Ljava/nio/ByteOrder;)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    iget-object v2, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Landroidx/exifinterface/media/a$c;->i(Ljava/nio/ByteOrder;)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    int-to-long v2, v1

    .line 70
    invoke-virtual {p1, v2, v3}, Landroidx/exifinterface/media/a$f;->l(J)V

    .line 71
    .line 72
    .line 73
    new-array v0, v0, [B

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 76
    .line 77
    .line 78
    new-instance p1, Landroidx/exifinterface/media/a$b;

    .line 79
    .line 80
    invoke-direct {p1, v0}, Landroidx/exifinterface/media/a$b;-><init>([B)V

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, p1, v1, p2}, Landroidx/exifinterface/media/a;->f(Landroidx/exifinterface/media/a$b;II)V

    .line 84
    .line 85
    .line 86
    :cond_1
    return-void
.end method

.method private K(Landroidx/exifinterface/media/a$b;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    const-string v1, "Compression"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroidx/exifinterface/media/a$c;

    .line 13
    .line 14
    const/4 v2, 0x6

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    iget-object v3, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Landroidx/exifinterface/media/a$c;->i(Ljava/nio/ByteOrder;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iput v1, p0, Landroidx/exifinterface/media/a;->o:I

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    if-eq v1, v3, :cond_1

    .line 27
    .line 28
    if-eq v1, v2, :cond_0

    .line 29
    .line 30
    const/4 v2, 0x7

    .line 31
    if-eq v1, v2, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/a;->p(Landroidx/exifinterface/media/a$b;Ljava/util/HashMap;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/a;->z(Ljava/util/HashMap;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/a;->q(Landroidx/exifinterface/media/a$b;Ljava/util/HashMap;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iput v2, p0, Landroidx/exifinterface/media/a;->o:I

    .line 49
    .line 50
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/a;->p(Landroidx/exifinterface/media/a$b;Ljava/util/HashMap;)V

    .line 51
    .line 52
    .line 53
    :cond_3
    :goto_0
    return-void
.end method

.method private static L(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    if-eq p0, v0, :cond_1

    .line 3
    .line 4
    const/16 v0, 0x9

    .line 5
    .line 6
    if-eq p0, v0, :cond_1

    .line 7
    .line 8
    const/16 v0, 0xd

    .line 9
    .line 10
    if-eq p0, v0, :cond_1

    .line 11
    .line 12
    const/16 v0, 0xe

    .line 13
    .line 14
    if-ne p0, v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method private M(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 2
    .line 3
    aget-object v0, v0, p1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_3

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 12
    .line 13
    aget-object v0, v0, p2

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 23
    .line 24
    aget-object v0, v0, p1

    .line 25
    .line 26
    const-string v1, "ImageLength"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroidx/exifinterface/media/a$c;

    .line 33
    .line 34
    iget-object v2, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 35
    .line 36
    aget-object v2, v2, p1

    .line 37
    .line 38
    const-string v3, "ImageWidth"

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Landroidx/exifinterface/media/a$c;

    .line 45
    .line 46
    iget-object v4, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 47
    .line 48
    aget-object v4, v4, p2

    .line 49
    .line 50
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Landroidx/exifinterface/media/a$c;

    .line 55
    .line 56
    iget-object v4, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 57
    .line 58
    aget-object v4, v4, p2

    .line 59
    .line 60
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Landroidx/exifinterface/media/a$c;

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    if-nez v2, :cond_1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    if-eqz v1, :cond_3

    .line 72
    .line 73
    if-nez v3, :cond_2

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    iget-object v4, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 77
    .line 78
    invoke-virtual {v0, v4}, Landroidx/exifinterface/media/a$c;->i(Ljava/nio/ByteOrder;)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    iget-object v4, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 83
    .line 84
    invoke-virtual {v2, v4}, Landroidx/exifinterface/media/a$c;->i(Ljava/nio/ByteOrder;)I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    iget-object v4, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 89
    .line 90
    invoke-virtual {v1, v4}, Landroidx/exifinterface/media/a$c;->i(Ljava/nio/ByteOrder;)I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    iget-object v4, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 95
    .line 96
    invoke-virtual {v3, v4}, Landroidx/exifinterface/media/a$c;->i(Ljava/nio/ByteOrder;)I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-ge v0, v1, :cond_3

    .line 101
    .line 102
    if-ge v2, v3, :cond_3

    .line 103
    .line 104
    iget-object v0, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 105
    .line 106
    aget-object v1, v0, p1

    .line 107
    .line 108
    aget-object v2, v0, p2

    .line 109
    .line 110
    aput-object v2, v0, p1

    .line 111
    .line 112
    aput-object v1, v0, p2

    .line 113
    .line 114
    :cond_3
    :goto_0
    return-void
.end method

.method private N(Landroidx/exifinterface/media/a$f;I)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 2
    .line 3
    aget-object v0, v0, p2

    .line 4
    .line 5
    const-string v1, "DefaultCropSize"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/exifinterface/media/a$c;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 14
    .line 15
    aget-object v1, v1, p2

    .line 16
    .line 17
    const-string v2, "SensorTopBorder"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroidx/exifinterface/media/a$c;

    .line 24
    .line 25
    iget-object v2, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 26
    .line 27
    aget-object v2, v2, p2

    .line 28
    .line 29
    const-string v3, "SensorLeftBorder"

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroidx/exifinterface/media/a$c;

    .line 36
    .line 37
    iget-object v3, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 38
    .line 39
    aget-object v3, v3, p2

    .line 40
    .line 41
    const-string v4, "SensorBottomBorder"

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Landroidx/exifinterface/media/a$c;

    .line 48
    .line 49
    iget-object v4, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 50
    .line 51
    aget-object v4, v4, p2

    .line 52
    .line 53
    const-string v5, "SensorRightBorder"

    .line 54
    .line 55
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Landroidx/exifinterface/media/a$c;

    .line 60
    .line 61
    const-string v5, "ImageLength"

    .line 62
    .line 63
    const-string v6, "ImageWidth"

    .line 64
    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    iget p1, v0, Landroidx/exifinterface/media/a$c;->a:I

    .line 68
    .line 69
    const/4 v1, 0x5

    .line 70
    const-string v2, "Invalid crop size values. cropSize="

    .line 71
    .line 72
    const-string v3, "ExifInterface"

    .line 73
    .line 74
    const/4 v4, 0x1

    .line 75
    const/4 v7, 0x0

    .line 76
    const/4 v8, 0x2

    .line 77
    if-ne p1, v1, :cond_2

    .line 78
    .line 79
    iget-object p1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Landroidx/exifinterface/media/a$c;->k(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, [Landroidx/exifinterface/media/a$e;

    .line 86
    .line 87
    if-eqz p1, :cond_1

    .line 88
    .line 89
    array-length v0, p1

    .line 90
    if-eq v0, v8, :cond_0

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_0
    aget-object v0, p1, v7

    .line 94
    .line 95
    iget-object v1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 96
    .line 97
    invoke-static {v0, v1}, Landroidx/exifinterface/media/a$c;->d(Landroidx/exifinterface/media/a$e;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/a$c;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    aget-object p1, p1, v4

    .line 102
    .line 103
    iget-object v1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 104
    .line 105
    invoke-static {p1, v1}, Landroidx/exifinterface/media/a$c;->d(Landroidx/exifinterface/media/a$e;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/a$c;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    goto :goto_1

    .line 110
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_2
    iget-object p1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 134
    .line 135
    invoke-virtual {v0, p1}, Landroidx/exifinterface/media/a$c;->k(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    check-cast p1, [I

    .line 140
    .line 141
    if-eqz p1, :cond_4

    .line 142
    .line 143
    array-length v0, p1

    .line 144
    if-eq v0, v8, :cond_3

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_3
    aget v0, p1, v7

    .line 148
    .line 149
    iget-object v1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 150
    .line 151
    invoke-static {v0, v1}, Landroidx/exifinterface/media/a$c;->f(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$c;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    aget p1, p1, v4

    .line 156
    .line 157
    iget-object v1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 158
    .line 159
    invoke-static {p1, v1}, Landroidx/exifinterface/media/a$c;->f(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$c;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    :goto_1
    iget-object v1, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 164
    .line 165
    aget-object v1, v1, p2

    .line 166
    .line 167
    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 171
    .line 172
    aget-object p2, v0, p2

    .line 173
    .line 174
    invoke-virtual {p2, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_4
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :cond_5
    if-eqz v1, :cond_6

    .line 202
    .line 203
    if-eqz v2, :cond_6

    .line 204
    .line 205
    if-eqz v3, :cond_6

    .line 206
    .line 207
    if-eqz v4, :cond_6

    .line 208
    .line 209
    iget-object p1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 210
    .line 211
    invoke-virtual {v1, p1}, Landroidx/exifinterface/media/a$c;->i(Ljava/nio/ByteOrder;)I

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    iget-object v0, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 216
    .line 217
    invoke-virtual {v3, v0}, Landroidx/exifinterface/media/a$c;->i(Ljava/nio/ByteOrder;)I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    iget-object v1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 222
    .line 223
    invoke-virtual {v4, v1}, Landroidx/exifinterface/media/a$c;->i(Ljava/nio/ByteOrder;)I

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    iget-object v3, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 228
    .line 229
    invoke-virtual {v2, v3}, Landroidx/exifinterface/media/a$c;->i(Ljava/nio/ByteOrder;)I

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    if-le v0, p1, :cond_7

    .line 234
    .line 235
    if-le v1, v2, :cond_7

    .line 236
    .line 237
    sub-int/2addr v0, p1

    .line 238
    sub-int/2addr v1, v2

    .line 239
    iget-object p1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 240
    .line 241
    invoke-static {v0, p1}, Landroidx/exifinterface/media/a$c;->f(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$c;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    iget-object v0, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 246
    .line 247
    invoke-static {v1, v0}, Landroidx/exifinterface/media/a$c;->f(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$c;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    iget-object v1, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 252
    .line 253
    aget-object v1, v1, p2

    .line 254
    .line 255
    invoke-virtual {v1, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    iget-object p1, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 259
    .line 260
    aget-object p1, p1, p2

    .line 261
    .line 262
    invoke-virtual {p1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    goto :goto_3

    .line 266
    :cond_6
    invoke-direct {p0, p1, p2}, Landroidx/exifinterface/media/a;->J(Landroidx/exifinterface/media/a$f;I)V

    .line 267
    .line 268
    .line 269
    :cond_7
    :goto_3
    return-void
.end method

.method private O()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x5

    .line 3
    invoke-direct {p0, v0, v1}, Landroidx/exifinterface/media/a;->M(II)V

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x4

    .line 7
    invoke-direct {p0, v0, v2}, Landroidx/exifinterface/media/a;->M(II)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v1, v2}, Landroidx/exifinterface/media/a;->M(II)V

    .line 11
    .line 12
    .line 13
    iget-object v3, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    aget-object v3, v3, v4

    .line 17
    .line 18
    const-string v5, "PixelXDimension"

    .line 19
    .line 20
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Landroidx/exifinterface/media/a$c;

    .line 25
    .line 26
    iget-object v5, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 27
    .line 28
    aget-object v4, v5, v4

    .line 29
    .line 30
    const-string v5, "PixelYDimension"

    .line 31
    .line 32
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Landroidx/exifinterface/media/a$c;

    .line 37
    .line 38
    const-string v5, "ImageLength"

    .line 39
    .line 40
    const-string v6, "ImageWidth"

    .line 41
    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    if-eqz v4, :cond_0

    .line 45
    .line 46
    iget-object v7, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 47
    .line 48
    aget-object v7, v7, v0

    .line 49
    .line 50
    invoke-virtual {v7, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    iget-object v3, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 54
    .line 55
    aget-object v3, v3, v0

    .line 56
    .line 57
    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    :cond_0
    iget-object v3, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 61
    .line 62
    aget-object v3, v3, v2

    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_1

    .line 69
    .line 70
    iget-object v3, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 71
    .line 72
    aget-object v3, v3, v1

    .line 73
    .line 74
    invoke-direct {p0, v3}, Landroidx/exifinterface/media/a;->A(Ljava/util/HashMap;)Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_1

    .line 79
    .line 80
    iget-object v3, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 81
    .line 82
    aget-object v4, v3, v1

    .line 83
    .line 84
    aput-object v4, v3, v2

    .line 85
    .line 86
    new-instance v4, Ljava/util/HashMap;

    .line 87
    .line 88
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 89
    .line 90
    .line 91
    aput-object v4, v3, v1

    .line 92
    .line 93
    :cond_1
    iget-object v3, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 94
    .line 95
    aget-object v3, v3, v2

    .line 96
    .line 97
    invoke-direct {p0, v3}, Landroidx/exifinterface/media/a;->A(Ljava/util/HashMap;)Z

    .line 98
    .line 99
    .line 100
    const-string v3, "ThumbnailOrientation"

    .line 101
    .line 102
    const-string v4, "Orientation"

    .line 103
    .line 104
    invoke-direct {p0, v0, v3, v4}, Landroidx/exifinterface/media/a;->I(ILjava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const-string v7, "ThumbnailImageLength"

    .line 108
    .line 109
    invoke-direct {p0, v0, v7, v5}, Landroidx/exifinterface/media/a;->I(ILjava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const-string v8, "ThumbnailImageWidth"

    .line 113
    .line 114
    invoke-direct {p0, v0, v8, v6}, Landroidx/exifinterface/media/a;->I(ILjava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-direct {p0, v1, v3, v4}, Landroidx/exifinterface/media/a;->I(ILjava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-direct {p0, v1, v7, v5}, Landroidx/exifinterface/media/a;->I(ILjava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-direct {p0, v1, v8, v6}, Landroidx/exifinterface/media/a;->I(ILjava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-direct {p0, v2, v4, v3}, Landroidx/exifinterface/media/a;->I(ILjava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-direct {p0, v2, v5, v7}, Landroidx/exifinterface/media/a;->I(ILjava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-direct {p0, v2, v6, v8}, Landroidx/exifinterface/media/a;->I(ILjava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    return-void
.end method

.method private a()V
    .locals 6

    .line 1
    const-string v0, "DateTimeOriginal"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v2, "DateTime"

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Landroidx/exifinterface/media/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    iget-object v3, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 19
    .line 20
    aget-object v3, v3, v1

    .line 21
    .line 22
    invoke-static {v0}, Landroidx/exifinterface/media/a$c;->a(Ljava/lang/String;)Landroidx/exifinterface/media/a$c;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :cond_0
    const-string v0, "ImageWidth"

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const-wide/16 v3, 0x0

    .line 36
    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    iget-object v2, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 40
    .line 41
    aget-object v2, v2, v1

    .line 42
    .line 43
    iget-object v5, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 44
    .line 45
    invoke-static {v3, v4, v5}, Landroidx/exifinterface/media/a$c;->b(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$c;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    :cond_1
    const-string v0, "ImageLength"

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-nez v2, :cond_2

    .line 59
    .line 60
    iget-object v2, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 61
    .line 62
    aget-object v2, v2, v1

    .line 63
    .line 64
    iget-object v5, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 65
    .line 66
    invoke-static {v3, v4, v5}, Landroidx/exifinterface/media/a$c;->b(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$c;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    :cond_2
    const-string v0, "Orientation"

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    if-nez v2, :cond_3

    .line 80
    .line 81
    iget-object v2, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 82
    .line 83
    aget-object v1, v2, v1

    .line 84
    .line 85
    iget-object v2, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 86
    .line 87
    invoke-static {v3, v4, v2}, Landroidx/exifinterface/media/a$c;->b(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$c;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    :cond_3
    const-string v0, "LightSource"

    .line 95
    .line 96
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    if-nez v1, :cond_4

    .line 101
    .line 102
    iget-object v1, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 103
    .line 104
    const/4 v2, 0x1

    .line 105
    aget-object v1, v1, v2

    .line 106
    .line 107
    iget-object v2, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 108
    .line 109
    invoke-static {v3, v4, v2}, Landroidx/exifinterface/media/a$c;->b(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$c;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    :cond_4
    return-void
.end method

.method private d(Ljava/lang/String;)Landroidx/exifinterface/media/a$c;
    .locals 2

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    const-string v0, "ISOSpeedRatings"

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string p1, "PhotographicSensitivity"

    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    sget-object v1, Landroidx/exifinterface/media/a;->i0:[[Landroidx/exifinterface/media/a$d;

    .line 15
    .line 16
    array-length v1, v1

    .line 17
    if-ge v0, v1, :cond_2

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 20
    .line 21
    aget-object v1, v1, v0

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroidx/exifinterface/media/a$c;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/4 p1, 0x0

    .line 36
    return-object p1

    .line 37
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    .line 38
    .line 39
    const-string v0, "tag shouldn\'t be null"

    .line 40
    .line 41
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1
.end method

.method private e(Landroidx/exifinterface/media/a$f;)V
    .locals 12

    .line 1
    const-string v0, "yes"

    .line 2
    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v2, 0x1c

    .line 6
    .line 7
    if-lt v1, v2, :cond_e

    .line 8
    .line 9
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    new-instance v2, Landroidx/exifinterface/media/a$a;

    .line 15
    .line 16
    invoke-direct {v2, p0, p1}, Landroidx/exifinterface/media/a$a;-><init>(Landroidx/exifinterface/media/a;Landroidx/exifinterface/media/a$f;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2}, Landroidx/exifinterface/media/b$b;->a(Landroid/media/MediaMetadataRetriever;Landroid/media/MediaDataSource;)V

    .line 20
    .line 21
    .line 22
    const/16 v2, 0x21

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const/16 v3, 0x22

    .line 29
    .line 30
    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const/16 v4, 0x1a

    .line 35
    .line 36
    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const/16 v5, 0x11

    .line 41
    .line 42
    invoke-virtual {v1, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_0

    .line 51
    .line 52
    const/16 v0, 0x1d

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const/16 v4, 0x1e

    .line 59
    .line 60
    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    const/16 v5, 0x1f

    .line 65
    .line 66
    invoke-virtual {v1, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    goto/16 :goto_3

    .line 73
    .line 74
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_1

    .line 79
    .line 80
    const/16 v0, 0x12

    .line 81
    .line 82
    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const/16 v4, 0x13

    .line 87
    .line 88
    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    const/16 v5, 0x18

    .line 93
    .line 94
    invoke-virtual {v1, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    goto :goto_0

    .line 99
    :cond_1
    const/4 v0, 0x0

    .line 100
    move-object v4, v0

    .line 101
    move-object v5, v4

    .line 102
    :goto_0
    const/4 v6, 0x0

    .line 103
    if-eqz v0, :cond_2

    .line 104
    .line 105
    iget-object v7, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 106
    .line 107
    aget-object v7, v7, v6

    .line 108
    .line 109
    const-string v8, "ImageWidth"

    .line 110
    .line 111
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    iget-object v10, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 116
    .line 117
    invoke-static {v9, v10}, Landroidx/exifinterface/media/a$c;->f(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$c;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    :cond_2
    if-eqz v4, :cond_3

    .line 125
    .line 126
    iget-object v7, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 127
    .line 128
    aget-object v7, v7, v6

    .line 129
    .line 130
    const-string v8, "ImageLength"

    .line 131
    .line 132
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v9

    .line 136
    iget-object v10, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 137
    .line 138
    invoke-static {v9, v10}, Landroidx/exifinterface/media/a$c;->f(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$c;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    :cond_3
    const/4 v7, 0x6

    .line 146
    if-eqz v5, :cond_7

    .line 147
    .line 148
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    move-result v8

    .line 152
    const/16 v9, 0x5a

    .line 153
    .line 154
    if-eq v8, v9, :cond_6

    .line 155
    .line 156
    const/16 v9, 0xb4

    .line 157
    .line 158
    if-eq v8, v9, :cond_5

    .line 159
    .line 160
    const/16 v9, 0x10e

    .line 161
    .line 162
    if-eq v8, v9, :cond_4

    .line 163
    .line 164
    const/4 v8, 0x1

    .line 165
    goto :goto_1

    .line 166
    :cond_4
    const/16 v8, 0x8

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_5
    const/4 v8, 0x3

    .line 170
    goto :goto_1

    .line 171
    :cond_6
    move v8, v7

    .line 172
    :goto_1
    iget-object v9, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 173
    .line 174
    aget-object v9, v9, v6

    .line 175
    .line 176
    const-string v10, "Orientation"

    .line 177
    .line 178
    iget-object v11, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 179
    .line 180
    invoke-static {v8, v11}, Landroidx/exifinterface/media/a$c;->f(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$c;

    .line 181
    .line 182
    .line 183
    move-result-object v8

    .line 184
    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    :cond_7
    if-eqz v2, :cond_c

    .line 188
    .line 189
    if-eqz v3, :cond_c

    .line 190
    .line 191
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    if-le v3, v7, :cond_b

    .line 200
    .line 201
    int-to-long v8, v2

    .line 202
    invoke-virtual {p1, v8, v9}, Landroidx/exifinterface/media/a$f;->l(J)V

    .line 203
    .line 204
    .line 205
    new-array v8, v7, [B

    .line 206
    .line 207
    invoke-virtual {p1, v8}, Ljava/io/InputStream;->read([B)I

    .line 208
    .line 209
    .line 210
    move-result v9

    .line 211
    if-ne v9, v7, :cond_a

    .line 212
    .line 213
    add-int/2addr v2, v7

    .line 214
    add-int/lit8 v3, v3, -0x6

    .line 215
    .line 216
    sget-object v7, Landroidx/exifinterface/media/a;->p0:[B

    .line 217
    .line 218
    invoke-static {v8, v7}, Ljava/util/Arrays;->equals([B[B)Z

    .line 219
    .line 220
    .line 221
    move-result v7

    .line 222
    if-eqz v7, :cond_9

    .line 223
    .line 224
    new-array v7, v3, [B

    .line 225
    .line 226
    invoke-virtual {p1, v7}, Ljava/io/InputStream;->read([B)I

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    if-ne p1, v3, :cond_8

    .line 231
    .line 232
    iput v2, p0, Landroidx/exifinterface/media/a;->p:I

    .line 233
    .line 234
    invoke-direct {p0, v7, v6}, Landroidx/exifinterface/media/a;->G([BI)V

    .line 235
    .line 236
    .line 237
    goto :goto_2

    .line 238
    :cond_8
    new-instance p1, Ljava/io/IOException;

    .line 239
    .line 240
    const-string v0, "Can\'t read exif"

    .line 241
    .line 242
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    throw p1

    .line 246
    :cond_9
    new-instance p1, Ljava/io/IOException;

    .line 247
    .line 248
    const-string v0, "Invalid identifier"

    .line 249
    .line 250
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    throw p1

    .line 254
    :cond_a
    new-instance p1, Ljava/io/IOException;

    .line 255
    .line 256
    const-string v0, "Can\'t read identifier"

    .line 257
    .line 258
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    throw p1

    .line 262
    :cond_b
    new-instance p1, Ljava/io/IOException;

    .line 263
    .line 264
    const-string v0, "Invalid exif length"

    .line 265
    .line 266
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    throw p1

    .line 270
    :cond_c
    :goto_2
    sget-boolean p1, Landroidx/exifinterface/media/a;->u:Z

    .line 271
    .line 272
    if-eqz p1, :cond_d

    .line 273
    .line 274
    new-instance p1, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .line 278
    .line 279
    const-string v2, "Heif meta: "

    .line 280
    .line 281
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    const-string v0, "x"

    .line 288
    .line 289
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    const-string v0, ", rotation "

    .line 296
    .line 297
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    .line 302
    .line 303
    :cond_d
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 304
    .line 305
    .line 306
    return-void

    .line 307
    :catch_0
    :try_start_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 308
    .line 309
    const-string v0, "Failed to read EXIF from HEIF file. Given stream is either malformed or unsupported."

    .line 310
    .line 311
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    :goto_3
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 316
    .line 317
    .line 318
    throw p1

    .line 319
    :cond_e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 320
    .line 321
    const-string v0, "Reading EXIF from HEIF files is supported from SDK 28 and above"

    .line 322
    .line 323
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    throw p1
.end method

.method private f(Landroidx/exifinterface/media/a$b;II)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    sget-boolean v3, Landroidx/exifinterface/media/a;->u:Z

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v4, "getJpegAttributes starting with: "

    .line 17
    .line 18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 25
    .line 26
    invoke-virtual {v1, v3}, Landroidx/exifinterface/media/a$b;->j(Ljava/nio/ByteOrder;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->readByte()B

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const-string v4, "Invalid marker: "

    .line 34
    .line 35
    const/4 v5, -0x1

    .line 36
    if-ne v3, v5, :cond_11

    .line 37
    .line 38
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->readByte()B

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    const/16 v7, -0x28

    .line 43
    .line 44
    if-ne v6, v7, :cond_10

    .line 45
    .line 46
    const/4 v3, 0x2

    .line 47
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->readByte()B

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-ne v4, v5, :cond_f

    .line 52
    .line 53
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->readByte()B

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    sget-boolean v6, Landroidx/exifinterface/media/a;->u:Z

    .line 58
    .line 59
    if-eqz v6, :cond_1

    .line 60
    .line 61
    new-instance v7, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v8, "Found JPEG segment indicator: "

    .line 67
    .line 68
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    and-int/lit16 v8, v4, 0xff

    .line 72
    .line 73
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    :cond_1
    const/16 v7, -0x27

    .line 81
    .line 82
    if-eq v4, v7, :cond_e

    .line 83
    .line 84
    const/16 v7, -0x26

    .line 85
    .line 86
    if-ne v4, v7, :cond_2

    .line 87
    .line 88
    goto/16 :goto_6

    .line 89
    .line 90
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->readUnsignedShort()I

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    add-int/lit8 v8, v7, -0x2

    .line 95
    .line 96
    const/4 v9, 0x4

    .line 97
    add-int/2addr v3, v9

    .line 98
    if-eqz v6, :cond_3

    .line 99
    .line 100
    new-instance v6, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string v10, "JPEG segment: "

    .line 106
    .line 107
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    and-int/lit16 v10, v4, 0xff

    .line 111
    .line 112
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v10, " (length: "

    .line 120
    .line 121
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v10, ")"

    .line 128
    .line 129
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    :cond_3
    const-string v6, "Invalid length"

    .line 133
    .line 134
    if-ltz v8, :cond_d

    .line 135
    .line 136
    const/16 v10, -0x1f

    .line 137
    .line 138
    const/4 v11, 0x1

    .line 139
    const/4 v12, 0x0

    .line 140
    if-eq v4, v10, :cond_9

    .line 141
    .line 142
    const/4 v10, -0x2

    .line 143
    if-eq v4, v10, :cond_6

    .line 144
    .line 145
    packed-switch v4, :pswitch_data_0

    .line 146
    .line 147
    .line 148
    packed-switch v4, :pswitch_data_1

    .line 149
    .line 150
    .line 151
    packed-switch v4, :pswitch_data_2

    .line 152
    .line 153
    .line 154
    packed-switch v4, :pswitch_data_3

    .line 155
    .line 156
    .line 157
    goto/16 :goto_5

    .line 158
    .line 159
    :pswitch_0
    invoke-virtual {v1, v11}, Landroidx/exifinterface/media/a$b;->k(I)V

    .line 160
    .line 161
    .line 162
    iget-object v4, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 163
    .line 164
    aget-object v4, v4, v2

    .line 165
    .line 166
    if-eq v2, v9, :cond_4

    .line 167
    .line 168
    const-string v8, "ImageLength"

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_4
    const-string v8, "ThumbnailImageLength"

    .line 172
    .line 173
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->readUnsignedShort()I

    .line 174
    .line 175
    .line 176
    move-result v10

    .line 177
    int-to-long v10, v10

    .line 178
    iget-object v12, v0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 179
    .line 180
    invoke-static {v10, v11, v12}, Landroidx/exifinterface/media/a$c;->b(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$c;

    .line 181
    .line 182
    .line 183
    move-result-object v10

    .line 184
    invoke-virtual {v4, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    iget-object v4, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 188
    .line 189
    aget-object v4, v4, v2

    .line 190
    .line 191
    if-eq v2, v9, :cond_5

    .line 192
    .line 193
    const-string v8, "ImageWidth"

    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_5
    const-string v8, "ThumbnailImageWidth"

    .line 197
    .line 198
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/a$b;->readUnsignedShort()I

    .line 199
    .line 200
    .line 201
    move-result v9

    .line 202
    int-to-long v9, v9

    .line 203
    iget-object v11, v0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 204
    .line 205
    invoke-static {v9, v10, v11}, Landroidx/exifinterface/media/a$c;->b(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$c;

    .line 206
    .line 207
    .line 208
    move-result-object v9

    .line 209
    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    add-int/lit8 v8, v7, -0x7

    .line 213
    .line 214
    goto/16 :goto_5

    .line 215
    .line 216
    :cond_6
    new-array v4, v8, [B

    .line 217
    .line 218
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    .line 219
    .line 220
    .line 221
    move-result v7

    .line 222
    if-ne v7, v8, :cond_8

    .line 223
    .line 224
    const-string v7, "UserComment"

    .line 225
    .line 226
    invoke-virtual {v0, v7}, Landroidx/exifinterface/media/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v8

    .line 230
    if-nez v8, :cond_7

    .line 231
    .line 232
    iget-object v8, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 233
    .line 234
    aget-object v8, v8, v11

    .line 235
    .line 236
    new-instance v9, Ljava/lang/String;

    .line 237
    .line 238
    sget-object v10, Landroidx/exifinterface/media/a;->o0:Ljava/nio/charset/Charset;

    .line 239
    .line 240
    invoke-direct {v9, v4, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 241
    .line 242
    .line 243
    invoke-static {v9}, Landroidx/exifinterface/media/a$c;->a(Ljava/lang/String;)Landroidx/exifinterface/media/a$c;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    invoke-virtual {v8, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    :cond_7
    :goto_3
    move v8, v12

    .line 251
    goto :goto_5

    .line 252
    :cond_8
    new-instance v1, Ljava/io/IOException;

    .line 253
    .line 254
    const-string v2, "Invalid exif"

    .line 255
    .line 256
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    throw v1

    .line 260
    :cond_9
    new-array v4, v8, [B

    .line 261
    .line 262
    invoke-virtual {v1, v4}, Landroidx/exifinterface/media/a$b;->readFully([B)V

    .line 263
    .line 264
    .line 265
    add-int v7, v3, v8

    .line 266
    .line 267
    sget-object v9, Landroidx/exifinterface/media/a;->p0:[B

    .line 268
    .line 269
    invoke-static {v4, v9}, Landroidx/exifinterface/media/b;->c([B[B)Z

    .line 270
    .line 271
    .line 272
    move-result v10

    .line 273
    if-eqz v10, :cond_a

    .line 274
    .line 275
    array-length v10, v9

    .line 276
    invoke-static {v4, v10, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 277
    .line 278
    .line 279
    move-result-object v4

    .line 280
    add-int v3, p2, v3

    .line 281
    .line 282
    array-length v8, v9

    .line 283
    add-int/2addr v3, v8

    .line 284
    iput v3, v0, Landroidx/exifinterface/media/a;->p:I

    .line 285
    .line 286
    invoke-direct {v0, v4, v2}, Landroidx/exifinterface/media/a;->G([BI)V

    .line 287
    .line 288
    .line 289
    new-instance v3, Landroidx/exifinterface/media/a$b;

    .line 290
    .line 291
    invoke-direct {v3, v4}, Landroidx/exifinterface/media/a$b;-><init>([B)V

    .line 292
    .line 293
    .line 294
    invoke-direct {v0, v3}, Landroidx/exifinterface/media/a;->K(Landroidx/exifinterface/media/a$b;)V

    .line 295
    .line 296
    .line 297
    goto :goto_4

    .line 298
    :cond_a
    sget-object v9, Landroidx/exifinterface/media/a;->q0:[B

    .line 299
    .line 300
    invoke-static {v4, v9}, Landroidx/exifinterface/media/b;->c([B[B)Z

    .line 301
    .line 302
    .line 303
    move-result v10

    .line 304
    if-eqz v10, :cond_b

    .line 305
    .line 306
    array-length v10, v9

    .line 307
    add-int/2addr v3, v10

    .line 308
    array-length v9, v9

    .line 309
    invoke-static {v4, v9, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    const-string v8, "Xmp"

    .line 314
    .line 315
    invoke-virtual {v0, v8}, Landroidx/exifinterface/media/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v9

    .line 319
    if-nez v9, :cond_b

    .line 320
    .line 321
    iget-object v9, v0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 322
    .line 323
    aget-object v9, v9, v12

    .line 324
    .line 325
    new-instance v10, Landroidx/exifinterface/media/a$c;

    .line 326
    .line 327
    array-length v15, v4

    .line 328
    int-to-long v13, v3

    .line 329
    const/4 v3, 0x1

    .line 330
    move-wide/from16 v16, v13

    .line 331
    .line 332
    move-object v13, v10

    .line 333
    move v14, v3

    .line 334
    move-object/from16 v18, v4

    .line 335
    .line 336
    invoke-direct/range {v13 .. v18}, Landroidx/exifinterface/media/a$c;-><init>(IIJ[B)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v9, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    iput-boolean v11, v0, Landroidx/exifinterface/media/a;->t:Z

    .line 343
    .line 344
    :cond_b
    :goto_4
    move v3, v7

    .line 345
    goto :goto_3

    .line 346
    :goto_5
    if-ltz v8, :cond_c

    .line 347
    .line 348
    invoke-virtual {v1, v8}, Landroidx/exifinterface/media/a$b;->k(I)V

    .line 349
    .line 350
    .line 351
    add-int/2addr v3, v8

    .line 352
    goto/16 :goto_0

    .line 353
    .line 354
    :cond_c
    new-instance v1, Ljava/io/IOException;

    .line 355
    .line 356
    invoke-direct {v1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    throw v1

    .line 360
    :cond_d
    new-instance v1, Ljava/io/IOException;

    .line 361
    .line 362
    invoke-direct {v1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    throw v1

    .line 366
    :cond_e
    :goto_6
    iget-object v2, v0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 367
    .line 368
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/a$b;->j(Ljava/nio/ByteOrder;)V

    .line 369
    .line 370
    .line 371
    return-void

    .line 372
    :cond_f
    new-instance v1, Ljava/io/IOException;

    .line 373
    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    .line 375
    .line 376
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    .line 378
    .line 379
    const-string v3, "Invalid marker:"

    .line 380
    .line 381
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    and-int/lit16 v3, v4, 0xff

    .line 385
    .line 386
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v3

    .line 390
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    throw v1

    .line 401
    :cond_10
    new-instance v1, Ljava/io/IOException;

    .line 402
    .line 403
    new-instance v2, Ljava/lang/StringBuilder;

    .line 404
    .line 405
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    and-int/lit16 v3, v3, 0xff

    .line 412
    .line 413
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v3

    .line 417
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    throw v1

    .line 428
    :cond_11
    new-instance v1, Ljava/io/IOException;

    .line 429
    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    .line 431
    .line 432
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    and-int/lit16 v3, v3, 0xff

    .line 439
    .line 440
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v3

    .line 444
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v2

    .line 451
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    throw v1

    .line 455
    :pswitch_data_0
    .packed-switch -0x40
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    :pswitch_data_1
    .packed-switch -0x3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    :pswitch_data_2
    .packed-switch -0x37
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    :pswitch_data_3
    .packed-switch -0x33
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private g(Ljava/io/BufferedInputStream;)I
    .locals 1

    .line 1
    const/16 v0, 0x1388

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 4
    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->reset()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroidx/exifinterface/media/a;->t([B)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x4

    .line 21
    return p1

    .line 22
    :cond_0
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/a;->w([B)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    const/16 p1, 0x9

    .line 29
    .line 30
    return p1

    .line 31
    :cond_1
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/a;->s([B)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    const/16 p1, 0xc

    .line 38
    .line 39
    return p1

    .line 40
    :cond_2
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/a;->u([B)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    const/4 p1, 0x7

    .line 47
    return p1

    .line 48
    :cond_3
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/a;->x([B)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_4

    .line 53
    .line 54
    const/16 p1, 0xa

    .line 55
    .line 56
    return p1

    .line 57
    :cond_4
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/a;->v([B)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_5

    .line 62
    .line 63
    const/16 p1, 0xd

    .line 64
    .line 65
    return p1

    .line 66
    :cond_5
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/a;->B([B)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_6

    .line 71
    .line 72
    const/16 p1, 0xe

    .line 73
    .line 74
    return p1

    .line 75
    :cond_6
    const/4 p1, 0x0

    .line 76
    return p1
.end method

.method private h(Landroidx/exifinterface/media/a$f;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/a;->k(Landroidx/exifinterface/media/a$f;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    aget-object p1, p1, v0

    .line 8
    .line 9
    const-string v1, "MakerNote"

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroidx/exifinterface/media/a$c;

    .line 16
    .line 17
    if-eqz p1, :cond_6

    .line 18
    .line 19
    new-instance v1, Landroidx/exifinterface/media/a$f;

    .line 20
    .line 21
    iget-object p1, p1, Landroidx/exifinterface/media/a$c;->d:[B

    .line 22
    .line 23
    invoke-direct {v1, p1}, Landroidx/exifinterface/media/a$f;-><init>([B)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Landroidx/exifinterface/media/a$b;->j(Ljava/nio/ByteOrder;)V

    .line 29
    .line 30
    .line 31
    sget-object p1, Landroidx/exifinterface/media/a;->E:[B

    .line 32
    .line 33
    array-length v2, p1

    .line 34
    new-array v2, v2, [B

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/a$b;->readFully([B)V

    .line 37
    .line 38
    .line 39
    const-wide/16 v3, 0x0

    .line 40
    .line 41
    invoke-virtual {v1, v3, v4}, Landroidx/exifinterface/media/a$f;->l(J)V

    .line 42
    .line 43
    .line 44
    sget-object v3, Landroidx/exifinterface/media/a;->F:[B

    .line 45
    .line 46
    array-length v4, v3

    .line 47
    new-array v4, v4, [B

    .line 48
    .line 49
    invoke-virtual {v1, v4}, Landroidx/exifinterface/media/a$b;->readFully([B)V

    .line 50
    .line 51
    .line 52
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_0

    .line 57
    .line 58
    const-wide/16 v2, 0x8

    .line 59
    .line 60
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/a$f;->l(J)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_1

    .line 69
    .line 70
    const-wide/16 v2, 0xc

    .line 71
    .line 72
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/a$f;->l(J)V

    .line 73
    .line 74
    .line 75
    :cond_1
    :goto_0
    const/4 p1, 0x6

    .line 76
    invoke-direct {p0, v1, p1}, Landroidx/exifinterface/media/a;->H(Landroidx/exifinterface/media/a$f;I)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 80
    .line 81
    const/4 v1, 0x7

    .line 82
    aget-object p1, p1, v1

    .line 83
    .line 84
    const-string v2, "PreviewImageStart"

    .line 85
    .line 86
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Landroidx/exifinterface/media/a$c;

    .line 91
    .line 92
    iget-object v2, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 93
    .line 94
    aget-object v1, v2, v1

    .line 95
    .line 96
    const-string v2, "PreviewImageLength"

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Landroidx/exifinterface/media/a$c;

    .line 103
    .line 104
    if-eqz p1, :cond_2

    .line 105
    .line 106
    if-eqz v1, :cond_2

    .line 107
    .line 108
    iget-object v2, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 109
    .line 110
    const/4 v3, 0x5

    .line 111
    aget-object v2, v2, v3

    .line 112
    .line 113
    const-string v4, "JPEGInterchangeFormat"

    .line 114
    .line 115
    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 119
    .line 120
    aget-object p1, p1, v3

    .line 121
    .line 122
    const-string v2, "JPEGInterchangeFormatLength"

    .line 123
    .line 124
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    :cond_2
    iget-object p1, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 128
    .line 129
    const/16 v1, 0x8

    .line 130
    .line 131
    aget-object p1, p1, v1

    .line 132
    .line 133
    const-string v1, "AspectFrame"

    .line 134
    .line 135
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    check-cast p1, Landroidx/exifinterface/media/a$c;

    .line 140
    .line 141
    if-eqz p1, :cond_6

    .line 142
    .line 143
    iget-object v1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 144
    .line 145
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/a$c;->k(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    check-cast p1, [I

    .line 150
    .line 151
    if-eqz p1, :cond_5

    .line 152
    .line 153
    array-length v1, p1

    .line 154
    const/4 v2, 0x4

    .line 155
    if-eq v1, v2, :cond_3

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_3
    const/4 v1, 0x2

    .line 159
    aget v1, p1, v1

    .line 160
    .line 161
    const/4 v2, 0x0

    .line 162
    aget v3, p1, v2

    .line 163
    .line 164
    if-le v1, v3, :cond_6

    .line 165
    .line 166
    const/4 v4, 0x3

    .line 167
    aget v4, p1, v4

    .line 168
    .line 169
    aget p1, p1, v0

    .line 170
    .line 171
    if-le v4, p1, :cond_6

    .line 172
    .line 173
    sub-int/2addr v1, v3

    .line 174
    add-int/2addr v1, v0

    .line 175
    sub-int/2addr v4, p1

    .line 176
    add-int/2addr v4, v0

    .line 177
    if-ge v1, v4, :cond_4

    .line 178
    .line 179
    add-int/2addr v1, v4

    .line 180
    sub-int v4, v1, v4

    .line 181
    .line 182
    sub-int/2addr v1, v4

    .line 183
    :cond_4
    iget-object p1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 184
    .line 185
    invoke-static {v1, p1}, Landroidx/exifinterface/media/a$c;->f(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$c;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    iget-object v0, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 190
    .line 191
    invoke-static {v4, v0}, Landroidx/exifinterface/media/a$c;->f(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$c;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    iget-object v1, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 196
    .line 197
    aget-object v1, v1, v2

    .line 198
    .line 199
    const-string v3, "ImageWidth"

    .line 200
    .line 201
    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    iget-object p1, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 205
    .line 206
    aget-object p1, p1, v2

    .line 207
    .line 208
    const-string v1, "ImageLength"

    .line 209
    .line 210
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    const-string v1, "Invalid aspect frame values. frame="

    .line 220
    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    const-string v0, "ExifInterface"

    .line 236
    .line 237
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    :cond_6
    :goto_2
    return-void
.end method

.method private i(Landroidx/exifinterface/media/a$b;)V
    .locals 5

    .line 1
    sget-boolean v0, Landroidx/exifinterface/media/a;->u:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "getPngAttributes starting with: "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/a$b;->j(Ljava/nio/ByteOrder;)V

    .line 21
    .line 22
    .line 23
    sget-object v0, Landroidx/exifinterface/media/a;->G:[B

    .line 24
    .line 25
    array-length v1, v0

    .line 26
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/a$b;->k(I)V

    .line 27
    .line 28
    .line 29
    array-length v0, v0

    .line 30
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroidx/exifinterface/media/a$b;->readInt()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v2, 0x4

    .line 35
    new-array v3, v2, [B

    .line 36
    .line 37
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-ne v4, v2, :cond_7

    .line 42
    .line 43
    add-int/lit8 v0, v0, 0x8

    .line 44
    .line 45
    const/16 v2, 0x10

    .line 46
    .line 47
    if-ne v0, v2, :cond_2

    .line 48
    .line 49
    sget-object v2, Landroidx/exifinterface/media/a;->I:[B

    .line 50
    .line 51
    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 59
    .line 60
    const-string v0, "Encountered invalid PNG file--IHDR chunk should appearas the first chunk"

    .line 61
    .line 62
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1

    .line 66
    :cond_2
    :goto_1
    sget-object v2, Landroidx/exifinterface/media/a;->J:[B

    .line 67
    .line 68
    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_3

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    sget-object v2, Landroidx/exifinterface/media/a;->H:[B

    .line 76
    .line 77
    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_6

    .line 82
    .line 83
    new-array v2, v1, [B

    .line 84
    .line 85
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-ne v4, v1, :cond_5

    .line 90
    .line 91
    invoke-virtual {p1}, Landroidx/exifinterface/media/a$b;->readInt()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    new-instance v1, Ljava/util/zip/CRC32;

    .line 96
    .line 97
    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v3}, Ljava/util/zip/CRC32;->update([B)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    .line 107
    .line 108
    .line 109
    move-result-wide v3

    .line 110
    long-to-int v3, v3

    .line 111
    if-ne v3, p1, :cond_4

    .line 112
    .line 113
    iput v0, p0, Landroidx/exifinterface/media/a;->p:I

    .line 114
    .line 115
    const/4 p1, 0x0

    .line 116
    invoke-direct {p0, v2, p1}, Landroidx/exifinterface/media/a;->G([BI)V

    .line 117
    .line 118
    .line 119
    invoke-direct {p0}, Landroidx/exifinterface/media/a;->O()V

    .line 120
    .line 121
    .line 122
    new-instance p1, Landroidx/exifinterface/media/a$b;

    .line 123
    .line 124
    invoke-direct {p1, v2}, Landroidx/exifinterface/media/a$b;-><init>([B)V

    .line 125
    .line 126
    .line 127
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/a;->K(Landroidx/exifinterface/media/a$b;)V

    .line 128
    .line 129
    .line 130
    :goto_2
    return-void

    .line 131
    :cond_4
    new-instance v0, Ljava/io/IOException;

    .line 132
    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v3, "Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: "

    .line 139
    .line 140
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string p1, ", calculated CRC value: "

    .line 147
    .line 148
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    .line 152
    .line 153
    .line 154
    move-result-wide v3

    .line 155
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw v0

    .line 166
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 167
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    const-string v1, "Failed to read given length for given PNG chunk type: "

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-static {v3}, Landroidx/exifinterface/media/b;->a([B)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw p1

    .line 193
    :cond_6
    add-int/lit8 v1, v1, 0x4

    .line 194
    .line 195
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/a$b;->k(I)V

    .line 196
    .line 197
    .line 198
    add-int/2addr v0, v1

    .line 199
    goto/16 :goto_0

    .line 200
    .line 201
    :cond_7
    new-instance p1, Ljava/io/IOException;

    .line 202
    .line 203
    const-string v0, "Encountered invalid length while parsing PNG chunktype"

    .line 204
    .line 205
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :catch_0
    new-instance p1, Ljava/io/IOException;

    .line 210
    .line 211
    const-string v0, "Encountered corrupt PNG file."

    .line 212
    .line 213
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw p1
.end method

.method private j(Landroidx/exifinterface/media/a$b;)V
    .locals 6

    .line 1
    sget-boolean v0, Landroidx/exifinterface/media/a;->u:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "getRafAttributes starting with: "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    :cond_0
    const/16 v1, 0x54

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/a$b;->k(I)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x4

    .line 24
    new-array v2, v1, [B

    .line 25
    .line 26
    new-array v3, v1, [B

    .line 27
    .line 28
    new-array v1, v1, [B

    .line 29
    .line 30
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    .line 37
    .line 38
    .line 39
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    new-array v3, v3, [B

    .line 64
    .line 65
    invoke-virtual {p1}, Landroidx/exifinterface/media/a$b;->d()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    sub-int v4, v2, v4

    .line 70
    .line 71
    invoke-virtual {p1, v4}, Landroidx/exifinterface/media/a$b;->k(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    .line 75
    .line 76
    .line 77
    new-instance v4, Landroidx/exifinterface/media/a$b;

    .line 78
    .line 79
    invoke-direct {v4, v3}, Landroidx/exifinterface/media/a$b;-><init>([B)V

    .line 80
    .line 81
    .line 82
    const/4 v3, 0x5

    .line 83
    invoke-direct {p0, v4, v2, v3}, Landroidx/exifinterface/media/a;->f(Landroidx/exifinterface/media/a$b;II)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Landroidx/exifinterface/media/a$b;->d()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    sub-int/2addr v1, v2

    .line 91
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/a$b;->k(I)V

    .line 92
    .line 93
    .line 94
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 95
    .line 96
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/a$b;->j(Ljava/nio/ByteOrder;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Landroidx/exifinterface/media/a$b;->readInt()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v0, :cond_1

    .line 104
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v2, "numberOfDirectoryEntry: "

    .line 111
    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    :cond_1
    const/4 v0, 0x0

    .line 119
    move v2, v0

    .line 120
    :goto_0
    if-ge v2, v1, :cond_4

    .line 121
    .line 122
    invoke-virtual {p1}, Landroidx/exifinterface/media/a$b;->readUnsignedShort()I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    invoke-virtual {p1}, Landroidx/exifinterface/media/a$b;->readUnsignedShort()I

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    sget-object v5, Landroidx/exifinterface/media/a;->d0:Landroidx/exifinterface/media/a$d;

    .line 131
    .line 132
    iget v5, v5, Landroidx/exifinterface/media/a$d;->a:I

    .line 133
    .line 134
    if-ne v3, v5, :cond_3

    .line 135
    .line 136
    invoke-virtual {p1}, Landroidx/exifinterface/media/a$b;->readShort()S

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    invoke-virtual {p1}, Landroidx/exifinterface/media/a$b;->readShort()S

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    iget-object v2, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 145
    .line 146
    invoke-static {v1, v2}, Landroidx/exifinterface/media/a$c;->f(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$c;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    iget-object v3, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 151
    .line 152
    invoke-static {p1, v3}, Landroidx/exifinterface/media/a$c;->f(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/a$c;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    iget-object v4, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 157
    .line 158
    aget-object v4, v4, v0

    .line 159
    .line 160
    const-string v5, "ImageLength"

    .line 161
    .line 162
    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    iget-object v2, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 166
    .line 167
    aget-object v0, v2, v0

    .line 168
    .line 169
    const-string v2, "ImageWidth"

    .line 170
    .line 171
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    sget-boolean v0, Landroidx/exifinterface/media/a;->u:Z

    .line 175
    .line 176
    if-eqz v0, :cond_2

    .line 177
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    const-string v2, "Updated to length: "

    .line 184
    .line 185
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v1, ", width: "

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    :cond_2
    return-void

    .line 200
    :cond_3
    invoke-virtual {p1, v4}, Landroidx/exifinterface/media/a$b;->k(I)V

    .line 201
    .line 202
    .line 203
    add-int/lit8 v2, v2, 0x1

    .line 204
    .line 205
    goto :goto_0

    .line 206
    :cond_4
    return-void
.end method

.method private k(Landroidx/exifinterface/media/a$f;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/a;->D(Landroidx/exifinterface/media/a$b;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/a;->H(Landroidx/exifinterface/media/a$f;I)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/a;->N(Landroidx/exifinterface/media/a$f;I)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x5

    .line 12
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/a;->N(Landroidx/exifinterface/media/a$f;I)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/a;->N(Landroidx/exifinterface/media/a$f;I)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Landroidx/exifinterface/media/a;->O()V

    .line 20
    .line 21
    .line 22
    iget p1, p0, Landroidx/exifinterface/media/a;->d:I

    .line 23
    .line 24
    const/16 v0, 0x8

    .line 25
    .line 26
    if-ne p1, v0, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    aget-object p1, p1, v0

    .line 32
    .line 33
    const-string v1, "MakerNote"

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Landroidx/exifinterface/media/a$c;

    .line 40
    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    new-instance v1, Landroidx/exifinterface/media/a$f;

    .line 44
    .line 45
    iget-object p1, p1, Landroidx/exifinterface/media/a$c;->d:[B

    .line 46
    .line 47
    invoke-direct {v1, p1}, Landroidx/exifinterface/media/a$f;-><init>([B)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 51
    .line 52
    invoke-virtual {v1, p1}, Landroidx/exifinterface/media/a$b;->j(Ljava/nio/ByteOrder;)V

    .line 53
    .line 54
    .line 55
    const/4 p1, 0x6

    .line 56
    invoke-virtual {v1, p1}, Landroidx/exifinterface/media/a$b;->k(I)V

    .line 57
    .line 58
    .line 59
    const/16 p1, 0x9

    .line 60
    .line 61
    invoke-direct {p0, v1, p1}, Landroidx/exifinterface/media/a;->H(Landroidx/exifinterface/media/a$f;I)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 65
    .line 66
    aget-object p1, v1, p1

    .line 67
    .line 68
    const-string v1, "ColorSpace"

    .line 69
    .line 70
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Landroidx/exifinterface/media/a$c;

    .line 75
    .line 76
    if-eqz p1, :cond_0

    .line 77
    .line 78
    iget-object v2, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 79
    .line 80
    aget-object v0, v2, v0

    .line 81
    .line 82
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    :cond_0
    return-void
.end method

.method private m(Landroidx/exifinterface/media/a$f;)V
    .locals 4

    .line 1
    sget-boolean v0, Landroidx/exifinterface/media/a;->u:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "getRw2Attributes starting with: "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/a;->k(Landroidx/exifinterface/media/a$f;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    aget-object p1, p1, v0

    .line 25
    .line 26
    const-string v1, "JpgFromRaw"

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Landroidx/exifinterface/media/a$c;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    new-instance v1, Landroidx/exifinterface/media/a$b;

    .line 37
    .line 38
    iget-object v2, p1, Landroidx/exifinterface/media/a$c;->d:[B

    .line 39
    .line 40
    invoke-direct {v1, v2}, Landroidx/exifinterface/media/a$b;-><init>([B)V

    .line 41
    .line 42
    .line 43
    iget-wide v2, p1, Landroidx/exifinterface/media/a$c;->c:J

    .line 44
    .line 45
    long-to-int p1, v2

    .line 46
    const/4 v2, 0x5

    .line 47
    invoke-direct {p0, v1, p1, v2}, Landroidx/exifinterface/media/a;->f(Landroidx/exifinterface/media/a$b;II)V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object p1, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 51
    .line 52
    aget-object p1, p1, v0

    .line 53
    .line 54
    const-string v0, "ISO"

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Landroidx/exifinterface/media/a$c;

    .line 61
    .line 62
    iget-object v0, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 63
    .line 64
    const/4 v1, 0x1

    .line 65
    aget-object v0, v0, v1

    .line 66
    .line 67
    const-string v2, "PhotographicSensitivity"

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Landroidx/exifinterface/media/a$c;

    .line 74
    .line 75
    if-eqz p1, :cond_2

    .line 76
    .line 77
    if-nez v0, :cond_2

    .line 78
    .line 79
    iget-object v0, p0, Landroidx/exifinterface/media/a;->f:[Ljava/util/HashMap;

    .line 80
    .line 81
    aget-object v0, v0, v1

    .line 82
    .line 83
    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    :cond_2
    return-void
.end method

.method private n(Landroidx/exifinterface/media/a$f;)V
    .locals 2

    .line 1
    sget-object v0, Landroidx/exifinterface/media/a;->p0:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/a$b;->k(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/exifinterface/media/a$b;->available()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    new-array v1, v1, [B

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/a$b;->readFully([B)V

    .line 14
    .line 15
    .line 16
    array-length p1, v0

    .line 17
    iput p1, p0, Landroidx/exifinterface/media/a;->p:I

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    invoke-direct {p0, v1, p1}, Landroidx/exifinterface/media/a;->G([BI)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private o(Landroidx/exifinterface/media/a$b;)V
    .locals 5

    .line 1
    sget-boolean v0, Landroidx/exifinterface/media/a;->u:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "getWebpAttributes starting with: "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/a$b;->j(Ljava/nio/ByteOrder;)V

    .line 21
    .line 22
    .line 23
    sget-object v0, Landroidx/exifinterface/media/a;->K:[B

    .line 24
    .line 25
    array-length v0, v0

    .line 26
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/a$b;->k(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/exifinterface/media/a$b;->readInt()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    add-int/lit8 v0, v0, 0x8

    .line 34
    .line 35
    sget-object v1, Landroidx/exifinterface/media/a;->L:[B

    .line 36
    .line 37
    array-length v2, v1

    .line 38
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/a$b;->k(I)V

    .line 39
    .line 40
    .line 41
    array-length v1, v1

    .line 42
    add-int/lit8 v1, v1, 0x8

    .line 43
    .line 44
    :goto_0
    const/4 v2, 0x4

    .line 45
    :try_start_0
    new-array v3, v2, [B

    .line 46
    .line 47
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-ne v4, v2, :cond_6

    .line 52
    .line 53
    invoke-virtual {p1}, Landroidx/exifinterface/media/a$b;->readInt()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    add-int/lit8 v1, v1, 0x8

    .line 58
    .line 59
    sget-object v4, Landroidx/exifinterface/media/a;->M:[B

    .line 60
    .line 61
    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_2

    .line 66
    .line 67
    new-array v0, v2, [B

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-ne p1, v2, :cond_1

    .line 74
    .line 75
    iput v1, p0, Landroidx/exifinterface/media/a;->p:I

    .line 76
    .line 77
    const/4 p1, 0x0

    .line 78
    invoke-direct {p0, v0, p1}, Landroidx/exifinterface/media/a;->G([BI)V

    .line 79
    .line 80
    .line 81
    new-instance p1, Landroidx/exifinterface/media/a$b;

    .line 82
    .line 83
    invoke-direct {p1, v0}, Landroidx/exifinterface/media/a$b;-><init>([B)V

    .line 84
    .line 85
    .line 86
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/a;->K(Landroidx/exifinterface/media/a$b;)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 91
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v1, "Failed to read given length for given PNG chunk type: "

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-static {v3}, Landroidx/exifinterface/media/b;->a([B)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p1

    .line 117
    :cond_2
    rem-int/lit8 v3, v2, 0x2

    .line 118
    .line 119
    const/4 v4, 0x1

    .line 120
    if-ne v3, v4, :cond_3

    .line 121
    .line 122
    add-int/lit8 v2, v2, 0x1

    .line 123
    .line 124
    :cond_3
    add-int/2addr v1, v2

    .line 125
    if-ne v1, v0, :cond_4

    .line 126
    .line 127
    :goto_1
    return-void

    .line 128
    :cond_4
    if-gt v1, v0, :cond_5

    .line 129
    .line 130
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/a$b;->k(I)V

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 135
    .line 136
    const-string v0, "Encountered WebP file with invalid chunk size"

    .line 137
    .line 138
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw p1

    .line 142
    :cond_6
    new-instance p1, Ljava/io/IOException;

    .line 143
    .line 144
    const-string v0, "Encountered invalid length while parsing WebP chunktype"

    .line 145
    .line 146
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :catch_0
    new-instance p1, Ljava/io/IOException;

    .line 151
    .line 152
    const-string v0, "Encountered corrupt WebP file."

    .line 153
    .line 154
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p1
.end method

.method private p(Landroidx/exifinterface/media/a$b;Ljava/util/HashMap;)V
    .locals 4

    .line 1
    const-string v0, "JPEGInterchangeFormat"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/exifinterface/media/a$c;

    .line 8
    .line 9
    const-string v1, "JPEGInterchangeFormatLength"

    .line 10
    .line 11
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Landroidx/exifinterface/media/a$c;

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    if-eqz p2, :cond_3

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/a$c;->i(Ljava/nio/ByteOrder;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 28
    .line 29
    invoke-virtual {p2, v1}, Landroidx/exifinterface/media/a$c;->i(Ljava/nio/ByteOrder;)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    iget v1, p0, Landroidx/exifinterface/media/a;->d:I

    .line 34
    .line 35
    const/4 v2, 0x7

    .line 36
    if-ne v1, v2, :cond_0

    .line 37
    .line 38
    iget v1, p0, Landroidx/exifinterface/media/a;->q:I

    .line 39
    .line 40
    add-int/2addr v0, v1

    .line 41
    :cond_0
    if-lez v0, :cond_2

    .line 42
    .line 43
    if-lez p2, :cond_2

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    iput-boolean v1, p0, Landroidx/exifinterface/media/a;->i:Z

    .line 47
    .line 48
    iget-object v1, p0, Landroidx/exifinterface/media/a;->a:Ljava/lang/String;

    .line 49
    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    iget-object v1, p0, Landroidx/exifinterface/media/a;->c:Landroid/content/res/AssetManager$AssetInputStream;

    .line 53
    .line 54
    if-nez v1, :cond_1

    .line 55
    .line 56
    iget-object v1, p0, Landroidx/exifinterface/media/a;->b:Ljava/io/FileDescriptor;

    .line 57
    .line 58
    if-nez v1, :cond_1

    .line 59
    .line 60
    new-array v1, p2, [B

    .line 61
    .line 62
    int-to-long v2, v0

    .line 63
    invoke-virtual {p1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    .line 67
    .line 68
    .line 69
    iput-object v1, p0, Landroidx/exifinterface/media/a;->n:[B

    .line 70
    .line 71
    :cond_1
    iput v0, p0, Landroidx/exifinterface/media/a;->l:I

    .line 72
    .line 73
    iput p2, p0, Landroidx/exifinterface/media/a;->m:I

    .line 74
    .line 75
    :cond_2
    sget-boolean p1, Landroidx/exifinterface/media/a;->u:Z

    .line 76
    .line 77
    if-eqz p1, :cond_3

    .line 78
    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v1, "Setting thumbnail attributes with offset: "

    .line 85
    .line 86
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v0, ", length: "

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    :cond_3
    return-void
.end method

.method private q(Landroidx/exifinterface/media/a$b;Ljava/util/HashMap;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "StripOffsets"

    .line 8
    .line 9
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    check-cast v3, Landroidx/exifinterface/media/a$c;

    .line 14
    .line 15
    const-string v4, "StripByteCounts"

    .line 16
    .line 17
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Landroidx/exifinterface/media/a$c;

    .line 22
    .line 23
    if-eqz v3, :cond_b

    .line 24
    .line 25
    if-eqz v2, :cond_b

    .line 26
    .line 27
    iget-object v4, v0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Landroidx/exifinterface/media/a$c;->k(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-static {v3}, Landroidx/exifinterface/media/b;->b(Ljava/lang/Object;)[J

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iget-object v4, v0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 38
    .line 39
    invoke-virtual {v2, v4}, Landroidx/exifinterface/media/a$c;->k(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {v2}, Landroidx/exifinterface/media/b;->b(Ljava/lang/Object;)[J

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const-string v4, "ExifInterface"

    .line 48
    .line 49
    if-eqz v3, :cond_a

    .line 50
    .line 51
    array-length v5, v3

    .line 52
    if-nez v5, :cond_0

    .line 53
    .line 54
    goto/16 :goto_3

    .line 55
    .line 56
    :cond_0
    if-eqz v2, :cond_9

    .line 57
    .line 58
    array-length v5, v2

    .line 59
    if-nez v5, :cond_1

    .line 60
    .line 61
    goto/16 :goto_2

    .line 62
    .line 63
    :cond_1
    array-length v5, v3

    .line 64
    array-length v6, v2

    .line 65
    if-eq v5, v6, :cond_2

    .line 66
    .line 67
    const-string v1, "stripOffsets and stripByteCounts should have same length."

    .line 68
    .line 69
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_2
    array-length v4, v2

    .line 74
    const/4 v5, 0x0

    .line 75
    const-wide/16 v6, 0x0

    .line 76
    .line 77
    move v8, v5

    .line 78
    :goto_0
    if-ge v8, v4, :cond_3

    .line 79
    .line 80
    aget-wide v9, v2, v8

    .line 81
    .line 82
    add-long/2addr v6, v9

    .line 83
    add-int/lit8 v8, v8, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    long-to-int v4, v6

    .line 87
    new-array v6, v4, [B

    .line 88
    .line 89
    const/4 v7, 0x1

    .line 90
    iput-boolean v7, v0, Landroidx/exifinterface/media/a;->k:Z

    .line 91
    .line 92
    iput-boolean v7, v0, Landroidx/exifinterface/media/a;->j:Z

    .line 93
    .line 94
    iput-boolean v7, v0, Landroidx/exifinterface/media/a;->i:Z

    .line 95
    .line 96
    move v8, v5

    .line 97
    move v9, v8

    .line 98
    move v10, v9

    .line 99
    :goto_1
    array-length v11, v3

    .line 100
    if-ge v8, v11, :cond_8

    .line 101
    .line 102
    aget-wide v11, v3, v8

    .line 103
    .line 104
    long-to-int v11, v11

    .line 105
    aget-wide v12, v2, v8

    .line 106
    .line 107
    long-to-int v12, v12

    .line 108
    array-length v13, v3

    .line 109
    sub-int/2addr v13, v7

    .line 110
    if-ge v8, v13, :cond_4

    .line 111
    .line 112
    add-int v13, v11, v12

    .line 113
    .line 114
    int-to-long v13, v13

    .line 115
    add-int/lit8 v15, v8, 0x1

    .line 116
    .line 117
    aget-wide v15, v3, v15

    .line 118
    .line 119
    cmp-long v13, v13, v15

    .line 120
    .line 121
    if-eqz v13, :cond_4

    .line 122
    .line 123
    iput-boolean v5, v0, Landroidx/exifinterface/media/a;->k:Z

    .line 124
    .line 125
    :cond_4
    sub-int/2addr v11, v9

    .line 126
    if-gez v11, :cond_5

    .line 127
    .line 128
    return-void

    .line 129
    :cond_5
    int-to-long v13, v11

    .line 130
    invoke-virtual {v1, v13, v14}, Ljava/io/InputStream;->skip(J)J

    .line 131
    .line 132
    .line 133
    move-result-wide v15

    .line 134
    cmp-long v13, v15, v13

    .line 135
    .line 136
    const-string v14, " bytes."

    .line 137
    .line 138
    if-eqz v13, :cond_6

    .line 139
    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    const-string v2, "Failed to skip "

    .line 146
    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :cond_6
    add-int/2addr v9, v11

    .line 158
    new-array v11, v12, [B

    .line 159
    .line 160
    invoke-virtual {v1, v11}, Ljava/io/InputStream;->read([B)I

    .line 161
    .line 162
    .line 163
    move-result v13

    .line 164
    if-eq v13, v12, :cond_7

    .line 165
    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    const-string v2, "Failed to read "

    .line 172
    .line 173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :cond_7
    add-int/2addr v9, v12

    .line 184
    invoke-static {v11, v5, v6, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    .line 186
    .line 187
    add-int/2addr v10, v12

    .line 188
    add-int/lit8 v8, v8, 0x1

    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_8
    iput-object v6, v0, Landroidx/exifinterface/media/a;->n:[B

    .line 192
    .line 193
    iget-boolean v1, v0, Landroidx/exifinterface/media/a;->k:Z

    .line 194
    .line 195
    if-eqz v1, :cond_b

    .line 196
    .line 197
    aget-wide v1, v3, v5

    .line 198
    .line 199
    long-to-int v1, v1

    .line 200
    iput v1, v0, Landroidx/exifinterface/media/a;->l:I

    .line 201
    .line 202
    iput v4, v0, Landroidx/exifinterface/media/a;->m:I

    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_9
    :goto_2
    const-string v1, "stripByteCounts should not be null or have zero length."

    .line 206
    .line 207
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :cond_a
    :goto_3
    const-string v1, "stripOffsets should not be null or have zero length."

    .line 212
    .line 213
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    :cond_b
    :goto_4
    return-void
.end method

.method private static r(Ljava/io/BufferedInputStream;)Z
    .locals 4

    .line 1
    sget-object v0, Landroidx/exifinterface/media/a;->p0:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    invoke-virtual {p0, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 5
    .line 6
    .line 7
    array-length v0, v0

    .line 8
    new-array v0, v0, [B

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->reset()V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    move v1, p0

    .line 18
    :goto_0
    sget-object v2, Landroidx/exifinterface/media/a;->p0:[B

    .line 19
    .line 20
    array-length v3, v2

    .line 21
    if-ge v1, v3, :cond_1

    .line 22
    .line 23
    aget-byte v3, v0, v1

    .line 24
    .line 25
    aget-byte v2, v2, v1

    .line 26
    .line 27
    if-eq v3, v2, :cond_0

    .line 28
    .line 29
    return p0

    .line 30
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p0, 0x1

    .line 34
    return p0
.end method

.method private s([B)Z
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Landroidx/exifinterface/media/a$b;

    .line 4
    .line 5
    invoke-direct {v2, p1}, Landroidx/exifinterface/media/a$b;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    .line 7
    .line 8
    :try_start_1
    invoke-virtual {v2}, Landroidx/exifinterface/media/a$b;->readInt()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    int-to-long v3, v1

    .line 13
    const/4 v1, 0x4

    .line 14
    new-array v5, v1, [B

    .line 15
    .line 16
    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    .line 17
    .line 18
    .line 19
    sget-object v6, Landroidx/exifinterface/media/a;->B:[B

    .line 20
    .line 21
    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    .line 22
    .line 23
    .line 24
    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    if-nez v5, :cond_0

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 28
    .line 29
    .line 30
    return v0

    .line 31
    :cond_0
    const-wide/16 v5, 0x1

    .line 32
    .line 33
    cmp-long v7, v3, v5

    .line 34
    .line 35
    const-wide/16 v8, 0x8

    .line 36
    .line 37
    if-nez v7, :cond_1

    .line 38
    .line 39
    :try_start_2
    invoke-virtual {v2}, Landroidx/exifinterface/media/a$b;->readLong()J

    .line 40
    .line 41
    .line 42
    move-result-wide v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    const-wide/16 v10, 0x10

    .line 44
    .line 45
    cmp-long v7, v3, v10

    .line 46
    .line 47
    if-gez v7, :cond_2

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 50
    .line 51
    .line 52
    return v0

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    move-object v1, v2

    .line 55
    goto :goto_3

    .line 56
    :catch_0
    move-object v1, v2

    .line 57
    goto :goto_4

    .line 58
    :cond_1
    move-wide v10, v8

    .line 59
    :cond_2
    :try_start_3
    array-length v7, p1

    .line 60
    int-to-long v12, v7

    .line 61
    cmp-long v7, v3, v12

    .line 62
    .line 63
    if-lez v7, :cond_3

    .line 64
    .line 65
    array-length p1, p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    int-to-long v3, p1

    .line 67
    :cond_3
    sub-long/2addr v3, v10

    .line 68
    cmp-long p1, v3, v8

    .line 69
    .line 70
    if-gez p1, :cond_4

    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 73
    .line 74
    .line 75
    return v0

    .line 76
    :cond_4
    :try_start_4
    new-array p1, v1, [B

    .line 77
    .line 78
    const-wide/16 v7, 0x0

    .line 79
    .line 80
    move v9, v0

    .line 81
    move v10, v9

    .line 82
    :goto_0
    const-wide/16 v11, 0x4

    .line 83
    .line 84
    div-long v11, v3, v11

    .line 85
    .line 86
    cmp-long v11, v7, v11

    .line 87
    .line 88
    if-gez v11, :cond_a

    .line 89
    .line 90
    invoke-virtual {v2, p1}, Ljava/io/InputStream;->read([B)I

    .line 91
    .line 92
    .line 93
    move-result v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 94
    if-eq v11, v1, :cond_5

    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 97
    .line 98
    .line 99
    return v0

    .line 100
    :cond_5
    cmp-long v11, v7, v5

    .line 101
    .line 102
    if-nez v11, :cond_6

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_6
    :try_start_5
    sget-object v11, Landroidx/exifinterface/media/a;->C:[B

    .line 106
    .line 107
    invoke-static {p1, v11}, Ljava/util/Arrays;->equals([B[B)Z

    .line 108
    .line 109
    .line 110
    move-result v11

    .line 111
    const/4 v12, 0x1

    .line 112
    if-eqz v11, :cond_7

    .line 113
    .line 114
    move v9, v12

    .line 115
    goto :goto_1

    .line 116
    :cond_7
    sget-object v11, Landroidx/exifinterface/media/a;->D:[B

    .line 117
    .line 118
    invoke-static {p1, v11}, Ljava/util/Arrays;->equals([B[B)Z

    .line 119
    .line 120
    .line 121
    move-result v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 122
    if-eqz v11, :cond_8

    .line 123
    .line 124
    move v10, v12

    .line 125
    :cond_8
    :goto_1
    if-eqz v9, :cond_9

    .line 126
    .line 127
    if-eqz v10, :cond_9

    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 130
    .line 131
    .line 132
    return v12

    .line 133
    :cond_9
    :goto_2
    add-long/2addr v7, v5

    .line 134
    goto :goto_0

    .line 135
    :cond_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 136
    .line 137
    .line 138
    goto :goto_5

    .line 139
    :catchall_1
    move-exception p1

    .line 140
    :goto_3
    if-eqz v1, :cond_b

    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 143
    .line 144
    .line 145
    :cond_b
    throw p1

    .line 146
    :catch_1
    :goto_4
    if-eqz v1, :cond_c

    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 149
    .line 150
    .line 151
    :cond_c
    :goto_5
    return v0
.end method

.method private static t([B)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    sget-object v2, Landroidx/exifinterface/media/a;->A:[B

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    if-ge v1, v3, :cond_1

    .line 7
    .line 8
    aget-byte v3, p0, v1

    .line 9
    .line 10
    aget-byte v2, v2, v1

    .line 11
    .line 12
    if-eq v3, v2, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 p0, 0x1

    .line 19
    return p0
.end method

.method private u([B)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Landroidx/exifinterface/media/a$b;

    .line 4
    .line 5
    invoke-direct {v2, p1}, Landroidx/exifinterface/media/a$b;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    .line 7
    .line 8
    :try_start_1
    invoke-direct {p0, v2}, Landroidx/exifinterface/media/a;->F(Landroidx/exifinterface/media/a$b;)Ljava/nio/ByteOrder;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 13
    .line 14
    invoke-virtual {v2, p1}, Landroidx/exifinterface/media/a$b;->j(Ljava/nio/ByteOrder;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Landroidx/exifinterface/media/a$b;->readShort()S

    .line 18
    .line 19
    .line 20
    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    const/16 v1, 0x4f52

    .line 22
    .line 23
    if-eq p1, v1, :cond_0

    .line 24
    .line 25
    const/16 v1, 0x5352

    .line 26
    .line 27
    if-ne p1, v1, :cond_1

    .line 28
    .line 29
    :cond_0
    const/4 v0, 0x1

    .line 30
    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 31
    .line 32
    .line 33
    return v0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    move-object v1, v2

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-object v1, v2

    .line 38
    goto :goto_1

    .line 39
    :catchall_1
    move-exception p1

    .line 40
    :goto_0
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 43
    .line 44
    .line 45
    :cond_2
    throw p1

    .line 46
    :catch_1
    :goto_1
    if-eqz v1, :cond_3

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 49
    .line 50
    .line 51
    :cond_3
    return v0
.end method

.method private v([B)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    sget-object v2, Landroidx/exifinterface/media/a;->G:[B

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    if-ge v1, v3, :cond_1

    .line 7
    .line 8
    aget-byte v3, p1, v1

    .line 9
    .line 10
    aget-byte v2, v2, v1

    .line 11
    .line 12
    if-eq v3, v2, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 p1, 0x1

    .line 19
    return p1
.end method

.method private w([B)Z
    .locals 5

    .line 1
    const-string v0, "FUJIFILMCCD-RAW"

    .line 2
    .line 3
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    :goto_0
    array-length v3, v0

    .line 14
    if-ge v2, v3, :cond_1

    .line 15
    .line 16
    aget-byte v3, p1, v2

    .line 17
    .line 18
    aget-byte v4, v0, v2

    .line 19
    .line 20
    if-eq v3, v4, :cond_0

    .line 21
    .line 22
    return v1

    .line 23
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p1, 0x1

    .line 27
    return p1
.end method

.method private x([B)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Landroidx/exifinterface/media/a$b;

    .line 4
    .line 5
    invoke-direct {v2, p1}, Landroidx/exifinterface/media/a$b;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    .line 7
    .line 8
    :try_start_1
    invoke-direct {p0, v2}, Landroidx/exifinterface/media/a;->F(Landroidx/exifinterface/media/a$b;)Ljava/nio/ByteOrder;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 13
    .line 14
    invoke-virtual {v2, p1}, Landroidx/exifinterface/media/a$b;->j(Ljava/nio/ByteOrder;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Landroidx/exifinterface/media/a$b;->readShort()S

    .line 18
    .line 19
    .line 20
    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    const/16 v1, 0x55

    .line 22
    .line 23
    if-ne p1, v1, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    :cond_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 27
    .line 28
    .line 29
    return v0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    move-object v1, v2

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-object v1, v2

    .line 34
    goto :goto_1

    .line 35
    :catchall_1
    move-exception p1

    .line 36
    :goto_0
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 39
    .line 40
    .line 41
    :cond_1
    throw p1

    .line 42
    :catch_1
    :goto_1
    if-eqz v1, :cond_2

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 45
    .line 46
    .line 47
    :cond_2
    return v0
.end method

.method private static y(Ljava/io/FileDescriptor;)Z
    .locals 3

    .line 1
    :try_start_0
    sget v0, Landroid/system/OsConstants;->SEEK_CUR:I

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-static {p0, v1, v2, v0}, Landroidx/exifinterface/media/b$a;->c(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :catch_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method private z(Ljava/util/HashMap;)Z
    .locals 5

    .line 1
    const-string v0, "BitsPerSample"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/exifinterface/media/a$c;

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/a$c;->k(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, [I

    .line 18
    .line 19
    sget-object v1, Landroidx/exifinterface/media/a;->x:[I

    .line 20
    .line 21
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x1

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    return v3

    .line 29
    :cond_0
    iget v2, p0, Landroidx/exifinterface/media/a;->d:I

    .line 30
    .line 31
    const/4 v4, 0x3

    .line 32
    if-ne v2, v4, :cond_3

    .line 33
    .line 34
    const-string v2, "PhotometricInterpretation"

    .line 35
    .line 36
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Landroidx/exifinterface/media/a$c;

    .line 41
    .line 42
    if-eqz p1, :cond_3

    .line 43
    .line 44
    iget-object v2, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 45
    .line 46
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/a$c;->i(Ljava/nio/ByteOrder;)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-ne p1, v3, :cond_1

    .line 51
    .line 52
    sget-object v2, Landroidx/exifinterface/media/a;->z:[I

    .line 53
    .line 54
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_2

    .line 59
    .line 60
    :cond_1
    const/4 v2, 0x6

    .line 61
    if-ne p1, v2, :cond_3

    .line 62
    .line 63
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    :cond_2
    return v3

    .line 70
    :cond_3
    const/4 p1, 0x0

    .line 71
    return p1
.end method


# virtual methods
.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x3

    .line 5
    if-eqz p1, :cond_6

    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/a;->d(Ljava/lang/String;)Landroidx/exifinterface/media/a$c;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    const/4 v5, 0x0

    .line 12
    if-eqz v4, :cond_5

    .line 13
    .line 14
    sget-object v6, Landroidx/exifinterface/media/a;->m0:Ljava/util/HashSet;

    .line 15
    .line 16
    invoke-virtual {v6, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    if-nez v6, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 23
    .line 24
    invoke-virtual {v4, p1}, Landroidx/exifinterface/media/a$c;->j(Ljava/nio/ByteOrder;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :cond_0
    const-string v6, "GPSTimeStamp"

    .line 30
    .line 31
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_4

    .line 36
    .line 37
    iget p1, v4, Landroidx/exifinterface/media/a$c;->a:I

    .line 38
    .line 39
    const/4 v6, 0x5

    .line 40
    const-string v7, "ExifInterface"

    .line 41
    .line 42
    if-eq p1, v6, :cond_1

    .line 43
    .line 44
    const/16 v6, 0xa

    .line 45
    .line 46
    if-eq p1, v6, :cond_1

    .line 47
    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v0, "GPS Timestamp format is not rational. format="

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v0, v4, Landroidx/exifinterface/media/a$c;->a:I

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {v7, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    return-object v5

    .line 71
    :cond_1
    iget-object p1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 72
    .line 73
    invoke-virtual {v4, p1}, Landroidx/exifinterface/media/a$c;->k(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, [Landroidx/exifinterface/media/a$e;

    .line 78
    .line 79
    if-eqz p1, :cond_3

    .line 80
    .line 81
    array-length v4, p1

    .line 82
    if-eq v4, v3, :cond_2

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    aget-object v4, p1, v2

    .line 86
    .line 87
    iget-wide v5, v4, Landroidx/exifinterface/media/a$e;->a:J

    .line 88
    .line 89
    long-to-float v5, v5

    .line 90
    iget-wide v6, v4, Landroidx/exifinterface/media/a$e;->b:J

    .line 91
    .line 92
    long-to-float v4, v6

    .line 93
    div-float/2addr v5, v4

    .line 94
    float-to-int v4, v5

    .line 95
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    aget-object v5, p1, v1

    .line 100
    .line 101
    iget-wide v6, v5, Landroidx/exifinterface/media/a$e;->a:J

    .line 102
    .line 103
    long-to-float v6, v6

    .line 104
    iget-wide v7, v5, Landroidx/exifinterface/media/a$e;->b:J

    .line 105
    .line 106
    long-to-float v5, v7

    .line 107
    div-float/2addr v6, v5

    .line 108
    float-to-int v5, v6

    .line 109
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    aget-object p1, p1, v0

    .line 114
    .line 115
    iget-wide v6, p1, Landroidx/exifinterface/media/a$e;->a:J

    .line 116
    .line 117
    long-to-float v6, v6

    .line 118
    iget-wide v7, p1, Landroidx/exifinterface/media/a$e;->b:J

    .line 119
    .line 120
    long-to-float p1, v7

    .line 121
    div-float/2addr v6, p1

    .line 122
    float-to-int p1, v6

    .line 123
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    new-array v3, v3, [Ljava/lang/Object;

    .line 128
    .line 129
    aput-object v4, v3, v2

    .line 130
    .line 131
    aput-object v5, v3, v1

    .line 132
    .line 133
    aput-object p1, v3, v0

    .line 134
    .line 135
    const-string p1, "%02d:%02d:%02d"

    .line 136
    .line 137
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    return-object p1

    .line 142
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    const-string v1, "Invalid GPS Timestamp array. array="

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-static {v7, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    return-object v5

    .line 167
    :cond_4
    :try_start_0
    iget-object p1, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 168
    .line 169
    invoke-virtual {v4, p1}, Landroidx/exifinterface/media/a$c;->h(Ljava/nio/ByteOrder;)D

    .line 170
    .line 171
    .line 172
    move-result-wide v0

    .line 173
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    return-object p1

    .line 178
    :catch_0
    :cond_5
    return-object v5

    .line 179
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    .line 180
    .line 181
    const-string v0, "tag shouldn\'t be null"

    .line 182
    .line 183
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw p1
.end method

.method public c(Ljava/lang/String;I)I
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/a;->d(Ljava/lang/String;)Landroidx/exifinterface/media/a$c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return p2

    .line 10
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/exifinterface/media/a;->h:Ljava/nio/ByteOrder;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/a$c;->i(Ljava/nio/ByteOrder;)I

    .line 13
    .line 14
    .line 15
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return p1

    .line 17
    :catch_0
    return p2

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 19
    .line 20
    const-string p2, "tag shouldn\'t be null"

    .line 21
    .line 22
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method public l()I
    .locals 2

    .line 1
    const-string v0, "Orientation"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Landroidx/exifinterface/media/a;->c(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return v0

    .line 13
    :pswitch_0
    const/16 v0, 0x5a

    .line 14
    .line 15
    return v0

    .line 16
    :pswitch_1
    const/16 v0, 0x10e

    .line 17
    .line 18
    return v0

    .line 19
    :pswitch_2
    const/16 v0, 0xb4

    .line 20
    .line 21
    return v0

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
