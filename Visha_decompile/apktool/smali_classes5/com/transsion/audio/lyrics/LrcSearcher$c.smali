.class public Lcom/transsion/audio/lyrics/LrcSearcher$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Led7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/lyrics/LrcSearcher;->t(Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/audio/lyrics/LrcSearcher$i;)Lmc7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/audio/lyrics/LrcSearcher$i;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/transsion/retrofit/reponse/BaseResponse;

.field public final synthetic d:Lcom/transsion/audio/lyrics/LrcSearcher;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/lyrics/LrcSearcher;Lcom/transsion/audio/lyrics/LrcSearcher$i;ZLcom/transsion/retrofit/reponse/BaseResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/lyrics/LrcSearcher$c;->d:Lcom/transsion/audio/lyrics/LrcSearcher;

    iput-object p2, p0, Lcom/transsion/audio/lyrics/LrcSearcher$c;->a:Lcom/transsion/audio/lyrics/LrcSearcher$i;

    iput-boolean p3, p0, Lcom/transsion/audio/lyrics/LrcSearcher$c;->b:Z

    iput-object p4, p0, Lcom/transsion/audio/lyrics/LrcSearcher$c;->c:Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/audio/lyrics/LrcSearcher$i;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/lyrics/LrcSearcher$c;->b(Lcom/transsion/audio/lyrics/LrcSearcher$i;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/audio/lyrics/LrcSearcher$i;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/audio/lyrics/LrcSearcher$i;->onRemoteSearchBegin()V

    :cond_0
    return-void
.end method


# virtual methods
.method public subscribe(Lrc7;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/audio/lyrics/LrcSearcher$c;->a:Lcom/transsion/audio/lyrics/LrcSearcher$i;

    new-instance v1, Luu5;

    invoke-direct {v1, v0}, Luu5;-><init>(Lcom/transsion/audio/lyrics/LrcSearcher$i;)V

    invoke-static {v1}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/transsion/audio/lyrics/LrcSearcher$c;->d:Lcom/transsion/audio/lyrics/LrcSearcher;

    invoke-static {v0}, Lcom/transsion/audio/lyrics/LrcSearcher;->g(Lcom/transsion/audio/lyrics/LrcSearcher;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mark: vd_audio_lyrics_search_request  = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/audio/lyrics/LrcSearcher$c;->b:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "LrcSearcher"

    invoke-static {v2, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/transsion/audio/lyrics/LrcSearcher$c;->b:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "vd_audio_lyrics_search_request"

    const-string v3, "from"

    invoke-static {v2, v3, v0}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/audio/lyrics/LrcSearcher$c;->c:Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {v0}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/audio/lyrics/LrcSearcher$c;->c:Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {v0}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/LyricSearchData;

    iget-object v2, v0, Lcom/transsion/dbdata/beans/LyricSearchData;->lyricList:Ljava/util/List;

    iget-object v3, v0, Lcom/transsion/dbdata/beans/LyricSearchData;->sourceLink:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/transsion/audio/lyrics/LrcSearcher$c;->d:Lcom/transsion/audio/lyrics/LrcSearcher;

    invoke-static {v2}, Lcom/transsion/audio/lyrics/LrcSearcher;->h(Lcom/transsion/audio/lyrics/LrcSearcher;)Lou5;

    move-result-object v2

    new-instance v3, Lds8;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/LyricSearchData;->lyricList:Ljava/util/List;

    invoke-direct {v3, v0}, Lds8;-><init>(Ljava/util/List;)V

    iget-object p0, p0, Lcom/transsion/audio/lyrics/LrcSearcher$c;->d:Lcom/transsion/audio/lyrics/LrcSearcher;

    invoke-static {p0}, Lcom/transsion/audio/lyrics/LrcSearcher;->d(Lcom/transsion/audio/lyrics/LrcSearcher;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v3, v1, p0}, Lou5;->a(Lpu5;ZLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Lk93;->onNext(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {p1, p0}, Lk93;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
