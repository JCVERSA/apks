.class public Lcom/transsion/sniffer_load/sniffservice/SniffDownloadHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/sniffer_load/sniffservice/SniffDownloadHelper$VideoCheckResultListener;
    }
.end annotation


# static fields
.field public static final EXTENSION_AUDIO_ALL:[Ljava/lang/String;

.field public static final EXTENSION_VIDEO_ALL:[Ljava/lang/String;

.field public static final MAGNET_PREFIX:Ljava/lang/String; = "magnet"

.field private static final TAG:Ljava/lang/String; = "SniffDownloadHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 76

    const-string v74, ".webm"

    const-string v75, ".wtv"

    const-string v0, ".mp4"

    const-string v1, ".m3u8"

    const-string v2, ".dvr-ms"

    const-string v3, ".wm"

    const-string v4, ".wmp"

    const-string v5, ".wmv"

    const-string v6, ".rm"

    const-string v7, ".rmvb"

    const-string v8, ".mov"

    const-string v9, ".qt"

    const-string v10, ".f4v"

    const-string v11, ".flv"

    const-string v12, ".hlv"

    const-string v13, ".swf"

    const-string v14, ".m1v"

    const-string v15, ".m2p"

    const-string v16, ".m2t"

    const-string v17, ".m2ts"

    const-string v18, ".m2v"

    const-string v19, ".m4v"

    const-string v20, ".mp2v"

    const-string v21, ".asf"

    const-string v22, ".mpe"

    const-string v23, ".mpeg"

    const-string v24, ".mpeg1"

    const-string v25, ".mpeg2"

    const-string v26, ".mpv2"

    const-string v27, ".pva"

    const-string v28, ".tp"

    const-string v29, ".ts"

    const-string v30, ".mpeg4"

    const-string v31, ".mpg"

    const-string v32, ".ifo"

    const-string v33, ".vob"

    const-string v34, ".3g2"

    const-string v35, ".3gp"

    const-string v36, ".3gp2"

    const-string v37, ".3gpp"

    const-string v38, ".264"

    const-string v39, ".amv"

    const-string v40, ".avi"

    const-string v41, ".bik"

    const-string v42, ".csf"

    const-string v43, ".divx"

    const-string v44, ".dpg"

    const-string v45, ".dv"

    const-string v46, ".evo"

    const-string v47, ".h264"

    const-string v48, ".ivm"

    const-string v49, ".k3g"

    const-string v50, ".mkv"

    const-string v51, ".mod"

    const-string v52, ".mts"

    const-string v53, ".mtv"

    const-string v54, ".mp4v"

    const-string v55, ".mxf"

    const-string v56, ".nsr"

    const-string v57, ".nsv"

    const-string v58, ".ogm"

    const-string v59, ".ogv"

    const-string v60, ".pfv"

    const-string v61, ".pmf"

    const-string v62, ".pmp"

    const-string v63, ".pss"

    const-string v64, ".qsv"

    const-string v65, ".scm"

    const-string v66, ".skm"

    const-string v67, ".tod"

    const-string v68, ".tpr"

    const-string v69, ".trp"

    const-string v70, ".vdat"

    const-string v71, ".vp6"

    const-string v72, ".vp7"

    const-string v73, ".vro"

    filled-new-array/range {v0 .. v75}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/sniffer_load/sniffservice/SniffDownloadHelper;->EXTENSION_VIDEO_ALL:[Ljava/lang/String;

    const-string v34, ".rmi"

    const-string v35, ".tak"

    const-string v1, ".mp3"

    const-string v2, ".wma"

    const-string v3, ".ra"

    const-string v4, ".ram"

    const-string v5, ".ape"

    const-string v6, ".cda"

    const-string v7, ".flac"

    const-string v8, ".tta"

    const-string v9, ".wav"

    const-string v10, ".wv"

    const-string v11, ".au"

    const-string v12, ".aac"

    const-string v13, ".ac3"

    const-string v14, ".aif"

    const-string v15, ".aiff"

    const-string v16, ".dtshd"

    const-string v17, ".dts"

    const-string v18, ".eac3"

    const-string v19, ".m1a"

    const-string v20, ".m2a"

    const-string v21, ".m4a"

    const-string v22, ".m4b"

    const-string v23, ".m4p"

    const-string v24, ".m4r"

    const-string v25, ".mid"

    const-string v26, ".midi"

    const-string v27, ".mka"

    const-string v28, ".mp2"

    const-string v29, ".mp5"

    const-string v30, ".mpa"

    const-string v31, ".mpc"

    const-string v32, ".ogg"

    const-string v33, ".ogx"

    filled-new-array/range {v1 .. v35}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/sniffer_load/sniffservice/SniffDownloadHelper;->EXTENSION_AUDIO_ALL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/sniffer_load/sniffservice/SniffDownloadHelper;->lambda$getUnsafeOkHttpClient$0(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p0

    return p0
.end method

.method private static checkDownloadFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "tingchina.com"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string p1, ".mp3"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static generateVideoNameWithTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lav3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getContentLength(Ljava/lang/String;Ljava/lang/String;)J
    .locals 7

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "getContentLength: downloadUrl is null"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "SniffDownloadHelper"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-wide v1

    :cond_0
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "User-Agent"

    invoke-virtual {v0, v3, p1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_1
    invoke-virtual {v0, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    const-wide/16 v3, -0x1

    const/4 p1, 0x0

    :try_start_0
    invoke-static {}, Lcom/transsion/sniffer_load/sniffservice/SniffDownloadHelper;->getUnsafeOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    invoke-interface {p0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p0, v5, v1

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move-wide v3, v5

    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lokhttp3/Response;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-wide v3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    :try_start_2
    invoke-virtual {p1}, Lokhttp3/Response;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_4

    :try_start_4
    invoke-virtual {p1}, Lokhttp3/Response;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    :goto_3
    return-wide v3

    :goto_4
    if-eqz p1, :cond_5

    :try_start_5
    invoke-virtual {p1}, Lokhttp3/Response;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_5
    throw p0
.end method

.method private static getSSYoutubeVideoInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/sniffer_load/sniffservice/SniffDownloadHelper$VideoCheckResultListener;)V
    .locals 8

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "title"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mime"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dur"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSYTB_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lav3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz p3, :cond_3

    new-instance v2, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-direct {v2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;-><init>()V

    invoke-virtual {v2, v0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->setVideoFileName(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->setHasResources(Z)V

    invoke-virtual {v2, p2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->setVideoCover(Ljava/lang/String;)V

    new-instance v4, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    invoke-direct {v4}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, p2}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->setUrl(Ljava/lang/String;)V

    invoke-static {p0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->setDuration(J)V

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    array-length v1, p0

    if-lt v1, v3, :cond_2

    aget-object p0, p0, v3

    invoke-virtual {v4, p0}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->setType(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2, v5}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->setVideoList(Ljava/util/List;)V

    invoke-static {p1, p2, v0}, Lcom/transsion/sniffer_load/sniffservice/SniffDownloadHelper;->checkDownloadFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-interface {p3, v2}, Lcom/transsion/sniffer_load/sniffservice/SniffDownloadHelper$VideoCheckResultListener;->onCheckResult(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V

    :cond_3
    return-void
.end method

.method public static getUnsafeOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 4

    :try_start_0
    new-instance v0, Lcom/transsion/sniffer_load/sniffservice/SniffDownloadHelper$1;

    invoke-direct {v0}, Lcom/transsion/sniffer_load/sniffservice/SniffDownloadHelper$1;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "SSL"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Ljq9;

    invoke-direct {v1}, Ljq9;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static isAudioType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/transsion/sniffer_load/sniffservice/SniffDownloadHelper;->EXTENSION_AUDIO_ALL:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object p0, v1, v0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static isSubtitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static isVideoType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/transsion/sniffer_load/sniffservice/SniffDownloadHelper;->EXTENSION_VIDEO_ALL:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".ts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    aget-object p0, v2, v0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private static synthetic lambda$getUnsafeOkHttpClient$0(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static parseVideoName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/sniffer_load/sniffservice/SniffDownloadHelper$VideoCheckResultListener;)V
    .locals 16

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, ", url: "

    const-string v4, "?"

    const-string v5, ""

    if-nez p0, :cond_0

    move-object v0, v5

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    :goto_0
    if-nez p1, :cond_1

    move-object v6, v5

    goto :goto_1

    :cond_1
    move-object/from16 v6, p1

    :goto_1
    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    const-string v9, "_"

    const-string v10, "SniffDownloadHelper"

    if-eqz v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseVideoName: invalid title, need to rename: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/blankj/utilcode/util/LogUtils;->N(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v8, v0

    const/4 v12, 0x1

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x2f

    invoke-virtual {v14, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    if-ltz v0, :cond_3

    :try_start_1
    const-string v0, "UTF-8"

    invoke-static {v14, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseVideoName: URLDecoder error: e: "

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", uriPath: "

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    invoke-virtual {v14, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/2addr v0, v12

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :catch_1
    move-exception v0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    goto/16 :goto_b

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_10

    invoke-static {v0}, Lcom/transsion/sniffer_load/sniffservice/SniffDownloadHelper;->isVideoType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    invoke-static {v8, v0}, Lcom/transsion/sniffer_load/sniffservice/SniffDownloadHelper;->generateVideoNameWithTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    :cond_4
    invoke-static {v0}, Lcom/transsion/sniffer_load/sniffservice/SniffDownloadHelper;->isAudioType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    invoke-static {v8, v0}, Lcom/transsion/sniffer_load/sniffservice/SniffDownloadHelper;->generateVideoNameWithTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    :cond_5
    invoke-static {v6, v0}, Lcom/transsion/sniffer_load/sniffservice/SniffDownloadHelper;->isSubtitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    invoke-static {v8, v0}, Lcom/transsion/sniffer_load/sniffservice/SniffDownloadHelper;->generateVideoNameWithTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :cond_6
    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_4
    const-string v14, "."

    if-nez v13, :cond_c

    :try_start_3
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-virtual {v1, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-virtual {v1, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    if-le v15, v12, :cond_7

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x1

    add-int/2addr v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :catch_2
    move-exception v0

    const/4 v9, 0x0

    goto/16 :goto_b

    :cond_7
    :goto_5
    invoke-static {v0}, Lcom/transsion/sniffer_load/sniffservice/SniffDownloadHelper;->isVideoType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-static {v8, v0}, Lcom/transsion/sniffer_load/sniffservice/SniffDownloadHelper;->generateVideoNameWithTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :goto_6
    move-object v11, v4

    goto :goto_7

    :cond_8
    invoke-static {v0}, Lcom/transsion/sniffer_load/sniffservice/SniffDownloadHelper;->isAudioType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-static {v8, v0}, Lcom/transsion/sniffer_load/sniffservice/SniffDownloadHelper;->generateVideoNameWithTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_6

    :cond_9
    invoke-static {v6, v0}, Lcom/transsion/sniffer_load/sniffservice/SniffDownloadHelper;->isSubtitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    invoke-static {v8, v0}, Lcom/transsion/sniffer_load/sniffservice/SniffDownloadHelper;->generateVideoNameWithTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_6

    :cond_a
    invoke-static {v6}, Lcom/transsion/sniffer_load/sniffservice/SniffYoutubeUtil;->isSniffWebSite(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static/range {p2 .. p2}, Lcom/transsion/sniffer_load/sniffservice/SniffYoutubeUtil;->isShouldSniffUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {v8, v6, v1, v2}, Lcom/transsion/sniffer_load/sniffservice/SniffDownloadHelper;->getSSYoutubeVideoInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/sniffer_load/sniffservice/SniffDownloadHelper$VideoCheckResultListener;)V

    :cond_b
    return-void

    :cond_c
    :goto_7
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2

    const-string v4, ".m3u8"

    if-nez v0, :cond_e

    :try_start_4
    invoke-virtual {v13, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v13, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {v13, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_2

    const/4 v9, 0x0

    :try_start_5
    invoke-virtual {v13, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_8

    :catch_3
    move-exception v0

    goto/16 :goto_b

    :cond_d
    const/4 v9, 0x0

    :goto_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseVideoName: set videoName to: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    :cond_e
    const/4 v9, 0x0

    :goto_9
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, ".ts"

    invoke-virtual {v13, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {v6}, Lcom/transsion/sniffer_load/data/SniffDataManager;->getPageData(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->getMultiVideoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-virtual {v5}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseVideoName: needSkipDownload for videoName: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_3

    move-object v0, v11

    const/4 v11, 0x1

    :goto_a
    const/4 v13, 0x0

    goto :goto_c

    :cond_10
    const/4 v9, 0x0

    move v11, v9

    const/4 v0, 0x0

    goto :goto_a

    :goto_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseVideoName: exception with webUrl: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_11
    move-object v0, v11

    move v11, v9

    :goto_c
    if-eqz v2, :cond_12

    if-nez v11, :cond_12

    if-eqz v13, :cond_12

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_12

    new-instance v3, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-direct {v3}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;-><init>()V

    invoke-virtual {v3, v13}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->setVideoFileName(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->setHasResources(Z)V

    invoke-virtual {v3, v1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->setVideoCover(Ljava/lang/String;)V

    new-instance v4, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    invoke-direct {v4}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v1}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->setUrl(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->setType(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->setVideoList(Ljava/util/List;)V

    invoke-static {v6, v1, v13}, Lcom/transsion/sniffer_load/sniffservice/SniffDownloadHelper;->checkDownloadFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v2, v3}, Lcom/transsion/sniffer_load/sniffservice/SniffDownloadHelper$VideoCheckResultListener;->onCheckResult(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V

    :cond_12
    return-void
.end method
