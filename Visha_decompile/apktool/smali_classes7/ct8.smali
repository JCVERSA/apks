.class public Lct8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lu2d;

.field public b:Lfkd;

.field public final c:Lhnd;


# direct methods
.method public constructor <init>(Ljhd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljhd;->c()Lhnd;

    move-result-object p1

    iput-object p1, p0, Lct8;->c:Lhnd;

    new-instance p1, Lu2d;

    invoke-direct {p1}, Lu2d;-><init>()V

    iput-object p1, p0, Lct8;->a:Lu2d;

    return-void
.end method


# virtual methods
.method public a(Ldv4;)V
    .locals 1

    iget-object v0, p0, Lct8;->a:Lu2d;

    invoke-virtual {v0, p0, p1}, Lu2d;->a(Lct8;Ldv4;)V

    return-void
.end method

.method public b()Lfkd;
    .locals 5

    iget-object v0, p0, Lct8;->c:Lhnd;

    invoke-virtual {v0}, Lhnd;->e()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Lz7d;

    iget-object v1, p0, Lct8;->c:Lhnd;

    invoke-virtual {v1}, Lhnd;->e()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lz7d;-><init>(Landroid/content/Context;)V

    sget v1, Les4;->b:I

    if-gtz v1, :cond_0

    const-wide/32 v1, 0x6400000

    goto :goto_0

    :cond_0
    const/high16 v2, 0x100000

    mul-int/2addr v1, v2

    int-to-long v1, v1

    :goto_0
    sget v3, Les4;->a:I

    if-gtz v3, :cond_1

    const-wide/32 v3, 0x337f9800

    goto :goto_1

    :cond_1
    const v4, 0x36ee80

    mul-int/2addr v3, v4

    int-to-long v3, v3

    :goto_1
    invoke-virtual {v0, v1, v2, v3, v4}, Lz7d;->a(JJ)Lfkd;

    move-result-object v0

    iput-object v0, p0, Lct8;->b:Lfkd;

    :cond_2
    iget-object p0, p0, Lct8;->b:Lfkd;

    return-object p0
.end method

.method public c()Lhnd;
    .locals 0

    iget-object p0, p0, Lct8;->c:Lhnd;

    return-object p0
.end method

.method public d()Lkod;
    .locals 1

    new-instance v0, Lkod;

    iget-object p0, p0, Lct8;->c:Lhnd;

    invoke-direct {v0, p0}, Lkod;-><init>(Lhnd;)V

    return-object v0
.end method
