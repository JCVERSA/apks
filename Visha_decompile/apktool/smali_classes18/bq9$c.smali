.class public Lbq9$c;
.super Lbq9$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbq9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final c:I

.field public final synthetic d:Lbq9;


# direct methods
.method public constructor <init>(Lbq9;)V
    .locals 1

    iput-object p1, p0, Lbq9$c;->d:Lbq9;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbq9$d;-><init>(Lbq9$a;)V

    invoke-static {p1}, Lbq9;->c(Lbq9;)I

    move-result p1

    iput p1, p0, Lbq9$c;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lbq9$c;->d:Lbq9;

    invoke-static {v0}, Lbq9;->i(Lbq9;)I

    move-result v0

    iget v1, p0, Lbq9$c;->c:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ModCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbq9$c;->d:Lbq9;

    invoke-static {v2}, Lbq9;->j(Lbq9;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lbq9$c;->c:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lbq9$c;->d:Lbq9;

    invoke-static {p0}, Lbq9;->f(Lbq9;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 0

    invoke-virtual {p0}, Lbq9$c;->a()V

    iget-object p0, p0, Lbq9$c;->d:Lbq9;

    invoke-virtual {p0}, Lbq9;->clear()V

    return-void
.end method
