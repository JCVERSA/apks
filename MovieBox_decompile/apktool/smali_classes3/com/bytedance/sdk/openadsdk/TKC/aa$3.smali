.class Lcom/bytedance/sdk/openadsdk/TKC/aa$3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/TKC/aa;->Sj(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/TKC/aa;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/TKC/aa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa$3;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/aa;

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
    .locals 0

    .line 1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-float p1, p1

    .line 6
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p3, "/200"

    .line 19
    .line 20
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa$3;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/aa;

    .line 28
    .line 29
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/TKC/aa;->TKC(Lcom/bytedance/sdk/openadsdk/TKC/aa;)Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    const/4 p2, 0x1

    .line 37
    if-lez p1, :cond_0

    .line 38
    .line 39
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa$3;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/aa;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/TKC/aa;->EjP(Lcom/bytedance/sdk/openadsdk/TKC/aa;)Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_2

    .line 50
    .line 51
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa$3;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/aa;

    .line 52
    .line 53
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/TKC/aa;->EjP(Lcom/bytedance/sdk/openadsdk/TKC/aa;)Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa$3;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/aa;

    .line 59
    .line 60
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/TKC/aa;->EjP(Lcom/bytedance/sdk/openadsdk/TKC/aa;)Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa$3;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/aa;

    .line 65
    .line 66
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/TKC/aa;->HiB(Lcom/bytedance/sdk/openadsdk/TKC/aa;)Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    if-eqz p3, :cond_1

    .line 71
    .line 72
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa$3;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/aa;

    .line 73
    .line 74
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/TKC/aa;->HiB(Lcom/bytedance/sdk/openadsdk/TKC/aa;)Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Jcg()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result p3

    .line 86
    if-nez p3, :cond_1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    const/4 p2, 0x0

    .line 90
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 91
    .line 92
    .line 93
    :cond_2
    return-void
.end method
