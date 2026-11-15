.class public final Lcom/android/net/a;
.super Lcom/android/net/u;
.source "SourceFile"


# instance fields
.field private c:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/net/u;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/net/k;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/net/u;-><init>(Lcom/android/net/k;)V

    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/net/a;->c:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string p0, "User needs to (re)enter credentials."

    return-object p0

    :cond_0
    invoke-super {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
