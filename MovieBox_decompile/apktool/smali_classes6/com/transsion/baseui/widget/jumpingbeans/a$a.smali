.class public Lcom/transsion/baseui/widget/jumpingbeans/a$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/baseui/widget/jumpingbeans/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private b:I

.field private c:I

.field private d:F

.field private e:I

.field private f:I

.field private g:Ljava/lang/CharSequence;

.field private h:Z


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x3f266666    # 0.65f

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->d:F

    .line 8
    .line 9
    const/16 v0, 0x514

    .line 10
    .line 11
    iput v0, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->e:I

    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->f:I

    .line 15
    .line 16
    iput-object p1, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->a:Landroid/widget/TextView;

    .line 17
    .line 18
    return-void
.end method

.method private b(Landroid/text/SpannableStringBuilder;)[Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;
    .locals 7

    .line 1
    new-instance v6, Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->a:Landroid/widget/TextView;

    .line 4
    .line 5
    iget v2, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->e:I

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    iget v5, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->d:F

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    move-object v0, v6

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;-><init>(Landroid/widget/TextView;IIIF)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    new-array v0, v0, [Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    aput-object v6, v0, v1

    .line 20
    .line 21
    aget-object v1, v0, v1

    .line 22
    .line 23
    iget v2, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->b:I

    .line 24
    .line 25
    iget v3, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->c:I

    .line 26
    .line 27
    const/16 v4, 0x21

    .line 28
    .line 29
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method private c(Landroid/text/SpannableStringBuilder;)[Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;
    .locals 9

    .line 1
    iget v0, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->f:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->e:I

    .line 7
    .line 8
    iget v1, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->c:I

    .line 9
    .line 10
    iget v2, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->b:I

    .line 11
    .line 12
    sub-int/2addr v1, v2

    .line 13
    mul-int/lit8 v1, v1, 0x3

    .line 14
    .line 15
    div-int/2addr v0, v1

    .line 16
    iput v0, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->f:I

    .line 17
    .line 18
    :cond_0
    iget v0, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->c:I

    .line 19
    .line 20
    iget v1, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->b:I

    .line 21
    .line 22
    sub-int/2addr v0, v1

    .line 23
    new-array v0, v0, [Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;

    .line 24
    .line 25
    :goto_0
    iget v2, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->c:I

    .line 26
    .line 27
    if-ge v1, v2, :cond_1

    .line 28
    .line 29
    new-instance v2, Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;

    .line 30
    .line 31
    iget-object v4, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->a:Landroid/widget/TextView;

    .line 32
    .line 33
    iget v5, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->e:I

    .line 34
    .line 35
    iget v3, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->b:I

    .line 36
    .line 37
    sub-int v6, v1, v3

    .line 38
    .line 39
    iget v7, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->f:I

    .line 40
    .line 41
    iget v8, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->d:F

    .line 42
    .line 43
    move-object v3, v2

    .line 44
    invoke-direct/range {v3 .. v8}, Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;-><init>(Landroid/widget/TextView;IIIF)V

    .line 45
    .line 46
    .line 47
    add-int/lit8 v3, v1, 0x1

    .line 48
    .line 49
    const/16 v4, 0x21

    .line 50
    .line 51
    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 52
    .line 53
    .line 54
    iget v4, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->b:I

    .line 55
    .line 56
    sub-int/2addr v1, v4

    .line 57
    aput-object v2, v0, v1

    .line 58
    .line 59
    move v1, v3

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    return-object v0
.end method

.method private static d(IILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    if-eqz p2, :cond_3

    .line 2
    .line 3
    if-lt p1, p0, :cond_2

    .line 4
    .line 5
    if-ltz p0, :cond_1

    .line 6
    .line 7
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-gt p1, p0, :cond_0

    .line 12
    .line 13
    return-object p2

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 15
    .line 16
    const-string p1, "The end position must be smaller than the text length"

    .line 17
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0

    .line 22
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 23
    .line 24
    const-string p1, "The start position must be non-negative"

    .line 25
    .line 26
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    const-string p1, "The start position must be smaller than the end position"

    .line 33
    .line 34
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0

    .line 38
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    .line 39
    .line 40
    const-string p1, "The textView text must not be null"

    .line 41
    .line 42
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0
.end method


# virtual methods
.method public a()Lcom/transsion/baseui/widget/jumpingbeans/a;
    .locals 4

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->g:Ljava/lang/CharSequence;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->h:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-direct {p0, v0}, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->c(Landroid/text/SpannableStringBuilder;)[Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-direct {p0, v0}, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->b(Landroid/text/SpannableStringBuilder;)[Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :goto_0
    iget-object v2, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->a:Landroid/widget/TextView;

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Lcom/transsion/baseui/widget/jumpingbeans/a;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->a:Landroid/widget/TextView;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/baseui/widget/jumpingbeans/a;-><init>([Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;Landroid/widget/TextView;Lcom/transsion/baseui/widget/jumpingbeans/b;)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method public e(II)Lcom/transsion/baseui/widget/jumpingbeans/a$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->a:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, p2, v0}, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->d(IILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->g:Ljava/lang/CharSequence;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->h:Z

    .line 14
    .line 15
    iput p1, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->b:I

    .line 16
    .line 17
    iput p2, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->c:I

    .line 18
    .line 19
    return-object p0
.end method

.method public f(F)Lcom/transsion/baseui/widget/jumpingbeans/a$a;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    .line 8
    cmpl-float v0, p1, v0

    .line 9
    .line 10
    if-gtz v0, :cond_0

    .line 11
    .line 12
    iput p1, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->d:F

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string v0, "The animated range must be in the (0, 1] range"

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method

.method public g(Z)Lcom/transsion/baseui/widget/jumpingbeans/a$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->h:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public h(I)Lcom/transsion/baseui/widget/jumpingbeans/a$a;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p1, v0, :cond_0

    .line 3
    .line 4
    iput p1, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->e:I

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    const-string v0, "The loop duration must be bigger than zero"

    .line 10
    .line 11
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    throw p1
.end method

.method public i(I)Lcom/transsion/baseui/widget/jumpingbeans/a$a;
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->f:I

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v0, "The wave char offset must be non-negative"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method
