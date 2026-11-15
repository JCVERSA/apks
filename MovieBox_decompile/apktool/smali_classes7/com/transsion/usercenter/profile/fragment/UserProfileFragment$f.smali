.class public final Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$f;
.super Lcom/bumptech/glide/request/target/CustomTarget;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->W0(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/functions/Function1;

.field final synthetic b:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

.field final synthetic c:I


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$f;->a:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$f;->b:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    .line 4
    .line 5
    iput p3, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$f;->c:I

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static synthetic a(ILkotlin/jvm/functions/Function1;Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;Landroidx/palette/graphics/a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$f;->b(ILkotlin/jvm/functions/Function1;Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;Landroidx/palette/graphics/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final b(ILkotlin/jvm/functions/Function1;Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;Landroidx/palette/graphics/a;)V
    .locals 2

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p3}, Landroidx/palette/graphics/a;->i()Landroidx/palette/graphics/a$e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_7

    .line 8
    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    if-eqz p3, :cond_1

    .line 11
    .line 12
    invoke-virtual {p3}, Landroidx/palette/graphics/a;->o()Landroidx/palette/graphics/a$e;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    move-object v1, v0

    .line 18
    :goto_0
    if-nez v1, :cond_6

    .line 19
    .line 20
    if-eqz p3, :cond_2

    .line 21
    .line 22
    invoke-virtual {p3}, Landroidx/palette/graphics/a;->m()Landroidx/palette/graphics/a$e;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    move-object v1, v0

    .line 28
    :goto_1
    if-nez v1, :cond_6

    .line 29
    .line 30
    if-eqz p3, :cond_3

    .line 31
    .line 32
    invoke-virtual {p3}, Landroidx/palette/graphics/a;->g()Landroidx/palette/graphics/a$e;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    goto :goto_2

    .line 37
    :cond_3
    move-object v1, v0

    .line 38
    :goto_2
    if-nez v1, :cond_6

    .line 39
    .line 40
    if-eqz p3, :cond_4

    .line 41
    .line 42
    invoke-virtual {p3}, Landroidx/palette/graphics/a;->k()Landroidx/palette/graphics/a$e;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    goto :goto_3

    .line 47
    :cond_4
    move-object v1, v0

    .line 48
    :goto_3
    if-nez v1, :cond_6

    .line 49
    .line 50
    if-eqz p3, :cond_5

    .line 51
    .line 52
    invoke-virtual {p3}, Landroidx/palette/graphics/a;->f()Landroidx/palette/graphics/a$e;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    goto :goto_4

    .line 57
    :cond_5
    move-object v1, v0

    .line 58
    :goto_4
    if-nez v1, :cond_6

    .line 59
    .line 60
    if-eqz p3, :cond_7

    .line 61
    .line 62
    invoke-virtual {p3}, Landroidx/palette/graphics/a;->j()Landroidx/palette/graphics/a$e;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    goto :goto_5

    .line 67
    :cond_6
    move-object v0, v1

    .line 68
    :cond_7
    :goto_5
    if-eqz v0, :cond_8

    .line 69
    .line 70
    invoke-virtual {v0}, Landroidx/palette/graphics/a$e;->e()I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    goto :goto_6

    .line 75
    :cond_8
    if-eqz p3, :cond_9

    .line 76
    .line 77
    invoke-virtual {p3, p0}, Landroidx/palette/graphics/a;->h(I)I

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    :cond_9
    :goto_6
    invoke-static {p2, p0}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->y0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;I)I

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$f;->a:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$f;->b:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    .line 4
    .line 5
    iget v1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$f;->c:I

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->y0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 3

    const-string p2, "resource"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-static {p1}, Landroidx/palette/graphics/a;->b(Landroid/graphics/Bitmap;)Landroidx/palette/graphics/a$b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/palette/graphics/a$b;->a()Landroidx/palette/graphics/a$b;

    move-result-object p1

    iget p2, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$f;->c:I

    iget-object v0, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$f;->a:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$f;->b:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    new-instance v2, Lcom/transsion/usercenter/profile/fragment/q;

    invoke-direct {v2, p2, v0, v1}, Lcom/transsion/usercenter/profile/fragment/q;-><init>(ILkotlin/jvm/functions/Function1;Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)V

    invoke-virtual {p1, v2}, Landroidx/palette/graphics/a$b;->b(Landroidx/palette/graphics/a$d;)Landroid/os/AsyncTask;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    iget-object p1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$f;->a:Lkotlin/jvm/functions/Function1;

    iget-object p2, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$f;->b:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    iget v0, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$f;->c:I

    invoke-static {p2, v0}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->y0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$f;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
