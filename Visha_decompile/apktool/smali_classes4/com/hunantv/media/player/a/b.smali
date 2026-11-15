.class public abstract Lcom/hunantv/media/player/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/player/a/b$a;
    }
.end annotation


# instance fields
.field a:Z

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private volatile e:Z

.field private f:Ljava/lang/String;

.field private g:Lcom/hunantv/media/player/a/b$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/player/a/b;->b:I

    iput v0, p0, Lcom/hunantv/media/player/a/b;->d:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/a/b;->e:Z

    return-void
.end method

.method private a([Ljava/lang/String;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/hunantv/media/player/a/b;->g:Lcom/hunantv/media/player/a/b$a;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hunantv/media/player/a/b;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/a/b;->g:Lcom/hunantv/media/player/a/b$a;

    invoke-interface {v0, p1}, Lcom/hunantv/media/player/a/b$a;->a([Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/player/a/b;->g:Lcom/hunantv/media/player/a/b$a;

    invoke-interface {p0}, Lcom/hunantv/media/player/a/b$a;->c()V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/player/a/b;->g:Lcom/hunantv/media/player/a/b$a;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hunantv/media/player/a/b;->e:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/a/b;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " callGetAddressFailed code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hunantv/media/player/a/b;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/a/b;->g:Lcom/hunantv/media/player/a/b$a;

    invoke-interface {v0}, Lcom/hunantv/media/player/a/b$a;->b()V

    iget-object p0, p0, Lcom/hunantv/media/player/a/b;->g:Lcom/hunantv/media/player/a/b$a;

    invoke-interface {p0}, Lcom/hunantv/media/player/a/b$a;->c()V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/a/b;->g:Lcom/hunantv/media/player/a/b$a;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hunantv/media/player/a/b;->e:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/player/a/b;->g:Lcom/hunantv/media/player/a/b$a;

    invoke-interface {p0}, Lcom/hunantv/media/player/a/b$a;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/hunantv/media/player/a/b$a;)Lcom/hunantv/media/player/a/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hunantv/media/player/a/b;->g:Lcom/hunantv/media/player/a/b$a;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/hunantv/media/player/a/b;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/hunantv/media/player/a/b;->f:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/hunantv/media/player/a/b;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/hunantv/media/player/a/b;->a:Z

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a(I)V
    .locals 2

    .line 5
    iget v0, p0, Lcom/hunantv/media/player/a/b;->b:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/a/b;->b()I

    move-result v0

    invoke-virtual {p0}, Lcom/hunantv/media/player/a/b;->d()I

    move-result v1

    mul-int/lit16 v1, v1, 0x2710

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/hunantv/media/player/a/b;->b:I

    :cond_0
    return-void
.end method

.method public abstract b()I
.end method

.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hunantv/media/player/a/b;->d:I

    return-void
.end method

.method public abstract b(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public c()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hunantv/media/player/a/b;->b:I

    return p0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/hunantv/media/player/a/b;->c:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/a/b;->d:I

    return p0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/player/a/b;->e:Z

    return-void
.end method

.method public run()V
    .locals 4

    invoke-direct {p0}, Lcom/hunantv/media/player/a/b;->g()V

    iget-object v0, p0, Lcom/hunantv/media/player/a/b;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcom/hunantv/media/player/a/b;->a(I)V

    invoke-direct {p0}, Lcom/hunantv/media/player/a/b;->f()V

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/a/b;->g:Lcom/hunantv/media/player/a/b$a;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/hunantv/media/player/a/b;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " run IN mHostName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/player/a/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/a/b;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/hunantv/media/player/a/b;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hunantv/media/player/a/b;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " run OUT getAddress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/hunantv/media/utils/StringUtil;->formatArrayString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/hunantv/media/player/a/b;->a([Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/hunantv/media/player/a/b;->f()V

    :goto_0
    iget-boolean v0, p0, Lcom/hunantv/media/player/a/b;->e:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/player/a/b;->g:Lcom/hunantv/media/player/a/b$a;

    :cond_2
    return-void
.end method
