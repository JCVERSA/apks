.class public final Lcb1$b;
.super Lcb1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcb1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final d:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcb1;-><init>(Lcb1$a;)V

    iput p1, p0, Lcb1$b;->d:I

    return-void
.end method


# virtual methods
.method public d(II)Lcb1;
    .locals 0

    return-object p0
.end method

.method public e(JJ)Lcb1;
    .locals 0

    return-object p0
.end method

.method public f(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcb1;
    .locals 0

    return-object p0
.end method

.method public g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcb1;
    .locals 0

    return-object p0
.end method

.method public h(ZZ)Lcb1;
    .locals 0

    return-object p0
.end method

.method public i(ZZ)Lcb1;
    .locals 0

    return-object p0
.end method

.method public j()I
    .locals 0

    iget p0, p0, Lcb1$b;->d:I

    return p0
.end method
