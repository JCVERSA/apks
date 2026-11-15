.class public Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnBufferListener;
.implements Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnCompletionListener;
.implements Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnInfoListener;
.implements Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnTickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/thirdsdk/datareport/VideoSDKReport$GUID;
    }
.end annotation


# static fields
.field private static final S:Ljava/lang/String; = "com.mgtv.thirdsdk.datareport.VideoSDKReport"

.field private static au:Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;


# instance fields
.field protected A:Z

.field protected B:Ljava/lang/String;

.field protected C:Ljava/lang/String;

.field protected D:Ljava/lang/String;

.field protected E:Ljava/lang/String;

.field protected F:Ljava/lang/String;

.field protected G:Ljava/lang/String;

.field protected H:Ljava/lang/String;

.field protected I:Z

.field protected J:Z

.field protected K:Z

.field protected L:Z

.field protected M:Ljava/lang/String;

.field protected N:Ljava/lang/String;

.field protected O:Ljava/lang/String;

.field protected P:Ljava/lang/String;

.field protected Q:Lcom/mgtv/thirdsdk/datareport/a/c;

.field protected R:I

.field private T:Z

.field private U:Z

.field private V:I

.field private W:Ljava/lang/String;

.field private X:Lcom/hunantv/imgo/b/c;

.field private Y:Lcom/hunantv/imgo/a/d;

.field private Z:Lcom/hunantv/imgo/a/c;

.field a:Ljava/lang/String;

.field private aa:Lcom/hunantv/imgo/a/f;

.field private ab:Lcom/hunantv/imgo/a/j;

.field private ac:Lcom/hunantv/imgo/a/h;

.field private ad:Lcom/hunantv/imgo/a/g;

.field private ae:Lcom/hunantv/imgo/a/i;

.field private af:Ljava/lang/String;

.field private ag:Ljava/lang/String;

.field private ah:Ljava/lang/String;

.field private ai:Ljava/lang/String;

.field private aj:Ljava/lang/String;

.field private ak:Ljava/lang/String;

.field private al:Z

.field private am:Ljava/lang/String;

.field private an:Ljava/lang/String;

.field private ao:Ljava/lang/String;

.field private ap:Ljava/lang/String;

.field private aq:Ljava/lang/String;

.field private ar:Ljava/lang/String;

.field private as:Lcom/hunantv/imgo/net/c;

.field private at:Z

.field private av:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Z

.field protected e:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

.field protected f:Landroid/content/Context;

.field protected g:I

.field protected h:Z

.field protected i:I

.field protected j:I

.field protected k:I

.field protected l:Ljava/lang/String;

.field protected m:Ljava/lang/String;

.field protected n:Z

.field protected o:I

.field protected p:I

.field protected q:I

.field protected r:Ljava/lang/String;

.field protected s:I

.field protected t:I

.field protected u:I

.field protected v:Z

.field protected w:Ljava/lang/String;

.field protected x:Ljava/lang/String;

.field protected y:I

.field protected z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->T:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->d:Z

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->h:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->l:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->n:Z

    iput v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->o:I

    iput v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->q:I

    iput v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->s:I

    iput v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->t:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->u:I

    iput-boolean v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->v:Z

    iput v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->y:I

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->z:Z

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->at:Z

    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/hunantv/imgo/a/h;->a(Landroid/content/Context;)Lcom/hunantv/imgo/a/h;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ac:Lcom/hunantv/imgo/a/h;

    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->X:Lcom/hunantv/imgo/b/c;

    iget-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/hunantv/imgo/a/d;->a(Landroid/content/Context;)Lcom/hunantv/imgo/a/d;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Y:Lcom/hunantv/imgo/a/d;

    iget-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/hunantv/imgo/a/c;->a(Landroid/content/Context;)Lcom/hunantv/imgo/a/c;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Z:Lcom/hunantv/imgo/a/c;

    iget-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/hunantv/imgo/a/f;->a(Landroid/content/Context;)Lcom/hunantv/imgo/a/f;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->aa:Lcom/hunantv/imgo/a/f;

    iget-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/hunantv/imgo/a/j;->a(Landroid/content/Context;)Lcom/hunantv/imgo/a/j;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ab:Lcom/hunantv/imgo/a/j;

    iget-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/hunantv/imgo/a/g;->a(Landroid/content/Context;)Lcom/hunantv/imgo/a/g;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ad:Lcom/hunantv/imgo/a/g;

    iget-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/hunantv/imgo/a/i;->a(Landroid/content/Context;)Lcom/hunantv/imgo/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ae:Lcom/hunantv/imgo/a/i;

    return-void
.end method

