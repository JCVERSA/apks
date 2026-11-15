.class public Lbk7$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lml7$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbk7;->b(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lbk7;


# direct methods
.method public constructor <init>(Lbk7;)V
    .locals 0

    iput-object p1, p0, Lbk7$c;->a:Lbk7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public C(J)V
    .locals 1

    iget-object p0, p0, Lbk7$c;->a:Lbk7;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Ljm7;

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1, p2}, Ljm7;->c(ZJ)V

    return-void
.end method

.method public a()V
    .locals 3

    iget-object p0, p0, Lbk7$c;->a:Lbk7;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Ljm7;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Ljm7;->c(ZJ)V

    return-void
.end method
