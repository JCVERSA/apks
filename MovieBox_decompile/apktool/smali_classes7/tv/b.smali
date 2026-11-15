.class public final synthetic Ltv/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/transsion/version/update/dialog/UpdateDialog;


# direct methods
.method public synthetic constructor <init>(ZLcom/transsion/version/update/dialog/UpdateDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Ltv/b;->a:Z

    .line 5
    .line 6
    iput-object p2, p0, Ltv/b;->b:Lcom/transsion/version/update/dialog/UpdateDialog;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ltv/b;->a:Z

    .line 2
    .line 3
    iget-object v1, p0, Ltv/b;->b:Lcom/transsion/version/update/dialog/UpdateDialog;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/transsion/version/update/dialog/UpdateDialog;->o0(ZLcom/transsion/version/update/dialog/UpdateDialog;Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
