.class public abstract Lcom/android/billingclient/api/h;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/h$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c(Landroid/content/Context;)Lcom/android/billingclient/api/h$a;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/billingclient/api/h$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/billingclient/api/h$a;-><init>(Landroid/content/Context;Lcom/android/billingclient/api/r1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b(Landroid/app/Activity;Lcom/android/billingclient/api/m;)Lcom/android/billingclient/api/n;
.end method

.method public abstract d(Lcom/android/billingclient/api/w;Lcom/android/billingclient/api/s;)V
.end method

.method public abstract e(Lcom/android/billingclient/api/x;Lcom/android/billingclient/api/u;)V
.end method

.method public abstract f(Lcom/android/billingclient/api/j;)V
.end method
