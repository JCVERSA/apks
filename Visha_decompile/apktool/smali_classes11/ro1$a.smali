.class public Lro1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lro1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lro1$a;->a:I

    const/16 v1, 0xc

    iput v1, p0, Lro1$a;->b:I

    const-string v1, "#4d000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lro1$a;->c:I

    const/16 v1, 0x12

    iput v1, p0, Lro1$a;->d:I

    const/4 v1, 0x0

    iput v1, p0, Lro1$a;->e:I

    iput v1, p0, Lro1$a;->f:I

    new-array v0, v0, [I

    iput-object v0, p0, Lro1$a;->g:[I

    aput v1, v0, v1

    return-void
.end method


# virtual methods
.method public a()Lro1;
    .locals 10

    new-instance v9, Lro1;

    iget v1, p0, Lro1$a;->a:I

    iget-object v2, p0, Lro1$a;->g:[I

    iget v3, p0, Lro1$a;->b:I

    iget v4, p0, Lro1$a;->c:I

    iget v5, p0, Lro1$a;->d:I

    iget v6, p0, Lro1$a;->e:I

    iget v7, p0, Lro1$a;->f:I

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lro1;-><init>(I[IIIIIILso1;)V

    return-object v9
.end method

.method public b(I)Lro1$a;
    .locals 2

    iget-object v0, p0, Lro1$a;->g:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-object p0
.end method

.method public c(I)Lro1$a;
    .locals 0

    iput p1, p0, Lro1$a;->e:I

    return-object p0
.end method

.method public d(I)Lro1$a;
    .locals 0

    iput p1, p0, Lro1$a;->f:I

    return-object p0
.end method

.method public e(I)Lro1$a;
    .locals 0

    iput p1, p0, Lro1$a;->c:I

    return-object p0
.end method

.method public f(I)Lro1$a;
    .locals 0

    iput p1, p0, Lro1$a;->d:I

    return-object p0
.end method

.method public g(I)Lro1$a;
    .locals 0

    iput p1, p0, Lro1$a;->b:I

    return-object p0
.end method
