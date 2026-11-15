.class public Lcb1$a;
.super Lcb1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcb1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcb1;-><init>(Lcb1$a;)V

    return-void
.end method


# virtual methods
.method public d(II)Lcb1;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcb1$a;->l(I)Lcb1;

    move-result-object p0

    return-object p0
.end method

.method public e(JJ)Lcb1;
    .locals 0

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    invoke-virtual {p0, p1}, Lcb1$a;->l(I)Lcb1;

    move-result-object p0

    return-object p0
.end method

.method public f(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcb1;
    .locals 0

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcb1$a;->l(I)Lcb1;

    move-result-object p0

    return-object p0
.end method

.method public g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcb1;
    .locals 0

    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcb1$a;->l(I)Lcb1;

    move-result-object p0

    return-object p0
.end method

.method public h(ZZ)Lcb1;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p1

    invoke-virtual {p0, p1}, Lcb1$a;->l(I)Lcb1;

    move-result-object p0

    return-object p0
.end method

.method public i(ZZ)Lcb1;
    .locals 0

    invoke-static {p2, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p1

    invoke-virtual {p0, p1}, Lcb1$a;->l(I)Lcb1;

    move-result-object p0

    return-object p0
.end method

.method public j()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public l(I)Lcb1;
    .locals 0

    if-gez p1, :cond_0

    invoke-static {}, Lcb1;->a()Lcb1;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    invoke-static {}, Lcb1;->b()Lcb1;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcb1;->c()Lcb1;

    move-result-object p0

    :goto_0
    return-object p0
.end method
