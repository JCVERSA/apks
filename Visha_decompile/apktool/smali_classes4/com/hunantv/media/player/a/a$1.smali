.class Lcom/hunantv/media/player/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/player/a/a;->a(Ljava/lang/String;Lcom/hunantv/media/player/a/a$b;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hunantv/media/player/a/a;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/a/a$1;->a:Lcom/hunantv/media/player/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hunantv/media/player/a/a$1;->a:Lcom/hunantv/media/player/a/a;

    invoke-static {v0}, Lcom/hunantv/media/player/a/a;->a(Lcom/hunantv/media/player/a/a;)Lcom/hunantv/media/player/a/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/a/a$1;->a:Lcom/hunantv/media/player/a/a;

    invoke-static {v0}, Lcom/hunantv/media/player/a/a;->a(Lcom/hunantv/media/player/a/a;)Lcom/hunantv/media/player/a/a$a;

    move-result-object v0

    iget-object p0, p0, Lcom/hunantv/media/player/a/a$1;->a:Lcom/hunantv/media/player/a/a;

    invoke-interface {v0, p0}, Lcom/hunantv/media/player/a/a$a;->onDnsStart(Lcom/hunantv/media/player/a/a;)V

    :cond_0
    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 2

    .line 2
    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    iget-object v1, p0, Lcom/hunantv/media/player/a/a$1;->a:Lcom/hunantv/media/player/a/a;

    invoke-static {v1}, Lcom/hunantv/media/player/a/a;->b(Lcom/hunantv/media/player/a/a;)I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/a/a$1;->a:Lcom/hunantv/media/player/a/a;

    invoke-static {v0}, Lcom/hunantv/media/player/a/a;->b(Lcom/hunantv/media/player/a/a;)I

    move-result v1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/hunantv/media/player/a/a;->a(Lcom/hunantv/media/player/a/a;[Ljava/lang/String;)[Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/a/a$1;->a:Lcom/hunantv/media/player/a/a;

    invoke-static {v0, p1}, Lcom/hunantv/media/player/a/a;->a(Lcom/hunantv/media/player/a/a;[Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    iget-object p1, p0, Lcom/hunantv/media/player/a/a$1;->a:Lcom/hunantv/media/player/a/a;

    invoke-static {p1}, Lcom/hunantv/media/player/a/a;->a(Lcom/hunantv/media/player/a/a;)Lcom/hunantv/media/player/a/a$a;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/hunantv/media/player/a/a$1;->a:Lcom/hunantv/media/player/a/a;

    invoke-static {p1}, Lcom/hunantv/media/player/a/a;->a(Lcom/hunantv/media/player/a/a;)Lcom/hunantv/media/player/a/a$a;

    move-result-object p1

    iget-object p0, p0, Lcom/hunantv/media/player/a/a$1;->a:Lcom/hunantv/media/player/a/a;

    invoke-static {p0}, Lcom/hunantv/media/player/a/a;->c(Lcom/hunantv/media/player/a/a;)[Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/hunantv/media/player/a/a$a;->onDnsSuc(Lcom/hunantv/media/player/a/a;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/player/a/a$1;->a:Lcom/hunantv/media/player/a/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hunantv/media/player/a/a;->a(Lcom/hunantv/media/player/a/a;[Ljava/lang/String;)[Ljava/lang/String;

    iget-object v0, p0, Lcom/hunantv/media/player/a/a$1;->a:Lcom/hunantv/media/player/a/a;

    invoke-static {v0}, Lcom/hunantv/media/player/a/a;->a(Lcom/hunantv/media/player/a/a;)Lcom/hunantv/media/player/a/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/a/a$1;->a:Lcom/hunantv/media/player/a/a;

    invoke-static {v0}, Lcom/hunantv/media/player/a/a;->a(Lcom/hunantv/media/player/a/a;)Lcom/hunantv/media/player/a/a$a;

    move-result-object v0

    iget-object p0, p0, Lcom/hunantv/media/player/a/a$1;->a:Lcom/hunantv/media/player/a/a;

    invoke-interface {v0, p0}, Lcom/hunantv/media/player/a/a$a;->onDnsFail(Lcom/hunantv/media/player/a/a;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/player/a/a$1;->a:Lcom/hunantv/media/player/a/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hunantv/media/player/a/a;->a(Lcom/hunantv/media/player/a/a;Z)Z

    iget-object v0, p0, Lcom/hunantv/media/player/a/a$1;->a:Lcom/hunantv/media/player/a/a;

    invoke-static {v0}, Lcom/hunantv/media/player/a/a;->a(Lcom/hunantv/media/player/a/a;)Lcom/hunantv/media/player/a/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/a/a$1;->a:Lcom/hunantv/media/player/a/a;

    invoke-static {v0}, Lcom/hunantv/media/player/a/a;->a(Lcom/hunantv/media/player/a/a;)Lcom/hunantv/media/player/a/a$a;

    move-result-object v0

    iget-object p0, p0, Lcom/hunantv/media/player/a/a$1;->a:Lcom/hunantv/media/player/a/a;

    invoke-interface {v0, p0}, Lcom/hunantv/media/player/a/a$a;->onDnsFinish(Lcom/hunantv/media/player/a/a;)V

    :cond_0
    return-void
.end method
