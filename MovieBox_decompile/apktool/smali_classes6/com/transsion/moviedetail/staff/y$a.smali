.class public final Lcom/transsion/moviedetail/staff/y$a;
.super Ldg/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/moviedetail/staff/y;->o(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/moviedetail/staff/y;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetail/staff/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetail/staff/y$a;->d:Lcom/transsion/moviedetail/staff/y;

    .line 2
    .line 3
    invoke-direct {p0}, Ldg/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transsion/moviedetail/staff/y$a;->d:Lcom/transsion/moviedetail/staff/y;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/transsion/moviedetail/staff/y;->e(Lcom/transsion/moviedetail/staff/y;)Landroidx/lifecycle/b0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 p2, 0x0

    .line 8
    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/moviedetail/staff/bean/MovieStaffList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/moviedetail/staff/y$a;->e(Lcom/transsion/moviedetail/staff/bean/MovieStaffList;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Lcom/transsion/moviedetail/staff/bean/MovieStaffList;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Ldg/a;->c(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/moviedetail/staff/y$a;->d:Lcom/transsion/moviedetail/staff/y;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/transsion/moviedetail/staff/y;->e(Lcom/transsion/moviedetail/staff/y;)Landroidx/lifecycle/b0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
