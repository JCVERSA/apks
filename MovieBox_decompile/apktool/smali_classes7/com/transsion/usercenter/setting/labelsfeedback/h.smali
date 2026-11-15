.class public final Lcom/transsion/usercenter/setting/labelsfeedback/h;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/usercenter/setting/labelsfeedback/h$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

.field private final b:Lcom/transsion/usercenter/setting/labelsfeedback/i;

.field private c:Lcom/transsion/usercenter/setting/labelsfeedback/h$a;


# direct methods
.method public constructor <init>(Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;Lcom/transsion/usercenter/setting/labelsfeedback/i;)V
    .locals 1

    .line 1
    const-string v0, "model"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h;->a:Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h;->b:Lcom/transsion/usercenter/setting/labelsfeedback/i;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic g(Lcom/transsion/usercenter/setting/labelsfeedback/h;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/setting/labelsfeedback/h;->o(Lcom/transsion/usercenter/setting/labelsfeedback/h;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h(Lcom/transsion/usercenter/setting/labelsfeedback/h;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/setting/labelsfeedback/h;->p(Lcom/transsion/usercenter/setting/labelsfeedback/h;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i(Lcom/transsion/usercenter/setting/labelsfeedback/h;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/setting/labelsfeedback/h;->q(Lcom/transsion/usercenter/setting/labelsfeedback/h;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final o(Lcom/transsion/usercenter/setting/labelsfeedback/h;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h;->b:Lcom/transsion/usercenter/setting/labelsfeedback/i;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1, p0}, Lcom/transsion/usercenter/setting/labelsfeedback/i;->e(Lcom/transsion/usercenter/setting/labelsfeedback/h;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private static final p(Lcom/transsion/usercenter/setting/labelsfeedback/h;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h;->b:Lcom/transsion/usercenter/setting/labelsfeedback/i;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1, p0}, Lcom/transsion/usercenter/setting/labelsfeedback/i;->a(Lcom/transsion/usercenter/setting/labelsfeedback/h;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private static final q(Lcom/transsion/usercenter/setting/labelsfeedback/h;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h;->b:Lcom/transsion/usercenter/setting/labelsfeedback/i;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1, p0}, Lcom/transsion/usercenter/setting/labelsfeedback/i;->i(Lcom/transsion/usercenter/setting/labelsfeedback/h;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final j(Lcom/transsnet/loginapi/bean/Country;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h;->a:Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->getContact()Lcom/transsion/usercenter/setting/labelsfeedback/model/FBContact;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FBContact;->setCountry(Lcom/transsnet/loginapi/bean/Country;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/Country;->getCountry_s()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/Country;->getCode()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, " +"

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h;->c:Lcom/transsion/usercenter/setting/labelsfeedback/h$a;

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->g()Landroidx/appcompat/widget/AppCompatEditText;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h;->a:Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->setImagePath(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h;->c:Lcom/transsion/usercenter/setting/labelsfeedback/h$a;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->i()Lcom/google/android/material/imageview/ShapeableImageView;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h;->b:Lcom/transsion/usercenter/setting/labelsfeedback/i;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface {v0, p0, p1}, Lcom/transsion/usercenter/setting/labelsfeedback/i;->c(Lcom/transsion/usercenter/setting/labelsfeedback/h;Landroidx/appcompat/widget/AppCompatImageView;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final l()Lcom/transsion/usercenter/setting/labelsfeedback/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h;->b:Lcom/transsion/usercenter/setting/labelsfeedback/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m()Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h;->a:Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    .line 2
    .line 3
    return-object v0
.end method

.method public n(Lcom/transsion/usercenter/setting/labelsfeedback/h$a;I)V
    .locals 2

    .line 1
    const-string p2, "holder"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->k()Landroid/widget/LinearLayout;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    new-instance v0, Lcom/transsion/usercenter/setting/labelsfeedback/e;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/transsion/usercenter/setting/labelsfeedback/e;-><init>(Lcom/transsion/usercenter/setting/labelsfeedback/h;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->i()Lcom/google/android/material/imageview/ShapeableImageView;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    new-instance v0, Lcom/transsion/usercenter/setting/labelsfeedback/f;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/transsion/usercenter/setting/labelsfeedback/f;-><init>(Lcom/transsion/usercenter/setting/labelsfeedback/h;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->f()Landroidx/appcompat/widget/AppCompatTextView;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    const-string v0, "0/500"

    .line 35
    .line 36
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->h()Lcom/transsion/usercenter/setting/labelsfeedback/UCEditText;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    new-instance v0, Lcom/transsion/usercenter/setting/labelsfeedback/h$b;

    .line 44
    .line 45
    invoke-direct {v0, p1, p0}, Lcom/transsion/usercenter/setting/labelsfeedback/h$b;-><init>(Lcom/transsion/usercenter/setting/labelsfeedback/h$a;Lcom/transsion/usercenter/setting/labelsfeedback/h;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->g()Landroidx/appcompat/widget/AppCompatEditText;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    new-instance v0, Lcom/transsion/usercenter/setting/labelsfeedback/g;

    .line 56
    .line 57
    invoke-direct {v0, p0}, Lcom/transsion/usercenter/setting/labelsfeedback/g;-><init>(Lcom/transsion/usercenter/setting/labelsfeedback/h;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->j()Landroidx/appcompat/widget/AppCompatEditText;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    new-instance v0, Lcom/transsion/usercenter/setting/labelsfeedback/h$c;

    .line 68
    .line 69
    invoke-direct {v0, p0}, Lcom/transsion/usercenter/setting/labelsfeedback/h$c;-><init>(Lcom/transsion/usercenter/setting/labelsfeedback/h;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 73
    .line 74
    .line 75
    iget-object p2, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h;->a:Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    .line 76
    .line 77
    invoke-virtual {p2}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->getContent()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    if-eqz p2, :cond_0

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->h()Lcom/transsion/usercenter/setting/labelsfeedback/UCEditText;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .line 88
    .line 89
    invoke-direct {v1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    :cond_0
    iget-object p2, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h;->a:Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    .line 96
    .line 97
    invoke-virtual {p2}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->getImagePath()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-virtual {p0, p2}, Lcom/transsion/usercenter/setting/labelsfeedback/h;->k(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object p2, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h;->a:Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    .line 105
    .line 106
    invoke-virtual {p2}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->getContact()Lcom/transsion/usercenter/setting/labelsfeedback/model/FBContact;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-virtual {p2}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FBContact;->getCountry()Lcom/transsnet/loginapi/bean/Country;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {p0, p2}, Lcom/transsion/usercenter/setting/labelsfeedback/h;->j(Lcom/transsnet/loginapi/bean/Country;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->j()Landroidx/appcompat/widget/AppCompatEditText;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    new-instance p2, Landroid/text/SpannableStringBuilder;

    .line 122
    .line 123
    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h;->a:Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->getContact()Lcom/transsion/usercenter/setting/labelsfeedback/model/FBContact;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FBContact;->getPhone()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-direct {p2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    .line 138
    .line 139
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/setting/labelsfeedback/h;->n(Lcom/transsion/usercenter/setting/labelsfeedback/h$a;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/setting/labelsfeedback/h;->r(Landroid/view/ViewGroup;I)Lcom/transsion/usercenter/setting/labelsfeedback/h$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public r(Landroid/view/ViewGroup;I)Lcom/transsion/usercenter/setting/labelsfeedback/h$a;
    .locals 1

    .line 1
    const-string p2, "parent"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-static {p2, p1, v0}, Lxu/e0;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lxu/e0;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string p2, "inflate(...)"

    .line 20
    .line 21
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance p2, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;

    .line 25
    .line 26
    invoke-direct {p2, p0, p1}, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;-><init>(Lcom/transsion/usercenter/setting/labelsfeedback/h;Lxu/e0;)V

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h;->c:Lcom/transsion/usercenter/setting/labelsfeedback/h$a;

    .line 30
    .line 31
    return-object p2
.end method
