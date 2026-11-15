.class public final Lc4i;
.super Lf4i;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lf4i;-><init>(Le4i;)V

    return-void
.end method

.method public static final j(I)Lf4i;
    .locals 0

    if-gez p0, :cond_0

    invoke-static {}, Lf4i;->h()Lf4i;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-lez p0, :cond_1

    invoke-static {}, Lf4i;->g()Lf4i;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {}, Lf4i;->f()Lf4i;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final b(II)Lf4i;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    invoke-static {p0}, Lc4i;->j(I)Lf4i;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lf4i;
    .locals 0

    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Lc4i;->j(I)Lf4i;

    move-result-object p0

    return-object p0
.end method

.method public final d(ZZ)Lf4i;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p0

    invoke-static {p0}, Lc4i;->j(I)Lf4i;

    move-result-object p0

    return-object p0
.end method

.method public final e(ZZ)Lf4i;
    .locals 0

    invoke-static {p2, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p0

    invoke-static {p0}, Lc4i;->j(I)Lf4i;

    move-result-object p0

    return-object p0
.end method
