.class public Ldc;
.super Ly80;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Ly80;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a()Lxy3;
    .locals 1

    new-instance v0, Lxy3;

    iget-object p0, p0, Ly80;->a:Ljava/util/List;

    invoke-direct {v0, p0}, Lxy3;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic g()Z
    .locals 0

    invoke-super {p0}, Ly80;->g()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic h()Lab0;
    .locals 0

    invoke-virtual {p0}, Ldc;->a()Lxy3;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic i()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Ly80;->i()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Ly80;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
