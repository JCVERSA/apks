.class public Lcom/tn/lib/view/indicator/a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tn/lib/view/indicator/a$a;
    }
.end annotation


# static fields
.field public static final m:I

.field public static final n:I

.field public static final o:I

.field public static final p:I

.field public static final q:I

.field public static final r:I


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Lcom/tn/lib/view/indicator/a$a;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lch/a;->a:Lch/a;

    .line 2
    .line 3
    const/high16 v1, 0x40a00000    # 5.0f

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lch/a;->a(F)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    sput v2, Lcom/tn/lib/view/indicator/a;->m:I

    .line 10
    .line 11
    const/high16 v2, 0x40e00000    # 7.0f

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Lch/a;->a(F)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    sput v2, Lcom/tn/lib/view/indicator/a;->n:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lch/a;->a(F)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    sput v2, Lcom/tn/lib/view/indicator/a;->o:I

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lch/a;->a(F)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    sput v1, Lcom/tn/lib/view/indicator/a;->p:I

    .line 30
    .line 31
    const/high16 v1, 0x40400000    # 3.0f

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lch/a;->a(F)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    sput v2, Lcom/tn/lib/view/indicator/a;->q:I

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lch/a;->a(F)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    sput v0, Lcom/tn/lib/view/indicator/a;->r:I

    .line 44
    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/tn/lib/view/indicator/a;->c:I

    .line 6
    .line 7
    sget v1, Lcom/tn/lib/view/indicator/a;->o:I

    .line 8
    .line 9
    iput v1, p0, Lcom/tn/lib/view/indicator/a;->d:I

    .line 10
    .line 11
    sget v1, Lcom/tn/lib/view/indicator/a;->m:I

    .line 12
    .line 13
    iput v1, p0, Lcom/tn/lib/view/indicator/a;->e:I

    .line 14
    .line 15
    sget v1, Lcom/tn/lib/view/indicator/a;->n:I

    .line 16
    .line 17
    iput v1, p0, Lcom/tn/lib/view/indicator/a;->f:I

    .line 18
    .line 19
    const v1, -0x77000001

    .line 20
    .line 21
    .line 22
    iput v1, p0, Lcom/tn/lib/view/indicator/a;->g:I

    .line 23
    .line 24
    const/high16 v1, -0x78000000

    .line 25
    .line 26
    iput v1, p0, Lcom/tn/lib/view/indicator/a;->h:I

    .line 27
    .line 28
    sget v1, Lcom/tn/lib/view/indicator/a;->r:I

    .line 29
    .line 30
    iput v1, p0, Lcom/tn/lib/view/indicator/a;->i:I

    .line 31
    .line 32
    sget v1, Lcom/tn/lib/view/indicator/a;->q:I

    .line 33
    .line 34
    iput v1, p0, Lcom/tn/lib/view/indicator/a;->j:I

    .line 35
    .line 36
    iput-boolean v0, p0, Lcom/tn/lib/view/indicator/a;->l:Z

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tn/lib/view/indicator/a;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tn/lib/view/indicator/a;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tn/lib/view/indicator/a;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tn/lib/view/indicator/a;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tn/lib/view/indicator/a;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public f()Lcom/tn/lib/view/indicator/a$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/lib/view/indicator/a;->k:Lcom/tn/lib/view/indicator/a$a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/tn/lib/view/indicator/a$a;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/tn/lib/view/indicator/a$a;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/tn/lib/view/indicator/a;->p(Lcom/tn/lib/view/indicator/a$a;)Lcom/tn/lib/view/indicator/a;

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/tn/lib/view/indicator/a;->k:Lcom/tn/lib/view/indicator/a$a;

    .line 14
    .line 15
    return-object v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tn/lib/view/indicator/a;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tn/lib/view/indicator/a;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tn/lib/view/indicator/a;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tn/lib/view/indicator/a;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tn/lib/view/indicator/a;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tn/lib/view/indicator/a;->l:Z

    .line 2
    .line 3
    return v0
.end method

.method public m(I)Lcom/tn/lib/view/indicator/a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/tn/lib/view/indicator/a;->b:I

    .line 2
    .line 3
    return-object p0
.end method

.method public n(I)Lcom/tn/lib/view/indicator/a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/tn/lib/view/indicator/a;->a:I

    .line 2
    .line 3
    return-object p0
.end method

.method public o(I)Lcom/tn/lib/view/indicator/a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/tn/lib/view/indicator/a;->d:I

    .line 2
    .line 3
    return-object p0
.end method

.method public p(Lcom/tn/lib/view/indicator/a$a;)Lcom/tn/lib/view/indicator/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tn/lib/view/indicator/a;->k:Lcom/tn/lib/view/indicator/a$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public q(I)Lcom/tn/lib/view/indicator/a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/tn/lib/view/indicator/a;->g:I

    .line 2
    .line 3
    return-object p0
.end method

.method public r(I)Lcom/tn/lib/view/indicator/a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/tn/lib/view/indicator/a;->e:I

    .line 2
    .line 3
    return-object p0
.end method

.method public s(I)Lcom/tn/lib/view/indicator/a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/tn/lib/view/indicator/a;->h:I

    .line 2
    .line 3
    return-object p0
.end method

.method public t(I)Lcom/tn/lib/view/indicator/a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/tn/lib/view/indicator/a;->f:I

    .line 2
    .line 3
    return-object p0
.end method
