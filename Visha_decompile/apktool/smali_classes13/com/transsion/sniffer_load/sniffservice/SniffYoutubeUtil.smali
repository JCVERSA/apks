.class public Lcom/transsion/sniffer_load/sniffservice/SniffYoutubeUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/sniffer_load/sniffservice/SniffYoutubeUtil$ISniffUrlCallBack;
    }
.end annotation


# static fields
.field public static final SNIFF_WEB_SITE_SAVEFROM:Ljava/lang/String; = "savefrom.net"

.field public static final SNIFF_WEB_SITE_SSYOUTUBE:Ljava/lang/String; = "ssyoutube.com"

.field public static final TAG:Ljava/lang/String; = "visha_SniffYoutubeUtil"

.field public static final YOUTUBE_VIDEO_SOURCES_HOST:Ljava/lang/String; = "googlevideo.com"

.field public static final YOUTUBE_VIDEO_SOURCES_HOST1:Ljava/lang/String; = "vkvd259.mycdn.me"

.field public static final YOUTUBE_VIDEO_SOURCES_URL_PARAM_EXPIRE:Ljava/lang/String; = "expire"

.field public static final YOUTUBE_VIDEO_SOURCES_URL_PARAM_MIME:Ljava/lang/String; = "mime"

.field public static final YOUTUBE_VIDEO_SOURCES_URL_PARAM_TITLE:Ljava/lang/String; = "title"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/sniffer_load/sniffservice/SniffYoutubeUtil;->sniffYoutubeVideo(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSSYoutubeSite(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ssyoutube.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSaveFromSite(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "savefrom.net"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isShouldSniffUrl(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/sniffer_load/sniffservice/SniffYoutubeUtil;->isYoutubeVideoSource(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSniffWebSite(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/transsion/sniffer_load/sniffservice/SniffYoutubeUtil;->isSSYoutubeSite(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/transsion/sniffer_load/sniffservice/SniffYoutubeUtil;->isSaveFromSite(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isYoutubeSite(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".youtube.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isYoutubeVideoSource(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "googlevideo.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "find youtube video url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "visha_SniffYoutubeUtil"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static shouldIntercept(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vkvd259.mycdn.me"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static sniff(Ljava/lang/String;Lcom/transsion/sniffer_load/sniffservice/SniffYoutubeUtil$ISniffUrlCallBack;)V
    .locals 1

    new-instance v0, Lcom/transsion/sniffer_load/sniffservice/SniffYoutubeUtil$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/sniffer_load/sniffservice/SniffYoutubeUtil$1;-><init>(Ljava/lang/String;Lcom/transsion/sniffer_load/sniffservice/SniffYoutubeUtil$ISniffUrlCallBack;)V

    invoke-static {v0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static sniffYoutubeVideo(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/transsion/sniffer_load/sniffservice/SniffYoutubeUtil;->isYoutubeVideoSource(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "expire"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "mime"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "title"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
