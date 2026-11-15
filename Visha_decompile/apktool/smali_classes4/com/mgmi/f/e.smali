.class public Lcom/mgmi/f/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static i:Z = false

.field public static k:Z = true

.field private static l:Lcom/mgmi/f/e; = null

.field private static m:Z = true

.field private static n:Z = false

.field private static o:Z = true

.field private static p:Z = true


# instance fields
.field public volatile a:Z

.field public volatile b:Z

.field public volatile c:Z

.field public volatile d:Z

.field public volatile e:Z

.field public volatile f:Z

.field public volatile g:Z

.field public volatile h:Z

.field public j:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgmi/f/e;->a:Z

    iput-boolean v0, p0, Lcom/mgmi/f/e;->b:Z

    iput-boolean v0, p0, Lcom/mgmi/f/e;->c:Z

    iput-boolean v0, p0, Lcom/mgmi/f/e;->d:Z

    iput-boolean v0, p0, Lcom/mgmi/f/e;->e:Z

    iput-boolean v0, p0, Lcom/mgmi/f/e;->f:Z

    iput-boolean v0, p0, Lcom/mgmi/f/e;->g:Z

    iput-boolean v0, p0, Lcom/mgmi/f/e;->h:Z

    iput v0, p0, Lcom/mgmi/f/e;->j:I

    return-void
.end method

.method public static a()Lcom/mgmi/f/e;
    .locals 2

    .line 1
    sget-object v0, Lcom/mgmi/f/e;->l:Lcom/mgmi/f/e;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/mgmi/f/e;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/mgmi/f/e;->l:Lcom/mgmi/f/e;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/mgmi/f/e;

    invoke-direct {v1}, Lcom/mgmi/f/e;-><init>()V

    sput-object v1, Lcom/mgmi/f/e;->l:Lcom/mgmi/f/e;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_2
    sget-object v0, Lcom/mgmi/f/e;->l:Lcom/mgmi/f/e;

    return-object v0
.end method

.method public static b()Z
    .locals 1

    .line 2
    sget-boolean v0, Lcom/mgmi/f/e;->m:Z

    return v0
.end method

.method public static c(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/mgmi/f/e;->m:Z

    return-void
.end method

.method public static c()Z
    .locals 1

    .line 2
    sget-boolean v0, Lcom/mgmi/f/e;->n:Z

    return v0
.end method

.method public static d(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/mgmi/f/e;->n:Z

    return-void
.end method

.method public static d()Z
    .locals 1

    .line 2
    sget-boolean v0, Lcom/mgmi/f/e;->o:Z

    return v0
.end method

.method public static e(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/mgmi/f/e;->o:Z

    return-void
.end method

.method public static h(Z)V
    .locals 0

    .line 2
    sput-boolean p0, Lcom/mgmi/f/e;->k:Z

    return-void
.end method

.method public static h()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mgmi/f/e;->k:Z

    return v0
.end method

.method public static i()Z
    .locals 1

    sget-boolean v0, Lcom/mgmi/f/e;->p:Z

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 8
    iput p1, p0, Lcom/mgmi/f/e;->j:I

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/mgmi/f/e;->a:Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mgmi/f/e;->c:Z

    return-void
.end method

.method public e()Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/mgmi/f/e;->g:Z

    return p0
.end method

.method public f(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mgmi/f/e;->g:Z

    return-void
.end method

.method public f()Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/mgmi/f/e;->h:Z

    return p0
.end method

.method public g()I
    .locals 0

    .line 2
    iget p0, p0, Lcom/mgmi/f/e;->j:I

    return p0
.end method

.method public g(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mgmi/f/e;->h:Z

    return-void
.end method
