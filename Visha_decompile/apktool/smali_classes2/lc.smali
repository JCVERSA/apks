.class public Llc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltc;


# instance fields
.field public final a:Ldc;

.field public final b:Ldc;


# direct methods
.method public constructor <init>(Ldc;Ldc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llc;->a:Ldc;

    iput-object p2, p0, Llc;->b:Ldc;

    return-void
.end method


# virtual methods
.method public g()Z
    .locals 1

    iget-object v0, p0, Llc;->a:Ldc;

    invoke-virtual {v0}, Ldc;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Llc;->b:Ldc;

    invoke-virtual {p0}, Ldc;->g()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public h()Lab0;
    .locals 2

    new-instance v0, Lgv9;

    iget-object v1, p0, Llc;->a:Ldc;

    invoke-virtual {v1}, Ldc;->a()Lxy3;

    move-result-object v1

    iget-object p0, p0, Llc;->b:Ldc;

    invoke-virtual {p0}, Ldc;->a()Lxy3;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lgv9;-><init>(Lab0;Lab0;)V

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot call getKeyframes on AnimatableSplitDimensionPathValue."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
