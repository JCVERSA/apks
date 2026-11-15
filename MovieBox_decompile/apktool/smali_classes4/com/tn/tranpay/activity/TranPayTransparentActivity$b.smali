.class public final Lcom/tn/tranpay/activity/TranPayTransparentActivity$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/tn/tranpay/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/tranpay/activity/TranPayTransparentActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tn/tranpay/d;

.field final synthetic b:Lcom/tn/tranpay/activity/TranPayTransparentActivity;


# direct methods
.method constructor <init>(Lcom/tn/tranpay/d;Lcom/tn/tranpay/activity/TranPayTransparentActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tn/tranpay/activity/TranPayTransparentActivity$b;->a:Lcom/tn/tranpay/d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/tn/tranpay/activity/TranPayTransparentActivity$b;->b:Lcom/tn/tranpay/activity/TranPayTransparentActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/tn/tranpay/b;Lcom/tn/tranpay/c;)V
    .locals 4

    .line 1
    const-string v0, "result"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Llh/a;->a:Llh/a;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/tn/tranpay/b;->b()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v3, "TranPayTransparentActivity: Payment callback received, code="

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x2

    .line 31
    invoke-static {v0, v1, v2, v3, v2}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/tn/tranpay/activity/TranPayTransparentActivity$b;->a:Lcom/tn/tranpay/d;

    .line 35
    .line 36
    invoke-interface {v1, p1, p2}, Lcom/tn/tranpay/d;->a(Lcom/tn/tranpay/b;Lcom/tn/tranpay/c;)V

    .line 37
    .line 38
    .line 39
    const-string p1, "TranPayTransparentActivity: Payment completed, finishing activity"

    .line 40
    .line 41
    invoke-static {v0, p1, v2, v3, v2}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/tn/tranpay/activity/TranPayTransparentActivity$b;->b:Lcom/tn/tranpay/activity/TranPayTransparentActivity;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 47
    .line 48
    .line 49
    return-void
.end method
