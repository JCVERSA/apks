.class public final Lh6d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcld;


# static fields
.field public static e:Ljava/io/FilenameFilter;


# instance fields
.field public b:Ljava/io/File;

.field public c:Ljava/io/File;

.field public d:Llq3;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lh6d;->c:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lh6d;->b:Ljava/io/File;

    return-void
.end method

.method public static b()Ljava/io/FilenameFilter;
    .locals 2

    sget-object v0, Lh6d;->e:Ljava/io/FilenameFilter;

    if-nez v0, :cond_0

    new-instance v0, Lg9d;

    const-string v1, ".msg"

    invoke-direct {v0, v1}, Lg9d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lh6d;->e:Ljava/io/FilenameFilter;

    :cond_0
    sget-object v0, Lh6d;->e:Ljava/io/FilenameFilter;

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lh6d;->e()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lh6d;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lh6d;->c:Ljava/io/File;

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d()V
    .locals 0

    iget-object p0, p0, Lh6d;->c:Ljava/io/File;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/mq/mgmi/client/message/q;

    invoke-direct {p0}, Lcom/mq/mgmi/client/message/q;-><init>()V

    throw p0
.end method

.method public final e()[Ljava/io/File;
    .locals 1

    invoke-virtual {p0}, Lh6d;->d()V

    iget-object p0, p0, Lh6d;->c:Ljava/io/File;

    invoke-static {}, Lh6d;->b()Ljava/io/FilenameFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/mq/mgmi/client/message/q;

    invoke-direct {p0}, Lcom/mq/mgmi/client/message/q;-><init>()V

    throw p0
.end method
