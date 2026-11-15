.class public Lah/b;
.super Landroid/text/SpannableString;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0, p2}, Lah/b;->d(I)Lah/b;

    .line 4
    invoke-virtual {p0, p3}, Lah/b;->c(I)Lah/b;

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)Lah/b;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    invoke-virtual {p0, v0, v1, p1}, Lah/b;->b(II[Ljava/lang/Object;)Lah/b;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public varargs b(II[Ljava/lang/Object;)Lah/b;
    .locals 4

    .line 1
    if-gt p1, p2, :cond_2

    .line 2
    .line 3
    if-eqz p3, :cond_2

    .line 4
    .line 5
    array-length v0, p3

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_2

    .line 9
    :cond_0
    array-length v0, p3

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_2

    .line 12
    .line 13
    aget-object v2, p3, v1

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    const/16 v3, 0x21

    .line 19
    .line 20
    invoke-super {p0, v2, p1, p2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 21
    .line 22
    .line 23
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    :goto_2
    return-object p0
.end method

.method public c(I)Lah/b;
    .locals 2

    .line 1
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    new-array p1, p1, [Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    aput-object v0, p1, v1

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lah/b;->a([Ljava/lang/Object;)Lah/b;

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public d(I)Lah/b;
    .locals 2

    .line 1
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p1, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 5
    .line 6
    .line 7
    new-array p1, v1, [Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    aput-object v0, p1, v1

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lah/b;->a([Ljava/lang/Object;)Lah/b;

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public e(Landroid/graphics/Typeface;)Lah/b;
    .locals 2

    .line 1
    new-instance v0, Lah/a;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lah/a;-><init>(Landroid/graphics/Typeface;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    new-array p1, p1, [Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    aput-object v0, p1, v1

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lah/b;->a([Ljava/lang/Object;)Lah/b;

    .line 13
    .line 14
    .line 15
    return-object p0
.end method
