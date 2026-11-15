.class public Lcom/transsion/sniffer_load/sniffservice/SniffTiktokUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SCRIPT_FUNCTION_NAME_CAN_SNIFF:Ljava/lang/String; = "window.getNativeParams"

.field public static final TIKTOK_DOWNLOAD_HTTP_HEADER_ACCEPT_LANGUAGE_VALUE:Ljava/lang/String; = "zh-CN,zh;q=0.9"

.field public static final TIKTOK_DOWNLOAD_HTTP_HEADER_ACCEPT_VALUE:Ljava/lang/String; = "*/*"

.field public static final TIKTOK_DOWNLOAD_HTTP_HEADER_AGENT_VALUE:Ljava/lang/String; = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36"

.field public static final TIKTOK_DOWNLOAD_HTTP_HEADER_KEY_ORIGIN:Ljava/lang/String; = "Origin"

.field public static final TIKTOK_DOWNLOAD_HTTP_HEADER_KEY_ORIGIN_VALUE:Ljava/lang/String; = "https://www.tiktok.com"

.field public static final TIKTOK_DOWNLOAD_HTTP_HEADER_KEY_REFERER:Ljava/lang/String; = "Referer"

.field public static final TIKTOK_DOWNLOAD_HTTP_HEADER_KEY_REFERER_VALUE:Ljava/lang/String; = "https://www.tiktok.com/"

.field public static final TIKTOK_HOST:Ljava/lang/String; = ".tiktok.com"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fillDownloadingItem(Lcom/transsion/sniffer_load/okdownload/a;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36"

    iput-object v0, p0, Lcom/transsion/sniffer_load/okdownload/a;->n:Ljava/lang/String;

    const-string v0, "zh-CN,zh;q=0.9"

    iput-object v0, p0, Lcom/transsion/sniffer_load/okdownload/a;->p:Ljava/lang/String;

    const-string v0, "*/*"

    iput-object v0, p0, Lcom/transsion/sniffer_load/okdownload/a;->q:Ljava/lang/String;

    const-string v0, "https://www.tiktok.com"

    iput-object v0, p0, Lcom/transsion/sniffer_load/okdownload/a;->r:Ljava/lang/String;

    const-string v0, "https://www.tiktok.com/"

    iput-object v0, p0, Lcom/transsion/sniffer_load/okdownload/a;->s:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static isTiktokSite(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".tiktok.com"

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

.method public static openSniff(Landroid/webkit/WebView;)V
    .locals 2

    new-instance v0, Lcom/transsion/sniffer_load/sniffservice/SniffTiktokUtil$1;

    invoke-direct {v0}, Lcom/transsion/sniffer_load/sniffservice/SniffTiktokUtil$1;-><init>()V

    const-string v1, "window.getNativeParams()"

    invoke-static {p0, v1, v0}, Lcom/transsion/sniffer_load/sniffservice/JavaScriptHelper;->CallJsMethod(Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method
