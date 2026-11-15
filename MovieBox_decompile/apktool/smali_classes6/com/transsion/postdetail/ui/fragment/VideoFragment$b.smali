.class public final Lcom/transsion/postdetail/ui/fragment/VideoFragment$b;
.super Landroidx/activity/u;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/fragment/VideoFragment;->initBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/ui/fragment/VideoFragment;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment$b;->a:Lcom/transsion/postdetail/ui/fragment/VideoFragment;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Landroidx/activity/u;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment$b;->a:Lcom/transsion/postdetail/ui/fragment/VideoFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->access$getNeedBackToRoom$p(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v1, Lep/k;->a:Lep/k;

    .line 10
    .line 11
    const/16 v6, 0xf

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    invoke-static/range {v1 .. v7}, Lep/k;->i(Lep/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment$b;->a:Lcom/transsion/postdetail/ui/fragment/VideoFragment;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method
