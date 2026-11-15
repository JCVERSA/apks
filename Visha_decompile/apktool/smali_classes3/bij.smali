.class public final Lbij;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lerj;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:Laof;

.field public final j:Z

.field public final k:Z

.field public final l:Z


# direct methods
.method public constructor <init>(Lerj;IIIIIIILaof;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbij;->a:Lerj;

    iput p2, p0, Lbij;->b:I

    iput p3, p0, Lbij;->c:I

    iput p4, p0, Lbij;->d:I

    iput p5, p0, Lbij;->e:I

    iput p6, p0, Lbij;->f:I

    iput p7, p0, Lbij;->g:I

    iput p8, p0, Lbij;->h:I

    iput-object p9, p0, Lbij;->i:Laof;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lbij;->j:Z

    iput-boolean p1, p0, Lbij;->k:Z

    iput-boolean p1, p0, Lbij;->l:Z

    return-void
.end method


# virtual methods
.method public final a()Lehj;
    .locals 9

    iget v0, p0, Lbij;->c:I

    new-instance v8, Lehj;

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    iget v4, p0, Lbij;->f:I

    iget v3, p0, Lbij;->e:I

    iget v2, p0, Lbij;->g:I

    const/4 v5, 0x0

    iget v7, p0, Lbij;->h:I

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lehj;-><init>(IIIZZI)V

    return-object v8
.end method
