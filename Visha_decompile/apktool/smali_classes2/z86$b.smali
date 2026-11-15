.class public final Lz86$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly53;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz86;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lz86;


# direct methods
.method public constructor <init>(Lz86;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz86$b;->a:Lz86;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lz86;Lz86$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lz86$b;-><init>(Lz86;)V

    return-void
.end method


# virtual methods
.method public a(IILpk3;)V
    .locals 0

    iget-object p0, p0, Lz86$b;->a:Lz86;

    invoke-virtual {p0, p1, p2, p3}, Lz86;->k(IILpk3;)V

    return-void
.end method

.method public endMasterElement(I)V
    .locals 0

    iget-object p0, p0, Lz86$b;->a:Lz86;

    invoke-virtual {p0, p1}, Lz86;->n(I)V

    return-void
.end method

.method public floatElement(ID)V
    .locals 0

    iget-object p0, p0, Lz86$b;->a:Lz86;

    invoke-virtual {p0, p1, p2, p3}, Lz86;->q(ID)V

    return-void
.end method

.method public getElementType(I)I
    .locals 0

    iget-object p0, p0, Lz86$b;->a:Lz86;

    invoke-virtual {p0, p1}, Lz86;->t(I)I

    move-result p0

    return p0
.end method

.method public integerElement(IJ)V
    .locals 0

    iget-object p0, p0, Lz86$b;->a:Lz86;

    invoke-virtual {p0, p1, p2, p3}, Lz86;->w(IJ)V

    return-void
.end method

.method public isLevel1Element(I)Z
    .locals 0

    iget-object p0, p0, Lz86$b;->a:Lz86;

    invoke-virtual {p0, p1}, Lz86;->y(I)Z

    move-result p0

    return p0
.end method

.method public startMasterElement(IJJ)V
    .locals 6

    iget-object v0, p0, Lz86$b;->a:Lz86;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lz86;->F(IJJ)V

    return-void
.end method

.method public stringElement(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lz86$b;->a:Lz86;

    invoke-virtual {p0, p1, p2}, Lz86;->G(ILjava/lang/String;)V

    return-void
.end method
