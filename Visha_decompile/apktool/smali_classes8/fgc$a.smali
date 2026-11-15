.class public final Lfgc$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd8;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfgc;->a(Li53;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lfgc$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lqd8;)Lqd8;
    .locals 3

    instance-of v0, p1, Legc;

    if-eqz v0, :cond_0

    check-cast p1, Legc;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Legc;->a()I

    move-result v1

    iget v2, p0, Lfgc$a;->a:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p1, v0}, Legc;->i(I)V

    return-object p1

    :cond_1
    new-instance v1, Legc;

    invoke-direct {v1}, Legc;-><init>()V

    invoke-virtual {v1, v0}, Legc;->i(I)V

    iget p0, p0, Lfgc$a;->a:I

    invoke-virtual {v1, p0}, Legc;->f(I)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Legc;->b()[Li53;

    move-result-object p0

    invoke-virtual {v1, p0}, Legc;->g([Li53;)V

    invoke-virtual {p1}, Legc;->c()[Li53;

    move-result-object p0

    invoke-virtual {v1, p0}, Legc;->h([Li53;)V

    invoke-virtual {p1}, Legc;->d()Li53;

    move-result-object p0

    invoke-virtual {v1, p0}, Legc;->j(Li53;)V

    invoke-virtual {p1}, Legc;->e()I

    move-result p0

    invoke-virtual {v1, p0}, Legc;->k(I)V

    :cond_2
    return-object v1
.end method
