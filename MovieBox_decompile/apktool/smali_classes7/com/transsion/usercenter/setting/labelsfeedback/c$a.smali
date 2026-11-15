.class public final Lcom/transsion/usercenter/setting/labelsfeedback/c$a;
.super Landroidx/recyclerview/widget/RecyclerView$a0;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/usercenter/setting/labelsfeedback/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field private final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final b:Landroidx/appcompat/widget/AppCompatTextView;

.field private final c:Landroidx/appcompat/widget/AppCompatCheckBox;

.field private final d:Landroid/view/View;

.field private final e:Landroid/view/View;

.field final synthetic f:Lcom/transsion/usercenter/setting/labelsfeedback/c;


# direct methods
.method public constructor <init>(Lcom/transsion/usercenter/setting/labelsfeedback/c;Lxu/d0;)V
    .locals 1

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/c$a;->f:Lcom/transsion/usercenter/setting/labelsfeedback/c;

    .line 7
    .line 8
    invoke-virtual {p2}, Lxu/d0;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a0;-><init>(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Lxu/d0;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "getRoot(...)"

    .line 20
    .line 21
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/c$a;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 25
    .line 26
    iget-object p1, p2, Lxu/d0;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 27
    .line 28
    const-string v0, "textView"

    .line 29
    .line 30
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/c$a;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 34
    .line 35
    iget-object p1, p2, Lxu/d0;->d:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 36
    .line 37
    const-string v0, "radioButton"

    .line 38
    .line 39
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/c$a;->c:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 43
    .line 44
    iget-object p1, p2, Lxu/d0;->b:Landroid/view/View;

    .line 45
    .line 46
    const-string v0, "bgView"

    .line 47
    .line 48
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/c$a;->d:Landroid/view/View;

    .line 52
    .line 53
    iget-object p1, p2, Lxu/d0;->c:Landroid/view/View;

    .line 54
    .line 55
    const-string p2, "divider"

    .line 56
    .line 57
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/c$a;->e:Landroid/view/View;

    .line 61
    .line 62
    return-void
.end method


# virtual methods
.method public final f()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/c$a;->d:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/c$a;->e:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Landroidx/appcompat/widget/AppCompatCheckBox;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/c$a;->c:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()Landroidx/appcompat/widget/AppCompatTextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/c$a;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    return-object v0
.end method
