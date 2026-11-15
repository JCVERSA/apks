.class final Lcom/android/billingclient/api/c0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/android/billingclient/api/u;

.field final synthetic c:Lcom/android/billingclient/api/i;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/i;Ljava/lang/String;Lcom/android/billingclient/api/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/c0;->c:Lcom/android/billingclient/api/i;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/billingclient/api/c0;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/billingclient/api/c0;->b:Lcom/android/billingclient/api/u;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/c0;->c:Lcom/android/billingclient/api/i;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/billingclient/api/c0;->a:Ljava/lang/String;

    .line 4
    .line 5
    const/16 v2, 0x9

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/android/billingclient/api/i;->E(Lcom/android/billingclient/api/i;Ljava/lang/String;I)Lcom/android/billingclient/api/e1;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/android/billingclient/api/e1;->b()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/billingclient/api/c0;->b:Lcom/android/billingclient/api/u;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/billingclient/api/e1;->a()Lcom/android/billingclient/api/n;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0}, Lcom/android/billingclient/api/e1;->b()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v1, v2, v0}, Lcom/android/billingclient/api/u;->a(Lcom/android/billingclient/api/n;Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/android/billingclient/api/c0;->b:Lcom/android/billingclient/api/u;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/android/billingclient/api/e1;->a()Lcom/android/billingclient/api/n;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzaf;->zzk()Lcom/google/android/gms/internal/play_billing/zzaf;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-interface {v1, v0, v2}, Lcom/android/billingclient/api/u;->a(Lcom/android/billingclient/api/n;Ljava/util/List;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    const/4 v0, 0x0

    .line 45
    return-object v0
.end method
