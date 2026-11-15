.class public Lorg/mvel2/util/g;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:Lorg/mvel2/util/StackElement;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/mvel2/util/g;->b:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/mvel2/util/g;->b:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lorg/mvel2/util/g;->b:I

    .line 6
    .line 7
    iget-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    :goto_0
    iget-object v2, v0, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    move-object v0, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v2, Lorg/mvel2/util/StackElement;

    .line 19
    .line 20
    invoke-direct {v2, v1, p1}, Lorg/mvel2/util/StackElement;-><init>(Lorg/mvel2/util/StackElement;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iput-object v2, v0, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    new-instance v0, Lorg/mvel2/util/StackElement;

    .line 27
    .line 28
    invoke-direct {v0, v1, p1}, Lorg/mvel2/util/StackElement;-><init>(Lorg/mvel2/util/StackElement;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 32
    .line 33
    :goto_1
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/mvel2/util/g;->b:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 6
    .line 7
    return-void
.end method

.method public c(Lorg/mvel2/util/g;)V
    .locals 4

    .line 1
    new-instance v0, Lorg/mvel2/util/StackElement;

    .line 2
    .line 3
    new-instance v1, Lorg/mvel2/util/StackElement;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 6
    .line 7
    iget-object v3, p1, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 8
    .line 9
    iget-object v3, v3, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {v1, v2, v3}, Lorg/mvel2/util/StackElement;-><init>(Lorg/mvel2/util/StackElement;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p1, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 15
    .line 16
    iget-object v2, v2, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    .line 17
    .line 18
    iget-object v2, v2, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v0, v1, v2}, Lorg/mvel2/util/StackElement;-><init>(Lorg/mvel2/util/StackElement;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 24
    .line 25
    iget-object v0, p1, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 26
    .line 27
    iget-object v0, v0, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    .line 28
    .line 29
    iget-object v0, v0, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    .line 30
    .line 31
    iput-object v0, p1, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 32
    .line 33
    iget v0, p0, Lorg/mvel2/util/g;->b:I

    .line 34
    .line 35
    add-int/lit8 v0, v0, 0x2

    .line 36
    .line 37
    iput v0, p0, Lorg/mvel2/util/g;->b:I

    .line 38
    .line 39
    iget v0, p1, Lorg/mvel2/util/g;->b:I

    .line 40
    .line 41
    add-int/lit8 v0, v0, -0x2

    .line 42
    .line 43
    iput v0, p1, Lorg/mvel2/util/g;->b:I

    .line 44
    .line 45
    return-void
.end method

.method public d(Lorg/mvel2/util/g;)V
    .locals 4

    .line 1
    new-instance v0, Lorg/mvel2/util/StackElement;

    .line 2
    .line 3
    new-instance v1, Lorg/mvel2/util/StackElement;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 6
    .line 7
    iget-object v3, p1, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 8
    .line 9
    iget-object v3, v3, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    .line 10
    .line 11
    iget-object v3, v3, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v1, v2, v3}, Lorg/mvel2/util/StackElement;-><init>(Lorg/mvel2/util/StackElement;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v2, p1, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 17
    .line 18
    iget-object v2, v2, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v0, v1, v2}, Lorg/mvel2/util/StackElement;-><init>(Lorg/mvel2/util/StackElement;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 24
    .line 25
    iget-object v0, p1, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 26
    .line 27
    iget-object v0, v0, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    .line 28
    .line 29
    iget-object v0, v0, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    .line 30
    .line 31
    iput-object v0, p1, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 32
    .line 33
    iget v0, p0, Lorg/mvel2/util/g;->b:I

    .line 34
    .line 35
    add-int/lit8 v0, v0, 0x2

    .line 36
    .line 37
    iput v0, p0, Lorg/mvel2/util/g;->b:I

    .line 38
    .line 39
    iget v0, p1, Lorg/mvel2/util/g;->b:I

    .line 40
    .line 41
    add-int/lit8 v0, v0, -0x2

    .line 42
    .line 43
    iput v0, p1, Lorg/mvel2/util/g;->b:I

    .line 44
    .line 45
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget v0, p0, Lorg/mvel2/util/g;->b:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    iput v0, p0, Lorg/mvel2/util/g;->b:I

    .line 8
    .line 9
    iget-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 10
    .line 11
    iget-object v0, v0, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    .line 12
    .line 13
    iput-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    iget v0, p0, Lorg/mvel2/util/g;->b:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lorg/mvel2/util/g;->b:I

    .line 6
    .line 7
    new-instance v0, Lorg/mvel2/util/StackElement;

    .line 8
    .line 9
    iget-object v1, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 10
    .line 11
    iget-object v2, v1, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Lorg/mvel2/util/StackElement;-><init>(Lorg/mvel2/util/StackElement;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 17
    .line 18
    return-void
.end method

.method public g()Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/mvel2/util/g;->b:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public h()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/mvel2/util/g;->b:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-le v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    return v1
.end method

.method public i()V
    .locals 5

    .line 1
    new-instance v0, Lorg/mvel2/util/StackElement;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 4
    .line 5
    iget-object v2, v1, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    .line 6
    .line 7
    iget-object v2, v2, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    .line 8
    .line 9
    iget-object v3, v2, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    .line 10
    .line 11
    iget-object v2, v2, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v1, v1, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v4, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 22
    .line 23
    iget-object v4, v4, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    .line 24
    .line 25
    iget-object v4, v4, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {v2, v1, v4}, La00/a;->g(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-direct {v0, v3, v1}, Lorg/mvel2/util/StackElement;-><init>(Lorg/mvel2/util/StackElement;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 35
    .line 36
    iget v0, p0, Lorg/mvel2/util/g;->b:I

    .line 37
    .line 38
    add-int/lit8 v0, v0, -0x2

    .line 39
    .line 40
    iput v0, p0, Lorg/mvel2/util/g;->b:I

    .line 41
    .line 42
    return-void
.end method

.method public j(I)V
    .locals 4

    .line 1
    new-instance v0, Lorg/mvel2/util/StackElement;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 4
    .line 5
    iget-object v2, v1, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    .line 6
    .line 7
    iget-object v3, v2, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    .line 8
    .line 9
    iget-object v2, v2, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v1, v1, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-static {v2, p1, v1}, La00/a;->g(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {v0, v3, p1}, Lorg/mvel2/util/StackElement;-><init>(Lorg/mvel2/util/StackElement;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 21
    .line 22
    iget p1, p0, Lorg/mvel2/util/g;->b:I

    .line 23
    .line 24
    add-int/lit8 p1, p1, -0x1

    .line 25
    .line 26
    iput p1, p0, Lorg/mvel2/util/g;->b:I

    .line 27
    .line 28
    return-void
.end method

.method public k()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lorg/mvel2/util/g;->b:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 8
    .line 9
    iget-object v0, v0, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;

    .line 10
    .line 11
    return-object v0
.end method

.method public l()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    .line 4
    .line 5
    iget-object v0, v0, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;

    .line 6
    .line 7
    return-object v0
.end method

.method public m()Ljava/lang/Boolean;
    .locals 3

    .line 1
    iget v0, p0, Lorg/mvel2/util/g;->b:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 8
    .line 9
    iget-object v0, v0, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;

    .line 10
    .line 11
    instance-of v1, v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    check-cast v0, Ljava/lang/Boolean;

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_1
    new-instance v0, Lorg/mvel2/ScriptRuntimeException;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "expected Boolean; but found: "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 31
    .line 32
    iget-object v2, v2, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;

    .line 33
    .line 34
    if-nez v2, :cond_2

    .line 35
    .line 36
    const-string v2, "null"

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-direct {v0, v1}, Lorg/mvel2/ScriptRuntimeException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0
.end method

.method public n()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/mvel2/util/g;->b:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :try_start_0
    iput v0, p0, Lorg/mvel2/util/g;->b:I

    .line 10
    .line 11
    iget-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 12
    .line 13
    iget-object v1, v0, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    iget-object v0, v0, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    .line 16
    .line 17
    iput-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 18
    .line 19
    return-object v1

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    iget-object v1, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 22
    .line 23
    iget-object v1, v1, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    .line 24
    .line 25
    iput-object v1, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 26
    .line 27
    throw v0
.end method

.method public o()Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    iget v0, p0, Lorg/mvel2/util/g;->b:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lorg/mvel2/util/g;->b:I

    .line 6
    .line 7
    iget-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 8
    .line 9
    iget-object v1, v0, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    iget-object v0, v0, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    .line 12
    .line 13
    iget-object v0, v0, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    .line 14
    .line 15
    iput-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 16
    .line 17
    return-object v1

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    iget-object v1, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 20
    .line 21
    iget-object v1, v1, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    .line 22
    .line 23
    iget-object v1, v1, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    .line 24
    .line 25
    iput-object v1, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 26
    .line 27
    throw v0
.end method

.method public p()Ljava/lang/Boolean;
    .locals 3

    .line 1
    iget v0, p0, Lorg/mvel2/util/g;->b:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, -0x1

    .line 4
    .line 5
    iput v1, p0, Lorg/mvel2/util/g;->b:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 12
    .line 13
    iget-object v1, v0, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;

    .line 14
    .line 15
    instance-of v2, v1, Ljava/lang/Boolean;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    check-cast v1, Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    iget-object v0, v0, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    .line 22
    .line 23
    iput-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 24
    .line 25
    return-object v1

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :try_start_1
    new-instance v0, Lorg/mvel2/ScriptRuntimeException;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "expected Boolean; but found: "

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 41
    .line 42
    iget-object v2, v2, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;

    .line 43
    .line 44
    if-nez v2, :cond_2

    .line 45
    .line 46
    const-string v2, "null"

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-direct {v0, v1}, Lorg/mvel2/ScriptRuntimeException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :goto_1
    iget-object v1, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 69
    .line 70
    iget-object v1, v1, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    .line 71
    .line 72
    iput-object v1, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 73
    .line 74
    throw v0
.end method

.method public q(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/mvel2/util/g;->b:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lorg/mvel2/util/g;->b:I

    .line 6
    .line 7
    new-instance v0, Lorg/mvel2/util/StackElement;

    .line 8
    .line 9
    iget-object v1, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 10
    .line 11
    invoke-direct {v0, v1, p1}, Lorg/mvel2/util/StackElement;-><init>(Lorg/mvel2/util/StackElement;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 15
    .line 16
    return-void
.end method

.method public r(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/mvel2/util/g;->b:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lorg/mvel2/util/g;->b:I

    .line 6
    .line 7
    new-instance v0, Lorg/mvel2/util/StackElement;

    .line 8
    .line 9
    new-instance v1, Lorg/mvel2/util/StackElement;

    .line 10
    .line 11
    iget-object v2, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 12
    .line 13
    invoke-direct {v1, v2, p1}, Lorg/mvel2/util/StackElement;-><init>(Lorg/mvel2/util/StackElement;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1, p2}, Lorg/mvel2/util/StackElement;-><init>(Lorg/mvel2/util/StackElement;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 20
    .line 21
    return-void
.end method

.method public s(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lorg/mvel2/util/g;->b:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x3

    .line 4
    .line 5
    iput v0, p0, Lorg/mvel2/util/g;->b:I

    .line 6
    .line 7
    new-instance v0, Lorg/mvel2/util/StackElement;

    .line 8
    .line 9
    new-instance v1, Lorg/mvel2/util/StackElement;

    .line 10
    .line 11
    new-instance v2, Lorg/mvel2/util/StackElement;

    .line 12
    .line 13
    iget-object v3, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 14
    .line 15
    invoke-direct {v2, v3, p1}, Lorg/mvel2/util/StackElement;-><init>(Lorg/mvel2/util/StackElement;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v2, p2}, Lorg/mvel2/util/StackElement;-><init>(Lorg/mvel2/util/StackElement;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1, p3}, Lorg/mvel2/util/StackElement;-><init>(Lorg/mvel2/util/StackElement;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 25
    .line 26
    return-void
.end method

.method public t()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/mvel2/util/g;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "<EMPTY>"

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "["

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v2, v0, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v2, v0, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    const-string v2, ", "

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    :cond_2
    iget-object v0, v0, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    const-string v0, "]"

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0
.end method

.method public u()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    .line 4
    .line 5
    iget-object v2, v1, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    .line 6
    .line 7
    iput-object v0, v1, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    .line 8
    .line 9
    iput-object v1, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 10
    .line 11
    iput-object v2, v0, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    .line 12
    .line 13
    return-void
.end method

.method public v()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    .line 4
    .line 5
    iget-object v2, v1, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    .line 6
    .line 7
    iput-object v0, v1, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    .line 8
    .line 9
    iget-object v3, v2, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    .line 10
    .line 11
    iput-object v3, v0, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    .line 12
    .line 13
    iput-object v2, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 14
    .line 15
    iput-object v1, v2, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    .line 16
    .line 17
    return-void
.end method

.method public w()V
    .locals 5

    .line 1
    new-instance v0, Lorg/mvel2/util/StackElement;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 4
    .line 5
    iget-object v1, v1, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    .line 6
    .line 7
    iget-object v2, v1, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    .line 8
    .line 9
    iget-object v3, v2, Lorg/mvel2/util/StackElement;->next:Lorg/mvel2/util/StackElement;

    .line 10
    .line 11
    iget-object v2, v2, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v1, v1, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v4, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 22
    .line 23
    iget-object v4, v4, Lorg/mvel2/util/StackElement;->value:Ljava/lang/Object;

    .line 24
    .line 25
    invoke-static {v2, v1, v4}, La00/a;->g(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v0, v3, v1}, Lorg/mvel2/util/StackElement;-><init>(Lorg/mvel2/util/StackElement;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lorg/mvel2/util/g;->a:Lorg/mvel2/util/StackElement;

    .line 33
    .line 34
    iget v0, p0, Lorg/mvel2/util/g;->b:I

    .line 35
    .line 36
    add-int/lit8 v0, v0, -0x2

    .line 37
    .line 38
    iput v0, p0, Lorg/mvel2/util/g;->b:I

    .line 39
    .line 40
    return-void
.end method
