.class public final Lcom/android/billingclient/api/h$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private volatile a:Lcom/android/billingclient/api/x0;

.field private final b:Landroid/content/Context;

.field private volatile c:Lcom/android/billingclient/api/v;

.field private volatile d:Z


# direct methods
.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/billingclient/api/r1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/billingclient/api/h$a;->b:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Lcom/android/billingclient/api/h;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/billingclient/api/h$a;->b:Landroid/content/Context;

    .line 4
    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/billingclient/api/h$a;->c:Lcom/android/billingclient/api/v;

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    iget-boolean v1, v0, Lcom/android/billingclient/api/h$a;->d:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Lcom/android/billingclient/api/i;

    .line 16
    .line 17
    iget-object v2, v0, Lcom/android/billingclient/api/h$a;->b:Landroid/content/Context;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v1, v3, v2, v3, v3}, Lcom/android/billingclient/api/i;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/billingclient/api/n0;Ljava/util/concurrent/ExecutorService;)V

    .line 21
    .line 22
    .line 23
    return-object v1

    .line 24
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string v2, "Please provide a valid listener for purchases updates."

    .line 27
    .line 28
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v1

    .line 32
    :cond_1
    iget-object v1, v0, Lcom/android/billingclient/api/h$a;->a:Lcom/android/billingclient/api/x0;

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    iget-object v1, v0, Lcom/android/billingclient/api/h$a;->c:Lcom/android/billingclient/api/v;

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    new-instance v1, Lcom/android/billingclient/api/i;

    .line 41
    .line 42
    iget-object v4, v0, Lcom/android/billingclient/api/h$a;->a:Lcom/android/billingclient/api/x0;

    .line 43
    .line 44
    iget-object v5, v0, Lcom/android/billingclient/api/h$a;->b:Landroid/content/Context;

    .line 45
    .line 46
    iget-object v6, v0, Lcom/android/billingclient/api/h$a;->c:Lcom/android/billingclient/api/v;

    .line 47
    .line 48
    const/4 v8, 0x0

    .line 49
    const/4 v9, 0x0

    .line 50
    const/4 v3, 0x0

    .line 51
    const/4 v7, 0x0

    .line 52
    move-object v2, v1

    .line 53
    invoke-direct/range {v2 .. v9}, Lcom/android/billingclient/api/i;-><init>(Ljava/lang/String;Lcom/android/billingclient/api/x0;Landroid/content/Context;Lcom/android/billingclient/api/v;Lcom/android/billingclient/api/c;Lcom/android/billingclient/api/n0;Ljava/util/concurrent/ExecutorService;)V

    .line 54
    .line 55
    .line 56
    return-object v1

    .line 57
    :cond_2
    new-instance v1, Lcom/android/billingclient/api/i;

    .line 58
    .line 59
    iget-object v12, v0, Lcom/android/billingclient/api/h$a;->a:Lcom/android/billingclient/api/x0;

    .line 60
    .line 61
    iget-object v13, v0, Lcom/android/billingclient/api/h$a;->b:Landroid/content/Context;

    .line 62
    .line 63
    const/4 v15, 0x0

    .line 64
    const/16 v16, 0x0

    .line 65
    .line 66
    const/4 v11, 0x0

    .line 67
    const/4 v14, 0x0

    .line 68
    move-object v10, v1

    .line 69
    invoke-direct/range {v10 .. v16}, Lcom/android/billingclient/api/i;-><init>(Ljava/lang/String;Lcom/android/billingclient/api/x0;Landroid/content/Context;Lcom/android/billingclient/api/t0;Lcom/android/billingclient/api/n0;Ljava/util/concurrent/ExecutorService;)V

    .line 70
    .line 71
    .line 72
    return-object v1

    .line 73
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 74
    .line 75
    const-string v2, "Pending purchases for one-time products must be supported."

    .line 76
    .line 77
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw v1

    .line 81
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 82
    .line 83
    const-string v2, "Please provide a valid Context."

    .line 84
    .line 85
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw v1
.end method

.method public b()Lcom/android/billingclient/api/h$a;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/billingclient/api/v0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/billingclient/api/v0;-><init>(Lcom/android/billingclient/api/u0;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/billingclient/api/v0;->a()Lcom/android/billingclient/api/v0;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/billingclient/api/v0;->b()Lcom/android/billingclient/api/x0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/android/billingclient/api/h$a;->a:Lcom/android/billingclient/api/x0;

    .line 15
    .line 16
    return-object p0
.end method

.method public c(Lcom/android/billingclient/api/v;)Lcom/android/billingclient/api/h$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/h$a;->c:Lcom/android/billingclient/api/v;

    .line 2
    .line 3
    return-object p0
.end method
