.class public Legc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd8;


# instance fields
.field public volatile a:I

.field public b:I

.field public c:[Li53;

.field public d:[Li53;

.field public e:Li53;

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Legc;->a:I

    const/4 v0, -0x1

    iput v0, p0, Legc;->b:I

    const/4 v1, 0x0

    iput-object v1, p0, Legc;->c:[Li53;

    iput-object v1, p0, Legc;->d:[Li53;

    iput-object v1, p0, Legc;->e:Li53;

    iput v0, p0, Legc;->f:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Legc;->b:I

    return p0
.end method

.method public b()[Li53;
    .locals 0

    iget-object p0, p0, Legc;->c:[Li53;

    return-object p0
.end method

.method public c()[Li53;
    .locals 0

    iget-object p0, p0, Legc;->d:[Li53;

    return-object p0
.end method

.method public d()Li53;
    .locals 0

    iget-object p0, p0, Legc;->e:Li53;

    return-object p0
.end method

.method public e()I
    .locals 0

    iget p0, p0, Legc;->f:I

    return p0
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Legc;->b:I

    return-void
.end method

.method public g([Li53;)V
    .locals 0

    iput-object p1, p0, Legc;->c:[Li53;

    return-void
.end method

.method public h([Li53;)V
    .locals 0

    iput-object p1, p0, Legc;->d:[Li53;

    return-void
.end method

.method public i(I)V
    .locals 0

    iput p1, p0, Legc;->a:I

    return-void
.end method

.method public j(Li53;)V
    .locals 0

    iput-object p1, p0, Legc;->e:Li53;

    return-void
.end method

.method public k(I)V
    .locals 0

    iput p1, p0, Legc;->f:I

    return-void
.end method
