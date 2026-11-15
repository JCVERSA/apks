.class public final Lcom/cloud/tmc/miniapp/dialog/o000oOoO;
.super Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o<",
        "Lcom/cloud/tmc/miniapp/dialog/o000oOoO;",
        ">;"
    }
.end annotation


# instance fields
.field public final OooO00o:Lkotlin/Lazy;

.field public final OooO0O0:Lkotlin/Lazy;

.field public final OooO0OO:Lkotlin/Lazy;

.field public final OooO0Oo:Lkotlin/Lazy;

.field public OooO0o:Lcom/cloud/tmc/miniapp/dialog/o0OoOo0;

.field public final OooO0o0:Lkotlin/Lazy;


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
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o000oOoO$OooO;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o000oOoO$OooO;-><init>(Lcom/cloud/tmc/miniapp/dialog/o000oOoO;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o000oOoO;->OooO00o:Lkotlin/Lazy;

    .line 19
    .line 20
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o000oOoO$OooO0o;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o000oOoO$OooO0o;-><init>(Lcom/cloud/tmc/miniapp/dialog/o000oOoO;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o000oOoO;->OooO0O0:Lkotlin/Lazy;

    .line 30
    .line 31
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o000oOoO$OooO00o;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o000oOoO$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/dialog/o000oOoO;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o000oOoO;->OooO0OO:Lkotlin/Lazy;

    .line 41
    .line 42
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o000oOoO$OooO0O0;

    .line 43
    .line 44
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o000oOoO$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/dialog/o000oOoO;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o000oOoO;->OooO0Oo:Lkotlin/Lazy;

    .line 52
    .line 53
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o000oOoO$OooO0OO;

    .line 54
    .line 55
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o000oOoO$OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/dialog/o000oOoO;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o000oOoO;->OooO0o0:Lkotlin/Lazy;

    .line 63
    .line 64
    sget p1, Lcom/cloud/tmc/miniapp/R$layout;->layout_fw_update_tips:I

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setContentView(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 67
    .line 68
    .line 69
    const/4 p1, 0x0

    .line 70
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setCanceledOnTouchOutside(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setCancelable(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 74
    .line 75
    .line 76
    const/4 p1, -0x1

    .line 77
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setAnimStyle(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/o000oOoO;->OooO00o()Landroid/widget/TextView;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-eqz p1, :cond_0

    .line 85
    .line 86
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/i;

    .line 87
    .line 88
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/dialog/i;-><init>(Lcom/cloud/tmc/miniapp/dialog/o000oOoO;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    .line 93
    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/o000oOoO;->OooO0O0()Landroid/widget/TextView;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    if-eqz p1, :cond_1

    .line 99
    .line 100
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/j;

    .line 101
    .line 102
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/dialog/j;-><init>(Lcom/cloud/tmc/miniapp/dialog/o000oOoO;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    .line 107
    .line 108
    :cond_1
    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/dialog/o000oOoO;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/dialog/o000oOoO;->OooO0o:Lcom/cloud/tmc/miniapp/dialog/o0OoOo0;

    if-eqz p0, :cond_0

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/o0OoOo0;->OooO00o(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static final OooO0O0(Lcom/cloud/tmc/miniapp/dialog/o000oOoO;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/dialog/o000oOoO;->OooO0o:Lcom/cloud/tmc/miniapp/dialog/o0OoOo0;

    if-eqz p0, :cond_0

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/o0OoOo0;->OooO0O0(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final OooO00o()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o000oOoO;->OooO0OO:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final OooO00o(J)Ljava/lang/String;
    .locals 2

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    float-to-int p1, p1

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " KB"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    div-float/2addr p1, p2

    float-to-double p1, p1

    .line 4
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 5
    sget-object v1, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 6
    invoke-virtual {v0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format.format(number)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " MB"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final OooO0O0()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o000oOoO;->OooO0Oo:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final OooO0OO()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o000oOoO;->OooO0O0:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 8
    .line 9
    return-object v0
.end method

.method public final OooO0Oo()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o000oOoO;->OooO00o:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 8
    .line 9
    return-object v0
.end method
