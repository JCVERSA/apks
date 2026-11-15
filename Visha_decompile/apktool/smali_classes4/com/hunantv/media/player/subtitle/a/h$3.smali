.class Lcom/hunantv/media/player/subtitle/a/h$3;
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

    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/a/h$3;->b:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/a/h$3;->b:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-static {p0}, Lcom/hunantv/media/player/subtitle/a/h;->c(Lcom/hunantv/media/player/subtitle/a/h;)Lcom/hunantv/media/player/subtitle/a/h$a;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hunantv/media/player/subtitle/a/h;->a(Lcom/hunantv/media/player/subtitle/a/h;Lcom/hunantv/media/player/subtitle/a/h$a;)Lcom/hunantv/media/player/subtitle/a/h$a;

    goto :goto_0

    :cond_0
    const-string v0, "-->"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/h$3;->b:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-static {v0}, Lcom/hunantv/media/player/subtitle/a/h;->d(Lcom/hunantv/media/player/subtitle/a/h;)Lcom/hunantv/media/player/subtitle/a/h$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/subtitle/a/h;->a(Lcom/hunantv/media/player/subtitle/a/h;Lcom/hunantv/media/player/subtitle/a/h$a;)Lcom/hunantv/media/player/subtitle/a/h$a;

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/a/h$3;->b:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-static {p0}, Lcom/hunantv/media/player/subtitle/a/h;->e(Lcom/hunantv/media/player/subtitle/a/h;)Lcom/hunantv/media/player/subtitle/a/h$a;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/subtitle/a/h$a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/a/h$3;->b:Lcom/hunantv/media/player/subtitle/a/h;

    const-string v2, "meta data header has invalid format"

    invoke-static {v1, v2, p1}, Lcom/hunantv/media/player/subtitle/a/h;->a(Lcom/hunantv/media/player/subtitle/a/h;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Region"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/subtitle/a/h$3;->b(Ljava/lang/String;)Lcom/hunantv/media/player/subtitle/a/d;

    move-result-object p1

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/a/h$3;->b:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-static {p0}, Lcom/hunantv/media/player/subtitle/a/h;->f(Lcom/hunantv/media/player/subtitle/a/h;)Lcom/hunantv/media/player/subtitle/a/g;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/subtitle/a/g;->a(Lcom/hunantv/media/player/subtitle/a/d;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/hunantv/media/player/subtitle/a/d;
    .locals 13

    new-instance v0, Lcom/hunantv/media/player/subtitle/a/d;

    invoke-direct {v0}, Lcom/hunantv/media/player/subtitle/a/d;-><init>()V

    const-string v1, " +"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_c

    aget-object v4, p1, v3

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_b

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    const-string v4, "id"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-object v12, v0, Lcom/hunantv/media/player/subtitle/a/d;->a:Ljava/lang/String;

    goto/16 :goto_5

    :cond_1
    const-string v4, "width"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :try_start_0
    invoke-static {v12}, Lcom/hunantv/media/player/subtitle/a/h;->a(Ljava/lang/String;)F

    move-result v4

    iput v4, v0, Lcom/hunantv/media/player/subtitle/a/d;->b:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v4

    iget-object v7, p0, Lcom/hunantv/media/player/subtitle/a/h$3;->b:Lcom/hunantv/media/player/subtitle/a/h;

    const-string v10, "has invalid value"

    :goto_1
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    const-string v8, "region setting"

    :goto_2
    invoke-static/range {v7 .. v12}, Lcom/hunantv/media/player/subtitle/a/h;->a(Lcom/hunantv/media/player/subtitle/a/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_2
    const-string v4, "lines"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "region setting"

    if-eqz v5, :cond_5

    const-string v5, ".*[^0-9].*"

    invoke-virtual {v12, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/hunantv/media/player/subtitle/a/h$3;->b:Lcom/hunantv/media/player/subtitle/a/h;

    const-string v6, "contains an invalid character"

    invoke-static {v5, v4, v9, v6, v12}, Lcom/hunantv/media/player/subtitle/a/h;->a(Lcom/hunantv/media/player/subtitle/a/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_3
    :try_start_1
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/hunantv/media/player/subtitle/a/d;->c:I

    sget-boolean v5, Lcom/hunantv/media/player/subtitle/a/h$3;->a:Z

    if-nez v5, :cond_b

    if-ltz v4, :cond_4

    goto/16 :goto_5

    :cond_4
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iget-object v4, p0, Lcom/hunantv/media/player/subtitle/a/h$3;->b:Lcom/hunantv/media/player/subtitle/a/h;

    const-string v5, "is not numeric"

    :goto_3
    invoke-static {v4, v6, v9, v5, v12}, Lcom/hunantv/media/player/subtitle/a/h;->a(Lcom/hunantv/media/player/subtitle/a/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_5
    const-string v4, "regionanchor"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "viewportanchor"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    const-string v4, "scroll"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "up"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x12d

    iput v4, v0, Lcom/hunantv/media/player/subtitle/a/d;->h:I

    goto :goto_5

    :cond_7
    iget-object v4, p0, Lcom/hunantv/media/player/subtitle/a/h$3;->b:Lcom/hunantv/media/player/subtitle/a/h;

    const-string v5, "has invalid value"

    goto :goto_3

    :cond_8
    :goto_4
    const-string v4, ","

    invoke-virtual {v12, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_9

    iget-object v4, p0, Lcom/hunantv/media/player/subtitle/a/h$3;->b:Lcom/hunantv/media/player/subtitle/a/h;

    const-string v5, "contains no comma"

    goto :goto_3

    :cond_9
    invoke-virtual {v12, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v12, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    :try_start_2
    invoke-static {v5}, Lcom/hunantv/media/player/subtitle/a/h;->a(Ljava/lang/String;)F

    move-result v4
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    invoke-static {v12}, Lcom/hunantv/media/player/subtitle/a/h;->a(Ljava/lang/String;)F

    move-result v5
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x72

    if-ne v6, v7, :cond_a

    iput v4, v0, Lcom/hunantv/media/player/subtitle/a/d;->d:F

    iput v5, v0, Lcom/hunantv/media/player/subtitle/a/d;->e:F

    goto :goto_5

    :cond_a
    iput v4, v0, Lcom/hunantv/media/player/subtitle/a/d;->f:F

    iput v5, v0, Lcom/hunantv/media/player/subtitle/a/d;->g:F

    goto :goto_5

    :catch_2
    move-exception v4

    iget-object v7, p0, Lcom/hunantv/media/player/subtitle/a/h$3;->b:Lcom/hunantv/media/player/subtitle/a/h;

    const-string v10, "has invalid y component"

    goto/16 :goto_1

    :catch_3
    move-exception v4

    iget-object v7, p0, Lcom/hunantv/media/player/subtitle/a/h$3;->b:Lcom/hunantv/media/player/subtitle/a/h;

    const-string v10, "has invalid x component"

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    const-string v8, "region setting"

    move-object v12, v5

    goto/16 :goto_2

    :cond_b
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_c
    return-object v0
.end method
