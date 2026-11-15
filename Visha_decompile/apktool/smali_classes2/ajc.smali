.class public final Lajc;
.super Lrm9;
.source "SourceFile"


# instance fields
.field public final o:Lqw7;

.field public final p:Lvic;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "WebvttDecoder"

    invoke-direct {p0, v0}, Lrm9;-><init>(Ljava/lang/String;)V

    new-instance v0, Lqw7;

    invoke-direct {v0}, Lqw7;-><init>()V

    iput-object v0, p0, Lajc;->o:Lqw7;

    new-instance v0, Lvic;

    invoke-direct {v0}, Lvic;-><init>()V

    iput-object v0, p0, Lajc;->p:Lvic;

    return-void
.end method

.method public static x(Lqw7;)I
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    move v3, v1

    :goto_0
    if-ne v2, v0, :cond_3

    invoke-virtual {p0}, Lqw7;->e()I

    move-result v3

    invoke-virtual {p0}, Lqw7;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const-string v4, "STYLE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const-string v4, "NOTE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v3}, Lqw7;->O(I)V

    return v2
.end method

.method public static y(Lqw7;)V
    .locals 1

    :goto_0
    invoke-virtual {p0}, Lqw7;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public v([BIZ)Ll2a;
    .locals 1

    iget-object p3, p0, Lajc;->o:Lqw7;

    invoke-virtual {p3, p1, p2}, Lqw7;->M([BI)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object p2, p0, Lajc;->o:Lqw7;

    invoke-static {p2}, Lbjc;->d(Lqw7;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object p2, p0, Lajc;->o:Lqw7;

    invoke-virtual {p2}, Lqw7;->readLine()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    :goto_1
    iget-object p3, p0, Lajc;->o:Lqw7;

    invoke-static {p3}, Lajc;->x(Lqw7;)I

    move-result p3

    if-eqz p3, :cond_5

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    iget-object p3, p0, Lajc;->o:Lqw7;

    invoke-static {p3}, Lajc;->y(Lqw7;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    if-ne p3, v0, :cond_4

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lajc;->o:Lqw7;

    invoke-virtual {p3}, Lqw7;->readLine()Ljava/lang/String;

    iget-object p3, p0, Lajc;->p:Lvic;

    iget-object v0, p0, Lajc;->o:Lqw7;

    invoke-virtual {p3, v0}, Lvic;->d(Lqw7;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    new-instance p0, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string p1, "A style block was found after the first cue."

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const/4 v0, 0x3

    if-ne p3, v0, :cond_1

    iget-object p3, p0, Lajc;->o:Lqw7;

    invoke-static {p3, p1}, Lyic;->m(Lqw7;Ljava/util/List;)Lxic;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    new-instance p0, Ldjc;

    invoke-direct {p0, p2}, Ldjc;-><init>(Ljava/util/List;)V

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
