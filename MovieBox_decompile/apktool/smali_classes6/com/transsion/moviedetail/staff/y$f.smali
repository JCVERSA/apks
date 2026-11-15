.class public final Lcom/transsion/moviedetail/staff/y$f;
.super Ldg/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/moviedetail/staff/y;->y(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/moviedetail/staff/y;

.field final synthetic e:I


# direct methods
.method constructor <init>(Lcom/transsion/moviedetail/staff/y;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetail/staff/y$f;->d:Lcom/transsion/moviedetail/staff/y;

    .line 2
    .line 3
    iput p2, p0, Lcom/transsion/moviedetail/staff/y$f;->e:I

    .line 4
    .line 5
    invoke-direct {p0}, Ldg/a;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transsion/moviedetail/staff/y$f;->d:Lcom/transsion/moviedetail/staff/y;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/transsion/moviedetail/staff/y;->i(Lcom/transsion/moviedetail/staff/y;)Landroidx/lifecycle/b0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 p2, -0x1

    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/moviedetail/staff/y$f;->e(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Ldg/a;->c(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/transsion/moviedetail/staff/y$f;->d:Lcom/transsion/moviedetail/staff/y;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/transsion/moviedetail/staff/y;->i(Lcom/transsion/moviedetail/staff/y;)Landroidx/lifecycle/b0;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget v0, p0, Lcom/transsion/moviedetail/staff/y$f;->e:I

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
