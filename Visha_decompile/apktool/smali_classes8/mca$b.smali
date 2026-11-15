.class public Lmca$b;
.super Lj1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public b:Ls1;

.field public c:Lgk3;


# direct methods
.method public constructor <init>(Ls1;)V
    .locals 2

    invoke-direct {p0}, Lj1;-><init>()V

    invoke-virtual {p1}, Ls1;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ls1;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    iput-object p1, p0, Lmca$b;->b:Ls1;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad sequence size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ls1;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static n(Ljava/lang/Object;)Lmca$b;
    .locals 1

    instance-of v0, p0, Lmca$b;

    if-eqz v0, :cond_0

    check-cast p0, Lmca$b;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lmca$b;

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    invoke-direct {v0, p0}, Lmca$b;-><init>(Ls1;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public j()Lp1;
    .locals 0

    iget-object p0, p0, Lmca$b;->b:Ls1;

    return-object p0
.end method

.method public m()Lgk3;
    .locals 2

    iget-object v0, p0, Lmca$b;->c:Lgk3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmca$b;->b:Ls1;

    invoke-virtual {v0}, Ls1;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmca$b;->b:Ls1;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ls1;->A(I)Lx0;

    move-result-object v0

    invoke-static {v0}, Lgk3;->t(Ljava/lang/Object;)Lgk3;

    move-result-object v0

    iput-object v0, p0, Lmca$b;->c:Lgk3;

    :cond_0
    iget-object p0, p0, Lmca$b;->c:Lgk3;

    return-object p0
.end method

.method public o()Lg1;
    .locals 1

    iget-object p0, p0, Lmca$b;->b:Ls1;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ls1;->A(I)Lx0;

    move-result-object p0

    invoke-static {p0}, Lg1;->y(Ljava/lang/Object;)Lg1;

    move-result-object p0

    return-object p0
.end method

.method public p()Z
    .locals 1

    iget-object p0, p0, Lmca$b;->b:Ls1;

    invoke-virtual {p0}, Ls1;->size()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
