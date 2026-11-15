.class Lcom/hunantv/media/player/subtitle/a/e$a;
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
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/hunantv/media/player/subtitle/a/e;

.field private b:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/subtitle/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/a/e$a;->a:Lcom/hunantv/media/player/subtitle/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/e$a;->a:Lcom/hunantv/media/player/subtitle/a/e;

    invoke-static {v0}, Lcom/hunantv/media/player/subtitle/a/e;->a(Lcom/hunantv/media/player/subtitle/a/e;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/e$a;->b:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/a/e$a;->a:Lcom/hunantv/media/player/subtitle/a/e;

    invoke-static {v1}, Lcom/hunantv/media/player/subtitle/a/e;->a(Lcom/hunantv/media/player/subtitle/a/e;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hunantv/media/player/subtitle/a/e$a;->a:Lcom/hunantv/media/player/subtitle/a/e;

    invoke-static {v2}, Lcom/hunantv/media/player/subtitle/a/e;->b(Lcom/hunantv/media/player/subtitle/a/e;)I

    move-result v2

    invoke-virtual {v1, v2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/e$a;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/hunantv/media/player/subtitle/a/e$a;->a:Lcom/hunantv/media/player/subtitle/a/e;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p3, p1

    invoke-static {p2, p3}, Lcom/hunantv/media/player/subtitle/a/e;->a(Lcom/hunantv/media/player/subtitle/a/e;I)I

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/a/e$a;->a:Lcom/hunantv/media/player/subtitle/a/e;

    invoke-static {p0}, Lcom/hunantv/media/player/subtitle/a/e;->b(Lcom/hunantv/media/player/subtitle/a/e;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a()Lcom/hunantv/media/player/subtitle/a/e$d;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/a/e$a;->b:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/e$a;->a:Lcom/hunantv/media/player/subtitle/a/e;

    invoke-static {v0}, Lcom/hunantv/media/player/subtitle/a/e;->a(Lcom/hunantv/media/player/subtitle/a/e;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/a/e$a;->a:Lcom/hunantv/media/player/subtitle/a/e;

    invoke-static {v1}, Lcom/hunantv/media/player/subtitle/a/e;->b(Lcom/hunantv/media/player/subtitle/a/e;)I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/hunantv/media/player/subtitle/a/e$a;->a:Lcom/hunantv/media/player/subtitle/a/e;

    invoke-static {v2}, Lcom/hunantv/media/player/subtitle/a/e;->a(Lcom/hunantv/media/player/subtitle/a/e;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/hunantv/media/player/subtitle/a/e$a;->a:Lcom/hunantv/media/player/subtitle/a/e;

    invoke-static {v2}, Lcom/hunantv/media/player/subtitle/a/e;->a(Lcom/hunantv/media/player/subtitle/a/e;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x26

    if-ne v2, v3, :cond_0

    const-string v2, "&amp;"

    const-string v3, "&"

    invoke-direct {p0, v2, v3, v1}, Lcom/hunantv/media/player/subtitle/a/e$a;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "&lt;"

    const-string v3, "<"

    invoke-direct {p0, v2, v3, v1}, Lcom/hunantv/media/player/subtitle/a/e$a;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "&gt;"

    const-string v3, ">"

    invoke-direct {p0, v2, v3, v1}, Lcom/hunantv/media/player/subtitle/a/e$a;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "&lrm;"

    const-string v3, "\u200e"

    invoke-direct {p0, v2, v3, v1}, Lcom/hunantv/media/player/subtitle/a/e$a;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "&rlm;"

    const-string v3, "\u200f"

    invoke-direct {p0, v2, v3, v1}, Lcom/hunantv/media/player/subtitle/a/e$a;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "&nbsp;"

    const-string v3, "\u00a0"

    invoke-direct {p0, v2, v3, v1}, Lcom/hunantv/media/player/subtitle/a/e$a;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/hunantv/media/player/subtitle/a/e$a;->a:Lcom/hunantv/media/player/subtitle/a/e;

    invoke-static {v2}, Lcom/hunantv/media/player/subtitle/a/e;->a(Lcom/hunantv/media/player/subtitle/a/e;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/e$a;->a:Lcom/hunantv/media/player/subtitle/a/e;

    invoke-static {v0}, Lcom/hunantv/media/player/subtitle/a/e;->c(Lcom/hunantv/media/player/subtitle/a/e;)Lcom/hunantv/media/player/subtitle/a/e$d;

    move-result-object v2

    invoke-interface {v2}, Lcom/hunantv/media/player/subtitle/a/e$d;->a()Lcom/hunantv/media/player/subtitle/a/e$d;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hunantv/media/player/subtitle/a/e;->a(Lcom/hunantv/media/player/subtitle/a/e;Lcom/hunantv/media/player/subtitle/a/e$d;)Lcom/hunantv/media/player/subtitle/a/e$d;

    move v0, v1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/a/e$a;->b:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/player/subtitle/a/e$a;->a:Lcom/hunantv/media/player/subtitle/a/e;

    invoke-static {v2}, Lcom/hunantv/media/player/subtitle/a/e;->a(Lcom/hunantv/media/player/subtitle/a/e;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/hunantv/media/player/subtitle/a/e$a;->a:Lcom/hunantv/media/player/subtitle/a/e;

    invoke-static {v3}, Lcom/hunantv/media/player/subtitle/a/e;->b(Lcom/hunantv/media/player/subtitle/a/e;)I

    move-result v3

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/a/e$a;->a:Lcom/hunantv/media/player/subtitle/a/e;

    invoke-static {v1}, Lcom/hunantv/media/player/subtitle/a/e;->d(Lcom/hunantv/media/player/subtitle/a/e;)Lcom/hunantv/media/player/subtitle/a/e$b;

    move-result-object v1

    iget-object v2, p0, Lcom/hunantv/media/player/subtitle/a/e$a;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/hunantv/media/player/subtitle/a/e$b;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/a/e$a;->b:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/a/e$a;->a:Lcom/hunantv/media/player/subtitle/a/e;

    invoke-static {p0, v0}, Lcom/hunantv/media/player/subtitle/a/e;->a(Lcom/hunantv/media/player/subtitle/a/e;I)I

    return-void
.end method
