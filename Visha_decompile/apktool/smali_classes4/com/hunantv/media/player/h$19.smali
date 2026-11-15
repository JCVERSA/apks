.class Lcom/hunantv/media/player/h$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/d$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;)V
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

    iput-object p1, p0, Lcom/hunantv/media/player/h$19;->a:Lcom/hunantv/media/player/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hunantv/media/player/d;)V
    .locals 1

    iget-object p1, p0, Lcom/hunantv/media/player/h$19;->a:Lcom/hunantv/media/player/h;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/hunantv/media/player/h;->g(Lcom/hunantv/media/player/h;Z)Z

    iget-object p1, p0, Lcom/hunantv/media/player/h$19;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->v(Lcom/hunantv/media/player/h;)I

    move-result p1

    if-lez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/hunantv/media/player/h$19;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->v(Lcom/hunantv/media/player/h;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/hunantv/media/player/h;->a(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object p1, p0, Lcom/hunantv/media/player/h$19;->a:Lcom/hunantv/media/player/h;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/hunantv/media/player/h;->c(Lcom/hunantv/media/player/h;I)I

    iget-object p1, p0, Lcom/hunantv/media/player/h$19;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->w(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/hunantv/media/player/h$19;->a:Lcom/hunantv/media/player/h;

    invoke-static {p0}, Lcom/hunantv/media/player/h;->w(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;->onPrepared()V

    :cond_1
    return-void
.end method
