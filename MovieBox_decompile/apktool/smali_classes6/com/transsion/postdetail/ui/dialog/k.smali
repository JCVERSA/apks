.class public final Lcom/transsion/postdetail/ui/dialog/k;
.super Landroidx/lifecycle/t0;
.source "source.java"


# instance fields
.field private final a:Landroidx/lifecycle/b0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/lifecycle/b0;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/postdetail/ui/dialog/k;->a:Landroidx/lifecycle/b0;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final b()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/dialog/k;->a:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c(F)V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/baselib/helper/d;->a:Lcom/transsion/baselib/helper/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/baselib/helper/d;->g(F)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/postdetail/ui/dialog/k;->a:Landroidx/lifecycle/b0;

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
