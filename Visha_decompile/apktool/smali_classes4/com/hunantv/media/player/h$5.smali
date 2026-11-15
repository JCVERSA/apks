.class Lcom/hunantv/media/player/h$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/d$i;


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

    iput-object p1, p0, Lcom/hunantv/media/player/h$5;->a:Lcom/hunantv/media/player/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hunantv/media/player/d;Ljava/lang/String;II)V
    .locals 2

    iget-object p1, p0, Lcom/hunantv/media/player/h$5;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoopSwitchSourceInfo (event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mCurrentLoopSourceKey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/player/h$5;->a:Lcom/hunantv/media/player/h;

    invoke-static {v1}, Lcom/hunantv/media/player/h;->F(Lcom/hunantv/media/player/h;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p4, :cond_3

    iget-object p1, p0, Lcom/hunantv/media/player/h$5;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->F(Lcom/hunantv/media/player/h;)I

    move-result p1

    if-eq p4, p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    const/4 p2, 0x0

    if-ne p3, p1, :cond_1

    iget-object p1, p0, Lcom/hunantv/media/player/h$5;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1, p2}, Lcom/hunantv/media/player/h;->h(Lcom/hunantv/media/player/h;Z)Z

    :cond_1
    const/4 p1, 0x5

    if-ne p3, p1, :cond_2

    iget-object p1, p0, Lcom/hunantv/media/player/h$5;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->w(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;->onPrepared()V

    :cond_2
    const/16 p1, 0x9

    if-ne p3, p1, :cond_3

    iget-object p1, p0, Lcom/hunantv/media/player/h$5;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->H(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/d$g;

    move-result-object p1

    iget-object p0, p0, Lcom/hunantv/media/player/h$5;->a:Lcom/hunantv/media/player/h;

    invoke-static {p0}, Lcom/hunantv/media/player/h;->B(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/d;

    move-result-object p0

    const/4 p3, 0x3

    invoke-interface {p1, p0, p3, p2}, Lcom/hunantv/media/player/d$g;->a(Lcom/hunantv/media/player/d;II)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public b(Lcom/hunantv/media/player/d;Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public c(Lcom/hunantv/media/player/d;Ljava/lang/String;II)V
    .locals 2

    iget-object p1, p0, Lcom/hunantv/media/player/h$5;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoopSwitchSourceFail (event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mCurrentLoopSourceKey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/player/h$5;->a:Lcom/hunantv/media/player/h;

    invoke-static {v1}, Lcom/hunantv/media/player/h;->F(Lcom/hunantv/media/player/h;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p4, :cond_1

    iget-object p1, p0, Lcom/hunantv/media/player/h$5;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->F(Lcom/hunantv/media/player/h;)I

    move-result p1

    if-eq p4, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/hunantv/media/player/h$5;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->G(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/d$e;

    move-result-object p1

    iget-object p0, p0, Lcom/hunantv/media/player/h$5;->a:Lcom/hunantv/media/player/h;

    invoke-static {p0}, Lcom/hunantv/media/player/h;->B(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/d;

    move-result-object p0

    const p2, 0x61ae4

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    add-int/2addr p3, p2

    const p2, 0x30da4

    invoke-interface {p1, p0, p2, p3}, Lcom/hunantv/media/player/d$e;->a(Lcom/hunantv/media/player/d;II)Z

    :cond_1
    :goto_0
    return-void
.end method
