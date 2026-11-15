.class public final Lcom/transsion/usercenter/setting/labelsfeedback/h$a;
.super Landroidx/recyclerview/widget/RecyclerView$a0;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/usercenter/setting/labelsfeedback/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/widget/LinearLayout;

.field private final b:Lcom/transsion/usercenter/setting/labelsfeedback/UCEditText;

.field private final c:Landroidx/appcompat/widget/AppCompatTextView;

.field private final d:Lcom/google/android/material/imageview/ShapeableImageView;

.field private final e:Landroidx/appcompat/widget/AppCompatEditText;

.field private final f:Landroidx/appcompat/widget/AppCompatEditText;

.field final synthetic g:Lcom/transsion/usercenter/setting/labelsfeedback/h;


# direct methods
.method public constructor <init>(Lcom/transsion/usercenter/setting/labelsfeedback/h;Lxu/e0;)V
    .locals 1

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->g:Lcom/transsion/usercenter/setting/labelsfeedback/h;

    .line 7
    .line 8
    invoke-virtual {p2}, Lxu/e0;->b()Landroid/widget/LinearLayout;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a0;-><init>(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Lxu/e0;->b()Landroid/widget/LinearLayout;

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
    iput-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->a:Landroid/widget/LinearLayout;

    .line 25
    .line 26
    iget-object p1, p2, Lxu/e0;->d:Lcom/transsion/usercenter/setting/labelsfeedback/UCEditText;

    .line 27
    .line 28
    const-string v0, "editText"

    .line 29
    .line 30
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->b:Lcom/transsion/usercenter/setting/labelsfeedback/UCEditText;

    .line 34
    .line 35
    iget-object p1, p2, Lxu/e0;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 36
    .line 37
    const-string v0, "countTextView"

    .line 38
    .line 39
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 43
    .line 44
    iget-object p1, p2, Lxu/e0;->e:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 45
    .line 46
    const-string v0, "imageView"

    .line 47
    .line 48
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 52
    .line 53
    iget-object p1, p2, Lxu/e0;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 54
    .line 55
    const-string v0, "countryEditText"

    .line 56
    .line 57
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->e:Landroidx/appcompat/widget/AppCompatEditText;

    .line 61
    .line 62
    iget-object p1, p2, Lxu/e0;->f:Landroidx/appcompat/widget/AppCompatEditText;

    .line 63
    .line 64
    const-string p2, "phoneEditText"

    .line 65
    .line 66
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iput-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->f:Landroidx/appcompat/widget/AppCompatEditText;

    .line 70
    .line 71
    return-void
.end method


# virtual methods
.method public final f()Landroidx/appcompat/widget/AppCompatTextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Landroidx/appcompat/widget/AppCompatEditText;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->e:Landroidx/appcompat/widget/AppCompatEditText;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Lcom/transsion/usercenter/setting/labelsfeedback/UCEditText;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->b:Lcom/transsion/usercenter/setting/labelsfeedback/UCEditText;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()Lcom/google/android/material/imageview/ShapeableImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Landroidx/appcompat/widget/AppCompatEditText;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->f:Landroidx/appcompat/widget/AppCompatEditText;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Landroid/widget/LinearLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->a:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    return-object v0
.end method
