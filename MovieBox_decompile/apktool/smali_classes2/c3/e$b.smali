.class final Lc3/e$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lc3/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc3/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lc3/e;


# direct methods
.method private constructor <init>(Lc3/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc3/e$b;->a:Lc3/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc3/e;Lc3/e$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lc3/e$b;-><init>(Lc3/e;)V

    return-void
.end method


# virtual methods
.method public a(IILk2/s;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc3/e$b;->a:Lc3/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lc3/e;->m(IILk2/s;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public endMasterElement(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc3/e$b;->a:Lc3/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lc3/e;->p(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public floatElement(ID)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc3/e$b;->a:Lc3/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lc3/e;->s(ID)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getElementType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lc3/e$b;->a:Lc3/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lc3/e;->v(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public integerElement(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc3/e$b;->a:Lc3/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lc3/e;->y(IJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public isLevel1Element(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc3/e$b;->a:Lc3/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lc3/e;->A(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public startMasterElement(IJJ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lc3/e$b;->a:Lc3/e;

    .line 2
    .line 3
    move v1, p1

    .line 4
    move-wide v2, p2

    .line 5
    move-wide v4, p4

    .line 6
    invoke-virtual/range {v0 .. v5}, Lc3/e;->H(IJJ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public stringElement(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc3/e$b;->a:Lc3/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lc3/e;->I(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
