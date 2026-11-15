.class public abstract Lcom/tn/tranpay/report/b$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tn/tranpay/report/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lcom/tn/tranpay/report/b;)Lcom/tn/tranpay/report/c;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public static b(Lcom/tn/tranpay/report/b;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/tn/tranpay/report/b;->getLogViewConfig()Lcom/tn/tranpay/report/c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/tn/tranpay/report/c;->d()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lcom/tn/tranpay/report/e;->a:Lcom/tn/tranpay/report/e;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lcom/tn/tranpay/report/e;->f(Lcom/tn/tranpay/report/c;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public static c(Lcom/tn/tranpay/report/b;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/tn/tranpay/report/b;->getLogViewConfig()Lcom/tn/tranpay/report/c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/tn/tranpay/report/c;->k(J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/tn/tranpay/report/c;->c()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    sget-object v0, Lcom/tn/tranpay/report/e;->a:Lcom/tn/tranpay/report/e;

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Lcom/tn/tranpay/report/e;->g(Lcom/tn/tranpay/report/c;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
