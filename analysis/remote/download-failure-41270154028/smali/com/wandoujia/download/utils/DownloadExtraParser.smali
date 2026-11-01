.class public final Lcom/wandoujia/download/utils/DownloadExtraParser;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lo/t14;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wandoujia/download/utils/DownloadExtraParser;->a:Ljava/lang/String;

    new-instance p1, Lcom/wandoujia/download/utils/DownloadExtraParser$extraMap$2;

    invoke-direct {p1, p0}, Lcom/wandoujia/download/utils/DownloadExtraParser$extraMap$2;-><init>(Lcom/wandoujia/download/utils/DownloadExtraParser;)V

    invoke-static {p1}, Lkotlin/b;->b(Lo/bx2;)Lo/t14;

    move-result-object p1

    iput-object p1, p0, Lcom/wandoujia/download/utils/DownloadExtraParser;->b:Lo/t14;

    return-void
.end method

.method public static final synthetic a(Lcom/wandoujia/download/utils/DownloadExtraParser;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/wandoujia/download/utils/DownloadExtraParser;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final b()Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/utils/DownloadExtraParser;->b:Lo/t14;

    invoke-interface {v0}, Lo/t14;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/wandoujia/download/utils/DownloadExtraParser;->b()Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v1, p1

    :cond_0
    check-cast v1, Ljava/lang/String;

    :cond_1
    return-object v1
.end method

.method public final d()Lo/xf8;
    .locals 4

    const-string v0, "itag"

    invoke-virtual {p0, v0}, Lcom/wandoujia/download/utils/DownloadExtraParser;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "video_playback_config"

    invoke-virtual {p0, v1}, Lcom/wandoujia/download/utils/DownloadExtraParser;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lastModified"

    invoke-virtual {p0, v2}, Lcom/wandoujia/download/utils/DownloadExtraParser;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance v3, Lo/xf8;

    invoke-direct {v3, v0, v2, v1}, Lo/xf8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
