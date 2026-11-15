.class final Lo9/e$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lo9/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo9/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lo9/e;


# direct methods
.method private constructor <init>(Lo9/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo9/e$b;->a:Lo9/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo9/e;Lo9/e$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lo9/e$b;-><init>(Lo9/e;)V

    return-void
.end method


# virtual methods
.method public a(IILi9/m;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo9/e$b;->a:Lo9/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lo9/e;->k(IILi9/m;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public endMasterElement(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo9/e$b;->a:Lo9/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lo9/e;->n(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public floatElement(ID)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo9/e$b;->a:Lo9/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lo9/e;->q(ID)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getElementType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lo9/e$b;->a:Lo9/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lo9/e;->t(I)I

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
    iget-object v0, p0, Lo9/e$b;->a:Lo9/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lo9/e;->w(IJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public isLevel1Element(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo9/e$b;->a:Lo9/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lo9/e;->y(I)Z

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
    iget-object v0, p0, Lo9/e$b;->a:Lo9/e;

    .line 2
    .line 3
    move v1, p1

    .line 4
    move-wide v2, p2

    .line 5
    move-wide v4, p4

    .line 6
    invoke-virtual/range {v0 .. v5}, Lo9/e;->F(IJJ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public stringElement(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo9/e$b;->a:Lo9/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lo9/e;->G(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
