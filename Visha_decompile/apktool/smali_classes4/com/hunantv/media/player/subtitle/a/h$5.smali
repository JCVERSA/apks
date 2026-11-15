.class Lcom/hunantv/media/player/subtitle/a/h$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/subtitle/a/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/subtitle/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field static final synthetic a:Z = true


# instance fields
.field final synthetic b:Lcom/hunantv/media/player/subtitle/a/h;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/hunantv/media/player/subtitle/a/h;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/a/h$5;->b:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 12

    const-string v0, "-->"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object p1, p0, Lcom/hunantv/media/player/subtitle/a/h$5;->b:Lcom/hunantv/media/player/subtitle/a/h;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/hunantv/media/player/subtitle/a/h;->a(Lcom/hunantv/media/player/subtitle/a/h;Lcom/hunantv/media/player/subtitle/a/b;)Lcom/hunantv/media/player/subtitle/a/b;

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/a/h$5;->b:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-static {p0}, Lcom/hunantv/media/player/subtitle/a/h;->c(Lcom/hunantv/media/player/subtitle/a/h;)Lcom/hunantv/media/player/subtitle/a/h$a;

    move-result-object p1

    :goto_0
    invoke-static {p0, p1}, Lcom/hunantv/media/player/subtitle/a/h;->a(Lcom/hunantv/media/player/subtitle/a/h;Lcom/hunantv/media/player/subtitle/a/h$a;)Lcom/hunantv/media/player/subtitle/a/h$a;

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "^\\s+"

    const-string v3, ""

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\s+"

    const-string v4, " "

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, p1

    :goto_1
    const/4 v6, 0x1

    if-lez v4, :cond_2

    add-int/2addr v4, v6

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    move-object p1, v3

    :goto_2
    iget-object v4, p0, Lcom/hunantv/media/player/subtitle/a/h$5;->b:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-static {v4}, Lcom/hunantv/media/player/subtitle/a/h;->g(Lcom/hunantv/media/player/subtitle/a/h;)Lcom/hunantv/media/player/subtitle/a/b;

    move-result-object v4

    invoke-static {v2}, Lcom/hunantv/media/player/subtitle/a/h;->c(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/hunantv/media/player/subtitle/d$a;->a:J

    iget-object v2, p0, Lcom/hunantv/media/player/subtitle/a/h$5;->b:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-static {v2}, Lcom/hunantv/media/player/subtitle/a/h;->g(Lcom/hunantv/media/player/subtitle/a/h;)Lcom/hunantv/media/player/subtitle/a/b;

    move-result-object v2

    invoke-static {v5}, Lcom/hunantv/media/player/subtitle/a/h;->c(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/hunantv/media/player/subtitle/d$a;->b:J

    const-string v2, " +"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    move v4, v1

    :goto_3
    if-ge v4, v2, :cond_14

    aget-object v5, p1, v4

    const/16 v7, 0x3a

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-lez v7, :cond_13

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v6

    if-ne v7, v8, :cond_3

    goto/16 :goto_8

    :cond_3
    invoke-virtual {v5, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "region"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/hunantv/media/player/subtitle/a/h$5;->b:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-static {v7}, Lcom/hunantv/media/player/subtitle/a/h;->g(Lcom/hunantv/media/player/subtitle/a/h;)Lcom/hunantv/media/player/subtitle/a/b;

    move-result-object v7

    iput-object v5, v7, Lcom/hunantv/media/player/subtitle/a/b;->i:Ljava/lang/String;

    goto/16 :goto_8

    :cond_4
    const-string v7, "vertical"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v9, "has invalid value"

    const-string v10, "cue setting"

    if-eqz v7, :cond_7

    const-string v7, "rl"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v5, p0, Lcom/hunantv/media/player/subtitle/a/h$5;->b:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-static {v5}, Lcom/hunantv/media/player/subtitle/a/h;->g(Lcom/hunantv/media/player/subtitle/a/h;)Lcom/hunantv/media/player/subtitle/a/b;

    move-result-object v5

    const/16 v7, 0x65

    :goto_4
    iput v7, v5, Lcom/hunantv/media/player/subtitle/a/b;->h:I

    goto/16 :goto_8

    :cond_5
    const-string v7, "lr"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v5, p0, Lcom/hunantv/media/player/subtitle/a/h$5;->b:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-static {v5}, Lcom/hunantv/media/player/subtitle/a/h;->g(Lcom/hunantv/media/player/subtitle/a/h;)Lcom/hunantv/media/player/subtitle/a/b;

    move-result-object v5

    const/16 v7, 0x66

    goto :goto_4

    :cond_6
    iget-object v7, p0, Lcom/hunantv/media/player/subtitle/a/h$5;->b:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-static {v7, v10, v8, v9, v5}, Lcom/hunantv/media/player/subtitle/a/h;->a(Lcom/hunantv/media/player/subtitle/a/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_7
    const-string v7, "line"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v11, "is not numeric or percentage"

    if-eqz v7, :cond_c

    :try_start_0
    sget-boolean v7, Lcom/hunantv/media/player/subtitle/a/h$5;->a:Z

    if-nez v7, :cond_9

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gez v7, :cond_8

    goto :goto_5

    :cond_8
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    :cond_9
    :goto_5
    const-string v7, "%"

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/hunantv/media/player/subtitle/a/h$5;->b:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-static {v7}, Lcom/hunantv/media/player/subtitle/a/h;->g(Lcom/hunantv/media/player/subtitle/a/h;)Lcom/hunantv/media/player/subtitle/a/b;

    move-result-object v7

    iput-boolean v1, v7, Lcom/hunantv/media/player/subtitle/a/b;->j:Z

    iget-object v7, p0, Lcom/hunantv/media/player/subtitle/a/h$5;->b:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-static {v7}, Lcom/hunantv/media/player/subtitle/a/h;->g(Lcom/hunantv/media/player/subtitle/a/h;)Lcom/hunantv/media/player/subtitle/a/b;

    move-result-object v7

    invoke-static {v5}, Lcom/hunantv/media/player/subtitle/a/h;->b(Ljava/lang/String;)I

    move-result v9

    :goto_6
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v7, Lcom/hunantv/media/player/subtitle/a/b;->k:Ljava/lang/Integer;

    goto/16 :goto_8

    :cond_a
    const-string v7, ".*[^0-9].*"

    invoke-virtual {v5, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/hunantv/media/player/subtitle/a/h$5;->b:Lcom/hunantv/media/player/subtitle/a/h;

    const-string v9, "contains an invalid character"

    invoke-static {v7, v10, v8, v9, v5}, Lcom/hunantv/media/player/subtitle/a/h;->a(Lcom/hunantv/media/player/subtitle/a/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_b
    iget-object v7, p0, Lcom/hunantv/media/player/subtitle/a/h$5;->b:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-static {v7}, Lcom/hunantv/media/player/subtitle/a/h;->g(Lcom/hunantv/media/player/subtitle/a/h;)Lcom/hunantv/media/player/subtitle/a/b;

    move-result-object v7

    iput-boolean v6, v7, Lcom/hunantv/media/player/subtitle/a/b;->j:Z

    iget-object v7, p0, Lcom/hunantv/media/player/subtitle/a/h$5;->b:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-static {v7}, Lcom/hunantv/media/player/subtitle/a/h;->g(Lcom/hunantv/media/player/subtitle/a/h;)Lcom/hunantv/media/player/subtitle/a/b;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    iget-object v7, p0, Lcom/hunantv/media/player/subtitle/a/h$5;->b:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-static {v7, v10, v8, v11, v5}, Lcom/hunantv/media/player/subtitle/a/h;->a(Lcom/hunantv/media/player/subtitle/a/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_c
    const-string v7, "position"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    :try_start_1
    iget-object v7, p0, Lcom/hunantv/media/player/subtitle/a/h$5;->b:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-static {v7}, Lcom/hunantv/media/player/subtitle/a/h;->g(Lcom/hunantv/media/player/subtitle/a/h;)Lcom/hunantv/media/player/subtitle/a/b;

    move-result-object v7

    invoke-static {v5}, Lcom/hunantv/media/player/subtitle/a/h;->b(Ljava/lang/String;)I

    move-result v9

    iput v9, v7, Lcom/hunantv/media/player/subtitle/a/b;->m:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_8

    :cond_d
    const-string v7, "size"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    :try_start_2
    iget-object v7, p0, Lcom/hunantv/media/player/subtitle/a/h$5;->b:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-static {v7}, Lcom/hunantv/media/player/subtitle/a/h;->g(Lcom/hunantv/media/player/subtitle/a/h;)Lcom/hunantv/media/player/subtitle/a/b;

    move-result-object v7

    invoke-static {v5}, Lcom/hunantv/media/player/subtitle/a/h;->b(Ljava/lang/String;)I

    move-result v9

    iput v9, v7, Lcom/hunantv/media/player/subtitle/a/b;->n:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_8

    :cond_e
    const-string v7, "align"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    const-string v7, "start"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v5, p0, Lcom/hunantv/media/player/subtitle/a/h$5;->b:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-static {v5}, Lcom/hunantv/media/player/subtitle/a/h;->g(Lcom/hunantv/media/player/subtitle/a/h;)Lcom/hunantv/media/player/subtitle/a/b;

    move-result-object v5

    const/16 v7, 0xc9

    :goto_7
    iput v7, v5, Lcom/hunantv/media/player/subtitle/a/b;->o:I

    goto :goto_8

    :cond_f
    const-string v7, "middle"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    iget-object v5, p0, Lcom/hunantv/media/player/subtitle/a/h$5;->b:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-static {v5}, Lcom/hunantv/media/player/subtitle/a/h;->g(Lcom/hunantv/media/player/subtitle/a/h;)Lcom/hunantv/media/player/subtitle/a/b;

    move-result-object v5

    const/16 v7, 0xc8

    goto :goto_7

    :cond_10
    const-string v7, "end"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    iget-object v5, p0, Lcom/hunantv/media/player/subtitle/a/h$5;->b:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-static {v5}, Lcom/hunantv/media/player/subtitle/a/h;->g(Lcom/hunantv/media/player/subtitle/a/h;)Lcom/hunantv/media/player/subtitle/a/b;

    move-result-object v5

    const/16 v7, 0xca

    goto :goto_7

    :cond_11
    const-string v7, "left"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v5, p0, Lcom/hunantv/media/player/subtitle/a/h$5;->b:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-static {v5}, Lcom/hunantv/media/player/subtitle/a/h;->g(Lcom/hunantv/media/player/subtitle/a/h;)Lcom/hunantv/media/player/subtitle/a/b;

    move-result-object v5

    const/16 v7, 0xcb

    goto :goto_7

    :cond_12
    const-string v7, "right"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v5, p0, Lcom/hunantv/media/player/subtitle/a/h$5;->b:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-static {v5}, Lcom/hunantv/media/player/subtitle/a/h;->g(Lcom/hunantv/media/player/subtitle/a/h;)Lcom/hunantv/media/player/subtitle/a/b;

    move-result-object v5

    const/16 v7, 0xcc

    goto :goto_7

    :cond_13
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    :cond_14
    iget-object p1, p0, Lcom/hunantv/media/player/subtitle/a/h$5;->b:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-static {p1}, Lcom/hunantv/media/player/subtitle/a/h;->g(Lcom/hunantv/media/player/subtitle/a/h;)Lcom/hunantv/media/player/subtitle/a/b;

    move-result-object p1

    iget-object p1, p1, Lcom/hunantv/media/player/subtitle/a/b;->k:Ljava/lang/Integer;

    if-nez p1, :cond_15

    iget-object p1, p0, Lcom/hunantv/media/player/subtitle/a/h$5;->b:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-static {p1}, Lcom/hunantv/media/player/subtitle/a/h;->g(Lcom/hunantv/media/player/subtitle/a/h;)Lcom/hunantv/media/player/subtitle/a/b;

    move-result-object p1

    iget p1, p1, Lcom/hunantv/media/player/subtitle/a/b;->n:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_15

    iget-object p1, p0, Lcom/hunantv/media/player/subtitle/a/h$5;->b:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-static {p1}, Lcom/hunantv/media/player/subtitle/a/h;->g(Lcom/hunantv/media/player/subtitle/a/h;)Lcom/hunantv/media/player/subtitle/a/b;

    move-result-object p1

    iget p1, p1, Lcom/hunantv/media/player/subtitle/a/b;->h:I

    if-eq p1, v0, :cond_16

    :cond_15
    iget-object p1, p0, Lcom/hunantv/media/player/subtitle/a/h$5;->b:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-static {p1}, Lcom/hunantv/media/player/subtitle/a/h;->g(Lcom/hunantv/media/player/subtitle/a/h;)Lcom/hunantv/media/player/subtitle/a/b;

    move-result-object p1

    iput-object v3, p1, Lcom/hunantv/media/player/subtitle/a/b;->i:Ljava/lang/String;

    :cond_16
    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/a/h$5;->b:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-static {p0}, Lcom/hunantv/media/player/subtitle/a/h;->h(Lcom/hunantv/media/player/subtitle/a/h;)Lcom/hunantv/media/player/subtitle/a/h$a;

    move-result-object p1

    goto/16 :goto_0
.end method
