.class public abstract Lqxi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/io/Closeable;
.implements Lrne;


# static fields
.field public static final h:Lqne;


# instance fields
.field public b:Lnne;

.field public c:Lrxi;

.field public d:Lqne;

.field public e:J

.field public f:J

.field public final g:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lpxi;

    const-string v1, "eof "

    invoke-direct {v0, v1}, Lpxi;-><init>(Ljava/lang/String;)V

    sput-object v0, Lqxi;->h:Lqne;

    const-class v0, Lqxi;

    invoke-static {v0}, Lxxi;->b(Ljava/lang/Class;)Lxxi;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqxi;->d:Lqne;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lqxi;->e:J

    iput-wide v0, p0, Lqxi;->f:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lqxi;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final b()Lqne;
    .locals 5

    iget-object v0, p0, Lqxi;->d:Lqne;

    if-eqz v0, :cond_1

    sget-object v1, Lqxi;->h:Lqne;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lqxi;->d:Lqne;

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lqxi;->c:Lrxi;

    if-eqz v0, :cond_2

    iget-wide v1, p0, Lqxi;->e:J

    iget-wide v3, p0, Lqxi;->f:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lqxi;->c:Lrxi;

    iget-wide v2, p0, Lqxi;->e:J

    invoke-interface {v1, v2, v3}, Lrxi;->c(J)V

    iget-object v1, p0, Lqxi;->b:Lnne;

    iget-object v2, p0, Lqxi;->c:Lrxi;

    invoke-interface {v1, v2, p0}, Lnne;->a(Lrxi;Lrne;)Lqne;

    move-result-object v1

    iget-object v2, p0, Lqxi;->c:Lrxi;

    invoke-interface {v2}, Lrxi;->zzb()J

    move-result-wide v2

    iput-wide v2, p0, Lqxi;->e:J

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :catch_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_2
    sget-object v0, Lqxi;->h:Lqne;

    iput-object v0, p0, Lqxi;->d:Lqne;

    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public final d()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lqxi;->c:Lrxi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqxi;->d:Lqne;

    sget-object v1, Lqxi;->h:Lqne;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lqxi;->g:Ljava/util/List;

    new-instance v1, Lwxi;

    invoke-direct {v1, v0, p0}, Lwxi;-><init>(Ljava/util/List;Ljava/util/Iterator;)V

    return-object v1

    :cond_0
    iget-object p0, p0, Lqxi;->g:Ljava/util/List;

    return-object p0
.end method

.method public final e(Lrxi;JLnne;)V
    .locals 2

    iput-object p1, p0, Lqxi;->c:Lrxi;

    invoke-interface {p1}, Lrxi;->zzb()J

    move-result-wide v0

    iput-wide v0, p0, Lqxi;->e:J

    invoke-interface {p1}, Lrxi;->zzb()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-interface {p1, v0, v1}, Lrxi;->c(J)V

    invoke-interface {p1}, Lrxi;->zzb()J

    move-result-wide p1

    iput-wide p1, p0, Lqxi;->f:J

    iput-object p4, p0, Lqxi;->b:Lnne;

    return-void
.end method

.method public final hasNext()Z
    .locals 3

    iget-object v0, p0, Lqxi;->d:Lqne;

    sget-object v1, Lqxi;->h:Lqne;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lqxi;->b()Lqne;

    move-result-object v0

    iput-object v0, p0, Lqxi;->d:Lqne;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    sget-object v0, Lqxi;->h:Lqne;

    iput-object v0, p0, Lqxi;->d:Lqne;

    return v2
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lqxi;->b()Lqne;

    move-result-object p0

    return-object p0
.end method

.method public final remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lqxi;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    if-lez v1, :cond_0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqne;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
