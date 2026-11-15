.class public Lrlb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:Z


# direct methods
.method public constructor <init>(Lhx8;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lhx8;->e()I

    move-result v0

    iput v0, p0, Lrlb;->a:I

    invoke-virtual {p1}, Lhx8;->d()I

    move-result v0

    iput v0, p0, Lrlb;->b:I

    invoke-virtual {p1}, Lhx8;->b()I

    move-result v0

    iput v0, p0, Lrlb;->c:I

    invoke-virtual {p1}, Lhx8;->f()I

    move-result v0

    iput v0, p0, Lrlb;->d:I

    invoke-virtual {p1}, Lhx8;->a()I

    move-result v0

    iput v0, p0, Lrlb;->e:I

    invoke-virtual {p1}, Lhx8;->c()I

    move-result v0

    iput v0, p0, Lrlb;->f:I

    iget-boolean p1, p1, Lhx8;->v:Z

    iput-boolean p1, p0, Lrlb;->g:Z

    return-void
.end method
