.class public final Lcom/transsion/publish/ui/SelectImageActivity$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/blankj/utilcode/util/PermissionUtils$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/ui/SelectImageActivity;->L0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/publish/ui/SelectImageActivity;


# direct methods
.method constructor <init>(Lcom/transsion/publish/ui/SelectImageActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/publish/ui/SelectImageActivity$c;->a:Lcom/transsion/publish/ui/SelectImageActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDenied()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectImageActivity$c;->a:Lcom/transsion/publish/ui/SelectImageActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/publish/ui/SelectImageActivity;->n0(Lcom/transsion/publish/ui/SelectImageActivity;)Landroid/widget/LinearLayout;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectImageActivity$c;->a:Lcom/transsion/publish/ui/SelectImageActivity;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/transsion/publish/ui/SelectImageActivity;->q0(Lcom/transsion/publish/ui/SelectImageActivity;)Landroid/widget/ProgressBar;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public onGranted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectImageActivity$c;->a:Lcom/transsion/publish/ui/SelectImageActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/publish/ui/SelectImageActivity;->n0(Lcom/transsion/publish/ui/SelectImageActivity;)Landroid/widget/LinearLayout;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectImageActivity$c;->a:Lcom/transsion/publish/ui/SelectImageActivity;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/transsion/publish/ui/SelectImageActivity;->t0(Lcom/transsion/publish/ui/SelectImageActivity;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
