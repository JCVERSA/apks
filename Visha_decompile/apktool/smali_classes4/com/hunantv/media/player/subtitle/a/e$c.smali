.class Lcom/hunantv/media/player/subtitle/a/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/subtitle/a/e$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/subtitle/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/hunantv/media/player/subtitle/a/e;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/subtitle/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->a:Lcom/hunantv/media/player/subtitle/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c()V
    .locals 5

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->c:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->a:Lcom/hunantv/media/player/subtitle/a/e;

    invoke-static {v0}, Lcom/hunantv/media/player/subtitle/a/e;->d(Lcom/hunantv/media/player/subtitle/a/e;)Lcom/hunantv/media/player/subtitle/a/e$b;

    move-result-object v0

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->c:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/hunantv/media/player/subtitle/a/e$b;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/hunantv/media/player/subtitle/a/h;->c(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->a:Lcom/hunantv/media/player/subtitle/a/e;

    invoke-static {v2}, Lcom/hunantv/media/player/subtitle/a/e;->d(Lcom/hunantv/media/player/subtitle/a/e;)Lcom/hunantv/media/player/subtitle/a/e$b;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/hunantv/media/player/subtitle/a/e$b;->a(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid timestamp tag: <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Tokenizer"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->d:Ljava/lang/String;

    const-string v3, "\\s+"

    const-string v4, " "

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->d:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->d:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->c:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->c:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\."

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->c:Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->c:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->a:Lcom/hunantv/media/player/subtitle/a/e;

    invoke-static {v0}, Lcom/hunantv/media/player/subtitle/a/e;->d(Lcom/hunantv/media/player/subtitle/a/e;)Lcom/hunantv/media/player/subtitle/a/e$b;

    move-result-object v0

    iget-object v2, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->d:Ljava/lang/String;

    invoke-interface {v0, v2, v1, p0}, Lcom/hunantv/media/player/subtitle/a/e$b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public a()Lcom/hunantv/media/player/subtitle/a/e$d;
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->b:Z

    return-object p0
.end method

.method public b()V
    .locals 6

    iget-boolean v0, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->a:Lcom/hunantv/media/player/subtitle/a/e;

    invoke-static {v0}, Lcom/hunantv/media/player/subtitle/a/e;->e(Lcom/hunantv/media/player/subtitle/a/e;)I

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->a:Lcom/hunantv/media/player/subtitle/a/e;

    invoke-static {v0}, Lcom/hunantv/media/player/subtitle/a/e;->b(Lcom/hunantv/media/player/subtitle/a/e;)I

    move-result v0

    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->a:Lcom/hunantv/media/player/subtitle/a/e;

    invoke-static {v1}, Lcom/hunantv/media/player/subtitle/a/e;->a(Lcom/hunantv/media/player/subtitle/a/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->b:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->a:Lcom/hunantv/media/player/subtitle/a/e;

    invoke-static {v0}, Lcom/hunantv/media/player/subtitle/a/e;->a(Lcom/hunantv/media/player/subtitle/a/e;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->a:Lcom/hunantv/media/player/subtitle/a/e;

    invoke-static {v1}, Lcom/hunantv/media/player/subtitle/a/e;->b(Lcom/hunantv/media/player/subtitle/a/e;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->a:Lcom/hunantv/media/player/subtitle/a/e;

    invoke-static {v0}, Lcom/hunantv/media/player/subtitle/a/e;->a(Lcom/hunantv/media/player/subtitle/a/e;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->a:Lcom/hunantv/media/player/subtitle/a/e;

    invoke-static {v1}, Lcom/hunantv/media/player/subtitle/a/e;->b(Lcom/hunantv/media/player/subtitle/a/e;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[\t\u000c >]"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->a:Lcom/hunantv/media/player/subtitle/a/e;

    invoke-static {v0}, Lcom/hunantv/media/player/subtitle/a/e;->a(Lcom/hunantv/media/player/subtitle/a/e;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->a:Lcom/hunantv/media/player/subtitle/a/e;

    invoke-static {v1}, Lcom/hunantv/media/player/subtitle/a/e;->b(Lcom/hunantv/media/player/subtitle/a/e;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    goto :goto_0

    :goto_2
    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->a:Lcom/hunantv/media/player/subtitle/a/e;

    invoke-static {v1}, Lcom/hunantv/media/player/subtitle/a/e;->a(Lcom/hunantv/media/player/subtitle/a/e;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->a:Lcom/hunantv/media/player/subtitle/a/e;

    invoke-static {v2}, Lcom/hunantv/media/player/subtitle/a/e;->b(Lcom/hunantv/media/player/subtitle/a/e;)I

    move-result v2

    iget-object v3, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->a:Lcom/hunantv/media/player/subtitle/a/e;

    invoke-static {v3}, Lcom/hunantv/media/player/subtitle/a/e;->b(Lcom/hunantv/media/player/subtitle/a/e;)I

    move-result v3

    const/4 v4, 0x0

    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->a:Lcom/hunantv/media/player/subtitle/a/e;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v2, v0}, Lcom/hunantv/media/player/subtitle/a/e;->b(Lcom/hunantv/media/player/subtitle/a/e;I)I

    iget-boolean v0, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->b:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->d:Ljava/lang/String;

    goto :goto_3

    :cond_3
    iput-object v1, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->c:Ljava/lang/String;

    :cond_4
    :goto_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->b:Z

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->a:Lcom/hunantv/media/player/subtitle/a/e;

    invoke-static {v0}, Lcom/hunantv/media/player/subtitle/a/e;->b(Lcom/hunantv/media/player/subtitle/a/e;)I

    move-result v0

    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->a:Lcom/hunantv/media/player/subtitle/a/e;

    invoke-static {v1}, Lcom/hunantv/media/player/subtitle/a/e;->a(Lcom/hunantv/media/player/subtitle/a/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->a:Lcom/hunantv/media/player/subtitle/a/e;

    invoke-static {v0}, Lcom/hunantv/media/player/subtitle/a/e;->a(Lcom/hunantv/media/player/subtitle/a/e;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->a:Lcom/hunantv/media/player/subtitle/a/e;

    invoke-static {v1}, Lcom/hunantv/media/player/subtitle/a/e;->b(Lcom/hunantv/media/player/subtitle/a/e;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lcom/hunantv/media/player/subtitle/a/e$c;->c()V

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->a:Lcom/hunantv/media/player/subtitle/a/e;

    invoke-static {v0}, Lcom/hunantv/media/player/subtitle/a/e;->f(Lcom/hunantv/media/player/subtitle/a/e;)Lcom/hunantv/media/player/subtitle/a/e$d;

    move-result-object v1

    invoke-interface {v1}, Lcom/hunantv/media/player/subtitle/a/e$d;->a()Lcom/hunantv/media/player/subtitle/a/e$d;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/subtitle/a/e;->a(Lcom/hunantv/media/player/subtitle/a/e;Lcom/hunantv/media/player/subtitle/a/e$d;)Lcom/hunantv/media/player/subtitle/a/e$d;

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/a/e$c;->a:Lcom/hunantv/media/player/subtitle/a/e;

    invoke-static {p0}, Lcom/hunantv/media/player/subtitle/a/e;->e(Lcom/hunantv/media/player/subtitle/a/e;)I

    :cond_5
    return-void
.end method
