.class public final La62$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La62;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final b:Z

.field public final c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/k;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget p1, p1, Lcom/google/android/exoplayer2/k;->e:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, La62$c;->b:Z

    invoke-static {p2, v1}, La62;->I(IZ)Z

    move-result p1

    iput-boolean p1, p0, La62$c;->c:Z

    return-void
.end method


# virtual methods
.method public a(La62$c;)I
    .locals 3

    invoke-static {}, Lcb1;->k()Lcb1;

    move-result-object v0

    iget-boolean v1, p0, La62$c;->c:Z

    iget-boolean v2, p1, La62$c;->c:Z

    invoke-virtual {v0, v1, v2}, Lcb1;->h(ZZ)Lcb1;

    move-result-object v0

    iget-boolean p0, p0, La62$c;->b:Z

    iget-boolean p1, p1, La62$c;->b:Z

    invoke-virtual {v0, p0, p1}, Lcb1;->h(ZZ)Lcb1;

    move-result-object p0

    invoke-virtual {p0}, Lcb1;->j()I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, La62$c;

    invoke-virtual {p0, p1}, La62$c;->a(La62$c;)I

    move-result p0

    return p0
.end method
