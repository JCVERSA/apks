.class public Lcom/android/billingclient/api/m$b$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/m$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/android/billingclient/api/r;

.field private b:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/h0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic d(Lcom/android/billingclient/api/m$b$a;)Lcom/android/billingclient/api/r;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/m$b$a;->a:Lcom/android/billingclient/api/r;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic e(Lcom/android/billingclient/api/m$b$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/m$b$a;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a()Lcom/android/billingclient/api/m$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/m$b$a;->a:Lcom/android/billingclient/api/r;

    .line 2
    .line 3
    const-string v1, "ProductDetails is required for constructing ProductDetailsParams."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzx;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/billingclient/api/m$b$a;->b:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "offerToken is required for constructing ProductDetailsParams."

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzx;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/android/billingclient/api/m$b;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, p0, v1}, Lcom/android/billingclient/api/m$b;-><init>(Lcom/android/billingclient/api/m$b$a;Lcom/android/billingclient/api/i0;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/android/billingclient/api/m$b$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/m$b$a;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public c(Lcom/android/billingclient/api/r;)Lcom/android/billingclient/api/m$b$a;
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/m$b$a;->a:Lcom/android/billingclient/api/r;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/billingclient/api/r;->a()Lcom/android/billingclient/api/r$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/android/billingclient/api/r;->a()Lcom/android/billingclient/api/r$a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/android/billingclient/api/r;->a()Lcom/android/billingclient/api/r$a;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/android/billingclient/api/r$a;->a()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/android/billingclient/api/m$b$a;->b:Ljava/lang/String;

    .line 25
    .line 26
    :cond_0
    return-object p0
.end method
