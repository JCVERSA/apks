.class public Lrqb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:Z

.field public e:I

.field public f:Z

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIZIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrqb;->a:Ljava/lang/String;

    iput p3, p0, Lrqb;->b:I

    iput p4, p0, Lrqb;->c:I

    iput-boolean p5, p0, Lrqb;->d:Z

    iput p6, p0, Lrqb;->e:I

    iput-boolean p7, p0, Lrqb;->f:Z

    iput-object p2, p0, Lrqb;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lrqb;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b()I
    .locals 0

    iget p0, p0, Lrqb;->e:I

    return p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lrqb;->c:I

    return p0
.end method

.method public d()I
    .locals 0

    iget p0, p0, Lrqb;->b:I

    return p0
.end method

.method public e()Z
    .locals 0

    iget-boolean p0, p0, Lrqb;->d:Z

    return p0
.end method

.method public f()Z
    .locals 0

    iget-boolean p0, p0, Lrqb;->f:Z

    return p0
.end method
