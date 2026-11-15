.class public Lcom/hunantv/media/player/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/player/g$a;
    }
.end annotation


# instance fields
.field public a:Landroid/os/Bundle;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:J

.field public e:J

.field public final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hunantv/media/player/g$a;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lcom/hunantv/media/player/g$a;

.field public h:Lcom/hunantv/media/player/g$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/player/g;->f:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/hunantv/media/player/g;
    .locals 11

    .line 3
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/hunantv/media/player/g;

    invoke-direct {v0}, Lcom/hunantv/media/player/g;-><init>()V

    iput-object p0, v0, Lcom/hunantv/media/player/g;->a:Landroid/os/Bundle;

    const-string p0, "format"

    invoke-virtual {v0, p0}, Lcom/hunantv/media/player/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/hunantv/media/player/g;->b:Ljava/lang/String;

    const-string p0, "duration_us"

    invoke-virtual {v0, p0}, Lcom/hunantv/media/player/g;->b(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/hunantv/media/player/g;->c:J

    const-string p0, "start_us"

    invoke-virtual {v0, p0}, Lcom/hunantv/media/player/g;->b(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/hunantv/media/player/g;->d:J

    const-string p0, "bitrate"

    invoke-virtual {v0, p0}, Lcom/hunantv/media/player/g;->b(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/hunantv/media/player/g;->e:J

    const-string v1, "video"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/media/player/g;->a(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "audio"

    invoke-virtual {v0, v4, v2}, Lcom/hunantv/media/player/g;->a(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "streams"

    invoke-virtual {v0, v6}, Lcom/hunantv/media/player/g;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    if-nez v6, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    add-int/lit8 v2, v2, 0x1

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    new-instance v8, Lcom/hunantv/media/player/g$a;

    invoke-direct {v8, v2}, Lcom/hunantv/media/player/g$a;-><init>(I)V

    iput-object v7, v8, Lcom/hunantv/media/player/g$a;->a:Landroid/os/Bundle;

    const-string v7, "type"

    invoke-virtual {v8, v7}, Lcom/hunantv/media/player/g$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Lcom/hunantv/media/player/g$a;->c:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    :cond_3
    const-string v7, "codec_name"

    invoke-virtual {v8, v7}, Lcom/hunantv/media/player/g$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Lcom/hunantv/media/player/g$a;->e:Ljava/lang/String;

    const-string v7, "codec_profile"

    invoke-virtual {v8, v7}, Lcom/hunantv/media/player/g$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Lcom/hunantv/media/player/g$a;->f:Ljava/lang/String;

    const-string v7, "codec_long_name"

    invoke-virtual {v8, v7}, Lcom/hunantv/media/player/g$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Lcom/hunantv/media/player/g$a;->g:Ljava/lang/String;

    invoke-virtual {v8, p0}, Lcom/hunantv/media/player/g$a;->b(Ljava/lang/String;)I

    move-result v7

    int-to-long v9, v7

    iput-wide v9, v8, Lcom/hunantv/media/player/g$a;->h:J

    iget-object v7, v8, Lcom/hunantv/media/player/g$a;->c:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "width"

    invoke-virtual {v8, v7}, Lcom/hunantv/media/player/g$a;->b(Ljava/lang/String;)I

    move-result v7

    iput v7, v8, Lcom/hunantv/media/player/g$a;->i:I

    const-string v7, "height"

    invoke-virtual {v8, v7}, Lcom/hunantv/media/player/g$a;->b(Ljava/lang/String;)I

    move-result v7

    iput v7, v8, Lcom/hunantv/media/player/g$a;->j:I

    const-string v7, "fps_num"

    invoke-virtual {v8, v7}, Lcom/hunantv/media/player/g$a;->b(Ljava/lang/String;)I

    move-result v7

    iput v7, v8, Lcom/hunantv/media/player/g$a;->k:I

    const-string v7, "fps_den"

    invoke-virtual {v8, v7}, Lcom/hunantv/media/player/g$a;->b(Ljava/lang/String;)I

    move-result v7

    iput v7, v8, Lcom/hunantv/media/player/g$a;->l:I

    const-string v7, "tbr_num"

    invoke-virtual {v8, v7}, Lcom/hunantv/media/player/g$a;->b(Ljava/lang/String;)I

    move-result v7

    iput v7, v8, Lcom/hunantv/media/player/g$a;->m:I

    const-string v7, "tbr_den"

    invoke-virtual {v8, v7}, Lcom/hunantv/media/player/g$a;->b(Ljava/lang/String;)I

    move-result v7

    iput v7, v8, Lcom/hunantv/media/player/g$a;->n:I

    const-string v7, "sar_num"

    invoke-virtual {v8, v7}, Lcom/hunantv/media/player/g$a;->b(Ljava/lang/String;)I

    move-result v7

    iput v7, v8, Lcom/hunantv/media/player/g$a;->o:I

    const-string v7, "sar_den"

    invoke-virtual {v8, v7}, Lcom/hunantv/media/player/g$a;->b(Ljava/lang/String;)I

    move-result v7

    iput v7, v8, Lcom/hunantv/media/player/g$a;->p:I

    if-ne v3, v2, :cond_5

    iput-object v8, v0, Lcom/hunantv/media/player/g;->g:Lcom/hunantv/media/player/g$a;

    goto :goto_1

    :cond_4
    iget-object v7, v8, Lcom/hunantv/media/player/g$a;->c:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "sample_rate"

    invoke-virtual {v8, v7}, Lcom/hunantv/media/player/g$a;->b(Ljava/lang/String;)I

    move-result v7

    iput v7, v8, Lcom/hunantv/media/player/g$a;->q:I

    const-string v7, "channel_layout"

    invoke-virtual {v8, v7}, Lcom/hunantv/media/player/g$a;->c(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v8, Lcom/hunantv/media/player/g$a;->r:J

    if-ne v5, v2, :cond_5

    iput-object v8, v0, Lcom/hunantv/media/player/g;->h:Lcom/hunantv/media/player/g$a;

    :cond_5
    :goto_1
    iget-object v7, v0, Lcom/hunantv/media/player/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return p2

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p2
.end method

.method public a(Ljava/lang/String;J)J
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-wide p2

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    return-wide p2
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/hunantv/media/player/g;->a:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/hunantv/media/player/g;->a(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public c(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/hunantv/media/player/g;->a:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
