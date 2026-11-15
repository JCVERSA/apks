.class public final Lcom/transsion/transfer/impl/TransferStatusActivity$d;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/impl/TransferStatusActivity;->initView()V
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
    iput-object p1, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$d;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    sget-object p1, Lcom/transsion/transfer/impl/TransferSentFragment;->d:Lcom/transsion/transfer/impl/TransferSentFragment$a;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/transsion/transfer/impl/TransferSentFragment$a;->a()Lcom/transsion/transfer/impl/TransferSentFragment;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$d;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    .line 13
    .line 14
    invoke-static {v0, p1}, Lcom/transsion/transfer/impl/TransferStatusActivity;->H0(Lcom/transsion/transfer/impl/TransferStatusActivity;Lcom/transsion/transfer/impl/TransferSentFragment;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object p1, Lcom/transsion/transfer/impl/TransferSentFragment;->d:Lcom/transsion/transfer/impl/TransferSentFragment$a;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/transsion/transfer/impl/TransferSentFragment$a;->a()Lcom/transsion/transfer/impl/TransferSentFragment;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$d;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    .line 25
    .line 26
    invoke-static {v0, p1}, Lcom/transsion/transfer/impl/TransferStatusActivity;->H0(Lcom/transsion/transfer/impl/TransferStatusActivity;Lcom/transsion/transfer/impl/TransferSentFragment;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    sget-object p1, Lcom/transsion/transfer/impl/TransferReceivedFragment;->d:Lcom/transsion/transfer/impl/TransferReceivedFragment$a;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/transsion/transfer/impl/TransferReceivedFragment$a;->a()Lcom/transsion/transfer/impl/TransferReceivedFragment;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$d;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    .line 37
    .line 38
    invoke-static {v0, p1}, Lcom/transsion/transfer/impl/TransferStatusActivity;->F0(Lcom/transsion/transfer/impl/TransferStatusActivity;Lcom/transsion/transfer/impl/TransferReceivedFragment;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$d;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->B0(Lcom/transsion/transfer/impl/TransferStatusActivity;)[Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v0, v0

    .line 8
    return v0
.end method
