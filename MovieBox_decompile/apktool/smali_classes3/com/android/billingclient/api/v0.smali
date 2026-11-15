.class public final Lcom/android/billingclient/api/v0;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:Z


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/u0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a()Lcom/android/billingclient/api/v0;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/billingclient/api/v0;->a:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public final b()Lcom/android/billingclient/api/x0;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/billingclient/api/v0;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/billingclient/api/x0;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-direct {v0, v3, v1, v2}, Lcom/android/billingclient/api/x0;-><init>(ZZLcom/android/billingclient/api/w0;)V

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    const-string v1, "Pending purchases for one-time products must be supported."

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method
