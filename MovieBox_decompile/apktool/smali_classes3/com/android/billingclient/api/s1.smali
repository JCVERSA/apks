.class public final synthetic Lcom/android/billingclient/api/s1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/android/billingclient/api/i;

.field public final synthetic b:Lcom/android/billingclient/api/w;

.field public final synthetic c:Lcom/android/billingclient/api/s;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/i;Lcom/android/billingclient/api/w;Lcom/android/billingclient/api/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/billingclient/api/s1;->a:Lcom/android/billingclient/api/i;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/billingclient/api/s1;->b:Lcom/android/billingclient/api/w;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/billingclient/api/s1;->c:Lcom/android/billingclient/api/s;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/s1;->a:Lcom/android/billingclient/api/i;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/billingclient/api/s1;->b:Lcom/android/billingclient/api/w;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/billingclient/api/s1;->c:Lcom/android/billingclient/api/s;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/i;->U(Lcom/android/billingclient/api/w;Lcom/android/billingclient/api/s;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method
