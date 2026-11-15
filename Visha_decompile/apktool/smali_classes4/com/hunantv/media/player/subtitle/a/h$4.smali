.class Lcom/hunantv/media/player/subtitle/a/h$4;
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

    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/a/h$4;->b:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/hunantv/media/player/subtitle/a/h$4;->a:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/h$4;->b:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-static {v0}, Lcom/hunantv/media/player/subtitle/a/h;->g(Lcom/hunantv/media/player/subtitle/a/h;)Lcom/hunantv/media/player/subtitle/a/b;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    :goto_0
    const-string v0, "NOTE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "NOTE "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/h$4;->b:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-static {v0}, Lcom/hunantv/media/player/subtitle/a/h;->h(Lcom/hunantv/media/player/subtitle/a/h;)Lcom/hunantv/media/player/subtitle/a/h$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/subtitle/a/h;->a(Lcom/hunantv/media/player/subtitle/a/h;Lcom/hunantv/media/player/subtitle/a/h$a;)Lcom/hunantv/media/player/subtitle/a/h$a;

    :cond_4
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/h$4;->b:Lcom/hunantv/media/player/subtitle/a/h;

    new-instance v1, Lcom/hunantv/media/player/subtitle/a/b;

    invoke-direct {v1}, Lcom/hunantv/media/player/subtitle/a/b;-><init>()V

    invoke-static {v0, v1}, Lcom/hunantv/media/player/subtitle/a/h;->a(Lcom/hunantv/media/player/subtitle/a/h;Lcom/hunantv/media/player/subtitle/a/b;)Lcom/hunantv/media/player/subtitle/a/b;

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/h$4;->b:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-static {v0}, Lcom/hunantv/media/player/subtitle/a/h;->i(Lcom/hunantv/media/player/subtitle/a/h;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/h$4;->b:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-static {v0}, Lcom/hunantv/media/player/subtitle/a/h;->d(Lcom/hunantv/media/player/subtitle/a/h;)Lcom/hunantv/media/player/subtitle/a/h$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/subtitle/a/h;->a(Lcom/hunantv/media/player/subtitle/a/h;Lcom/hunantv/media/player/subtitle/a/h$a;)Lcom/hunantv/media/player/subtitle/a/h$a;

    const-string v0, "-->"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/a/h$4;->b:Lcom/hunantv/media/player/subtitle/a/h;

    if-eqz v0, :cond_5

    invoke-static {p0}, Lcom/hunantv/media/player/subtitle/a/h;->e(Lcom/hunantv/media/player/subtitle/a/h;)Lcom/hunantv/media/player/subtitle/a/h$a;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/subtitle/a/h$a;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-static {p0}, Lcom/hunantv/media/player/subtitle/a/h;->g(Lcom/hunantv/media/player/subtitle/a/h;)Lcom/hunantv/media/player/subtitle/a/b;

    move-result-object p0

    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/a/b;->f:Ljava/lang/String;

    :goto_1
    return-void
.end method
