.class public Lr96;
.super Ln96;
.source "SourceFile"


# instance fields
.field public d:I

.field public e:I

.field public f:Lu94;


# direct methods
.method public constructor <init>(IILu94;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p4}, Ln96;-><init>(ZLjava/lang/String;)V

    iput p1, p0, Lr96;->d:I

    iput p2, p0, Lr96;->e:I

    new-instance p1, Lu94;

    invoke-direct {p1, p3}, Lu94;-><init>(Lu94;)V

    iput-object p1, p0, Lr96;->f:Lu94;

    return-void
.end method


# virtual methods
.method public c()Lu94;
    .locals 0

    iget-object p0, p0, Lr96;->f:Lu94;

    return-object p0
.end method

.method public d()I
    .locals 0

    iget-object p0, p0, Lr96;->f:Lu94;

    invoke-virtual {p0}, Lu86;->b()I

    move-result p0

    return p0
.end method

.method public e()I
    .locals 0

    iget p0, p0, Lr96;->d:I

    return p0
.end method

.method public f()I
    .locals 0

    iget p0, p0, Lr96;->e:I

    return p0
.end method
