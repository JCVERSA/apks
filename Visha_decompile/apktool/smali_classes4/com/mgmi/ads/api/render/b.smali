.class public Lcom/mgmi/ads/api/render/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lx5d;


# direct methods
.method public static a(Lcom/mgmi/model/VASTAd;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getVoiceSrc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getVoiceSrc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyld;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lard;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/pevoice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getVoiceSrc()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/mgmi/ads/api/render/b$1;

    invoke-direct {v1}, Lcom/mgmi/ads/api/render/b$1;-><init>()V

    const/16 v2, 0xa

    invoke-static {v0, v2, p0, v1}, Lyld;->d(Ljava/lang/String;ILjava/lang/String;Lyld$e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method
