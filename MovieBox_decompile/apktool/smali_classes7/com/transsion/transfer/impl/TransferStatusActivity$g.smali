.class public final Lcom/transsion/transfer/impl/TransferStatusActivity$g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/transfer/impl/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/impl/TransferStatusActivity;-><init>()V
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
    iput-object p1, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$g;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic c(Lcom/transsion/transfer/impl/TransferStatusActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/transfer/impl/TransferStatusActivity$g;->d(Lcom/transsion/transfer/impl/TransferStatusActivity;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final d(Lcom/transsion/transfer/impl/TransferStatusActivity;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/transfer/impl/TransferStatusActivity;->l:Lcom/transsion/transfer/impl/TransferStatusActivity$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/TransferStatusActivity$a;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-static {p0, v0, p1}, Lcom/transsion/transfer/impl/TransferStatusActivity;->v0(Lcom/transsion/transfer/impl/TransferStatusActivity;ZLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "clientIp"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "clientDeviceName"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$g;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lxt/b;

    .line 18
    .line 19
    invoke-virtual {p1}, Lxt/b;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$g;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    .line 24
    .line 25
    new-instance v1, Lcom/transsion/transfer/impl/t0;

    .line 26
    .line 27
    invoke-direct {v1, v0, p2}, Lcom/transsion/transfer/impl/t0;-><init>(Lcom/transsion/transfer/impl/TransferStatusActivity;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "MODEL"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
