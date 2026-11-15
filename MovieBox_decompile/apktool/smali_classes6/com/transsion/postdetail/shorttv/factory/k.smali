.class public final Lcom/transsion/postdetail/shorttv/factory/k;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lur/k;


# instance fields
.field private a:Lcom/transsion/share/share/ShareDialogFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/share/share/ShareDialogFragment;
    .locals 15

    .line 1
    sget-object v0, Lcom/transsion/share/share/ShareDialogFragment;->s:Lcom/transsion/share/share/ShareDialogFragment$a;

    .line 2
    .line 3
    sget-object v1, Lcom/transsion/share/bean/PostType;->SHORT_TV_TYPE:Lcom/transsion/share/bean/PostType;

    .line 4
    .line 5
    const/16 v13, 0xc00

    .line 6
    .line 7
    const/4 v14, 0x0

    .line 8
    const-string v3, ""

    .line 9
    .line 10
    const-string v4, "TYPE_SUBJECT"

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v8, 0x0

    .line 15
    const/4 v9, 0x0

    .line 16
    const/4 v11, 0x0

    .line 17
    const/4 v12, 0x0

    .line 18
    move-object/from16 v2, p1

    .line 19
    .line 20
    move-object/from16 v5, p2

    .line 21
    .line 22
    move-object/from16 v10, p3

    .line 23
    .line 24
    invoke-static/range {v0 .. v14}, Lcom/transsion/share/share/ShareDialogFragment$a;->b(Lcom/transsion/share/share/ShareDialogFragment$a;Lcom/transsion/share/bean/PostType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/share/share/ShareDialogFragment;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method


# virtual methods
.method public a(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "share"

    .line 2
    .line 3
    const-string v1, "pageName"

    .line 4
    .line 5
    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/transsion/postdetail/shorttv/factory/k;->a:Lcom/transsion/share/share/ShareDialogFragment;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    const-string p2, ""

    .line 15
    .line 16
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/transsion/postdetail/shorttv/factory/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/share/share/ShareDialogFragment;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    iput-object p2, p0, Lcom/transsion/postdetail/shorttv/factory/k;->a:Lcom/transsion/share/share/ShareDialogFragment;

    .line 21
    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    new-instance p3, Lcom/transsion/postdetail/shorttv/factory/k$a;

    .line 25
    .line 26
    invoke-direct {p3}, Lcom/transsion/postdetail/shorttv/factory/k$a;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p3}, Lcom/transsion/share/share/ShareDialogFragment;->G0(Lcom/transsion/share/share/a;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    if-eqz p1, :cond_4

    .line 33
    .line 34
    :try_start_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    const/4 p3, 0x1

    .line 39
    if-ne p2, p3, :cond_4

    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->g0()Z

    .line 46
    .line 47
    .line 48
    iget-object p2, p0, Lcom/transsion/postdetail/shorttv/factory/k;->a:Lcom/transsion/share/share/ShareDialogFragment;

    .line 49
    .line 50
    if-eqz p2, :cond_2

    .line 51
    .line 52
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    if-ne p2, p3, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception p1

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    if-eqz p2, :cond_3

    .line 66
    .line 67
    :goto_0
    return-void

    .line 68
    :cond_3
    iget-object p2, p0, Lcom/transsion/postdetail/shorttv/factory/k;->a:Lcom/transsion/share/share/ShareDialogFragment;

    .line 69
    .line 70
    if-eqz p2, :cond_4

    .line 71
    .line 72
    invoke-virtual {p2, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    .line 78
    .line 79
    :cond_4
    :goto_2
    return-void
.end method
