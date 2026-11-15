.class public Ldr1;
.super Lq40;
.source "SourceFile"


# instance fields
.field public final e:Z


# direct methods
.method public constructor <init>(IIZLu1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lq40;-><init>(IILu1;)V

    iput-boolean p3, p0, Ldr1;->e:Z

    return-void
.end method


# virtual methods
.method public b()Lp1;
    .locals 3

    iget-object v0, p0, Lq40;->d:Lu1;

    iget v1, p0, Lq40;->b:I

    iget v2, p0, Lq40;->c:I

    iget-boolean p0, p0, Ldr1;->e:Z

    invoke-virtual {v0, v1, v2, p0}, Lu1;->b(IIZ)Lp1;

    move-result-object p0

    return-object p0
.end method
