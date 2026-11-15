.class public final Lcom/transsion/wrapperad/WrapperAdProvider$initAd$4$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/baselib/report/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/wrapperad/WrapperAdProvider$initAd$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onBackgroundStatusChange(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/transsion/ad/strategy/a;->a:Lcom/transsion/ad/strategy/a;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/transsion/ad/strategy/a;->b()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/transsion/ad/strategy/a;->a:Lcom/transsion/ad/strategy/a;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/transsion/ad/strategy/a;->a()V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method
