.class public final Lcom/transsion/subtitle/helper/h$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subtitle/helper/h;->o(Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/subtitle/helper/h;


# direct methods
.method constructor <init>(Lcom/transsion/subtitle/helper/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/subtitle/helper/h$b;->a:Lcom/transsion/subtitle/helper/h;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    .line 1
    const-string v0, "s"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsion/subtitle/helper/h$b;->a:Lcom/transsion/subtitle/helper/h;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/transsion/subtitle/helper/h;->f(Lcom/transsion/subtitle/helper/h;)Landroid/os/Handler;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v1, p0, Lcom/transsion/subtitle/helper/h$b;->a:Lcom/transsion/subtitle/helper/h;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/transsion/subtitle/helper/h;->g(Lcom/transsion/subtitle/helper/h;)Ljava/lang/Runnable;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/transsion/subtitle/helper/h$b;->a:Lcom/transsion/subtitle/helper/h;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/transsion/subtitle/helper/h;->e(Lcom/transsion/subtitle/helper/h;)Landroid/widget/EditText;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_4

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_4

    .line 34
    .line 35
    iget-object v1, p0, Lcom/transsion/subtitle/helper/h$b;->a:Lcom/transsion/subtitle/helper/h;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    const/4 v3, 0x2

    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-static {v1, p1, v2, v3, v4}, Lcom/transsion/subtitle/helper/h;->m(Lcom/transsion/subtitle/helper/h;Ljava/lang/CharSequence;FILjava/lang/Object;)F

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-static {v1}, Lcom/transsion/subtitle/helper/h;->d(Lcom/transsion/subtitle/helper/h;)F

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    cmpg-float v5, v5, v2

    .line 49
    .line 50
    if-nez v5, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-static {v1, v2}, Lcom/transsion/subtitle/helper/h;->i(Lcom/transsion/subtitle/helper/h;F)V

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-static {v1}, Lcom/transsion/subtitle/helper/h;->c(Lcom/transsion/subtitle/helper/h;)F

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    cmpg-float v5, v5, v2

    .line 61
    .line 62
    if-nez v5, :cond_1

    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    const/4 v6, 0x0

    .line 70
    invoke-static {v5, v0, v6, v3, v4}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-nez v3, :cond_3

    .line 75
    .line 76
    invoke-static {v1}, Lcom/transsion/subtitle/helper/h;->e(Lcom/transsion/subtitle/helper/h;)Landroid/widget/EditText;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    if-eqz v3, :cond_2

    .line 81
    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    :cond_2
    invoke-static {v1}, Lcom/transsion/subtitle/helper/h;->e(Lcom/transsion/subtitle/helper/h;)Landroid/widget/EditText;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    if-eqz v0, :cond_3

    .line 105
    .line 106
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 111
    .line 112
    .line 113
    :cond_3
    invoke-static {v1, v2}, Lcom/transsion/subtitle/helper/h;->h(Lcom/transsion/subtitle/helper/h;F)V

    .line 114
    .line 115
    .line 116
    const/16 p1, 0x3e8

    .line 117
    .line 118
    int-to-float p1, p1

    .line 119
    mul-float/2addr v2, p1

    .line 120
    float-to-long v2, v2

    .line 121
    invoke-static {v1, v2, v3}, Lcom/transsion/subtitle/helper/h;->k(Lcom/transsion/subtitle/helper/h;J)V

    .line 122
    .line 123
    .line 124
    :cond_4
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    const-string p2, "s"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    const-string p2, "s"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
