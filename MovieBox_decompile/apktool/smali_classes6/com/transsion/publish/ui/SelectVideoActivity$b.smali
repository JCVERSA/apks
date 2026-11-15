.class public final Lcom/transsion/publish/ui/SelectVideoActivity$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/blankj/utilcode/util/PermissionUtils$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/ui/SelectVideoActivity;->A0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/publish/ui/SelectVideoActivity;


# direct methods
.method constructor <init>(Lcom/transsion/publish/ui/SelectVideoActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/publish/ui/SelectVideoActivity$b;->a:Lcom/transsion/publish/ui/SelectVideoActivity;

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
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectVideoActivity$b;->a:Lcom/transsion/publish/ui/SelectVideoActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/publish/ui/SelectVideoActivity;->j0(Lcom/transsion/publish/ui/SelectVideoActivity;)Landroid/widget/LinearLayout;

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
    return-void
.end method

.method public onGranted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectVideoActivity$b;->a:Lcom/transsion/publish/ui/SelectVideoActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/publish/ui/SelectVideoActivity;->j0(Lcom/transsion/publish/ui/SelectVideoActivity;)Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectVideoActivity$b;->a:Lcom/transsion/publish/ui/SelectVideoActivity;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/transsion/publish/ui/SelectVideoActivity;->n0(Lcom/transsion/publish/ui/SelectVideoActivity;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
