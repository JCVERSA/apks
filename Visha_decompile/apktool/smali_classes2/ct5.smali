.class public Lct5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public f:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lct5;->a:I

    iput p2, p0, Lct5;->b:I

    iput-object p3, p0, Lct5;->c:Ljava/lang/String;

    iput-object p4, p0, Lct5;->d:Ljava/lang/String;

    iput-object p5, p0, Lct5;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(F)Lct5;
    .locals 7

    new-instance v6, Lct5;

    iget v0, p0, Lct5;->a:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v1, v0

    iget v0, p0, Lct5;->b:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v2, v0

    iget-object v3, p0, Lct5;->c:Ljava/lang/String;

    iget-object v4, p0, Lct5;->d:Ljava/lang/String;

    iget-object v5, p0, Lct5;->e:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lct5;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lct5;->f:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    iget p1, v6, Lct5;->a:I

    iget v0, v6, Lct5;->b:I

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v6, p0}, Lct5;->g(Landroid/graphics/Bitmap;)V

    :cond_0
    return-object v6
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lct5;->f:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lct5;->d:Ljava/lang/String;

    return-object p0
.end method

.method public d()I
    .locals 0

    iget p0, p0, Lct5;->b:I

    return p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lct5;->c:Ljava/lang/String;

    return-object p0
.end method

.method public f()I
    .locals 0

    iget p0, p0, Lct5;->a:I

    return p0
.end method

.method public g(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lct5;->f:Landroid/graphics/Bitmap;

    return-void
.end method
