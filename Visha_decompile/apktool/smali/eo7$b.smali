.class public Leo7$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lml7$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leo7;->b(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Leo7;


# direct methods
.method public constructor <init>(Leo7;)V
    .locals 0

    iput-object p1, p0, Leo7$b;->a:Leo7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public C(J)V
    .locals 1

    iget-object v0, p0, Leo7$b;->a:Leo7;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Leo7$b;->a:Leo7;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Lbm7;

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1, p2}, Lbm7;->p(ZJ)V

    return-void
.end method

.method public a()V
    .locals 3

    iget-object v0, p0, Leo7$b;->a:Leo7;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Leo7$b;->a:Leo7;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Lbm7;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Lbm7;->p(ZJ)V

    return-void
.end method
