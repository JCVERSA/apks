.class public final Lbka;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbka;->a:Z

    iput-boolean v0, p0, Lbka;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Lbka;->b:Z

    return p0
.end method

.method public final b()Z
    .locals 0

    iget-boolean p0, p0, Lbka;->a:Z

    return p0
.end method

.method public final c()V
    .locals 1

    iget-boolean v0, p0, Lbka;->a:Z

    iput-boolean v0, p0, Lbka;->b:Z

    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbka;->a:Z

    iput-boolean v0, p0, Lbka;->b:Z

    return-void
.end method

.method public final e()V
    .locals 2

    iget-boolean v0, p0, Lbka;->a:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lbka;->a:Z

    iput-boolean v1, p0, Lbka;->b:Z

    return-void
.end method

.method public final f()Z
    .locals 2

    iget-boolean v0, p0, Lbka;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, Lbka;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbka;->b:Z

    return v0
.end method
