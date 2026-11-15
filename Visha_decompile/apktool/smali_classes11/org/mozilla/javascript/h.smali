.class public Lorg/mozilla/javascript/h;
.super Lorg/mozilla/javascript/g;
.source "SourceFile"


# instance fields
.field public final c:Ljava/util/concurrent/locks/StampedLock;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/g;-><init>(I)V

    new-instance p1, Ljava/util/concurrent/locks/StampedLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/StampedLock;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/h;->c:Ljava/util/concurrent/locks/StampedLock;

    return-void
.end method


# virtual methods
.method public addSlot(Lorg/mozilla/javascript/ScriptableObject$Slot;)V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/h;->c:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->writeLock()J

    move-result-wide v0

    :try_start_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/h;->b()V

    iget-object v2, p0, Lorg/mozilla/javascript/g;->b:Lorg/mozilla/javascript/SlotMap;

    invoke-interface {v2, p1}, Lorg/mozilla/javascript/SlotMap;->addSlot(Lorg/mozilla/javascript/ScriptableObject$Slot;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/mozilla/javascript/h;->c:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->unlockWrite(J)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lorg/mozilla/javascript/h;->c:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->unlockWrite(J)V

    throw p1
.end method

.method public b()V
    .locals 0

    invoke-super {p0}, Lorg/mozilla/javascript/g;->b()V

    return-void
.end method

.method public c()I
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/g;->b:Lorg/mozilla/javascript/SlotMap;

    invoke-interface {p0}, Lorg/mozilla/javascript/SlotMap;->size()I

    move-result p0

    return p0
.end method

.method public f()J
    .locals 2

    iget-object p0, p0, Lorg/mozilla/javascript/h;->c:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/StampedLock;->readLock()J

    move-result-wide v0

    return-wide v0
.end method

.method public get(Ljava/lang/Object;ILorg/mozilla/javascript/ScriptableObject$SlotAccess;)Lorg/mozilla/javascript/ScriptableObject$Slot;
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/h;->c:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->writeLock()J

    move-result-wide v0

    :try_start_0
    sget-object v2, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->QUERY:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    if-eq p3, v2, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/javascript/h;->b()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/mozilla/javascript/g;->b:Lorg/mozilla/javascript/SlotMap;

    invoke-interface {v2, p1, p2, p3}, Lorg/mozilla/javascript/SlotMap;->get(Ljava/lang/Object;ILorg/mozilla/javascript/ScriptableObject$SlotAccess;)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/mozilla/javascript/h;->c:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->unlockWrite(J)V

    return-object p1

    :goto_1
    iget-object p0, p0, Lorg/mozilla/javascript/h;->c:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->unlockWrite(J)V

    throw p1
.end method

.method public i(J)V
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/h;->c:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/StampedLock;->unlockRead(J)V

    return-void
.end method

.method public isEmpty()Z
    .locals 4

    iget-object v0, p0, Lorg/mozilla/javascript/h;->c:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->tryOptimisticRead()J

    move-result-wide v0

    iget-object v2, p0, Lorg/mozilla/javascript/g;->b:Lorg/mozilla/javascript/SlotMap;

    invoke-interface {v2}, Lorg/mozilla/javascript/SlotMap;->isEmpty()Z

    move-result v2

    iget-object v3, p0, Lorg/mozilla/javascript/h;->c:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/h;->c:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->readLock()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lorg/mozilla/javascript/g;->b:Lorg/mozilla/javascript/SlotMap;

    invoke-interface {v2}, Lorg/mozilla/javascript/SlotMap;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/mozilla/javascript/h;->c:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->unlockRead(J)V

    return v2

    :catchall_0
    move-exception v2

    iget-object p0, p0, Lorg/mozilla/javascript/h;->c:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->unlockRead(J)V

    throw v2
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/g;->b:Lorg/mozilla/javascript/SlotMap;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public query(Ljava/lang/Object;I)Lorg/mozilla/javascript/ScriptableObject$Slot;
    .locals 4

    iget-object v0, p0, Lorg/mozilla/javascript/h;->c:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->tryOptimisticRead()J

    move-result-wide v0

    iget-object v2, p0, Lorg/mozilla/javascript/g;->b:Lorg/mozilla/javascript/SlotMap;

    invoke-interface {v2, p1, p2}, Lorg/mozilla/javascript/SlotMap;->query(Ljava/lang/Object;I)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object v2

    iget-object v3, p0, Lorg/mozilla/javascript/h;->c:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/h;->c:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->readLock()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lorg/mozilla/javascript/g;->b:Lorg/mozilla/javascript/SlotMap;

    invoke-interface {v2, p1, p2}, Lorg/mozilla/javascript/SlotMap;->query(Ljava/lang/Object;I)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/mozilla/javascript/h;->c:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->unlockRead(J)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lorg/mozilla/javascript/h;->c:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->unlockRead(J)V

    throw p1
.end method

.method public remove(Ljava/lang/Object;I)V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/h;->c:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->writeLock()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lorg/mozilla/javascript/g;->b:Lorg/mozilla/javascript/SlotMap;

    invoke-interface {v2, p1, p2}, Lorg/mozilla/javascript/SlotMap;->remove(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/mozilla/javascript/h;->c:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->unlockWrite(J)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lorg/mozilla/javascript/h;->c:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->unlockWrite(J)V

    throw p1
.end method

.method public size()I
    .locals 4

    iget-object v0, p0, Lorg/mozilla/javascript/h;->c:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->tryOptimisticRead()J

    move-result-wide v0

    iget-object v2, p0, Lorg/mozilla/javascript/g;->b:Lorg/mozilla/javascript/SlotMap;

    invoke-interface {v2}, Lorg/mozilla/javascript/SlotMap;->size()I

    move-result v2

    iget-object v3, p0, Lorg/mozilla/javascript/h;->c:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/h;->c:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->readLock()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lorg/mozilla/javascript/g;->b:Lorg/mozilla/javascript/SlotMap;

    invoke-interface {v2}, Lorg/mozilla/javascript/SlotMap;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/mozilla/javascript/h;->c:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->unlockRead(J)V

    return v2

    :catchall_0
    move-exception v2

    iget-object p0, p0, Lorg/mozilla/javascript/h;->c:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->unlockRead(J)V

    throw v2
.end method
