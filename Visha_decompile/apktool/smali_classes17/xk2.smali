.class public final Lxk2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwk2;


# instance fields
.field public final a:Ll7a;

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lwk2;)V
    .locals 1

    const-string v0, "providedImageLoader"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ll7a;

    invoke-direct {v0, p1}, Ll7a;-><init>(Lwk2;)V

    iput-object v0, p0, Lxk2;->a:Ll7a;

    new-instance p1, Lpk2;

    invoke-direct {p1}, Lpk2;-><init>()V

    invoke-static {p1}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lxk2;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lxk2;->b:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzk2;

    invoke-interface {v0, p1}, Lzk2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public loadImage(Ljava/lang/String;Lrk2;)Ljn5;
    .locals 1

    const-string v0, "imageUrl"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lxk2;->a:Ll7a;

    invoke-virtual {p0, p1}, Lxk2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Ll7a;->loadImage(Ljava/lang/String;Lrk2;)Ljn5;

    move-result-object p0

    return-object p0
.end method

.method public loadImageBytes(Ljava/lang/String;Lrk2;)Ljn5;
    .locals 1

    const-string v0, "imageUrl"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lxk2;->a:Ll7a;

    invoke-virtual {p0, p1}, Lxk2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Ll7a;->loadImageBytes(Ljava/lang/String;Lrk2;)Ljn5;

    move-result-object p0

    return-object p0
.end method
