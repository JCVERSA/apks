.class Lfreemarker/template/SimpleSequence$SynchronizedSequence;
.super Lfreemarker/template/SimpleSequence;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/SimpleSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SynchronizedSequence"
.end annotation


# instance fields
.field private final synthetic this$0:Lfreemarker/template/SimpleSequence;


# direct methods
.method public constructor <init>(Lfreemarker/template/SimpleSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/template/SimpleSequence$SynchronizedSequence;->this$0:Lfreemarker/template/SimpleSequence;

    invoke-direct {p0}, Lfreemarker/template/SimpleSequence;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/template/SimpleSequence;Lqm9;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lfreemarker/template/SimpleSequence$SynchronizedSequence;-><init>(Lfreemarker/template/SimpleSequence;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lfreemarker/template/SimpleSequence$SynchronizedSequence;->this$0:Lfreemarker/template/SimpleSequence;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lfreemarker/template/SimpleSequence$SynchronizedSequence;->this$0:Lfreemarker/template/SimpleSequence;

    invoke-virtual {p0, p1}, Lfreemarker/template/SimpleSequence;->add(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public get(I)Lzfa;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    iget-object v0, p0, Lfreemarker/template/SimpleSequence$SynchronizedSequence;->this$0:Lfreemarker/template/SimpleSequence;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lfreemarker/template/SimpleSequence$SynchronizedSequence;->this$0:Lfreemarker/template/SimpleSequence;

    invoke-virtual {p0, p1}, Lfreemarker/template/SimpleSequence;->get(I)Lzfa;

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

.method public size()I
    .locals 1

    iget-object v0, p0, Lfreemarker/template/SimpleSequence$SynchronizedSequence;->this$0:Lfreemarker/template/SimpleSequence;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lfreemarker/template/SimpleSequence$SynchronizedSequence;->this$0:Lfreemarker/template/SimpleSequence;

    invoke-virtual {p0}, Lfreemarker/template/SimpleSequence;->size()I

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

.method public toList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    iget-object v0, p0, Lfreemarker/template/SimpleSequence$SynchronizedSequence;->this$0:Lfreemarker/template/SimpleSequence;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lfreemarker/template/SimpleSequence$SynchronizedSequence;->this$0:Lfreemarker/template/SimpleSequence;

    invoke-virtual {p0}, Lfreemarker/template/SimpleSequence;->toList()Ljava/util/List;

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
