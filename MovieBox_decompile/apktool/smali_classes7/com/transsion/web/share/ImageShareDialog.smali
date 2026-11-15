.class public final Lcom/transsion/web/share/ImageShareDialog;
.super Lcom/transsion/baseui/dialog/BaseDialogFragment;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/web/share/ImageShareDialog$a;,
        Lcom/transsion/web/share/ImageShareDialog$b;,
        Lcom/transsion/web/share/ImageShareDialog$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/dialog/BaseDialogFragment<",
        "Liw/b;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 %2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0003&\'(B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ%\u0010\u0011\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0015\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0019\u0010\u0019\u001a\u00020\u00082\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u0004J\u000f\u0010\u001c\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u0004J\u000f\u0010\u001d\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u0004J\u000f\u0010\u001f\u001a\u00020\u001eH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 R\u0018\u0010$\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#\u00a8\u0006)"
    }
    d2 = {
        "Lcom/transsion/web/share/ImageShareDialog;",
        "Lcom/transsion/baseui/dialog/BaseDialogFragment;",
        "Liw/b;",
        "<init>",
        "()V",
        "",
        "packageName",
        "backUpName",
        "",
        "q0",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "",
        "result",
        "pageName",
        "t0",
        "(ZLjava/lang/String;)V",
        "backUpPackageName",
        "m0",
        "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;",
        "",
        "Lcom/transsion/web/share/ImageShareDialog$c;",
        "n0",
        "()Ljava/util/List;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onStart",
        "initView",
        "c0",
        "Lqi/b;",
        "newLogViewConfig",
        "()Lqi/b;",
        "Landroid/net/Uri;",
        "e",
        "Landroid/net/Uri;",
        "imageUri",
        "f",
        "a",
        "c",
        "b",
        "Web_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final f:Lcom/transsion/web/share/ImageShareDialog$a;


# instance fields
.field private e:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/web/share/ImageShareDialog$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/web/share/ImageShareDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/web/share/ImageShareDialog;->f:Lcom/transsion/web/share/ImageShareDialog$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/web/share/ImageShareDialog$1;->INSTANCE:Lcom/transsion/web/share/ImageShareDialog$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/transsion/baseui/dialog/BaseDialogFragment;-><init>(Lkotlin/jvm/functions/Function3;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic i0(Ljava/util/List;Lcom/transsion/web/share/ImageShareDialog;Lcom/transsion/web/share/ImageShareDialog$b;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/transsion/web/share/ImageShareDialog;->p0(Ljava/util/List;Lcom/transsion/web/share/ImageShareDialog;Lcom/transsion/web/share/ImageShareDialog$b;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j0(Lcom/transsion/web/share/ImageShareDialog;Ljava/lang/String;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/web/share/ImageShareDialog;->s0(Lcom/transsion/web/share/ImageShareDialog;Ljava/lang/String;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k0(Lcom/transsion/web/share/ImageShareDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/web/share/ImageShareDialog;->o0(Lcom/transsion/web/share/ImageShareDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l0(Lcom/transsion/web/share/ImageShareDialog;Ljava/lang/String;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/web/share/ImageShareDialog;->r0(Lcom/transsion/web/share/ImageShareDialog;Ljava/lang/String;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final m0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/transsion/baseui/util/a;->a:Lcom/transsion/baseui/util/a;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/transsion/baseui/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    if-eqz p2, :cond_1

    .line 17
    .line 18
    sget-object p1, Lcom/transsion/baseui/util/a;->a:Lcom/transsion/baseui/util/a;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0, p2}, Lcom/transsion/baseui/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    return-object p2

    .line 31
    :cond_1
    const/4 p1, 0x0

    .line 32
    return-object p1
.end method

.method private final n0()Ljava/util/List;
    .locals 16

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v9, Lcom/transsion/web/share/ImageShareDialog$c;

    .line 7
    .line 8
    sget v2, Lcom/transsion/baseui/R$mipmap;->player_ic_whatsapp:I

    .line 9
    .line 10
    sget v3, Lcom/transsion/web/R$string;->whatsapp:I

    .line 11
    .line 12
    const/16 v7, 0x10

    .line 13
    .line 14
    const/4 v8, 0x0

    .line 15
    const-string v4, "whatsup"

    .line 16
    .line 17
    const-string v5, "com.whatsapp"

    .line 18
    .line 19
    const/4 v6, 0x0

    .line 20
    move-object v1, v9

    .line 21
    invoke-direct/range {v1 .. v8}, Lcom/transsion/web/share/ImageShareDialog$c;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    new-instance v1, Lcom/transsion/web/share/ImageShareDialog$c;

    .line 28
    .line 29
    sget v11, Lcom/transsion/baseui/R$mipmap;->player_ic_telegram:I

    .line 30
    .line 31
    sget v12, Lcom/transsion/web/R$string;->telegram:I

    .line 32
    .line 33
    const-string v14, "org.telegram.messenger"

    .line 34
    .line 35
    const-string v15, "org.telegram.messenger.web"

    .line 36
    .line 37
    const-string v13, "Telegram"

    .line 38
    .line 39
    move-object v10, v1

    .line 40
    invoke-direct/range {v10 .. v15}, Lcom/transsion/web/share/ImageShareDialog$c;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    return-object v0
.end method

.method private static final o0(Lcom/transsion/web/share/ImageShareDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final p0(Ljava/util/List;Lcom/transsion/web/share/ImageShareDialog;Lcom/transsion/web/share/ImageShareDialog$b;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    const-string v0, "<unused var>"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-interface {p0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/transsion/web/share/ImageShareDialog$c;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/transsion/web/share/ImageShareDialog$c;->d()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    invoke-virtual {p0}, Lcom/transsion/web/share/ImageShareDialog$c;->b()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p4

    .line 23
    invoke-direct {p1, p3, p4}, Lcom/transsion/web/share/ImageShareDialog;->q0(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance p3, Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p0}, Lcom/transsion/web/share/ImageShareDialog$c;->a()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string p2, "module_name"

    .line 44
    .line 45
    invoke-interface {p3, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    sget-object p0, Lqi/h;->a:Lqi/h;

    .line 49
    .line 50
    invoke-virtual {p0}, Lqi/h;->h()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    const-string p4, "source"

    .line 55
    .line 56
    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    const-string p2, "web_share_panel"

    .line 60
    .line 61
    invoke-virtual {p0, p2, p3}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method private final q0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/web/share/ImageShareDialog;->m0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const-string v0, "org.telegram.messenger"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "requireActivity(...)"

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget-object p1, Loq/p;->a:Loq/p;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/transsion/web/share/ImageShareDialog;->e:Landroid/net/Uri;

    .line 25
    .line 26
    new-instance v2, Lcom/transsion/web/share/c;

    .line 27
    .line 28
    invoke-direct {v2, p0, p2}, Lcom/transsion/web/share/c;-><init>(Lcom/transsion/web/share/ImageShareDialog;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0, v1, v2}, Loq/p;->b(Landroid/app/Activity;Landroid/net/Uri;Lkotlin/jvm/functions/Function1;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string v0, "com.whatsapp"

    .line 36
    .line 37
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    sget-object p1, Loq/p;->a:Loq/p;

    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/transsion/web/share/ImageShareDialog;->e:Landroid/net/Uri;

    .line 53
    .line 54
    new-instance v2, Lcom/transsion/web/share/d;

    .line 55
    .line 56
    invoke-direct {v2, p0, p2}, Lcom/transsion/web/share/d;-><init>(Lcom/transsion/web/share/ImageShareDialog;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0, p2, v1, v2}, Loq/p;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/net/Uri;Lkotlin/jvm/functions/Function1;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    :goto_0
    return-void
.end method

.method private static final r0(Lcom/transsion/web/share/ImageShareDialog;Ljava/lang/String;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Lcom/transsion/web/share/ImageShareDialog;->t0(ZLjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private static final s0(Lcom/transsion/web/share/ImageShareDialog;Ljava/lang/String;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Lcom/transsion/web/share/ImageShareDialog;->t0(ZLjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private final t0(ZLjava/lang/String;)V
    .locals 0

    .line 1
    if-nez p1, :cond_2

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 13
    .line 14
    sget p2, Lcom/transsion/web/R$string;->share_failed_tips:I

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 21
    .line 22
    sget p2, Lcom/transsion/web/R$string;->web_app_not_exist:I

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    .line 25
    .line 26
    .line 27
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public c0()V
    .locals 0

    .line 1
    return-void
.end method

.method public initView()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v1, "imageUrl"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/net/Uri;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    iput-object v0, p0, Lcom/transsion/web/share/ImageShareDialog;->e:Landroid/net/Uri;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialogFragment;->getMViewBinding()Lf4/a;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Liw/b;

    .line 24
    .line 25
    iget-object v0, v0, Liw/b;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 26
    .line 27
    const-string v1, "ivShare"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/transsion/web/share/ImageShareDialog;->e:Landroid/net/Uri;

    .line 33
    .line 34
    const/high16 v2, 0x40800000    # 4.0f

    .line 35
    .line 36
    invoke-static {v0, v1, v2}, Lcp/a;->a(Landroid/widget/ImageView;Landroid/net/Uri;F)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialogFragment;->getMViewBinding()Lf4/a;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Liw/b;

    .line 44
    .line 45
    iget-object v0, v0, Liw/b;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 46
    .line 47
    new-instance v1, Lcom/transsion/web/share/a;

    .line 48
    .line 49
    invoke-direct {v1, p0}, Lcom/transsion/web/share/a;-><init>(Lcom/transsion/web/share/ImageShareDialog;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialogFragment;->getMViewBinding()Lf4/a;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Liw/b;

    .line 60
    .line 61
    iget-object v0, v0, Liw/b;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    .line 63
    new-instance v1, Ltf/d;

    .line 64
    .line 65
    const/high16 v2, 0x41800000    # 16.0f

    .line 66
    .line 67
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-direct {v1, v2}, Ltf/d;-><init>(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 75
    .line 76
    .line 77
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    const/4 v3, 0x0

    .line 84
    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 88
    .line 89
    .line 90
    invoke-direct {p0}, Lcom/transsion/web/share/ImageShareDialog;->n0()Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    new-instance v2, Lcom/transsion/web/share/ImageShareDialog$b;

    .line 95
    .line 96
    invoke-direct {v2}, Lcom/transsion/web/share/ImageShareDialog$b;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q1(Ljava/util/List;)V

    .line 100
    .line 101
    .line 102
    new-instance v3, Lcom/transsion/web/share/b;

    .line 103
    .line 104
    invoke-direct {v3, v1, p0, v2}, Lcom/transsion/web/share/b;-><init>(Ljava/util/List;Lcom/transsion/web/share/ImageShareDialog;Lcom/transsion/web/share/ImageShareDialog$b;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public newLogViewConfig()Lqi/b;
    .locals 5

    .line 1
    new-instance v0, Lqi/b;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "share_panel"

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-direct {v0, v3, v4, v1, v2}, Lqi/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/baseui/dialog/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    sget v0, Lcom/transsion/baseui/R$style;->BottomDialogTheme:I

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/dialog/BaseDialogFragment;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const v2, 0x438f8000    # 287.0f

    .line 21
    .line 22
    .line 23
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 28
    .line 29
    const/4 v2, -0x1

    .line 30
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 31
    .line 32
    const/16 v2, 0x50

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialogFragment;->Z()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method
