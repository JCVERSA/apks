.class final Lcom/android/billingclient/api/q1;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/android/billingclient/api/p1;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/billingclient/api/t0;Lcom/android/billingclient/api/n0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/q1;->a:Landroid/content/Context;

    new-instance p1, Lcom/android/billingclient/api/p1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2, p3, p2}, Lcom/android/billingclient/api/p1;-><init>(Lcom/android/billingclient/api/q1;Lcom/android/billingclient/api/t0;Lcom/android/billingclient/api/n0;Lcom/android/billingclient/api/n1;)V

    iput-object p1, p0, Lcom/android/billingclient/api/q1;->b:Lcom/android/billingclient/api/p1;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/billingclient/api/v;Lcom/android/billingclient/api/c;Lcom/android/billingclient/api/n0;)V
    .locals 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/q1;->a:Landroid/content/Context;

    new-instance p1, Lcom/android/billingclient/api/p1;

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/billingclient/api/p1;-><init>(Lcom/android/billingclient/api/q1;Lcom/android/billingclient/api/v;Lcom/android/billingclient/api/c;Lcom/android/billingclient/api/n0;Lcom/android/billingclient/api/n1;)V

    iput-object p1, p0, Lcom/android/billingclient/api/q1;->b:Lcom/android/billingclient/api/p1;

    return-void
.end method

.method static bridge synthetic a(Lcom/android/billingclient/api/q1;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/q1;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic b(Lcom/android/billingclient/api/q1;)Lcom/android/billingclient/api/p1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/q1;->b:Lcom/android/billingclient/api/p1;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method final c()Lcom/android/billingclient/api/t0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/q1;->b:Lcom/android/billingclient/api/p1;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/billingclient/api/p1;->a(Lcom/android/billingclient/api/p1;)Lcom/android/billingclient/api/t0;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    return-object v0
.end method

.method final d()Lcom/android/billingclient/api/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/q1;->b:Lcom/android/billingclient/api/p1;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/billingclient/api/p1;->b(Lcom/android/billingclient/api/p1;)Lcom/android/billingclient/api/v;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method final e(Z)V
    .locals 3

    .line 1
    new-instance p1, Landroid/content/IntentFilter;

    .line 2
    .line 3
    const-string v0, "com.android.vending.billing.PURCHASES_UPDATED"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/billingclient/api/q1;->a:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    const-string v0, "com.android.vending.billing.ALTERNATIVE_BILLING"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/billingclient/api/q1;->b:Lcom/android/billingclient/api/p1;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/billingclient/api/q1;->a:Landroid/content/Context;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/android/billingclient/api/p1;->c(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
