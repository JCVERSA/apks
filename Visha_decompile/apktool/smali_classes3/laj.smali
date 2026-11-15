.class public final Llaj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lj3j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lpif;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj3j;

    invoke-direct {v0, p1, p2}, Lj3j;-><init>(Landroid/content/Context;Lpif;)V

    iput-object v0, p0, Llaj;->a:Lj3j;

    return-void
.end method


# virtual methods
.method public final a(Lt7j;)Llaj;
    .locals 2

    iget-object v0, p0, Llaj;->a:Lj3j;

    iget-boolean v1, v0, Lj3j;->r:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ln7g;->f(Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ls2j;

    invoke-direct {v1, p1}, Ls2j;-><init>(Lt7j;)V

    iput-object v1, v0, Lj3j;->f:Lk3i;

    return-object p0
.end method

.method public final b(Lzqj;)Llaj;
    .locals 2

    iget-object v0, p0, Llaj;->a:Lj3j;

    iget-boolean v1, v0, Lj3j;->r:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ln7g;->f(Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lh3j;

    invoke-direct {v1, p1}, Lh3j;-><init>(Lzqj;)V

    iput-object v1, v0, Lj3j;->e:Lk3i;

    return-object p0
.end method

.method public final c()Lmaj;
    .locals 2

    iget-object p0, p0, Llaj;->a:Lj3j;

    iget-boolean v0, p0, Lj3j;->r:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Ln7g;->f(Z)V

    iput-boolean v1, p0, Lj3j;->r:Z

    new-instance v0, Lmaj;

    invoke-direct {v0, p0}, Lmaj;-><init>(Lj3j;)V

    return-object v0
.end method
