.class Lcom/hunantv/media/player/h$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/player/h;->d(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/hunantv/media/player/h;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/h;II)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/h$16;->c:Lcom/hunantv/media/player/h;

    iput p2, p0, Lcom/hunantv/media/player/h$16;->a:I

    iput p3, p0, Lcom/hunantv/media/player/h$16;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/player/h$16;->c:Lcom/hunantv/media/player/h;

    invoke-static {v0}, Lcom/hunantv/media/player/h;->G(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/d$e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/h$16;->c:Lcom/hunantv/media/player/h;

    invoke-static {v0}, Lcom/hunantv/media/player/h;->G(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/d$e;

    move-result-object v0

    iget-object v1, p0, Lcom/hunantv/media/player/h$16;->c:Lcom/hunantv/media/player/h;

    invoke-static {v1}, Lcom/hunantv/media/player/h;->B(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/d;

    move-result-object v1

    iget v2, p0, Lcom/hunantv/media/player/h$16;->a:I

    iget p0, p0, Lcom/hunantv/media/player/h$16;->b:I

    invoke-interface {v0, v1, v2, p0}, Lcom/hunantv/media/player/d$e;->a(Lcom/hunantv/media/player/d;II)Z

    :cond_0
    return-void
.end method
