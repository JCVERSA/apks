.class public final Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o;
.super Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter$NormalViewHolder;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/dialog/OooOOO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OooO00o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter<",
        "Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;",
        ">.NormalViewHolder;"
    }
.end annotation


# instance fields
.field public final OooO00o:Lkotlin/Lazy;

.field public final OooO0O0:Lkotlin/Lazy;

.field public final OooO0OO:Lkotlin/Lazy;

.field public final OooO0Oo:Lkotlin/Lazy;

.field public final synthetic OooO0o0:Lcom/cloud/tmc/miniapp/dialog/OooOOO;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/dialog/OooOOO;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o;->OooO0o0:Lcom/cloud/tmc/miniapp/dialog/OooOOO;

    .line 2
    .line 3
    sget v0, Lcom/cloud/tmc/miniapp/R$layout;->mini_item_bottom_dialog:I

    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter$NormalViewHolder;-><init>(Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;I)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o$OooO00o;

    .line 9
    .line 10
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o;->OooO00o:Lkotlin/Lazy;

    .line 18
    .line 19
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o$OooO0o;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o$OooO0o;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o;->OooO0O0:Lkotlin/Lazy;

    .line 29
    .line 30
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o$OooO0O0;

    .line 31
    .line 32
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o;->OooO0OO:Lkotlin/Lazy;

    .line 40
    .line 41
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o$OooO0OO;

    .line 42
    .line 43
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o$OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o;->OooO0Oo:Lkotlin/Lazy;

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public onBindView(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o;->OooO0o0:Lcom/cloud/tmc/miniapp/dialog/OooOOO;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->getId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "-1"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o;->OooO0Oo:Lkotlin/Lazy;

    .line 22
    .line 23
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_0
    const/4 v0, 0x4

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o;->OooO0Oo:Lkotlin/Lazy;

    .line 38
    .line 39
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 44
    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/4 v1, 0x0

    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o;->OooO00o:Lkotlin/Lazy;

    .line 53
    .line 54
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->getIcon()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 67
    .line 68
    .line 69
    :cond_3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o;->OooO0O0:Lkotlin/Lazy;

    .line 70
    .line 71
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroid/widget/TextView;

    .line 76
    .line 77
    if-nez v0, :cond_4

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->getName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const-string v2, ""

    .line 85
    .line 86
    invoke-static {v1, v2}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->orDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    :goto_1
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->getDotBadge()Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_5

    .line 98
    .line 99
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o;->OooO0OO:Lkotlin/Lazy;

    .line 100
    .line 101
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 106
    .line 107
    if-eqz p1, :cond_6

    .line 108
    .line 109
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisible(Landroid/view/View;)V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_5
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o;->OooO0OO:Lkotlin/Lazy;

    .line 114
    .line 115
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 120
    .line 121
    if-eqz p1, :cond_6

    .line 122
    .line 123
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toInvisible(Landroid/view/View;)V

    .line 124
    .line 125
    .line 126
    :cond_6
    :goto_2
    return-void
.end method
