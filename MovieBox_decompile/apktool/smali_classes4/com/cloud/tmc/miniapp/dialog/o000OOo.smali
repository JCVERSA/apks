.class public final Lcom/cloud/tmc/miniapp/dialog/o000OOo;
.super Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o<",
        "Lcom/cloud/tmc/miniapp/dialog/o000OOo;",
        ">;"
    }
.end annotation


# instance fields
.field public final OooO00o:Lkotlin/Lazy;

.field public final OooO0O0:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o000OOo$OooO0o;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o000OOo$OooO0o;-><init>(Lcom/cloud/tmc/miniapp/dialog/o000OOo;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o000OOo$OooO0OO;

    .line 18
    .line 19
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o000OOo$OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/dialog/o000OOo;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o000OOo;->OooO00o:Lkotlin/Lazy;

    .line 27
    .line 28
    new-instance p1, Landroid/animation/AnimatorSet;

    .line 29
    .line 30
    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o000OOo;->OooO0O0:Landroid/animation/AnimatorSet;

    .line 34
    .line 35
    sget p1, Lcom/cloud/tmc/miniapp/R$layout;->layout_mini_waiting_dialog:I

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setContentView(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setAnimStyle(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setBackgroundDimEnabled(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setCancelable(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 48
    .line 49
    .line 50
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o000OOo$OooO00o;

    .line 51
    .line 52
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o000OOo$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/dialog/o000OOo;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->addOnShowListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 56
    .line 57
    .line 58
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o000OOo$OooO0O0;

    .line 59
    .line 60
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o000OOo$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/dialog/o000OOo;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->addOnDismissListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo00;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 64
    .line 65
    .line 66
    return-void
.end method
