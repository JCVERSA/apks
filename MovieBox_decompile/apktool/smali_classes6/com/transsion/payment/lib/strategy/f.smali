.class public final synthetic Lcom/transsion/payment/lib/strategy/f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/android/billingclient/api/s;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

.field public final synthetic d:Lcom/transsion/payment/lib/b;

.field public final synthetic e:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lcom/transsion/payment/lib/b;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/transsion/payment/lib/strategy/f;->a:Z

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/payment/lib/strategy/f;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/payment/lib/strategy/f;->c:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/transsion/payment/lib/strategy/f;->d:Lcom/transsion/payment/lib/b;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/transsion/payment/lib/strategy/f;->e:Landroid/app/Activity;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/billingclient/api/n;Ljava/util/List;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/transsion/payment/lib/strategy/f;->a:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/payment/lib/strategy/f;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/payment/lib/strategy/f;->c:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/payment/lib/strategy/f;->d:Lcom/transsion/payment/lib/b;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/payment/lib/strategy/f;->e:Landroid/app/Activity;

    .line 10
    .line 11
    move-object v5, p1

    .line 12
    move-object v6, p2

    .line 13
    invoke-static/range {v0 .. v6}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->d(ZLjava/lang/String;Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lcom/transsion/payment/lib/b;Landroid/app/Activity;Lcom/android/billingclient/api/n;Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
