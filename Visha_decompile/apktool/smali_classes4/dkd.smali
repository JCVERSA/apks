.class public Ldkd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:Z

.field public j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x3b864000    # -999.0f

    .line 12
    iput v0, p0, Ldkd;->a:F

    .line 13
    iput v0, p0, Ldkd;->b:F

    .line 14
    iput v0, p0, Ldkd;->c:F

    .line 15
    iput v0, p0, Ldkd;->d:F

    .line 16
    iput v0, p0, Ldkd;->e:F

    .line 17
    iput v0, p0, Ldkd;->f:F

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Ldkd;->j:I

    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Ldkd;->j:I

    .line 3
    iput p1, p0, Ldkd;->a:F

    .line 4
    iput p2, p0, Ldkd;->b:F

    .line 5
    iput p3, p0, Ldkd;->c:F

    .line 6
    iput p4, p0, Ldkd;->d:F

    .line 7
    iput p5, p0, Ldkd;->e:F

    .line 8
    iput p6, p0, Ldkd;->f:F

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Ldkd;->h:Z

    .line 10
    iput-boolean p1, p0, Ldkd;->i:Z

    return-void
.end method


# virtual methods
.method public a()F
    .locals 0

    iget p0, p0, Ldkd;->e:F

    return p0
.end method

.method public b(Z)Ldkd;
    .locals 0

    iput-boolean p1, p0, Ldkd;->i:Z

    return-object p0
.end method

.method public c()F
    .locals 0

    iget p0, p0, Ldkd;->f:F

    return p0
.end method

.method public d()F
    .locals 0

    iget p0, p0, Ldkd;->a:F

    return p0
.end method

.method public e()Z
    .locals 0

    iget-boolean p0, p0, Ldkd;->i:Z

    return p0
.end method

.method public f()Z
    .locals 0

    iget-boolean p0, p0, Ldkd;->h:Z

    return p0
.end method

.method public g()I
    .locals 0

    iget p0, p0, Ldkd;->j:I

    return p0
.end method

.method public h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ldkd;->g:Ljava/lang/String;

    return-object p0
.end method

.method public i()F
    .locals 0

    iget p0, p0, Ldkd;->b:F

    return p0
.end method

.method public j()F
    .locals 0

    iget p0, p0, Ldkd;->c:F

    return p0
.end method

.method public k()F
    .locals 0

    iget p0, p0, Ldkd;->d:F

    return p0
.end method
