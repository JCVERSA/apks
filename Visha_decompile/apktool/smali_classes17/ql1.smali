.class public Lql1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:Landroid/graphics/Bitmap$CompressFormat;

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Lnf3;


# direct methods
.method public constructor <init>(IILandroid/graphics/Bitmap$CompressFormat;ILjava/lang/String;Ljava/lang/String;Lnf3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lql1;->a:I

    iput p2, p0, Lql1;->b:I

    iput-object p3, p0, Lql1;->c:Landroid/graphics/Bitmap$CompressFormat;

    iput p4, p0, Lql1;->d:I

    iput-object p5, p0, Lql1;->e:Ljava/lang/String;

    iput-object p6, p0, Lql1;->f:Ljava/lang/String;

    iput-object p7, p0, Lql1;->g:Lnf3;

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap$CompressFormat;
    .locals 0

    iget-object p0, p0, Lql1;->c:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0
.end method

.method public b()I
    .locals 0

    iget p0, p0, Lql1;->d:I

    return p0
.end method

.method public c()Lnf3;
    .locals 0

    iget-object p0, p0, Lql1;->g:Lnf3;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lql1;->e:Ljava/lang/String;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lql1;->f:Ljava/lang/String;

    return-object p0
.end method

.method public f()I
    .locals 0

    iget p0, p0, Lql1;->a:I

    return p0
.end method

.method public g()I
    .locals 0

    iget p0, p0, Lql1;->b:I

    return p0
.end method
