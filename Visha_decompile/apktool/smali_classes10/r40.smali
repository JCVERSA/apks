.class public Lr40;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public final g:Ly40;

.field public h:I

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lr40;->a:I

    iput p2, p0, Lr40;->b:I

    iput p3, p0, Lr40;->d:I

    iput p5, p0, Lr40;->e:I

    iput p6, p0, Lr40;->f:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lr40;->c:I

    div-int/lit8 p4, p4, 0x8

    iput p4, p0, Lr40;->h:I

    add-int/lit8 p2, p1, 0x7

    ushr-int/lit8 p2, p2, 0x3

    iput p2, p0, Lr40;->i:I

    mul-int/lit8 p2, p1, 0x2

    add-int/lit8 p2, p2, 0x7

    ushr-int/lit8 p2, p2, 0x3

    iput p2, p0, Lr40;->j:I

    new-instance p2, Ly40;

    invoke-direct {p2, p1}, Ly40;-><init>(I)V

    iput-object p2, p0, Lr40;->g:Ly40;

    return-void
.end method
