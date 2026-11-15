.class public final Lmfd$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmfd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:Lmfd$d;

.field public final b:[Z

.field public c:Z

.field public final synthetic d:Lmfd;


# direct methods
.method public synthetic constructor <init>(Lmfd;Lmfd$d;Lmfd$a;)V
    .locals 0

    iput-object p1, p0, Lmfd$c;->d:Lmfd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmfd$c;->a:Lmfd$d;

    invoke-static {p2}, Lmfd$d;->o(Lmfd$d;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lmfd;->H(Lmfd;)I

    move-result p1

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lmfd$c;->b:[Z

    return-void
.end method

.method public static synthetic a(Lmfd$c;)Lmfd$d;
    .locals 0

    iget-object p0, p0, Lmfd$c;->a:Lmfd$d;

    return-object p0
.end method

.method public static synthetic e(Lmfd$c;)[Z
    .locals 0

    iget-object p0, p0, Lmfd$c;->b:[Z

    return-object p0
.end method


# virtual methods
.method public b(I)Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lmfd$c;->d:Lmfd;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lmfd$c;->a:Lmfd$d;

    invoke-static {v1}, Lmfd$d;->p(Lmfd$d;)Lmfd$c;

    move-result-object v1

    if-ne v1, p0, :cond_2

    iget-object v1, p0, Lmfd$c;->a:Lmfd$d;

    invoke-static {v1}, Lmfd$d;->o(Lmfd$d;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmfd$c;->b:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lmfd$c;->a:Lmfd$d;

    iget-object v1, v1, Lmfd$d;->d:[Ljava/io/File;

    aget-object p1, v1, p1

    iget-object v1, p0, Lmfd$c;->d:Lmfd;

    invoke-static {v1}, Lmfd;->K(Lmfd;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lmfd$c;->d:Lmfd;

    invoke-static {p0}, Lmfd;->K(Lmfd;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    monitor-exit v0

    return-object p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lmfd$c;->d:Lmfd;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lmfd;->n(Lmfd;Lmfd$c;Z)V

    return-void
.end method

.method public d()V
    .locals 1

    iget-boolean v0, p0, Lmfd$c;->c:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lmfd$c;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lmfd$c;->d:Lmfd;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lmfd;->n(Lmfd;Lmfd$c;Z)V

    iput-boolean v1, p0, Lmfd$c;->c:Z

    return-void
.end method
