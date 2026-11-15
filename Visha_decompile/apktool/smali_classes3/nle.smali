.class public final Lnle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnle;->a:I

    iput-wide p2, p0, Lnle;->b:J

    return-void
.end method

.method public static a(Ld9e;Lu4h;)Lnle;
    .locals 3

    invoke-virtual {p1}, Lu4h;->n()[B

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2, v1}, Ld9e;->i([BII)V

    invoke-virtual {p1, v2}, Lu4h;->l(I)V

    invoke-virtual {p1}, Lu4h;->A()I

    move-result p0

    invoke-virtual {p1}, Lu4h;->M()J

    move-result-wide v0

    new-instance p1, Lnle;

    invoke-direct {p1, p0, v0, v1}, Lnle;-><init>(IJ)V

    return-object p1
.end method
