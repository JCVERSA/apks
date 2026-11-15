.class public final synthetic Lcom/transsion/payment/lib/strategy/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

.field public final synthetic b:Landroidx/appcompat/app/AppCompatActivity;

.field public final synthetic c:Lcom/transsion/payment/lib/bean/CreateOrderReq;

.field public final synthetic d:Z

.field public final synthetic e:Lcom/transsion/payment/lib/b;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/bean/CreateOrderReq;ZLcom/transsion/payment/lib/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/payment/lib/strategy/d;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/payment/lib/strategy/d;->b:Landroidx/appcompat/app/AppCompatActivity;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/payment/lib/strategy/d;->c:Lcom/transsion/payment/lib/bean/CreateOrderReq;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/transsion/payment/lib/strategy/d;->d:Z

    .line 11
    .line 12
    iput-object p5, p0, Lcom/transsion/payment/lib/strategy/d;->e:Lcom/transsion/payment/lib/b;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/d;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/payment/lib/strategy/d;->b:Landroidx/appcompat/app/AppCompatActivity;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/payment/lib/strategy/d;->c:Lcom/transsion/payment/lib/bean/CreateOrderReq;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/transsion/payment/lib/strategy/d;->d:Z

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/payment/lib/strategy/d;->e:Lcom/transsion/payment/lib/b;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->e(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/bean/CreateOrderReq;ZLcom/transsion/payment/lib/b;)Lkotlin/Unit;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method