.method private A()V
    .locals 5

    sget-object v0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->S:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoSDKReport endHeartReport  isBigDataCompleteSend:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->z:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->z:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const-string v1, "  \u5fc3\u8df3\u7ed3\u675f  "

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/hunantv/imgo/data/BigDataHeartBeatData;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->x()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/hunantv/imgo/util/b;->n()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/hunantv/imgo/data/BigDataHeartBeatData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->al:Z

    if-eqz v1, :cond_0

    const-string v1, "heartbeat"

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/BigDataHeartBeatData;->setAct(Ljava/lang/String;)V

    const-string v1, "27.1.1.1"

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/CommonData;->setBid(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/hunantv/imgo/data/BigDataHeartBeatData;->getRequestParams()Lcom/hunantv/imgo/net/RequestParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->b(Lcom/hunantv/imgo/net/RequestParams;)Lcom/hunantv/imgo/net/RequestParams;

    move-result-object v0

    const-string v1, "ht"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v1, "idx"

    iget v3, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->i:I

    invoke-virtual {v0, v1, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v1, "cid"

    iget-object v3, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->af:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "isfull"

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->n()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v1, "tss"

    iget-object v3, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->P:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/hunantv/imgo/b/c;->a(ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "cpn"

    invoke-virtual {v0, v3, v1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Lcom/hunantv/imgo/net/RequestParams;)V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Y:Lcom/hunantv/imgo/a/d;

    invoke-virtual {v1, v0}, Lcom/hunantv/imgo/a/d;->a(Lcom/hunantv/imgo/net/RequestParams;)V

    iget v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->i:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->i:I

    :cond_1
    invoke-virtual {p0, v2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->g(Z)V

    return-void
.end method

.method private B()V
    .locals 6

    new-instance v0, Lcom/hunantv/imgo/data/VodAPlayData;

    invoke-direct {v0}, Lcom/hunantv/imgo/data/VodAPlayData;-><init>()V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/VodAPlayData;->setVid(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/VodAPlayData;->setFpid(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/VodAPlayData;->setFpn(Ljava/lang/String;)V

    iget v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->V:I

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/CommonData;->setP2p(I)V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->X:Lcom/hunantv/imgo/b/c;

    iget-object v1, v1, Lcom/hunantv/imgo/b/c;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/VodAPlayData;->setSuuid(Ljava/lang/String;)V

    :cond_0
    iget v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->s:I

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/VodAPlayData;->setPay(I)V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->aj:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->aj:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/VodAPlayData;->setUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/VodAPlayData;->setUrl(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ak:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ak:Ljava/lang/String;

    invoke-static {v1}, Lcom/hunantv/imgo/util/u;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/VodAPlayData;->setCdnip(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/hunantv/imgo/util/u;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/VodAPlayData;->setCdnip(Ljava/lang/String;)V

    :goto_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/VodAPlayData;->setAp(I)V

    iget-boolean v2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->d:Z

    invoke-virtual {v0, v2}, Lcom/hunantv/imgo/data/VodAPlayData;->setAcp(I)V

    iget-boolean v2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->U:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Lcom/hunantv/imgo/data/VodAPlayData;->setPt(I)V

    iget v2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->y:I

    invoke-virtual {v0, v2}, Lcom/hunantv/imgo/data/VodAPlayData;->setDef(I)V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hunantv/imgo/data/CommonData;->setCh(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/hunantv/imgo/data/VodAPlayData;->setPlid(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->af:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/hunantv/imgo/data/VodAPlayData;->setCid(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->e:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/hunantv/imgo/data/VodAPlayData;->setCt(I)V

    goto :goto_3

    :cond_4
    invoke-virtual {v0, v3}, Lcom/hunantv/imgo/data/VodAPlayData;->setCt(I)V

    :goto_3
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hunantv/imgo/util/u;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hunantv/imgo/data/VodAPlayData;->setFpa(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ah:Ljava/lang/String;

    iget-object v4, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ai:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v5

    invoke-virtual {v5, v1, v3}, Lcom/hunantv/imgo/b/c;->a(ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/VodAPlayData;->setCpn(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/hunantv/imgo/data/VodAPlayData;->setBdid(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/hunantv/imgo/data/VodAPlayData;->setBsid(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->A:Z

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/VodAPlayData;->setIsad(I)V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/VodAPlayData;->setSumt(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/VodAPlayData;->setHsumt(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/VodAPlayData;->setFirstt(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/VodAPlayData;->setAdt(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/VodAPlayData;->setTwot(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/VodAPlayData;->setThreet(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->H:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/VodAPlayData;->setPret(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->I:Z

    const-string v2, "0"

    const-string v3, "1"

    if-eqz v1, :cond_5

    move-object v1, v3

    goto :goto_4

    :cond_5
    move-object v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/VodAPlayData;->setIsftm(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->J:Z

    if-eqz v1, :cond_6

    move-object v1, v3

    goto :goto_5

    :cond_6
    move-object v1, v2

    :goto_5
    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/VodAPlayData;->setIsqs(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->K:Z

    if-eqz v1, :cond_7

    move-object v1, v3

    goto :goto_6

    :cond_7
    move-object v1, v2

    :goto_6
    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/VodAPlayData;->setIsqst(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->L:Z

    if-eqz v1, :cond_8

    move-object v2, v3

    :cond_8
    invoke-virtual {v0, v2}, Lcom/hunantv/imgo/data/VodAPlayData;->setIsaps(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/VodAPlayData;->setCdtp(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/VodAPlayData;->setP2pt(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/VodAPlayData;->setMp(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ab:Lcom/hunantv/imgo/a/j;

    if-eqz p0, :cond_9

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/a/j;->a(Lcom/hunantv/imgo/data/VodAPlayData;)V

    :cond_9
    return-void
.end method

.method private C()V
    .locals 3

    new-instance v0, Lcom/hunantv/imgo/data/LiveAPlayData;

    invoke-direct {v0}, Lcom/hunantv/imgo/data/LiveAPlayData;-><init>()V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/LiveAPlayData;->setFpid(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/LiveAPlayData;->setFpn(Ljava/lang/String;)V

    iget v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->V:I

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/CommonData;->setP2p(I)V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->am:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/LiveAPlayData;->setLiveId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->an:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/LiveAPlayData;->setActiveid(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v1

    iget-object v1, v1, Lcom/hunantv/imgo/b/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/CommonData;->setSid(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ao:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/LiveAPlayData;->setLid(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->A:Z

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/LiveAPlayData;->setIsad(I)V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->X:Lcom/hunantv/imgo/b/c;

    iget-object v1, v1, Lcom/hunantv/imgo/b/c;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/LiveAPlayData;->setSuuid(Ljava/lang/String;)V

    :cond_0
    iget v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->s:I

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/LiveAPlayData;->setPay(I)V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->aj:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->aj:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/LiveAPlayData;->setUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/LiveAPlayData;->setUrl(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ak:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ak:Ljava/lang/String;

    invoke-static {v1}, Lcom/hunantv/imgo/util/u;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/LiveAPlayData;->setCdnip(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/hunantv/imgo/util/u;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/LiveAPlayData;->setCdnip(Ljava/lang/String;)V

    :goto_1
    iget-boolean v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->d:Z

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/LiveAPlayData;->setAcp(I)V

    iget-boolean v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->U:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    goto :goto_2

    :cond_3
    iget-boolean v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->al:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/LiveAPlayData;->setPt(I)V

    iget v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->y:I

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/LiveAPlayData;->setDef(I)V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/CommonData;->setCh(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->e:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/LiveAPlayData;->setCt(I)V

    goto :goto_3

    :cond_5
    invoke-virtual {v0, v2}, Lcom/hunantv/imgo/data/LiveAPlayData;->setCt(I)V

    :goto_3
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hunantv/imgo/util/u;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/LiveAPlayData;->setFpa(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->A:Z

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/LiveAPlayData;->setIsad(I)V

    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ab:Lcom/hunantv/imgo/a/j;

    if-eqz p0, :cond_6

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/a/j;->a(Lcom/hunantv/imgo/data/LiveAPlayData;)V

    :cond_6
    return-void
.end method

.method private D()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->as:Lcom/hunantv/imgo/net/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hunantv/imgo/net/c;

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/hunantv/imgo/net/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->as:Lcom/hunantv/imgo/net/c;

    new-instance v1, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport$1;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport$1;-><init>(Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;)V

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/net/c;->a(Lcom/hunantv/imgo/net/c$b;)V

    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->as:Lcom/hunantv/imgo/net/c;

    invoke-virtual {p0}, Lcom/hunantv/imgo/net/c;->a()V

    :cond_0
    return-void
.end method

.method private E()V
    .locals 12

    iget-object v5, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ap:Ljava/lang/String;

    iget-object v6, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->aq:Ljava/lang/String;

    iget-object v7, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a:Ljava/lang/String;

    iget-object v8, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->b:Ljava/lang/String;

    iget-object v10, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ar:Ljava/lang/String;

    iget-object v11, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->c:Ljava/lang/String;

    const-string v1, "fin"

    const-string v2, ""

    const-string v3, "0"

    const/4 v4, 0x0

    const/4 v9, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/data/ErrorData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private F()V
    .locals 12

    iget-object v5, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ap:Ljava/lang/String;

    iget-object v6, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->aq:Ljava/lang/String;

    iget-object v7, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a:Ljava/lang/String;

    iget-object v8, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->b:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->d:Z

    iget-object v10, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ar:Ljava/lang/String;

    iget-object v11, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->c:Ljava/lang/String;

    const-string v1, "vv"

    const-string v2, ""

    const-string v3, "0"

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/data/ErrorData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;
    .locals 3

    .line 2
    sget-object v0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->au:Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->au:Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->au:Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_2
    sget-object v0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->au:Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    return-object v0
.end method

.method private a(Lcom/hunantv/imgo/net/RequestParams;)V
    .locals 1

    .line 11
    const-string p0, "switcher"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 12
    const-string p0, "submit"

    invoke-virtual {p1, p0, v0}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->j(I)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/data/ErrorData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 15

    move-object v0, p0

    .line 86
    iget-object v1, v0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->aa:Lcom/hunantv/imgo/a/f;

    if-eqz v1, :cond_0

    .line 87
    iget v2, v0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->R:I

    invoke-virtual {v1, v2}, Lcom/hunantv/imgo/a/f;->a(I)V

    .line 88
    iget-object v3, v0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->aa:Lcom/hunantv/imgo/a/f;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    invoke-virtual/range {v3 .. v14}, Lcom/hunantv/imgo/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/data/ErrorData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private b(Lcom/hunantv/imgo/net/RequestParams;)Lcom/hunantv/imgo/net/RequestParams;
    .locals 4

    .line 5
    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->v:Z

    .line 6
    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->e:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    if-eqz v1, :cond_3

    .line 7
    const-string v1, "vid"

    iget-object v2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const-string v1, "pay"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 9
    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->e:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getCurrentPosition()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    const-string v3, "ct"

    invoke-virtual {p1, v3, v1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 10
    const-string v1, "istry"

    invoke-virtual {p1, v1, v0}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 11
    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->U:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->al:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const-string v1, "pt"

    invoke-virtual {p1, v1, v0}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 12
    const-string v0, "cf"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 13
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->e:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getDuration()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    const-string v3, "vts"

    invoke-virtual {p1, v3, v0}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 14
    const-string v0, "def"

    iget v3, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->y:I

    invoke-virtual {p1, v0, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 15
    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->d:Z

    const-string v3, "ap"

    invoke-virtual {p1, v3, v0}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 16
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->X:Lcom/hunantv/imgo/b/c;

    iget-object v0, v0, Lcom/hunantv/imgo/b/c;->f:Ljava/lang/String;

    const-string v3, "suuid"

    invoke-virtual {p1, v3, v0}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const-string v0, "bdid"

    iget-object v3, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ah:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const-string v0, "cid"

    iget-object v3, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->af:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string v0, "plid"

    iget-object v3, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ag:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/b/c;->a(ZZ)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cpn"

    invoke-virtual {p1, v1, v0}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string v0, "lid"

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->am:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string v0, "activeid"

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->an:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v0, "bsid"

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ai:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->A:Z

    if-eqz v0, :cond_2

    const-string v0, "1"

    goto :goto_1

    :cond_2
    const-string v0, "0"

    :goto_1
    const-string v1, "isad"

    invoke-virtual {p1, v1, v0}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v0, "pver"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->X:Lcom/hunantv/imgo/b/c;

    iget-object v0, v0, Lcom/hunantv/imgo/b/c;->h:Ljava/lang/String;

    const-string v1, "sid"

    invoke-virtual {p1, v1, v0}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v0, "liveId"

    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->am:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object p1
.end method

.method private b(Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;)Ljava/lang/String;
    .locals 5

    .line 33
    const-string p0, "gsid="

    const-string v0, ""

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v1, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoSources:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    iget-object v1, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoSources:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget-object v1, v1, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->url:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 35
    iget-object v3, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoSources:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget-object v3, v3, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoSources:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v4, :cond_1

    .line 36
    iget-object p1, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->videoSources:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget-object p1, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->url:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 37
    :cond_1
    array-length p0, v1

    const/4 p1, 0x2

    if-ne p0, p1, :cond_2

    .line 38
    aget-object p0, v1, v4

    const-string p1, "&"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_2
    :goto_0
    return-object v0
.end method

.method private j(I)V
    .locals 2

    .line 12
    sget-object p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->S:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "netWorkChange networkType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/hunantv/imgo/a/k;->a(Landroid/content/Context;)Lcom/hunantv/imgo/a/k;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hunantv/imgo/a/k;->a()V

    const/4 p0, 0x1

    if-ne p0, p1, :cond_0

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/hunantv/imgo/util/f;->b(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "pref_scan_wifi_time"

    invoke-static {p1, p0}, Lcom/hunantv/imgo/util/PreferencesUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 10
    iput p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->V:I

    return-void
.end method

.method public a(II)V
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    if-eqz v0, :cond_0

    .line 14
    const-string v1, "vod"

    invoke-virtual {v0, p1, p2, v1}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(IILjava/lang/String;)V

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->g()V

    .line 16
    iget-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->e:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isBeforeFirstFrame()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x3

    .line 17
    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->g(I)V

    :cond_1
    return-void
.end method

.method public a(ILcom/hunantv/imgo/net/entity/b;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 56
    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/datareport/a/c;->b(Z)V

    .line 57
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/datareport/a/c;->c(Z)V

    .line 58
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(ILcom/hunantv/imgo/net/entity/b;)V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    const-string v3, "show"

    const-string v4, ""

    const-string v5, "0"

    const/4 v6, 0x0

    const-string v9, ""

    const/4 v11, -0x1

    move-object v2, p0

    move-object/from16 v7, p4

    move-object/from16 v8, p3

    move-object/from16 v10, p2

    invoke-direct/range {v2 .. v13}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/data/ErrorData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/Throwable;Lcom/hunantv/imgo/net/entity/b;)V
    .locals 7

    .line 50
    new-instance v6, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport$2;-><init>(Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;Ljava/lang/Throwable;ILjava/lang/String;Lcom/hunantv/imgo/net/entity/b;)V

    invoke-static {v6}, Lcom/hunantv/imgo/util/ThreadManager;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(ILjava/lang/String;ZLjava/lang/Throwable;I)V
    .locals 6

    .line 67
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 68
    invoke-virtual/range {v0 .. v5}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(ILjava/lang/String;ZLjava/lang/Throwable;I)V

    :cond_0
    return-void
.end method

.method public a(JJJJLjava/lang/String;Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    .line 101
    iget-object v1, v0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->av:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    iget-object v1, v0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->aa:Lcom/hunantv/imgo/a/f;

    if-eqz v1, :cond_1

    .line 103
    iget-object v2, v0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->b:Ljava/lang/String;

    iput-object v2, v0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->av:Ljava/lang/String;

    .line 104
    iget v2, v0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->R:I

    invoke-virtual {v1, v2}, Lcom/hunantv/imgo/a/f;->a(I)V

    .line 105
    iget-object v3, v0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->aa:Lcom/hunantv/imgo/a/f;

    iget-object v1, v0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->aq:Ljava/lang/String;

    iget-object v2, v0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a:Ljava/lang/String;

    iget-object v15, v0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->b:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->d:Z

    const-string v4, "time_cost"

    const-string v14, "0"

    move-object/from16 v5, p10

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move-wide/from16 v12, p7

    move-object/from16 v18, v15

    move-object/from16 v15, p9

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move/from16 v19, v0

    invoke-virtual/range {v3 .. v19}, Lcom/hunantv/imgo/a/f;->a(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(JZLcom/hunantv/imgo/data/ErrorData;)V
    .locals 2

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x0

    cmp-long p1, v0, p1

    if-lez p1, :cond_1

    .line 95
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->aa:Lcom/hunantv/imgo/a/f;

    if-eqz p0, :cond_1

    if-eqz p3, :cond_0

    .line 96
    const-string p1, "0"

    goto :goto_0

    :cond_0
    const-string p1, "1"

    :goto_0
    invoke-virtual {p0, v0, v1, p1, p4}, Lcom/hunantv/imgo/a/f;->a(JLjava/lang/String;Lcom/hunantv/imgo/data/ErrorData;)V

    :cond_1
    return-void
.end method

.method public a(JZLcom/hunantv/imgo/data/ErrorData;Ljava/lang/String;)V
    .locals 8

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v3, v0, p1

    const-wide/16 p1, 0x0

    cmp-long p1, v3, p1

    if-lez p1, :cond_1

    .line 98
    iget-object v2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->aa:Lcom/hunantv/imgo/a/f;

    if-eqz v2, :cond_1

    if-eqz p3, :cond_0

    .line 99
    const-string p0, "0"

    :goto_0
    move-object v5, p0

    goto :goto_1

    :cond_0
    const-string p0, "1"

    goto :goto_0

    :goto_1
    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/hunantv/imgo/a/f;->a(JLjava/lang/String;Lcom/hunantv/imgo/data/ErrorData;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 23
    iget-object v1, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->user:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;

    if-eqz v1, :cond_1

    .line 24
    invoke-static {}, Lcom/hunantv/imgo/data/a;->a()Lcom/hunantv/imgo/data/a;

    move-result-object v1

    iget-object v2, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->user:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;

    iget v2, v2, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;->isVip:I

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/hunantv/imgo/data/a;->a(Z)V

    .line 25
    iget-object v0, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->user:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;

    iget-object v0, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$User;->uuid:Ljava/lang/String;

    const-string v1, "uuid"

    invoke-static {v1, v0}, Lcom/hunantv/imgo/util/PreferencesUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 26
    :cond_1
    invoke-static {}, Lcom/hunantv/imgo/data/a;->a()Lcom/hunantv/imgo/data/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hunantv/imgo/data/a;->a(Z)V

    :goto_0
    if-eqz p1, :cond_2

    .line 27
    iget-object v0, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->fstlvlId:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->af:Ljava/lang/String;

    .line 28
    iget-object v0, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->clipId:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ag:Ljava/lang/String;

    .line 29
    iget-object v0, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->plId:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ah:Ljava/lang/String;

    .line 30
    iget-object v0, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->seriesId:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ai:Ljava/lang/String;

    .line 31
    :cond_2
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    if-eqz v0, :cond_3

    .line 32
    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->b(Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mgtv/thirdsdk/datareport/a/c;->d(Ljava/lang/String;)V

    .line 33
    :cond_3
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->r()V

    return-void
.end method

.method public a(Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 20
    iget-object p1, p1, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->url:Ljava/lang/String;

    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->aj:Ljava/lang/String;

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    if-eqz p1, :cond_1

    .line 22
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->aj:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/mgtv/thirdsdk/datareport/a/c;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;ILjava/lang/String;IIZ)V
    .locals 8

    .line 48
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    .line 49
    invoke-virtual/range {v0 .. v7}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;ILjava/lang/String;IIZ)V

    :cond_0
    return-void
.end method

.method public a(Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 41
    iget-object v0, p1, Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;->info:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ak:Ljava/lang/String;

    .line 42
    :cond_0
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    if-eqz p0, :cond_1

    .line 43
    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V
    .locals 3

    .line 75
    sget-object v0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->S:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlayer player:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->e:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    .line 77
    new-instance v0, Lcom/mgtv/thirdsdk/datareport/a/c;

    invoke-direct {v0, p1}, Lcom/mgtv/thirdsdk/datareport/a/c;-><init>(Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ap:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    if-eqz p0, :cond_0

    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    if-eqz p0, :cond_0

    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .line 63
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 64
    invoke-virtual/range {v0 .. v5}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;IILjava/lang/Throwable;)V
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    if-eqz p0, :cond_0

    .line 66
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(Ljava/lang/String;IILjava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;IILcom/hunantv/imgo/net/entity/b;)V
    .locals 6

    if-nez p5, :cond_0

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    if-eqz v0, :cond_1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 45
    invoke-virtual/range {v0 .. v5}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(Ljava/lang/String;Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;IILcom/hunantv/imgo/net/entity/b;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;ILjava/lang/String;Ljava/lang/String;ZILcom/hunantv/imgo/net/entity/b;)V
    .locals 9

    move-object v0, p0

    .line 46
    iget-object v0, v0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 47
    invoke-virtual/range {v0 .. v8}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(Ljava/lang/String;Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;ILjava/lang/String;Ljava/lang/String;ZILcom/hunantv/imgo/net/entity/b;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/hunantv/imgo/net/entity/b;)V
    .locals 1

    .line 59
    iget-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 60
    invoke-virtual {p1, v0}, Lcom/mgtv/thirdsdk/datareport/a/c;->b(Z)V

    .line 61
    iget-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mgtv/thirdsdk/datareport/a/c;->c(Z)V

    .line 62
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    const-string p1, "204000"

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(Ljava/lang/String;Lcom/hunantv/imgo/net/entity/b;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ae:Lcom/hunantv/imgo/a/i;

    if-eqz v0, :cond_1

    .line 79
    new-instance v0, Lcom/hunantv/imgo/data/PlayErrorData;

    invoke-direct {v0}, Lcom/hunantv/imgo/data/PlayErrorData;-><init>()V

    .line 80
    invoke-virtual {v0, p1}, Lcom/hunantv/imgo/data/PlayErrorData;->setSptype(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0, p2}, Lcom/hunantv/imgo/data/PlayErrorData;->setSpec(Ljava/lang/String;)V

    .line 82
    iget-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->X:Lcom/hunantv/imgo/b/c;

    iget-object p1, p1, Lcom/hunantv/imgo/b/c;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/hunantv/imgo/data/PlayErrorData;->setSuuid(Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/hunantv/imgo/data/PlayErrorData;->setVid(Ljava/lang/String;)V

    .line 84
    iget-boolean p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->J:Z

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    invoke-virtual {v0, p1}, Lcom/hunantv/imgo/data/PlayErrorData;->setIsqs(Ljava/lang/String;)V

    .line 85
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ae:Lcom/hunantv/imgo/a/i;

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/a/i;->a(Lcom/hunantv/imgo/data/PlayErrorData;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILcom/hunantv/imgo/net/entity/b;)V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    if-nez p0, :cond_0

    return-void

    .line 70
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mgtv/thirdsdk/datareport/a/c;->b(Ljava/lang/String;Ljava/lang/String;ILcom/hunantv/imgo/net/entity/b;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/data/ErrorData;Ljava/lang/String;)V
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->aa:Lcom/hunantv/imgo/a/f;

    if-eqz p0, :cond_0

    .line 93
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hunantv/imgo/a/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/data/ErrorData;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/net/entity/b;)V
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    if-eqz p0, :cond_0

    .line 72
    const-string p1, ""

    invoke-virtual {p0, p1, p2, p3}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/net/entity/b;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->af:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ah:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ag:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ai:Ljava/lang/String;

    .line 38
    iget-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    if-eqz p1, :cond_0

    .line 39
    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/mgtv/thirdsdk/datareport/a/c;->d(Ljava/lang/String;)V

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->r()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    move-object v0, p0

    .line 100
    iget-object v6, v0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->aq:Ljava/lang/String;

    const/4 v9, -0x1

    const-string v10, ""

    const-string v1, "download"

    const-string v3, "0"

    const/4 v4, 0x0

    move-object v2, p2

    move-object v5, p1

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v11, p5

    invoke-direct/range {v0 .. v11}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/data/ErrorData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZILcom/hunantv/imgo/net/entity/b;)V
    .locals 6

    .line 51
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 52
    invoke-virtual/range {v0 .. v5}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(Ljava/lang/String;Ljava/lang/String;ZILcom/hunantv/imgo/net/entity/b;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->d:Z

    return-void
.end method

.method public a(ZLcom/hunantv/imgo/data/ErrorData;)V
    .locals 12

    if-eqz p1, :cond_0

    .line 89
    const-string p1, "0"

    :goto_0
    move-object v3, p1

    goto :goto_1

    :cond_0
    const-string p1, "1"

    goto :goto_0

    :goto_1
    iget-object v5, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ap:Ljava/lang/String;

    iget-object v6, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->aq:Ljava/lang/String;

    iget-object v7, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a:Ljava/lang/String;

    iget-object v8, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->b:Ljava/lang/String;

    iget-object v10, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ar:Ljava/lang/String;

    iget-object v11, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->c:Ljava/lang/String;

    const-string v1, "page"

    const-string v2, ""

    const/4 v9, -0x1

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v11}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/data/ErrorData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(ZLcom/hunantv/imgo/data/ErrorData;Ljava/lang/String;)V
    .locals 12

    if-eqz p1, :cond_0

    .line 90
    const-string p1, "0"

    :goto_0
    move-object v3, p1

    goto :goto_1

    :cond_0
    const-string p1, "1"

    goto :goto_0

    :goto_1
    iget-object v5, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ap:Ljava/lang/String;

    iget-object v6, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->aq:Ljava/lang/String;

    iget-object v7, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a:Ljava/lang/String;

    iget-object v8, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->b:Ljava/lang/String;

    iget-object v10, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ar:Ljava/lang/String;

    iget-object v11, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->c:Ljava/lang/String;

    const-string v1, "ad"

    const-string v2, ""

    const/4 v9, -0x1

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v11}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/data/ErrorData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(ZLcom/hunantv/imgo/net/entity/b;)V
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    if-eqz p0, :cond_0

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(ZLcom/hunantv/imgo/net/entity/b;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->X:Lcom/hunantv/imgo/b/c;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hunantv/imgo/b/c;->f:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->av:Ljava/lang/String;

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->g:I

    return-void
.end method

.method public b(II)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0, p1, p2}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(II)V

    .line 30
    iget-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->e:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isBeforeFirstFrame()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x3

    .line 31
    iput p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->o:I

    :cond_0
    return-void
.end method

.method public b(ILjava/lang/String;Ljava/lang/Throwable;Lcom/hunantv/imgo/net/entity/b;)V
    .locals 6

    .line 39
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 40
    invoke-virtual/range {v0 .. v5}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(ILjava/lang/String;Ljava/lang/Throwable;ZLcom/hunantv/imgo/net/entity/b;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->aq:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 44
    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/datareport/a/c;->b(Z)V

    .line 45
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/thirdsdk/datareport/a/c;->b(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;ILcom/hunantv/imgo/net/entity/b;)V
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    if-nez p0, :cond_0

    return-void

    .line 42
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(Ljava/lang/String;Ljava/lang/String;ILcom/hunantv/imgo/net/entity/b;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->al:Z

    return-void
.end method

.method public c()V
    .locals 14

    .line 2
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ac:Lcom/hunantv/imgo/a/h;

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->U:Z

    if-eqz v1, :cond_0

    const-string v1, "3"

    :goto_0
    move-object v8, v1

    goto :goto_1

    :cond_0
    const-string v1, "1"

    goto :goto_0

    .line 4
    :goto_1
    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/hunantv/imgo/b/c;->a(ZZ)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->af:Ljava/lang/String;

    iget-object v4, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ag:Ljava/lang/String;

    iget-object v9, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ah:Ljava/lang/String;

    iget-object v10, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ai:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->n()I

    move-result v12

    const/4 v13, 0x0

    .line 6
    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v11, ""

    invoke-virtual/range {v0 .. v13}, Lcom/hunantv/imgo/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method public c(I)V
    .locals 0

    .line 11
    iput p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->i:I

    return-void
.end method

.method public c(II)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/datareport/a/c;->d(Z)V

    .line 10
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/thirdsdk/datareport/a/c;->b(II)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ar:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->U:Z

    return-void
.end method

.method public d()V
    .locals 15

    .line 2
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ac:Lcom/hunantv/imgo/a/h;

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->U:Z

    if-eqz v1, :cond_0

    const-string v1, "3"

    :goto_0
    move-object v8, v1

    goto :goto_1

    :cond_0
    const-string v1, "1"

    goto :goto_0

    .line 4
    :goto_1
    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Lcom/hunantv/imgo/b/c;->a(ZZ)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->af:Ljava/lang/String;

    iget-object v4, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ag:Ljava/lang/String;

    iget-object v9, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ah:Ljava/lang/String;

    iget-object v10, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ai:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->n()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    .line 6
    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v11, ""

    invoke-virtual/range {v0 .. v14}, Lcom/hunantv/imgo/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    :cond_1
    return-void
.end method

.method public d(I)V
    .locals 0

    .line 11
    iput p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->k:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->an:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 2

    .line 7
    sget-object v0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->S:Ljava/lang/String;

    const-string v1, "videoSDKReport onPlayCompletion:"

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/datareport/a/c;->b()V

    :cond_0
    if-eqz p1, :cond_1

    .line 10
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->E()V

    :cond_1
    return-void
.end method

.method public e()V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/a/c;->c()V

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->j:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->am:Ljava/lang/String;

    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->h:Z

    return-void
.end method

.method public f()V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/a/c;->g()V

    :cond_0
    return-void
.end method

.method public f(I)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->y:I

    .line 6
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/datareport/a/c;->b(I)V

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->O:Ljava/lang/String;

    return-void
.end method

.method public f(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->v:Z

    return-void
.end method

.method public g()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->e:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isCompletion()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->e:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getCurrentPosition()I

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/a/c;->f()V

    :cond_1
    return-void
.end method

.method public g(I)V
    .locals 0

    .line 6
    iput p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->o:I

    .line 7
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/datareport/a/c;->c(I)V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->P:Ljava/lang/String;

    return-void
.end method

.method public g(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->z:Z

    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/datareport/a/c;->d()V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->T:Z

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->l()V

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->D()V

    return-void
.end method

.method public h(I)V
    .locals 0

    .line 10
    iput p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->p:I

    .line 11
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    if-eqz p0, :cond_0

    .line 12
    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(I)V

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->r:Ljava/lang/String;

    .line 7
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/datareport/a/c;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public h(Z)V
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->L:Z

    return-void
.end method

.method public i()V
    .locals 3

    .line 1
    const-string v0, "pref_pvsource_app_background_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/util/PreferencesUtil;->a(Ljava/lang/String;J)Z

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->T:Z

    return-void
.end method

.method public i(I)V
    .locals 1

    .line 5
    iput p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->R:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->U:Z

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->M:Ljava/lang/String;

    return-void
.end method

.method public i(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->I:Z

    return-void
.end method

.method public j()V
    .locals 2

    .line 1
    sget-object v0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->S:Ljava/lang/String;

    const-string v1, "videoSDKReport onDestroy:"

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->d(Z)V

    .line 3
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->A()V

    .line 4
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->e()V

    .line 5
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/datareport/a/c;->e()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ac:Lcom/hunantv/imgo/a/h;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/hunantv/imgo/a/h;->d()V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->as:Lcom/hunantv/imgo/net/c;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Lcom/hunantv/imgo/net/c;->b()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->as:Lcom/hunantv/imgo/net/c;

    :cond_2
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->N:Ljava/lang/String;

    return-void
.end method

.method public j(Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->J:Z

    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/datareport/a/c;->e()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    .line 4
    iput-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->e:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->aj:Ljava/lang/String;

    .line 6
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/datareport/a/c;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public k(Z)V
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->K:Z

    return-void
.end method

.method public l()V
    .locals 12

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const-string v4, "pref_pvsource_app_background_time"

    invoke-static {v4, v2, v3}, Lcom/hunantv/imgo/util/PreferencesUtil;->b(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->X:Lcom/hunantv/imgo/b/c;

    iput-object v0, v1, Lcom/hunantv/imgo/b/c;->g:Ljava/lang/String;

    .line 4
    iget-object v6, v1, Lcom/hunantv/imgo/b/c;->i:Ljava/lang/String;

    .line 5
    iget-object v7, v1, Lcom/hunantv/imgo/b/c;->k:Ljava/lang/String;

    .line 6
    const-string v0, "pref_key_rdc"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/PreferencesUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 7
    const-string v0, "pref_key_rch"

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/PreferencesUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 8
    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v0

    iput-object v1, v0, Lcom/hunantv/imgo/b/c;->q:Ljava/lang/String;

    .line 9
    invoke-static {v6}, Lcom/hunantv/imgo/util/u;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->X:Lcom/hunantv/imgo/b/c;

    const-string v10, "6300"

    iput-object v10, v0, Lcom/hunantv/imgo/b/c;->i:Ljava/lang/String;

    .line 11
    iget-object v5, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ac:Lcom/hunantv/imgo/a/h;

    const-string v9, ""

    const-string v11, "2"

    const-string v8, ""

    invoke-virtual/range {v5 .. v11}, Lcom/hunantv/imgo/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v4, v0, v1}, Lcom/hunantv/imgo/util/PreferencesUtil;->a(Ljava/lang/String;J)Z

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->l:Ljava/lang/String;

    .line 15
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    if-eqz p0, :cond_0

    .line 16
    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/datareport/a/c;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public l(Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->n:Z

    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->W:Ljava/lang/String;

    return-object p0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a:Ljava/lang/String;

    return-void
.end method

.method public m(Z)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/datareport/a/c;->c(Z)V

    :cond_0
    return-void
.end method

.method public n()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->b:Ljava/lang/String;

    return-void
.end method

.method public n(Z)V
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/datareport/a/c;->b(Z)V

    :cond_0
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a:Ljava/lang/String;

    return-object p0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->c:Ljava/lang/String;

    return-void
.end method

.method public o(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->A:Z

    return-void
.end method

.method public onBufferUpdate(Ljava/lang/String;)V
    .locals 2

    sget-object p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->S:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  onBufferUpdate netSpeed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBuffering(I)V
    .locals 0

    return-void
.end method

.method public onCompletion(II)V
    .locals 3

    sget-object v0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->S:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  onCompletion  isBigDataCompleteSend:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->z:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->d(Z)V

    const/16 v0, 0x7544

    if-eq p1, v0, :cond_0

    const/16 v0, 0x754e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x754f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7550

    if-ne p1, v0, :cond_1

    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->l(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(II)V

    :cond_1
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->A()V

    return-void
.end method

.method public onEndBuffer(I)V
    .locals 9

    sget-object v0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->S:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  onEndBuffer type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    :goto_0
    iget-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->e:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    const-wide/16 v3, 0x0

    if-nez p1, :cond_3

    move-wide v5, v3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getLastBufferTime()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$BufferTime;

    move-result-object p1

    iget-wide v5, p1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$BufferTime;->buffertime:J

    :goto_1
    iget-boolean p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->al:Z

    if-nez p1, :cond_5

    cmp-long p1, v5, v3

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Z:Lcom/hunantv/imgo/a/c;

    if-eqz p1, :cond_5

    new-instance p1, Lcom/hunantv/imgo/data/BigDataBufferData;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->x()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/hunantv/imgo/util/b;->n()Ljava/lang/String;

    move-result-object v4

    iget-boolean v7, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->U:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    move v0, v8

    :goto_2
    invoke-direct {p1, v3, v4, v0}, Lcom/hunantv/imgo/data/BigDataBufferData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->f:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/hunantv/imgo/data/BigDataBufferData;->getRequestParams(Landroid/content/Context;)Lcom/hunantv/imgo/net/RequestParams;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->b(Lcom/hunantv/imgo/net/RequestParams;)Lcom/hunantv/imgo/net/RequestParams;

    move-result-object p1

    const-string v0, "idx"

    iget v3, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->g:I

    invoke-virtual {p1, v0, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v0, "bftype"

    invoke-virtual {p1, v0, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v0, "td"

    invoke-virtual {p1, v0, v5, v6}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;J)V

    const-string v0, "cid"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v3

    invoke-virtual {v3, v1, v8}, Lcom/hunantv/imgo/b/c;->a(ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "cpn"

    invoke-virtual {p1, v2, v0}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Z:Lcom/hunantv/imgo/a/c;

    invoke-virtual {v0, p1}, Lcom/hunantv/imgo/a/c;->a(Lcom/hunantv/imgo/net/RequestParams;)V

    iget p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->g:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->g:I

    :cond_5
    return-void
.end method

.method public onInfo(II)Z
    .locals 2

    const/16 p2, 0x384

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    sget-object p1, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->S:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStart  id:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    NeedPostVV:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->h:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->h:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->b(I)V

    invoke-virtual {p0, v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->c(I)V

    invoke-virtual {p0, v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->e(I)V

    invoke-virtual {p0, v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->d(I)V

    invoke-virtual {p0, v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->g(Z)V

    invoke-virtual {p0, v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->l(Z)V

    iget-boolean p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->al:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->B()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->C()V

    :goto_0
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->F()V

    invoke-virtual {p0, v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->e(Z)V

    :cond_1
    return v0
.end method

.method public onStartBuffer(I)V
    .locals 3

    sget-object v0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->S:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  onStartBuffer type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/datareport/a/c;->d(I)V

    :cond_0
    return-void
.end method

.method public onTick(III)V
    .locals 9

    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Y:Lcom/hunantv/imgo/a/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->S:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTick postion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " tickcount:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " tickdelay:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    rem-int/lit16 p1, p2, 0x12c

    const/4 p3, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_2

    iget p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->q:I

    if-ge p1, p3, :cond_2

    const-string p1, "intradayReportCounter"

    invoke-static {p1, v1}, Lcom/hunantv/imgo/util/PreferencesUtil;->a(Ljava/lang/String;I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5f53\u5929\u4e0a\u62a5\u603b\u6b21\u6570\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    new-instance v5, Ljava/util/Date;

    const-wide/16 v6, 0x0

    const-string v8, "reporttime"

    invoke-static {v8, v6, v7}, Lcom/hunantv/imgo/util/PreferencesUtil;->b(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {v4, v5}, Lcom/hunantv/imgo/util/f;->a(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 p1, 0x64

    if-ge v3, p1, :cond_2

    iget p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->q:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->q:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u540c\u4e00\u5929-----totalCounter="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->q:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p1, v1}, Lcom/hunantv/imgo/util/PreferencesUtil;->putInt(Ljava/lang/String;I)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v8, v3, v4}, Lcom/hunantv/imgo/util/PreferencesUtil;->a(Ljava/lang/String;J)Z

    iget p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->q:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->q:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u975e\u540c\u4e00\u5929-----totalCounter="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->q:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    new-instance p1, Lcom/hunantv/imgo/data/BigDataHeartBeatData;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->x()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/hunantv/imgo/util/b;->n()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v3, v4}, Lcom/hunantv/imgo/data/BigDataHeartBeatData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->al:Z

    if-eqz v3, :cond_3

    const-string v3, "heartbeat"

    invoke-virtual {p1, v3}, Lcom/hunantv/imgo/data/BigDataHeartBeatData;->setAct(Ljava/lang/String;)V

    const-string v3, "27.1.1.1"

    invoke-virtual {p1, v3}, Lcom/hunantv/imgo/data/CommonData;->setBid(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/hunantv/imgo/data/BigDataHeartBeatData;->getRequestParams()Lcom/hunantv/imgo/net/RequestParams;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->b(Lcom/hunantv/imgo/net/RequestParams;)Lcom/hunantv/imgo/net/RequestParams;

    move-result-object p1

    const-string v3, "isfull"

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->n()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Lcom/hunantv/imgo/b/c;->a(ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cpn"

    invoke-virtual {p1, v4, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->n:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->k:I

    iget v4, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->j:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->k:I

    iput v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->j:I

    iput-boolean v1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->n:Z

    :cond_4
    iget v3, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->k:I

    add-int/2addr v3, p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->k:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "||"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x3

    const-string v4, "tss"

    const-string v5, "cid"

    const-string v6, "ht"

    const-string v7, "idx"

    if-ne v3, p2, :cond_5

    iget p2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->i:I

    invoke-virtual {p1, v7, p2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    invoke-virtual {p1, v6, v1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->af:Ljava/lang/String;

    invoke-virtual {p1, v5, p2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->P:Ljava/lang/String;

    invoke-virtual {p1, v4, p2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Lcom/hunantv/imgo/net/RequestParams;)V

    iget-object p2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Y:Lcom/hunantv/imgo/a/d;

    invoke-virtual {p2, p1}, Lcom/hunantv/imgo/a/d;->a(Lcom/hunantv/imgo/net/RequestParams;)V

    iget p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->i:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->i:I

    goto/16 :goto_1

    :cond_5
    if-ne v3, p3, :cond_6

    iget p2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->i:I

    invoke-virtual {p1, v7, p2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    invoke-virtual {p1, v6, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->af:Ljava/lang/String;

    invoke-virtual {p1, v5, p2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->P:Ljava/lang/String;

    invoke-virtual {p1, v4, p2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Lcom/hunantv/imgo/net/RequestParams;)V

    iget-object p2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Y:Lcom/hunantv/imgo/a/d;

    invoke-virtual {p2, p1}, Lcom/hunantv/imgo/a/d;->a(Lcom/hunantv/imgo/net/RequestParams;)V

    iget p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->i:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->i:I

    goto/16 :goto_1

    :cond_6
    const/16 v1, 0xf

    if-ne v3, v1, :cond_7

    iget p3, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->i:I

    invoke-virtual {p1, v7, p3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    invoke-virtual {p1, v6, p2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->af:Ljava/lang/String;

    invoke-virtual {p1, v5, p2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->P:Ljava/lang/String;

    invoke-virtual {p1, v4, p2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Lcom/hunantv/imgo/net/RequestParams;)V

    const-string p2, "3 \u5fc3\u8df3\u5f00\u59cb"

    invoke-static {v0, p2}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Y:Lcom/hunantv/imgo/a/d;

    invoke-virtual {p2, p1}, Lcom/hunantv/imgo/a/d;->a(Lcom/hunantv/imgo/net/RequestParams;)V

    iget p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->i:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->i:I

    goto/16 :goto_1

    :cond_7
    const/16 p2, 0x2d

    if-ne v3, p2, :cond_8

    iget p2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->i:I

    invoke-virtual {p1, v7, p2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const/4 p2, 0x4

    invoke-virtual {p1, v6, p2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->af:Ljava/lang/String;

    invoke-virtual {p1, v5, p2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->P:Ljava/lang/String;

    invoke-virtual {p1, v4, p2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Lcom/hunantv/imgo/net/RequestParams;)V

    const-string p2, "4 \u5fc3\u8df3\u5f00\u59cb"

    invoke-static {v0, p2}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Y:Lcom/hunantv/imgo/a/d;

    invoke-virtual {p2, p1}, Lcom/hunantv/imgo/a/d;->a(Lcom/hunantv/imgo/net/RequestParams;)V

    iget p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->i:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->i:I

    goto :goto_1

    :cond_8
    const/16 p2, 0x3c

    if-ne v3, p2, :cond_9

    iget p2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->i:I

    invoke-virtual {p1, v7, p2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    invoke-virtual {p1, v6, p3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->af:Ljava/lang/String;

    invoke-virtual {p1, v5, p2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->P:Ljava/lang/String;

    invoke-virtual {p1, v4, p2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Lcom/hunantv/imgo/net/RequestParams;)V

    const-string p2, "5 \u5fc3\u8df3\u5f00\u59cb"

    invoke-static {v0, p2}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Y:Lcom/hunantv/imgo/a/d;

    invoke-virtual {p2, p1}, Lcom/hunantv/imgo/a/d;->a(Lcom/hunantv/imgo/net/RequestParams;)V

    iget p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->i:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->i:I

    goto :goto_1

    :cond_9
    sub-int/2addr v3, p2

    rem-int/lit8 v3, v3, 0x78

    if-nez v3, :cond_a

    iget p2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->i:I

    invoke-virtual {p1, v7, p2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const/4 p2, 0x6

    invoke-virtual {p1, v6, p2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->af:Ljava/lang/String;

    invoke-virtual {p1, v5, p2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->P:Ljava/lang/String;

    invoke-virtual {p1, v4, p2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Lcom/hunantv/imgo/net/RequestParams;)V

    const-string p2, "6 \u5fc3\u8df3\u5f00\u59cb"

    invoke-static {v0, p2}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Y:Lcom/hunantv/imgo/a/d;

    invoke-virtual {p2, p1}, Lcom/hunantv/imgo/a/d;->a(Lcom/hunantv/imgo/net/RequestParams;)V

    iget p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->i:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->i:I

    :cond_a
    :goto_1
    iget p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->j:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->j:I

    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->b:Ljava/lang/String;

    return-object p0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->m:Ljava/lang/String;

    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->c:Ljava/lang/String;

    return-object p0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->B:Ljava/lang/String;

    return-void
.end method

.method public r()V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->at:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->at:Z

    .line 4
    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/hunantv/imgo/a/k;->a(Landroid/content/Context;)Lcom/hunantv/imgo/a/k;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hunantv/imgo/a/k;->a()V

    .line 5
    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/hunantv/imgo/a/a;->a(Landroid/content/Context;)Lcom/hunantv/imgo/a/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hunantv/imgo/a/a;->a()V

    :cond_0
    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->C:Ljava/lang/String;

    return-void
.end method

.method public s()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ad:Lcom/hunantv/imgo/a/g;

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->X:Lcom/hunantv/imgo/b/c;

    iget-object p0, p0, Lcom/hunantv/imgo/b/c;->f:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/hunantv/imgo/a/g;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->D:Ljava/lang/String;

    return-void
.end method

.method public t()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/hunantv/imgo/a/h;->f()Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ac:Lcom/hunantv/imgo/a/h;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/hunantv/imgo/a/h;->a()V

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->D()V

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->E:Ljava/lang/String;

    return-void
.end method

.method public u()V
    .locals 12

    .line 2
    iget-object v5, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ap:Ljava/lang/String;

    iget-object v6, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->aq:Ljava/lang/String;

    iget-object v7, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a:Ljava/lang/String;

    iget-object v8, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->b:Ljava/lang/String;

    iget-object v10, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ar:Ljava/lang/String;

    iget-object v11, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->c:Ljava/lang/String;

    const-string v1, "pclick"

    const-string v2, "pause"

    const-string v3, "0"

    const/4 v4, 0x0

    const/4 v9, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/data/ErrorData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->F:Ljava/lang/String;

    return-void
.end method

.method public v()V
    .locals 12

    .line 2
    iget-object v5, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ap:Ljava/lang/String;

    iget-object v6, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->aq:Ljava/lang/String;

    iget-object v7, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a:Ljava/lang/String;

    iget-object v8, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->b:Ljava/lang/String;

    iget-object v10, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ar:Ljava/lang/String;

    iget-object v11, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->c:Ljava/lang/String;

    const-string v1, "pclick"

    const-string v2, "replay"

    const-string v3, "0"

    const/4 v4, 0x0

    const/4 v9, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/data/ErrorData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->G:Ljava/lang/String;

    return-void
.end method

.method public w()V
    .locals 12

    .line 2
    iget-object v5, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ap:Ljava/lang/String;

    iget-object v6, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->aq:Ljava/lang/String;

    iget-object v7, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a:Ljava/lang/String;

    iget-object v8, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->b:Ljava/lang/String;

    iget-object v10, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ar:Ljava/lang/String;

    iget-object v11, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->c:Ljava/lang/String;

    const-string v1, "pclick"

    const-string v2, "exit"

    const-string v3, "0"

    const/4 v4, 0x0

    const/4 v9, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/data/ErrorData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->H:Ljava/lang/String;

    return-void
.end method

.method public x()V
    .locals 12

    .line 4
    iget-object v5, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ap:Ljava/lang/String;

    iget-object v6, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->aq:Ljava/lang/String;

    iget-object v7, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a:Ljava/lang/String;

    iget-object v8, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->b:Ljava/lang/String;

    iget-object v10, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ar:Ljava/lang/String;

    iget-object v11, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->c:Ljava/lang/String;

    const-string v1, "pclick"

    const-string v2, "click"

    const-string v3, "0"

    const/4 v4, 0x0

    const/4 v9, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/data/ErrorData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ak:Ljava/lang/String;

    .line 2
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public y()V
    .locals 12

    .line 3
    :try_start_0
    const-string v1, "pclick"

    const-string v2, "portrait"

    const-string v3, "0"

    iget-object v5, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ap:Ljava/lang/String;

    iget-object v6, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->aq:Ljava/lang/String;

    iget-object v7, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a:Ljava/lang/String;

    iget-object v8, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->b:Ljava/lang/String;

    iget-object v10, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ar:Ljava/lang/String;

    iget-object v11, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->c:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v9, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/data/ErrorData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public y(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->Q:Lcom/mgtv/thirdsdk/datareport/a/c;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/datareport/a/c;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public z()V
    .locals 12

    :try_start_0
    const-string v1, "pclick"

    const-string v2, "full"

    const-string v3, "0"

    iget-object v5, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ap:Ljava/lang/String;

    iget-object v6, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->aq:Ljava/lang/String;

    iget-object v7, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a:Ljava/lang/String;

    iget-object v8, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->b:Ljava/lang/String;

    iget-object v10, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->ar:Ljava/lang/String;

    iget-object v11, p0, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->c:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v9, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/data/ErrorData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
