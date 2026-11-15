.class public abstract Lhk3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/HashSet;

.field public static final b:Ljava/util/HashSet;

.field public static final c:Ljava/util/HashSet;

.field public static final d:Ljava/util/HashSet;

.field public static final e:Ljava/util/HashSet;

.field public static final f:Ljava/util/HashSet;

.field public static final g:Ljava/util/HashSet;

.field public static final h:[Ljava/lang/String;

.field public static final i:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 70

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lhk3;->a:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lhk3;->b:Ljava/util/HashSet;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Lhk3;->c:Ljava/util/HashSet;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    sput-object v3, Lhk3;->d:Ljava/util/HashSet;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    sput-object v4, Lhk3;->e:Ljava/util/HashSet;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    sput-object v5, Lhk3;->f:Ljava/util/HashSet;

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    sput-object v6, Lhk3;->g:Ljava/util/HashSet;

    const-string v18, "%.m2ts%"

    const-string v19, "%.divx%"

    const-string v7, "%.rmvb%"

    const-string v8, "%.rm%"

    const-string v9, "%.vob%"

    const-string v10, "%.RMVB%"

    const-string v11, "%.RM%"

    const-string v12, "%.VOB%"

    const-string v13, "%.asf%"

    const-string v14, "%.ps%"

    const-string v15, "%.mpg%"

    const-string v16, "%.mpeg%"

    const-string v17, "%.MP4V%"

    filled-new-array/range {v7 .. v19}, [Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lhk3;->h:[Ljava/lang/String;

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    sput-object v7, Lhk3;->i:Ljava/util/HashSet;

    const-string v19, ".m2ts"

    const-string v20, ".divx"

    const-string v8, ".rmvb"

    const-string v9, ".rm"

    const-string v10, ".vob"

    const-string v11, ".RMVB"

    const-string v12, ".RM"

    const-string v13, ".VOB"

    const-string v14, ".asf"

    const-string v15, ".ps"

    const-string v16, ".mpg"

    const-string v17, ".mpeg"

    const-string v18, ".MP4V"

    filled-new-array/range {v8 .. v20}, [Ljava/lang/String;

    move-result-object v8

    const-string v17, ".pcx"

    const-string v18, ".tga"

    const-string v9, ".jpg"

    const-string v10, ".png"

    const-string v11, ".bmp"

    const-string v12, ".apng"

    const-string v13, ".gif"

    const-string v14, ".webp"

    const-string v15, ".svg"

    const-string v16, ".psd"

    filled-new-array/range {v9 .. v18}, [Ljava/lang/String;

    move-result-object v9

    const-string v68, ".xesc"

    const-string v69, ".asx"

    const-string v10, ".3g2"

    const-string v11, ".3gp"

    const-string v12, ".3gp2"

    const-string v13, ".3gpp"

    const-string v14, ".amv"

    const-string v15, ".asf"

    const-string v16, ".avi"

    const-string v17, ".divx"

    const-string v18, ".drc"

    const-string v19, ".dv"

    const-string v20, ".f4v"

    const-string v21, ".flv"

    const-string v22, ".gvi"

    const-string v23, ".gxf"

    const-string v24, ".h264"

    const-string v25, ".ismv"

    const-string v26, ".iso"

    const-string v27, ".m1v"

    const-string v28, ".m2v"

    const-string v29, ".m2t"

    const-string v30, ".m2ts"

    const-string v31, ".m4v"

    const-string v32, ".mkv"

    const-string v33, ".mov"

    const-string v34, ".mp2v"

    const-string v35, ".mp4"

    const-string v36, ".mp4v"

    const-string v37, ".mpe"

    const-string v38, ".mpeg"

    const-string v39, ".mpeg1"

    const-string v40, ".mpeg2"

    const-string v41, ".mpeg4"

    const-string v42, ".mpg"

    const-string v43, ".mpv2"

    const-string v44, ".mts"

    const-string v45, ".mtv"

    const-string v46, ".mxf"

    const-string v47, ".mxg"

    const-string v48, ".nsv"

    const-string v49, ".nut"

    const-string v50, ".nuv"

    const-string v51, ".ogm"

    const-string v52, ".ogv"

    const-string v53, ".ogx"

    const-string v54, ".ogg"

    const-string v55, ".ps"

    const-string v56, ".rec"

    const-string v57, ".rm"

    const-string v58, ".rmvb"

    const-string v59, ".tod"

    const-string v60, ".ts"

    const-string v61, ".tts"

    const-string v62, ".vob"

    const-string v63, ".vro"

    const-string v64, ".webm"

    const-string v65, ".wm"

    const-string v66, ".wmv"

    const-string v67, ".wtv"

    filled-new-array/range {v10 .. v69}, [Ljava/lang/String;

    move-result-object v10

    const-string v58, ".xa"

    const-string v59, ".xm"

    const-string v11, ".3ga"

    const-string v12, ".a52"

    const-string v13, ".aac"

    const-string v14, ".ac3"

    const-string v15, ".adt"

    const-string v16, ".adts"

    const-string v17, ".aif"

    const-string v18, ".aifc"

    const-string v19, ".aiff"

    const-string v20, ".alac"

    const-string v21, ".amr"

    const-string v22, ".aob"

    const-string v23, ".ape"

    const-string v24, ".awb"

    const-string v25, ".caf"

    const-string v26, ".dts"

    const-string v27, ".flac"

    const-string v28, ".it"

    const-string v29, ".m4a"

    const-string v30, ".m4b"

    const-string v31, ".m4p"

    const-string v32, ".mid"

    const-string v33, ".mka"

    const-string v34, ".mlp"

    const-string v35, ".mod"

    const-string v36, ".mpa"

    const-string v37, ".mp1"

    const-string v38, ".mp2"

    const-string v39, ".mp3"

    const-string v40, ".mpc"

    const-string v41, ".mpga"

    const-string v42, ".oga"

    const-string v43, ".ogg"

    const-string v44, ".oma"

    const-string v45, ".opus"

    const-string v46, ".ra"

    const-string v47, ".ram"

    const-string v48, ".rmi"

    const-string v49, ".s3m"

    const-string v50, ".spx"

    const-string v51, ".tta"

    const-string v52, ".voc"

    const-string v53, ".vqf"

    const-string v54, ".w64"

    const-string v55, ".wav"

    const-string v56, ".wma"

    const-string v57, ".wv"

    filled-new-array/range {v11 .. v59}, [Ljava/lang/String;

    move-result-object v11

    const-string v34, ".ttml"

    const-string v35, ".mks"

    const-string v12, ".idx"

    const-string v13, ".sub"

    const-string v14, ".srt"

    const-string v15, ".ssa"

    const-string v16, ".ass"

    const-string v17, ".smi"

    const-string v18, ".utf"

    const-string v19, ".utf8"

    const-string v20, ".utf-8"

    const-string v21, ".rt"

    const-string v22, ".aqt"

    const-string v23, ".txt"

    const-string v24, ".usf"

    const-string v25, ".jss"

    const-string v26, ".cdg"

    const-string v27, ".psb"

    const-string v28, ".mpsub"

    const-string v29, ".mpl2"

    const-string v30, ".pjs"

    const-string v31, ".dks"

    const-string v32, ".stl"

    const-string v33, ".vtt"

    filled-new-array/range {v12 .. v35}, [Ljava/lang/String;

    move-result-object v12

    const-string v17, ".xspf"

    const-string v18, ".wpl"

    const-string v13, ".m3u"

    const-string v14, ".asx"

    const-string v15, ".b4s"

    const-string v16, ".pls"

    filled-new-array/range {v13 .. v18}, [Ljava/lang/String;

    move-result-object v13

    const-string v25, ".3gp"

    const-string v26, ".vob"

    const-string v14, ".avi"

    const-string v15, ".wmv"

    const-string v16, ".mpeg"

    const-string v17, ".mp4"

    const-string v18, ".m4v"

    const-string v19, ".mov"

    const-string v20, ".asf"

    const-string v21, ".flv"

    const-string v22, ".f4v"

    const-string v23, ".rmvb"

    const-string v24, ".rm"

    filled-new-array/range {v14 .. v26}, [Ljava/lang/String;

    move-result-object v14

    const-string v39, ".mpga"

    const-string v40, ".dv"

    const-string v15, ".mp4"

    const-string v16, ".mov"

    const-string v17, ".ts"

    const-string v18, ".dat"

    const-string v19, ".avi"

    const-string v20, ".mts"

    const-string v21, ".flv"

    const-string v22, ".swf"

    const-string v23, ".mpg"

    const-string v24, ".3gp"

    const-string v25, ".wmv"

    const-string v26, ".mkv"

    const-string v27, ".rmvb"

    const-string v28, ".vob"

    const-string v29, ".f4v"

    const-string v30, ".rm"

    const-string v31, ".m2ts"

    const-string v32, ".m4v"

    const-string v33, ".mpeg"

    const-string v34, ".asf"

    const-string v35, ".wmz"

    const-string v36, ".webm"

    const-string v37, ".wm"

    const-string v38, ".pmp"

    filled-new-array/range {v15 .. v40}, [Ljava/lang/String;

    move-result-object v15

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "unknow"

    :goto_0
    sget-object v0, Lhk3;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
