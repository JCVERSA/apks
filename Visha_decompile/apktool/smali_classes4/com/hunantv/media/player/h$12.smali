.class Lcom/hunantv/media/player/h$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/d$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hunantv/media/player/h;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/h;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/h$12;->a:Lcom/hunantv/media/player/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hunantv/media/player/d;II)Z
    .locals 2

    const p1, 0x186a3

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Lcom/hunantv/media/player/h$12;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->c(Lcom/hunantv/media/player/h;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/hunantv/media/player/h$12;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->c(Lcom/hunantv/media/player/h;)I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/hunantv/media/player/h$12;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->c(Lcom/hunantv/media/player/h;)I

    move-result p1

    iget-object p0, p0, Lcom/hunantv/media/player/h$12;->a:Lcom/hunantv/media/player/h;

    if-ne p1, v0, :cond_1

    invoke-static {p0}, Lcom/hunantv/media/player/h;->d(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/hunantv/media/player/h;->a(Ljava/lang/String;II)Z

    move-result p0

    return p0

    :cond_1
    invoke-static {p0}, Lcom/hunantv/media/player/h;->d(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/player/h;Ljava/lang/String;II)Z

    move-result p0

    return p0

    :cond_2
    iget-object p1, p0, Lcom/hunantv/media/player/h$12;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------chodison----onError get current speed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/player/h$12;->a:Lcom/hunantv/media/player/h;

    invoke-virtual {v1}, Lcom/hunantv/media/player/h;->w()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/player/h$12;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->e(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/hunantv/media/player/h$12;->a:Lcom/hunantv/media/player/h;

    invoke-static {p0}, Lcom/hunantv/media/player/h;->e(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    move-result p0

    return p0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method
