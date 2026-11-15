.class public final Lcom/tn/tranpay/fragment/PayFragment$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tn/tranpay/fragment/PayFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tn/tranpay/fragment/PayFragment$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tn/tranpay/BillingParams;Lcom/tn/tranpay/bean/LoadConfigContent;Lcom/tn/tranpay/d;)Lcom/tn/tranpay/fragment/PayFragment;
    .locals 3

    .line 1
    const-string v0, "params"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/tn/tranpay/fragment/PayFragment;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/tn/tranpay/fragment/PayFragment;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "paymentParams"

    .line 17
    .line 18
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 19
    .line 20
    .line 21
    const-string v2, "configBean"

    .line 22
    .line 23
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0, p1}, Lcom/tn/tranpay/fragment/PayFragment;->h0(Lcom/tn/tranpay/fragment/PayFragment;Lcom/tn/tranpay/BillingParams;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0, p2}, Lcom/tn/tranpay/fragment/PayFragment;->f0(Lcom/tn/tranpay/fragment/PayFragment;Lcom/tn/tranpay/bean/LoadConfigContent;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0, p3}, Lcom/tn/tranpay/fragment/PayFragment;->g0(Lcom/tn/tranpay/fragment/PayFragment;Lcom/tn/tranpay/d;)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method
