.class public abstract Ld2;
.super Lz1;
.source "SourceFile"


# instance fields
.field public final b:Lx1;


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 0

    invoke-direct {p0, p1}, Lz1;-><init>(Ljava/lang/Class;)V

    const/4 p1, 0x0

    invoke-static {p1, p2}, Lx1;->a(II)Lx1;

    move-result-object p1

    iput-object p1, p0, Ld2;->b:Lx1;

    return-void
.end method


# virtual methods
.method public final a(Lp1;)Lp1;
    .locals 2

    iget-object p0, p0, Lz1;->a:Ljava/lang/Class;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected object: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b([B)Lp1;
    .locals 0

    invoke-static {p1}, Lp1;->t([B)Lp1;

    move-result-object p1

    invoke-virtual {p0, p1}, Ld2;->a(Lp1;)Lp1;

    move-result-object p0

    return-object p0
.end method

.method public c(Ls1;)Lp1;
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unexpected implicit constructed encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d(Lwp1;)Lp1;
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unexpected implicit primitive encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e(Ly1;Z)Lp1;
    .locals 0

    invoke-static {p1}, Lf2;->a(Ly1;)Ly1;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Ly1;->D(ZLd2;)Lp1;

    move-result-object p1

    invoke-virtual {p0, p1}, Ld2;->a(Lp1;)Lp1;

    move-result-object p0

    return-object p0
.end method
