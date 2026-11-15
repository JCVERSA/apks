.class public Lcom/transsion/audio/lyrics/LrcSearcher$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/lyrics/LrcSearcher;->D(Ljava/util/List;Lcom/transsion/audio/lyrics/LrcSearcher$i;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:I

.field public final synthetic d:Lcom/transsion/audio/lyrics/LrcSearcher$i;

.field public final synthetic e:Lcom/transsion/audio/lyrics/LrcSearcher;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/lyrics/LrcSearcher;Ljava/util/List;ILcom/transsion/audio/lyrics/LrcSearcher$i;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/lyrics/LrcSearcher$a;->e:Lcom/transsion/audio/lyrics/LrcSearcher;

    iput-object p2, p0, Lcom/transsion/audio/lyrics/LrcSearcher$a;->b:Ljava/util/List;

    iput p3, p0, Lcom/transsion/audio/lyrics/LrcSearcher$a;->c:I

    iput-object p4, p0, Lcom/transsion/audio/lyrics/LrcSearcher$a;->d:Lcom/transsion/audio/lyrics/LrcSearcher$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/lyrics/LrcSearcher$a;->e:Lcom/transsion/audio/lyrics/LrcSearcher;

    invoke-static {v0}, Lcom/transsion/audio/lyrics/LrcSearcher;->f(Lcom/transsion/audio/lyrics/LrcSearcher;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/lyrics/LrcSearcher$a;->e:Lcom/transsion/audio/lyrics/LrcSearcher;

    invoke-static {v0}, Lcom/transsion/audio/lyrics/LrcSearcher;->g(Lcom/transsion/audio/lyrics/LrcSearcher;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/lyrics/LrcSearcher$a;->e:Lcom/transsion/audio/lyrics/LrcSearcher;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/audio/lyrics/LrcSearcher;->j(Lcom/transsion/audio/lyrics/LrcSearcher;Z)V

    const-string v0, "mark vd_audio_lyrics_search_result 1"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "LrcSearcher"

    invoke-static {v2, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/audio/lyrics/LrcSearcher$a;->b:Ljava/util/List;

    iget v2, p0, Lcom/transsion/audio/lyrics/LrcSearcher$a;->c:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/audio/lyrics/LrcSearcher$h;

    iget v0, v0, Lcom/transsion/audio/lyrics/LrcSearcher$h;->b:I

    invoke-static {v0, v1}, Lnz5;->b(II)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/lyrics/LrcSearcher$a;->d:Lcom/transsion/audio/lyrics/LrcSearcher$i;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/audio/lyrics/LrcSearcher$a;->e:Lcom/transsion/audio/lyrics/LrcSearcher;

    invoke-static {p0}, Lcom/transsion/audio/lyrics/LrcSearcher;->c(Lcom/transsion/audio/lyrics/LrcSearcher;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lcom/transsion/audio/lyrics/LrcSearcher$i;->searchSuccess(Ljava/util/List;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    :cond_1
    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    iget p1, p0, Lcom/transsion/audio/lyrics/LrcSearcher$a;->c:I

    iget-object v0, p0, Lcom/transsion/audio/lyrics/LrcSearcher$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/transsion/audio/lyrics/LrcSearcher$a;->e:Lcom/transsion/audio/lyrics/LrcSearcher;

    invoke-static {p1}, Lcom/transsion/audio/lyrics/LrcSearcher;->e(Lcom/transsion/audio/lyrics/LrcSearcher;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/lyrics/LrcSearcher$a;->e:Lcom/transsion/audio/lyrics/LrcSearcher;

    invoke-static {p1}, Lcom/transsion/audio/lyrics/LrcSearcher;->g(Lcom/transsion/audio/lyrics/LrcSearcher;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/lyrics/LrcSearcher$a;->e:Lcom/transsion/audio/lyrics/LrcSearcher;

    invoke-static {p1, v1}, Lcom/transsion/audio/lyrics/LrcSearcher;->i(Lcom/transsion/audio/lyrics/LrcSearcher;Z)V

    const-string p1, "mark vd_audio_lyrics_search_result 0"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "LrcSearcher"

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/audio/lyrics/LrcSearcher$a;->b:Ljava/util/List;

    iget v0, p0, Lcom/transsion/audio/lyrics/LrcSearcher$a;->c:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/audio/lyrics/LrcSearcher$h;

    iget p1, p1, Lcom/transsion/audio/lyrics/LrcSearcher$h;->b:I

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lnz5;->b(II)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/audio/lyrics/LrcSearcher$a;->d:Lcom/transsion/audio/lyrics/LrcSearcher$i;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/transsion/audio/lyrics/LrcSearcher$a;->e:Lcom/transsion/audio/lyrics/LrcSearcher;

    invoke-static {p0}, Lcom/transsion/audio/lyrics/LrcSearcher;->c(Lcom/transsion/audio/lyrics/LrcSearcher;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/audio/lyrics/LrcSearcher$i;->searchFailed(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/lyrics/LrcSearcher$a;->e:Lcom/transsion/audio/lyrics/LrcSearcher;

    iget-object v0, p0, Lcom/transsion/audio/lyrics/LrcSearcher$a;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/transsion/audio/lyrics/LrcSearcher$a;->d:Lcom/transsion/audio/lyrics/LrcSearcher$i;

    iget p0, p0, Lcom/transsion/audio/lyrics/LrcSearcher$a;->c:I

    add-int/2addr p0, v1

    invoke-virtual {p1, v0, v2, p0}, Lcom/transsion/audio/lyrics/LrcSearcher;->D(Ljava/util/List;Lcom/transsion/audio/lyrics/LrcSearcher$i;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/lyrics/LrcSearcher$a;->a(Ljava/util/List;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    return-void
.end method
