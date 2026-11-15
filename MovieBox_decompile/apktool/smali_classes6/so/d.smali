.class public final synthetic Lso/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lso/e;

.field public final synthetic b:Lcom/transsion/publish/view/operation/OperationBean;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lso/e;Lcom/transsion/publish/view/operation/OperationBean;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lso/d;->a:Lso/e;

    .line 5
    .line 6
    iput-object p2, p0, Lso/d;->b:Lcom/transsion/publish/view/operation/OperationBean;

    .line 7
    .line 8
    iput p3, p0, Lso/d;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lso/d;->a:Lso/e;

    .line 2
    .line 3
    iget-object v1, p0, Lso/d;->b:Lcom/transsion/publish/view/operation/OperationBean;

    .line 4
    .line 5
    iget v2, p0, Lso/d;->c:I

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Lso/e;->g(Lso/e;Lcom/transsion/publish/view/operation/OperationBean;ILandroid/view/View;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
