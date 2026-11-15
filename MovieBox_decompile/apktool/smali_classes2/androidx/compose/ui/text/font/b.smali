.class public final Landroidx/compose/ui/text/font/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/compose/ui/text/font/w;


# instance fields
.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/ui/text/font/b;->b:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroidx/compose/ui/text/font/p;)Landroidx/compose/ui/text/font/p;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/font/b;->b:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const v1, 0x7fffffff

    .line 6
    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/font/p;->h()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget v0, p0, Landroidx/compose/ui/text/font/b;->b:I

    .line 16
    .line 17
    add-int/2addr p1, v0

    .line 18
    const/4 v0, 0x1

    .line 19
    const/16 v1, 0x3e8

    .line 20
    .line 21
    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->l(III)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    new-instance v0, Landroidx/compose/ui/text/font/p;

    .line 26
    .line 27
    invoke-direct {v0, p1}, Landroidx/compose/ui/text/font/p;-><init>(I)V

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_1
    :goto_0
    return-object p1
.end method

.method public synthetic b(I)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/text/font/v;->b(Landroidx/compose/ui/text/font/w;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public synthetic c(I)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/text/font/v;->c(Landroidx/compose/ui/text/font/w;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public synthetic d(Landroidx/compose/ui/text/font/h;)Landroidx/compose/ui/text/font/h;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/text/font/v;->a(Landroidx/compose/ui/text/font/w;Landroidx/compose/ui/text/font/h;)Landroidx/compose/ui/text/font/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/font/b;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Landroidx/compose/ui/text/font/b;

    .line 12
    .line 13
    iget v1, p0, Landroidx/compose/ui/text/font/b;->b:I

    .line 14
    .line 15
    iget p1, p1, Landroidx/compose/ui/text/font/b;->b:I

    .line 16
    .line 17
    if-eq v1, p1, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/font/b;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "AndroidFontResolveInterceptor(fontWeightAdjustment="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Landroidx/compose/ui/text/font/b;->b:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x29

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
