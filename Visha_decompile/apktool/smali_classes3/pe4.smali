.class public Lpe4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljx9;


# instance fields
.field public final a:Lvlb;

.field public final b:Lzda;


# direct methods
.method public constructor <init>(Lvlb;Lzda;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpe4;->a:Lvlb;

    iput-object p2, p0, Lpe4;->b:Lzda;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)Z
    .locals 0

    iget-object p0, p0, Lpe4;->b:Lzda;

    invoke-virtual {p0, p1}, Lzda;->d(Ljava/lang/Exception;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public b(Lcom/google/firebase/installations/local/b;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/google/firebase/installations/local/b;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpe4;->a:Lvlb;

    invoke-virtual {v0, p1}, Lvlb;->f(Lcom/google/firebase/installations/local/b;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lpe4;->b:Lzda;

    invoke-static {}, Lh15;->a()Lh15$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/installations/local/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh15$a;->b(Ljava/lang/String;)Lh15$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/installations/local/b;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lh15$a;->d(J)Lh15$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/installations/local/b;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lh15$a;->c(J)Lh15$a;

    move-result-object p1

    invoke-virtual {p1}, Lh15$a;->a()Lh15;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzda;->c(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
