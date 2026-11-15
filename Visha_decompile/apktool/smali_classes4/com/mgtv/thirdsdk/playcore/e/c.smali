.class public Lcom/mgtv/thirdsdk/playcore/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "c"


# instance fields
.field private b:Lcom/mgtv/thirdsdk/playcore/e;

.field private c:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

.field private d:Landroid/content/Context;

.field private e:Z

.field private f:J

.field private g:Ljava/lang/String;

.field private h:Lcom/mgtv/downloader/net/entity/a;

.field private i:Lcom/mgtv/thirdsdk/playcore/c$b;

.field private j:Lcom/hunantv/imgo/net/ImgoHttpParams;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mgtv/thirdsdk/playcore/e;Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->c:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    iput-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->d:Landroid/content/Context;

    return-void
.end method

.method private a(ILjava/util/List;)Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;",
            ">;)",
            "Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    .line 181
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 182
    :cond_0
    new-instance v1, Lcom/mgtv/thirdsdk/playcore/e/c$2;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/e/c$2;-><init>(Lcom/mgtv/thirdsdk/playcore/e/c;)V

    invoke-static {p2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 183
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    .line 184
    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v3, v3, Lcom/mgtv/thirdsdk/playcore/e;->q:Ljava/util/List;

    iget v4, v2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v3, v3, Lcom/mgtv/thirdsdk/playcore/e;->r:Ljava/util/List;

    iget-object v4, v2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->name:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v3, Lcom/mgtv/ssp/play/playsdk/VideoDefinitions;

    iget v4, v2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    iget v2, v2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->needPay:I

    invoke-direct {v3, v4, v2}, Lcom/mgtv/ssp/play/playsdk/VideoDefinitions;-><init>(II)V

    .line 187
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->s:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 188
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget v2, v2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    if-le p1, v2, :cond_2

    .line 189
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    .line 190
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget v2, v2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    if-ge p1, v2, :cond_3

    .line 191
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    :cond_3
    move v2, v1

    .line 192
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 193
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget v4, v4, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    if-ne p1, v4, :cond_4

    .line 194
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 195
    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_7

    .line 196
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget v2, v2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    if-ge p1, v2, :cond_6

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget v4, v4, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    if-le p1, v4, :cond_6

    .line 197
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    goto :goto_3

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    if-eqz v0, :cond_8

    .line 198
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget p1, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    iput p1, p0, Lcom/mgtv/thirdsdk/playcore/e;->t:I

    .line 199
    sget-object p0, Lcom/mgtv/thirdsdk/playcore/e/c;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u7b2c\u4e00\u6b21\u9009\u62e9\u7684\u6e05\u6670\u5ea6-------->"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_8
    :goto_4
    return-object v0
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/playcore/e/c;)Lcom/mgtv/thirdsdk/playcore/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    return-object p0
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/e/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 158
    iget p0, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;->isVip:I

    invoke-static {p0}, Lcom/hunantv/imgo/util/b;->a(I)V

    .line 159
    iget-object p0, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;->uuid:Ljava/lang/String;

    invoke-static {p0}, Lcom/hunantv/imgo/util/b;->g(Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lcom/mgmi/ssp/MGTVAdFactory;->getInstance()Lcom/mgmi/ssp/MGTVAdFactory;

    move-result-object p0

    iget-object p1, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;->uuid:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mgmi/ssp/MGTVAdFactory;->setUuid(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;)V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iput-object p1, v0, Lcom/mgtv/thirdsdk/playcore/e;->p:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    if-eqz p1, :cond_1

    .line 162
    iget-object v0, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    iget-object v1, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoId:Ljava/lang/String;

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v1, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoId:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->h:Ljava/lang/String;

    .line 165
    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v1, v1, Lcom/mgtv/thirdsdk/playcore/e;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/hunantv/imgo/b/c;->n:Ljava/lang/String;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v1, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->point:Ljava/util/List;

    iput-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->j:Ljava/util/List;

    .line 167
    iget-object v1, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoName:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->k:Ljava/lang/String;

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->o:Ljava/util/List;

    if-nez v1, :cond_2

    .line 169
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->o:Ljava/util/List;

    goto :goto_0

    .line 170
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->clear()V

    :goto_0
    if-eqz p1, :cond_4

    .line 171
    iget-object v0, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoSources:Ljava/util/List;

    invoke-static {v0}, Lcom/hunantv/imgo/util/l;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 172
    iget-object v0, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    if-nez v1, :cond_3

    goto :goto_1

    .line 173
    :cond_3
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->o:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 174
    :cond_4
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    if-eqz p1, :cond_5

    iget-object v1, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->user:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;

    if-eqz v1, :cond_5

    iget v1, v1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;->isVip:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, v0, Lcom/mgtv/thirdsdk/playcore/e;->R:Z

    const/4 v1, 0x2

    .line 175
    iget-object v2, v0, Lcom/mgtv/thirdsdk/playcore/e;->o:Ljava/util/List;

    invoke-direct {p0, v1, v2}, Lcom/mgtv/thirdsdk/playcore/e/c;->a(ILjava/util/List;)Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    move-result-object v1

    iput-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    if-eqz p1, :cond_6

    .line 176
    iget-object v0, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->user:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;

    if-eqz v0, :cond_6

    .line 177
    iget v0, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;->isVip:I

    invoke-static {v0}, Lcom/hunantv/imgo/util/b;->a(I)V

    .line 178
    iget-object v0, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->user:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;

    iget-object v0, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;->uuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/hunantv/imgo/util/b;->g(Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/mgmi/ssp/MGTVAdFactory;->getInstance()Lcom/mgmi/ssp/MGTVAdFactory;

    move-result-object v0

    iget-object p1, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->user:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;

    iget-object p1, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;->uuid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/mgmi/ssp/MGTVAdFactory;->setUuid(Ljava/lang/String;)V

    .line 180
    :cond_6
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p1

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    invoke-virtual {p1, p0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;)V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/playcore/e/c;Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/playcore/e/c;->a(Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;)V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/playcore/e/c;Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/playcore/e/c;->a(Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;)V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/playcore/e/c;Z)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/playcore/e/c;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 9

    .line 48
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->h:Lcom/mgtv/downloader/net/entity/a;

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 49
    :cond_0
    const-string v1, ""

    if-eqz p1, :cond_5

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->M:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 50
    const-string v0, "proxyUrl"

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->g:Ljava/lang/String;

    const-string v3, "module_download"

    invoke-static {v3, v0, v2}, Lcom/mgtv/ssp/module/ModuleManager;->getModuleStringInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v4, "150502"

    const-string v5, "mContentId: "

    if-eqz v2, :cond_2

    .line 52
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " start proxyUrl is null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 53
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->i:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz p0, :cond_1

    .line 54
    invoke-interface {p0, v4, v1}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 55
    :cond_2
    invoke-direct {p0, v0}, Lcom/mgtv/thirdsdk/playcore/e/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 57
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " start videoPath is null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 58
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->i:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz p0, :cond_3

    .line 59
    invoke-interface {p0, v4, v1}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    .line 60
    :cond_4
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    const-string v4, "videoId"

    iget-object v5, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->g:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/mgtv/ssp/module/ModuleManager;->getModuleStringInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mgtv/thirdsdk/playcore/e;->h:Ljava/lang/String;

    .line 61
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iput-object v0, v2, Lcom/mgtv/thirdsdk/playcore/e;->M:Ljava/lang/String;

    :goto_0
    move-object v6, v0

    goto :goto_1

    .line 62
    :cond_5
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->M:Ljava/lang/String;

    goto :goto_0

    :goto_1
    if-nez p1, :cond_6

    .line 63
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    const/4 v0, 0x2

    iput v0, p1, Lcom/mgtv/thirdsdk/playcore/e;->T:I

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->f:J

    sub-long/2addr v2, v4

    sput-wide v2, Lcom/hunantv/imgo/util/e;->b:J

    .line 65
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->f:J

    .line 66
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->h:Lcom/mgtv/downloader/net/entity/a;

    iget-object p1, p1, Lcom/mgtv/downloader/net/entity/a;->x:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 67
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->h:Lcom/mgtv/downloader/net/entity/a;

    iget-object v2, v0, Lcom/mgtv/downloader/net/entity/a;->t:Ljava/lang/String;

    .line 68
    iget-object v3, v0, Lcom/mgtv/downloader/net/entity/a;->u:Ljava/lang/String;

    .line 69
    iget-object v0, v0, Lcom/mgtv/downloader/net/entity/a;->z:Ljava/lang/String;

    .line 70
    iget-object v4, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iput p1, v4, Lcom/mgtv/thirdsdk/playcore/e;->t:I

    .line 71
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v4

    iget-object v5, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->h:Lcom/mgtv/downloader/net/entity/a;

    iget-object v5, v5, Lcom/mgtv/downloader/net/entity/a;->y:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->m(Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v4

    iget-object v5, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v5, v5, Lcom/mgtv/thirdsdk/playcore/e;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->n(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v4

    iget-object v5, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v5, v5, Lcom/mgtv/thirdsdk/playcore/e;->M:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->p(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v4

    iget-object v5, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v5, v5, Lcom/mgtv/thirdsdk/playcore/e;->M:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->k(Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v3, v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v3

    iget-object v4, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v4, v4, Lcom/mgtv/thirdsdk/playcore/e;->M:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->x(Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v3

    iget-object v4, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v4, v4, Lcom/mgtv/thirdsdk/playcore/e;->v:Z

    invoke-virtual {v3, v4}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->f(Z)V

    .line 78
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VOD_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/hunantv/imgo/util/f;->b(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->h(Ljava/lang/String;)V

    .line 79
    iget-boolean v3, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->e:Z

    if-nez v3, :cond_7

    .line 80
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->c()V

    .line 81
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->d()V

    .line 82
    :cond_7
    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->i:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz v3, :cond_8

    const/high16 v4, 0x10000

    .line 83
    invoke-interface {v3, v4}, Lcom/mgtv/thirdsdk/playcore/c$b;->b(I)V

    .line 84
    :cond_8
    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v3, v3, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    const/4 v4, 0x0

    if-eqz v3, :cond_b

    .line 85
    sget-object v5, Lcom/hunantv/media/report/ReportParams$VideoType;->LOCAL:Lcom/hunantv/media/report/ReportParams$VideoType;

    invoke-virtual {v3, v5}, Lcom/hunantv/media/report/ReportParams;->setVideoType(Lcom/hunantv/media/report/ReportParams$VideoType;)Lcom/hunantv/media/report/ReportParams;

    .line 86
    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v3, v3, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    const-string v5, "0"

    invoke-virtual {v3, v5}, Lcom/hunantv/media/report/ReportParams;->setAp(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    .line 87
    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v3, v3, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v3, v4}, Lcom/hunantv/media/report/ReportParams;->setRetryIndex(I)Lcom/hunantv/media/report/ReportParams;

    .line 88
    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v3, v3, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v3, v2}, Lcom/hunantv/media/report/ReportParams;->setPlid(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    .line 89
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v3, v2, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->h:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/hunantv/media/report/ReportParams;->setVid(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    .line 90
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->h:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v3}, Lcom/mgtv/downloader/net/entity/a;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hunantv/media/report/ReportParams;->setDownloadSDKVersion(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    .line 91
    invoke-static {v6}, Lcom/hunantv/imgo/util/u;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "127.0.0.1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 92
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    sget-object v3, Lcom/hunantv/media/report/ReportParams$ProxyType;->LOCAL_PROXY:Lcom/hunantv/media/report/ReportParams$ProxyType;

    invoke-virtual {v2, v3}, Lcom/hunantv/media/report/ReportParams;->setProxyType(Lcom/hunantv/media/report/ReportParams$ProxyType;)Lcom/hunantv/media/report/ReportParams;

    goto :goto_2

    .line 93
    :cond_9
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    sget-object v3, Lcom/hunantv/media/report/ReportParams$ProxyType;->NO_PROXY:Lcom/hunantv/media/report/ReportParams$ProxyType;

    invoke-virtual {v2, v3}, Lcom/hunantv/media/report/ReportParams;->setProxyType(Lcom/hunantv/media/report/ReportParams$ProxyType;)Lcom/hunantv/media/report/ReportParams;

    .line 94
    :goto_2
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v2, v1}, Lcom/hunantv/media/report/ReportParams;->setCid(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    .line 95
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v2, v0}, Lcom/hunantv/media/report/ReportParams;->setBsid(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    .line 96
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v0, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    iget-boolean v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->v:Z

    if-eqz v0, :cond_a

    const-string v5, "1"

    :cond_a
    invoke-virtual {v2, v5}, Lcom/hunantv/media/report/ReportParams;->setIstry(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    .line 97
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v0, v1}, Lcom/hunantv/media/report/ReportParams;->setCdnip(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    .line 98
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hunantv/media/report/ReportParams;->setDef(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    .line 99
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object p1, p1, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v0

    iget-object v0, v0, Lcom/hunantv/imgo/b/c;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/hunantv/media/report/ReportParams;->setVideoSession(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    .line 100
    :cond_b
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->c:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 101
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->c:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->reset(Z)V

    .line 102
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->c:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {p1, v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setReportParams(Lcom/hunantv/media/report/ReportParams;)V

    .line 103
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->c:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p1

    sget-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;->MODE_PREPARED4START_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    invoke-virtual {p1, v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setPrepareStartMode(Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;)V

    .line 104
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->c:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v2

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v3, p1, Lcom/mgtv/thirdsdk/playcore/e;->k:Ljava/lang/String;

    const-string v4, ""

    iget-object v7, p1, Lcom/mgtv/thirdsdk/playcore/e;->h:Ljava/lang/String;

    move-object v5, v6

    invoke-virtual/range {v2 .. v7}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->startPlayer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->c:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->showRenderView()V

    :cond_c
    :goto_3
    return-void
.end method

.method public static synthetic b(Lcom/mgtv/thirdsdk/playcore/e/c;)Lcom/hunantv/imgo/net/ImgoHttpParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->j:Lcom/hunantv/imgo/net/ImgoHttpParams;

    return-object p0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    const-string p0, ""

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "file://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v1, "http://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v1, "https://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v1, "rtmp://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1

    :cond_2
    :goto_0
    return-object p0
.end method

.method private b()V
    .locals 4

    .line 6
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->W:Z

    .line 8
    iput-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->v:Z

    .line 9
    iput-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->S:Z

    .line 10
    iput-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->X:Z

    .line 11
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVideoPrepare   playerDataReset  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v3, v3, Lcom/mgtv/thirdsdk/playcore/e;->X:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iput v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->P:I

    .line 13
    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v0, v1}, Lcom/hunantv/media/report/ReportParams;->setLastErrorCodeExtra(I)Lcom/hunantv/media/report/ReportParams;

    .line 14
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iput v1, p0, Lcom/mgtv/thirdsdk/playcore/e;->x:I

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->w:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$AuthButtons;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->B:Ljava/lang/String;

    const/16 v0, -0x3e8

    .line 17
    iput v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->O:I

    .line 18
    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object p0

    iput v1, p0, Lcom/hunantv/imgo/b/c;->o:I

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/mgtv/thirdsdk/playcore/e/c;)Lcom/mgtv/thirdsdk/playcore/c$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->i:Lcom/mgtv/thirdsdk/playcore/c$b;

    return-object p0
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hunantv/imgo/net/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/union/video/source"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private d()I
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/utils/c;->c(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 106
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object p1, p1, Lcom/mgtv/thirdsdk/playcore/e;->c:Lcom/mgtv/task/m;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->h:Lcom/mgtv/downloader/net/entity/a;

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 107
    :cond_0
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/e/c;->b()V

    .line 108
    new-instance p1, Lcom/hunantv/imgo/net/ImgoHttpParams;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Lcom/hunantv/imgo/net/ImgoHttpParams;-><init>(Z)V

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->j:Lcom/hunantv/imgo/net/ImgoHttpParams;

    .line 109
    const-string v0, "GET"

    invoke-virtual {p1, v0}, Lcom/mgtv/task/http/HttpParams;->setMethod(Ljava/lang/String;)V

    .line 110
    sget-object p1, Lcom/mgtv/thirdsdk/playcore/e/c;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSource-videoId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p3}, Lcom/hunantv/imgo/log/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 111
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    .line 112
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {v0}, Lcom/hunantv/imgo/util/f;->a(Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v0

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "sha256"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->Q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/e/c;->d()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hunantv/imgo/util/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dddddd "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->A()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->Q()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/e/c;->d()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 115
    iget-object v5, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->j:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v6, "c"

    invoke-virtual {v5, v6, p1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 116
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->j:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v5, "t"

    invoke-virtual {p1, v5, v0}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 117
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->j:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v0, "fileSourceType"

    invoke-virtual {p1, v0, v3}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 118
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->j:Lcom/hunantv/imgo/net/ImgoHttpParams;

    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/e/c;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "definition"

    invoke-virtual {p1, v3, v0}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/Number;)Lcom/mgtv/task/http/HttpParams;

    .line 119
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->j:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v0, "s"

    invoke-virtual {p1, v0, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 120
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->j:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v0, "encrypted"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 121
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->j:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v0, "cxid"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 122
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->j:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v0, "id"

    invoke-virtual {p1, v0, p2}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 123
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->j:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v0, "st"

    invoke-virtual {p1, v0, v2}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 124
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->j:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v0, "openid"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->R()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 125
    invoke-static {}, Lcom/hunantv/imgo/util/b;->V()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 126
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->j:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v0, "ch_token"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->V()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 127
    :cond_1
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->j:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v0, "rtype"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->S()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 128
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/e/c;->c()Ljava/lang/String;

    move-result-object p1

    .line 129
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    invoke-virtual {v0, p3}, Lcom/mgtv/thirdsdk/playcore/e;->b(I)V

    .line 130
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->o(Z)V

    .line 131
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->e(Z)V

    .line 132
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->g(I)V

    .line 133
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v1, v1, Lcom/mgtv/thirdsdk/playcore/e;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->n(Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v1, v1, Lcom/mgtv/thirdsdk/playcore/e;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->p(Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v1, v1, Lcom/mgtv/thirdsdk/playcore/e;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->k(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->h:Lcom/mgtv/downloader/net/entity/a;

    iget-object v1, v0, Lcom/mgtv/downloader/net/entity/a;->t:Ljava/lang/String;

    .line 137
    iget-object v2, v0, Lcom/mgtv/downloader/net/entity/a;->u:Ljava/lang/String;

    .line 138
    iget-object v0, v0, Lcom/mgtv/downloader/net/entity/a;->z:Ljava/lang/String;

    .line 139
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5, v1, v2, v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v1, v1, Lcom/mgtv/thirdsdk/playcore/e;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->x(Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v1, v1, Lcom/mgtv/thirdsdk/playcore/e;->v:Z

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->f(Z)V

    .line 142
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->n(Ljava/lang/String;)V

    .line 143
    const-string p2, "pvs getSource sendPv sendNewPv"

    invoke-virtual {v4, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->c()V

    .line 145
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->d()V

    .line 146
    iput-boolean p3, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->e:Z

    .line 147
    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->getSupportHDST(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 148
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->j:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v1, "hdts"

    invoke-virtual {v0, v1, p2}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 150
    :cond_2
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean p2, p2, Lcom/mgtv/thirdsdk/playcore/e;->aL:Z

    if-nez p2, :cond_3

    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/utils/c;->c()I

    move-result p2

    if-ne p2, p3, :cond_4

    .line 151
    :cond_3
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->j:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string p3, "vf"

    const-string v0, "h264"

    invoke-virtual {p2, p3, v0}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 152
    :cond_4
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->j:Lcom/hunantv/imgo/net/ImgoHttpParams;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->f()Z

    move-result p3

    if-eqz p3, :cond_5

    const-string p3, "intelmgtv"

    goto :goto_0

    :cond_5
    const-string p3, "mgtv"

    :goto_0
    const-string v0, "src"

    invoke-virtual {p2, v0, p3}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 153
    invoke-static {}, Lcom/hunantv/imgo/util/b;->aj()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 154
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->j:Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string p3, "paySupport"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->aj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 155
    :cond_6
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object p3, p2, Lcom/mgtv/thirdsdk/playcore/e;->d:Lcom/mgtv/task/g;

    if-eqz p3, :cond_7

    .line 156
    iget-object p2, p2, Lcom/mgtv/thirdsdk/playcore/e;->c:Lcom/mgtv/task/m;

    invoke-virtual {p2, p3}, Lcom/mgtv/task/m;->a(Lcom/mgtv/task/g;)V

    .line 157
    :cond_7
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object p3, p2, Lcom/mgtv/thirdsdk/playcore/e;->c:Lcom/mgtv/task/m;

    const/16 v0, 0x1388

    invoke-virtual {p3, v0}, Lcom/mgtv/task/m;->b(I)Lcom/mgtv/task/m;

    move-result-object p3

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->j:Lcom/hunantv/imgo/net/ImgoHttpParams;

    new-instance v1, Lcom/mgtv/thirdsdk/playcore/e/c$1;

    invoke-direct {v1, p0, p1}, Lcom/mgtv/thirdsdk/playcore/e/c$1;-><init>(Lcom/mgtv/thirdsdk/playcore/e/c;Ljava/lang/String;)V

    invoke-virtual {p3, p1, v0, v1}, Lcom/mgtv/task/m;->a(Ljava/lang/String;Lcom/mgtv/task/http/HttpParams;Lcom/mgtv/task/http/c;)Lcom/mgtv/task/g;

    move-result-object p0

    iput-object p0, p2, Lcom/mgtv/thirdsdk/playcore/e;->d:Lcom/mgtv/task/g;

    :cond_8
    :goto_1
    return-void
.end method

.method public a(Lcom/mgtv/thirdsdk/playcore/c$b;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->i:Lcom/mgtv/thirdsdk/playcore/c$b;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 7

    .line 7
    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->g:Ljava/lang/String;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->e:Z

    .line 9
    sget-object v1, Lcom/mgtv/thirdsdk/playcore/e/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contentId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_1

    .line 11
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->i:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz p0, :cond_0

    .line 12
    const-string p1, "150501"

    invoke-interface {p0, p1, v2}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 13
    :cond_1
    const-string v1, "DATAOBJ"

    const-string v4, "module_download"

    invoke-static {v4, v1, p1}, Lcom/mgtv/ssp/module/ModuleManager;->getModuleObjectInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 14
    const-string v5, "150502"

    if-nez v1, :cond_3

    .line 15
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->i:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz p0, :cond_2

    .line 16
    invoke-interface {p0, v5, v2}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 17
    :cond_3
    instance-of v6, v1, Lcom/mgtv/downloader/net/entity/a;

    if-eqz v6, :cond_4

    .line 18
    check-cast v1, Lcom/mgtv/downloader/net/entity/a;

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->h:Lcom/mgtv/downloader/net/entity/a;

    .line 19
    :cond_4
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->h:Lcom/mgtv/downloader/net/entity/a;

    if-nez v1, :cond_6

    .line 20
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->i:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz p0, :cond_5

    .line 21
    invoke-interface {p0, v5, v2}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void

    .line 22
    :cond_6
    iget-object v1, v1, Lcom/mgtv/downloader/net/entity/a;->i:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v6, 0x4

    if-eq v1, v6, :cond_8

    .line 23
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->i:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz p0, :cond_7

    .line 24
    const-string p1, "150503"

    invoke-interface {p0, p1, v2}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void

    .line 25
    :cond_8
    const-string v1, "proxyUrl"

    invoke-static {v4, v1, p1}, Lcom/mgtv/ssp/module/ModuleManager;->getModuleStringInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 27
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->i:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz p0, :cond_9

    .line 28
    invoke-interface {p0, v5, v2}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void

    .line 29
    :cond_a
    const-string v6, "checkFile"

    invoke-static {v4, v6, p1}, Lcom/mgtv/ssp/module/ModuleManager;->getModuleObjectInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 30
    instance-of v4, p1, Ljava/lang/Boolean;

    if-eqz v4, :cond_b

    .line 31
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_b
    move p1, v0

    :goto_0
    if-nez p1, :cond_d

    .line 32
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->i:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz p0, :cond_c

    .line 33
    invoke-interface {p0, v5, v2}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void

    .line 34
    :cond_d
    invoke-direct {p0, v1}, Lcom/mgtv/thirdsdk/playcore/e/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 36
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->i:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz p0, :cond_e

    .line 37
    invoke-interface {p0, v5, v2}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    return-void

    .line 38
    :cond_f
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->h:Lcom/mgtv/downloader/net/entity/a;

    iget-object v2, v2, Lcom/mgtv/downloader/net/entity/a;->b:Ljava/lang/String;

    iput-object v2, v1, Lcom/mgtv/thirdsdk/playcore/e;->h:Ljava/lang/String;

    .line 39
    iput-object p1, v1, Lcom/mgtv/thirdsdk/playcore/e;->M:Ljava/lang/String;

    .line 40
    iput-boolean v0, v1, Lcom/mgtv/thirdsdk/playcore/e;->v:Z

    .line 41
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/hunantv/imgo/util/p;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->f:J

    .line 43
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iput-boolean v0, p1, Lcom/mgtv/thirdsdk/playcore/e;->aJ:Z

    .line 44
    iget-object p1, p1, Lcom/mgtv/thirdsdk/playcore/e;->h:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/mgtv/thirdsdk/playcore/e/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 45
    :cond_10
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/c;->b:Lcom/mgtv/thirdsdk/playcore/e;

    const/4 v1, 0x2

    iput v1, p1, Lcom/mgtv/thirdsdk/playcore/e;->T:I

    .line 46
    iput-boolean v3, p1, Lcom/mgtv/thirdsdk/playcore/e;->aJ:Z

    .line 47
    invoke-direct {p0, v0}, Lcom/mgtv/thirdsdk/playcore/e/c;->a(Z)V

    :goto_1
    return-void
.end method
