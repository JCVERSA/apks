.class public final Lcom/tn/tranpay/fragment/PayLoadingFragment$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/tn/tranpay/fragment/PayFragment$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/tranpay/fragment/PayLoadingFragment;->j0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tn/tranpay/fragment/PayLoadingFragment;


# direct methods
.method constructor <init>(Lcom/tn/tranpay/fragment/PayLoadingFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$c;->a:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$c;->a:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->Z(Lcom/tn/tranpay/fragment/PayLoadingFragment;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$c;->a:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$c;->a:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$c;->a:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
