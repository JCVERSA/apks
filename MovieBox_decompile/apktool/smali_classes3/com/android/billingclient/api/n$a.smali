.class public Lcom/android/billingclient/api/n$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/o0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string p1, ""

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/billingclient/api/n$a;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()Lcom/android/billingclient/api/n;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/billingclient/api/n;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/billingclient/api/n;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/android/billingclient/api/n$a;->a:I

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/android/billingclient/api/n;->e(Lcom/android/billingclient/api/n;I)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/billingclient/api/n$a;->b:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/android/billingclient/api/n;->d(Lcom/android/billingclient/api/n;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/android/billingclient/api/n$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/n$a;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public c(I)Lcom/android/billingclient/api/n$a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/billingclient/api/n$a;->a:I

    .line 2
    .line 3
    return-object p0
.end method
