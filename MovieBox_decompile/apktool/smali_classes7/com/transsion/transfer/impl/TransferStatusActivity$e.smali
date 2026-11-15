.class public final Lcom/transsion/transfer/impl/TransferStatusActivity$e;
.super Landroidx/activity/u;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/impl/TransferStatusActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/impl/TransferStatusActivity;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/impl/TransferStatusActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$e;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$e;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->D0(Lcom/transsion/transfer/impl/TransferStatusActivity;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$e;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->C0(Lcom/transsion/transfer/impl/TransferStatusActivity;)V

    .line 12
    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$e;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->z0(Lcom/transsion/transfer/impl/TransferStatusActivity;)Lcom/transsion/transfer/impl/k;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/k;->j()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$e;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->w0(Lcom/transsion/transfer/impl/TransferStatusActivity;)Lcom/transsion/transfer/impl/ClientViewModel;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/ClientViewModel;->x()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$e;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->E0(Lcom/transsion/transfer/impl/TransferStatusActivity;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$e;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$e;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->J0(Lcom/transsion/transfer/impl/TransferStatusActivity;)V

    .line 54
    .line 55
    .line 56
    :goto_1
    return-void
.end method
