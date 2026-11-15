.class public abstract Lmxi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqne;


# static fields
.field public static final i:Lxxi;


# instance fields
.field public final b:Ljava/lang/String;

.field public c:Z

.field public d:Z

.field public e:Ljava/nio/ByteBuffer;

.field public f:J

.field public g:J

.field public h:Lrxi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lmxi;

    invoke-static {v0}, Lxxi;->b(Ljava/lang/Class;)Lxxi;

    move-result-object v0

    sput-object v0, Lmxi;->i:Lxxi;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmxi;->g:J

    iput-object p1, p0, Lmxi;->b:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmxi;->d:Z

    iput-boolean p1, p0, Lmxi;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Lrxi;Ljava/nio/ByteBuffer;JLnne;)V
    .locals 2

    invoke-interface {p1}, Lrxi;->zzb()J

    move-result-wide v0

    iput-wide v0, p0, Lmxi;->f:J

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    iput-wide p3, p0, Lmxi;->g:J

    iput-object p1, p0, Lmxi;->h:Lrxi;

    invoke-interface {p1}, Lrxi;->zzb()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-interface {p1, v0, v1}, Lrxi;->c(J)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmxi;->d:Z

    iput-boolean p1, p0, Lmxi;->c:Z

    invoke-virtual {p0}, Lmxi;->d()V

    return-void
.end method

.method public final declared-synchronized b()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lmxi;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :try_start_1
    sget-object v0, Lmxi;->i:Lxxi;

    const-string v1, "mem mapping "

    iget-object v2, p0, Lmxi;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lxxi;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lmxi;->h:Lrxi;

    iget-wide v1, p0, Lmxi;->f:J

    iget-wide v3, p0, Lmxi;->g:J

    invoke-interface {v0, v1, v2, v3, v4}, Lrxi;->j(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lmxi;->e:Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lmxi;->d:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public abstract c(Ljava/nio/ByteBuffer;)V
.end method

.method public final declared-synchronized d()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lmxi;->b()V

    sget-object v0, Lmxi;->i:Lxxi;

    const-string v1, "parsing details of "

    iget-object v2, p0, Lmxi;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lxxi;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lmxi;->e:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmxi;->c:Z

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p0, v0}, Lmxi;->c(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lmxi;->e:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zza()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmxi;->b:Ljava/lang/String;

    return-object p0
.end method
