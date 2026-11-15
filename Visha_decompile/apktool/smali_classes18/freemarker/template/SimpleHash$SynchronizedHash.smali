.class Lfreemarker/template/SimpleHash$SynchronizedHash;
.super Lfreemarker/template/SimpleHash;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/SimpleHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SynchronizedHash"
.end annotation


# instance fields
.field private final synthetic this$0:Lfreemarker/template/SimpleHash;


# direct methods
.method public constructor <init>(Lfreemarker/template/SimpleHash;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/template/SimpleHash$SynchronizedHash;->this$0:Lfreemarker/template/SimpleHash;

    invoke-direct {p0}, Lfreemarker/template/SimpleHash;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/template/SimpleHash;Lcm9;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lfreemarker/template/SimpleHash$SynchronizedHash;-><init>(Lfreemarker/template/SimpleHash;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lzfa;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    iget-object v0, p0, Lfreemarker/template/SimpleHash$SynchronizedHash;->this$0:Lfreemarker/template/SimpleHash;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lfreemarker/template/SimpleHash$SynchronizedHash;->this$0:Lfreemarker/template/SimpleHash;

    invoke-virtual {p0, p1}, Lfreemarker/template/SimpleHash;->get(Ljava/lang/String;)Lzfa;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lfreemarker/template/SimpleHash$SynchronizedHash;->this$0:Lfreemarker/template/SimpleHash;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lfreemarker/template/SimpleHash$SynchronizedHash;->this$0:Lfreemarker/template/SimpleHash;

    invoke-virtual {p0}, Lfreemarker/template/SimpleHash;->isEmpty()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public keys()Lbfa;
    .locals 1

    iget-object v0, p0, Lfreemarker/template/SimpleHash$SynchronizedHash;->this$0:Lfreemarker/template/SimpleHash;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lfreemarker/template/SimpleHash$SynchronizedHash;->this$0:Lfreemarker/template/SimpleHash;

    invoke-virtual {p0}, Lfreemarker/template/SimpleHash;->keys()Lbfa;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lfreemarker/template/SimpleHash$SynchronizedHash;->this$0:Lfreemarker/template/SimpleHash;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lfreemarker/template/SimpleHash$SynchronizedHash;->this$0:Lfreemarker/template/SimpleHash;

    invoke-virtual {p0, p1, p2}, Lfreemarker/template/SimpleHash;->put(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lfreemarker/template/SimpleHash$SynchronizedHash;->this$0:Lfreemarker/template/SimpleHash;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lfreemarker/template/SimpleHash$SynchronizedHash;->this$0:Lfreemarker/template/SimpleHash;

    invoke-virtual {p0, p1}, Lfreemarker/template/SimpleHash;->remove(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lfreemarker/template/SimpleHash$SynchronizedHash;->this$0:Lfreemarker/template/SimpleHash;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lfreemarker/template/SimpleHash$SynchronizedHash;->this$0:Lfreemarker/template/SimpleHash;

    invoke-virtual {p0}, Lfreemarker/template/SimpleHash;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public toMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    iget-object v0, p0, Lfreemarker/template/SimpleHash$SynchronizedHash;->this$0:Lfreemarker/template/SimpleHash;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lfreemarker/template/SimpleHash$SynchronizedHash;->this$0:Lfreemarker/template/SimpleHash;

    invoke-virtual {p0}, Lfreemarker/template/SimpleHash;->toMap()Ljava/util/Map;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public values()Lbfa;
    .locals 1

    iget-object v0, p0, Lfreemarker/template/SimpleHash$SynchronizedHash;->this$0:Lfreemarker/template/SimpleHash;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lfreemarker/template/SimpleHash$SynchronizedHash;->this$0:Lfreemarker/template/SimpleHash;

    invoke-virtual {p0}, Lfreemarker/template/SimpleHash;->values()Lbfa;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
