.class final Lkl/c$d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkl/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkl/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private final a:Lkl/c$a;

.field private final b:Lkl/c$c;

.field private final c:Lkl/f;


# direct methods
.method constructor <init>(Lkl/f;Lkl/c$a;Lkl/c$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkl/c$d;->c:Lkl/f;

    .line 5
    .line 6
    iput-object p2, p0, Lkl/c$d;->a:Lkl/c$a;

    .line 7
    .line 8
    iput-object p3, p0, Lkl/c$d;->b:Lkl/c$c;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lkl/c$d;->c:Lkl/f;

    .line 2
    .line 3
    invoke-interface {v0}, Lkl/f;->acquire()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lkl/c$d;->a:Lkl/c$a;

    .line 10
    .line 11
    invoke-interface {v0}, Lkl/c$a;->create()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x2

    .line 16
    const-string v2, "FactoryPools"

    .line 17
    .line 18
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v3, "Created new "

    .line 30
    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_0
    instance-of v1, v0, Lkl/c$b;

    .line 49
    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    move-object v1, v0

    .line 53
    check-cast v1, Lkl/c$b;

    .line 54
    .line 55
    invoke-interface {v1}, Lkl/c$b;->getVerifier()Lfl/k;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const/4 v2, 0x0

    .line 60
    invoke-virtual {v1, v2}, Lfl/k;->a(Z)V

    .line 61
    .line 62
    .line 63
    :cond_1
    return-object v0
.end method

.method public release(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lkl/c$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lkl/c$b;

    .line 7
    .line 8
    invoke-interface {v0}, Lkl/c$b;->getVerifier()Lfl/k;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lfl/k;->a(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lkl/c$d;->b:Lkl/c$c;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lkl/c$c;->reset(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lkl/c$d;->c:Lkl/f;

    .line 22
    .line 23
    invoke-interface {v0, p1}, Lkl/f;->release(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1
.end method
