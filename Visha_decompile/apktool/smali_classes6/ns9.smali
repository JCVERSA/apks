.class public abstract Lns9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z

.field public static b:I

.field public static c:Z

.field public static d:I

.field public static e:Ljava/text/Collator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lns9;->e:Ljava/text/Collator;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1}, Lns9;->r(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(IZLjava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lns9;->s(IZLjava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic c(IZLjava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lns9;->q(IZLjava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic d(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1}, Lns9;->t(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic e(ZLcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lns9;->u(ZLcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)I

    move-result p0

    return p0
.end method

.method public static f(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;Z)I
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    iget-wide p0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    neg-int p0, p0

    :goto_0
    return p0
.end method

.method public static g(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;)I
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x1

    if-nez p1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    if-nez p0, :cond_3

    iget-object v3, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    if-nez v3, :cond_3

    return v0

    :cond_3
    if-nez p0, :cond_4

    return v1

    :cond_4
    iget-object v3, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    if-nez v3, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    const-string p1, ""

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    :goto_1
    :try_start_0
    const-string v3, "([^0-9]*)(\\d+)(.*\\.[a-zA-Z0-9]+)$"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v5

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v6

    if-ne v5, v6, :cond_a

    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x3

    if-nez v6, :cond_9

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-le v4, p0, :cond_7

    return v2

    :cond_7
    if-ge v4, p0, :cond_8

    return v1

    :cond_8
    return v0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_9
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    sget-object v0, Lns9;->e:Ljava/text/Collator;

    if-nez v0, :cond_b

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lns9;->e:Ljava/text/Collator;

    :cond_b
    sget-object v0, Lns9;->e:Ljava/text/Collator;

    invoke-virtual {v0, p0, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static h(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;IZ)I
    .locals 3

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_e

    const/4 v1, 0x1

    if-eq p2, v1, :cond_a

    const/4 v2, 0x2

    if-eq p2, v2, :cond_8

    const/4 v2, 0x3

    if-eq p2, v2, :cond_6

    const/4 v2, 0x6

    if-eq p2, v2, :cond_4

    iget p2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->playCount:I

    iget v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->playCount:I

    if-ge p2, v2, :cond_1

    goto :goto_0

    :cond_1
    if-ne p2, v2, :cond_2

    invoke-static {p0, p1}, Lns9;->g(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;)I

    move-result p0

    neg-int v0, p0

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    neg-int v0, v0

    :goto_1
    return v0

    :cond_4
    iget p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->num:I

    iget p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->num:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    if-eqz p3, :cond_5

    goto :goto_2

    :cond_5
    neg-int p0, p0

    :goto_2
    return p0

    :cond_6
    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    iget-wide p0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    if-eqz p3, :cond_7

    goto :goto_3

    :cond_7
    neg-int p0, p0

    :goto_3
    return p0

    :cond_8
    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    iget-wide p0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    if-eqz p3, :cond_9

    goto :goto_4

    :cond_9
    neg-int p0, p0

    :goto_4
    return p0

    :cond_a
    iget-object p2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    if-eqz p2, :cond_c

    iget-object p2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    if-nez p2, :cond_b

    goto :goto_5

    :cond_b
    invoke-static {p0, p1}, Lns9;->g(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;)I

    move-result v0

    :cond_c
    :goto_5
    if-nez p3, :cond_d

    goto :goto_6

    :cond_d
    neg-int v0, v0

    :goto_6
    return v0

    :cond_e
    invoke-static {p0, p1, p3}, Lns9;->f(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;Z)I

    move-result p0

    return p0
.end method

.method public static i()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lns9;->j()I

    move-result v0

    const-string v1, " DESC "

    const-string v2, " ASC "

    if-eqz v0, :cond_9

    const/4 v3, 0x1

    if-eq v0, v3, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x6

    const-string v4, "date_modified DESC "

    if-eq v0, v3, :cond_0

    return-object v4

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-le v0, v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cd_track_number"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lns9;->n()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v4

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duration"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lns9;->n()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v1, v2

    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_size"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lns9;->n()Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v1, v2

    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_display_name"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lns9;->n()Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v1, v2

    :cond_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "date_modified"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lns9;->n()Z

    move-result v3

    if-eqz v3, :cond_a

    move-object v1, v2

    :cond_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j()I
    .locals 1

    sget v0, Lns9;->d:I

    return v0
.end method

.method public static k(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {}, Lns9;->l()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lns9;->i()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static l()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lns9;->m()I

    move-result v0

    const-string v1, " DESC "

    const-string v2, " ASC "

    if-eqz v0, :cond_6

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const-string v0, "date_modified DESC "

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duration"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lns9;->p()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_size"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lns9;->p()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v1, v2

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_display_name"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lns9;->p()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v1, v2

    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "date_modified"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lns9;->p()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v1, v2

    :cond_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static m()I
    .locals 1

    sget v0, Lns9;->b:I

    return v0
.end method

.method public static n()Z
    .locals 1

    sget-boolean v0, Lns9;->c:Z

    return v0
.end method

.method public static o()Z
    .locals 1

    sget v0, Lns9;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static p()Z
    .locals 1

    sget-boolean v0, Lns9;->a:Z

    return v0
.end method

.method public static synthetic q(IZLjava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/media/AudioItem;

    check-cast p3, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p2, p3, p0, p1}, Lns9;->h(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;IZ)I

    move-result p0

    return p0
.end method

.method public static synthetic r(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p0, Lcom/transsion/dbdata/beans/media/AudioItem;

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lns9;->h(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;IZ)I

    move-result p0

    return p0
.end method

.method public static synthetic s(IZLjava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/media/MediaItem;

    check-cast p3, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {p2, p3, p0, p1}, Lns9;->h(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;IZ)I

    move-result p0

    return p0
.end method

.method public static sortMediaItem(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;"
        }
    .end annotation

    .line 1
    sget v0, Lns9;->b:I

    sget-boolean v1, Lns9;->a:Z

    invoke-static {p0, v0, v1}, Lns9;->sortMediaItem(Ljava/util/List;IZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static sortMediaItem(Ljava/util/List;IZ)Ljava/util/List;
    .locals 4
    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;IZ)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;"
        }
    .end annotation

    .line 2
    :try_start_0
    const-string v0, "java.util.Arrays.useLegacyMergeSort"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    sget v0, Lns9;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    .line 5
    invoke-static {}, Lcom/transsion/dbdata/utils/PlayCountDataManager;->b()Lcom/transsion/dbdata/utils/PlayCountDataManager;

    move-result-object v2

    iget-object v3, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/transsion/dbdata/utils/PlayCountDataManager;->a(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->playCount:I

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 6
    :cond_0
    new-instance v0, Lis9;

    invoke-direct {v0, p1, p2}, Lis9;-><init>(IZ)V

    invoke-interface {p0, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 7
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-object p0
.end method

.method public static synthetic t(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p0, Lcom/transsion/dbdata/beans/media/MediaItem;

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lns9;->h(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;IZ)I

    move-result p0

    return p0
.end method

.method public static synthetic u(ZLcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)I
    .locals 2

    iget p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->playCount:I

    iget p2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->playCount:I

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ge p1, p2, :cond_1

    if-eqz p0, :cond_0

    move v0, v1

    :cond_0
    return v0

    :cond_1
    if-le p1, p2, :cond_3

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static v(Ljava/util/List;)Ljava/util/List;
    .locals 2

    sget v0, Lns9;->d:I

    sget-boolean v1, Lns9;->c:Z

    invoke-static {p0, v0, v1}, Lns9;->w(Ljava/util/List;IZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static w(Ljava/util/List;IZ)Ljava/util/List;
    .locals 4

    sget v0, Lns9;->d:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {}, Lcom/transsion/dbdata/utils/PlayCountDataManager;->b()Lcom/transsion/dbdata/utils/PlayCountDataManager;

    move-result-object v2

    iget-object v3, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/transsion/dbdata/utils/PlayCountDataManager;->a(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->playCount:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljs9;

    invoke-direct {v0, p1, p2}, Ljs9;-><init>(IZ)V

    invoke-interface {p0, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-object p0
.end method

.method public static x(Ljava/util/List;)Ljava/util/List;
    .locals 1

    new-instance v0, Lms9;

    invoke-direct {v0}, Lms9;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-object p0
.end method

.method public static y(Ljava/util/List;)Ljava/util/List;
    .locals 1

    new-instance v0, Lls9;

    invoke-direct {v0}, Lls9;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-object p0
.end method

.method public static z(Ljava/util/List;Z)Ljava/util/List;
    .locals 1

    new-instance v0, Lks9;

    invoke-direct {v0, p1}, Lks9;-><init>(Z)V

    invoke-interface {p0, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-object p0
.end method
