.class public Lcom/hunantv/imgo/c/a/b/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Z = false

.field private static b:Lcom/hunantv/imgo/c/a/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 4
    invoke-static {p0}, Lcom/hunantv/imgo/c/a/b/f;->c(Ljava/lang/String;)Lcom/hunantv/imgo/c/a/b/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/hunantv/imgo/c/a/b/a;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method private static a()V
    .locals 2

    .line 6
    sget-boolean v0, Lcom/hunantv/imgo/c/a/b/f;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "thread pool no inti"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lcom/hunantv/imgo/c/a/b/d;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/hunantv/imgo/c/a/b/f;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/hunantv/imgo/c/a/b/f;->a:Z

    .line 3
    sput-object p0, Lcom/hunantv/imgo/c/a/b/f;->b:Lcom/hunantv/imgo/c/a/b/d;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;II)V
    .locals 0

    .line 5
    invoke-static {p0}, Lcom/hunantv/imgo/c/a/b/f;->c(Ljava/lang/String;)Lcom/hunantv/imgo/c/a/b/a;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/hunantv/imgo/c/a/b/a;->a(Ljava/lang/Runnable;Ljava/lang/String;II)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/hunantv/imgo/c/a/b/f;->b:Lcom/hunantv/imgo/c/a/b/d;

    invoke-virtual {v0}, Lcom/hunantv/imgo/c/a/b/d;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/hunantv/imgo/c/a/b/f;->c(Ljava/lang/String;)Lcom/hunantv/imgo/c/a/b/a;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/hunantv/imgo/c/a/b/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static c(Ljava/lang/String;)Lcom/hunantv/imgo/c/a/b/a;
    .locals 3

    invoke-static {}, Lcom/hunantv/imgo/c/a/b/f;->a()V

    sget-object v0, Lcom/hunantv/imgo/c/a/b/f;->b:Lcom/hunantv/imgo/c/a/b/d;

    invoke-virtual {v0, p0}, Lcom/hunantv/imgo/c/a/b/d;->a(Ljava/lang/String;)Lcom/hunantv/imgo/c/a/b/a;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "groupName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " no register"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
