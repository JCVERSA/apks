.class public final Lbx/g0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lf4/a;


# instance fields
.field private final a:Landroid/widget/FrameLayout;

.field public final b:Lbx/s0;

.field public final c:Landroid/widget/ImageView;

.field public final d:Landroid/view/View;

.field public final e:Landroidx/appcompat/widget/LinearLayoutCompat;

.field public final f:Lcom/transsnet/downloader/widget/DownloadView;

.field public final g:Landroidx/appcompat/widget/AppCompatTextView;

.field public final h:Landroid/view/View;

.field public final i:Lcom/transsnet/downloader/widget/DownloadPathEntranceView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Lbx/s0;Landroid/widget/ImageView;Landroid/view/View;Landroidx/appcompat/widget/LinearLayoutCompat;Lcom/transsnet/downloader/widget/DownloadView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/view/View;Lcom/transsnet/downloader/widget/DownloadPathEntranceView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lbx/g0;->a:Landroid/widget/FrameLayout;

    .line 5
    .line 6
    iput-object p2, p0, Lbx/g0;->b:Lbx/s0;

    .line 7
    .line 8
    iput-object p3, p0, Lbx/g0;->c:Landroid/widget/ImageView;

    .line 9
    .line 10
    iput-object p4, p0, Lbx/g0;->d:Landroid/view/View;

    .line 11
    .line 12
    iput-object p5, p0, Lbx/g0;->e:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 13
    .line 14
    iput-object p6, p0, Lbx/g0;->f:Lcom/transsnet/downloader/widget/DownloadView;

    .line 15
    .line 16
    iput-object p7, p0, Lbx/g0;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 17
    .line 18
    iput-object p8, p0, Lbx/g0;->h:Landroid/view/View;

    .line 19
    .line 20
    iput-object p9, p0, Lbx/g0;->i:Lcom/transsnet/downloader/widget/DownloadPathEntranceView;

    .line 21
    .line 22
    return-void
.end method

.method public static a(Landroid/view/View;)Lbx/g0;
    .locals 12

    .line 1
    sget v0, Lcom/transsnet/downloader/R$id;->included_content:I

    .line 2
    .line 3
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {v1}, Lbx/s0;->a(Landroid/view/View;)Lbx/s0;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    sget v0, Lcom/transsnet/downloader/R$id;->iv_close:I

    .line 14
    .line 15
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    move-object v5, v1

    .line 20
    check-cast v5, Landroid/widget/ImageView;

    .line 21
    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    sget v0, Lcom/transsnet/downloader/R$id;->line:I

    .line 25
    .line 26
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    if-eqz v6, :cond_0

    .line 31
    .line 32
    sget v0, Lcom/transsnet/downloader/R$id;->ll_content:I

    .line 33
    .line 34
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    move-object v7, v1

    .line 39
    check-cast v7, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 40
    .line 41
    if-eqz v7, :cond_0

    .line 42
    .line 43
    sget v0, Lcom/transsnet/downloader/R$id;->tv_download:I

    .line 44
    .line 45
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    move-object v8, v1

    .line 50
    check-cast v8, Lcom/transsnet/downloader/widget/DownloadView;

    .line 51
    .line 52
    if-eqz v8, :cond_0

    .line 53
    .line 54
    sget v0, Lcom/transsnet/downloader/R$id;->tv_title:I

    .line 55
    .line 56
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    move-object v9, v1

    .line 61
    check-cast v9, Landroidx/appcompat/widget/AppCompatTextView;

    .line 62
    .line 63
    if-eqz v9, :cond_0

    .line 64
    .line 65
    sget v0, Lcom/transsnet/downloader/R$id;->v_bottom:I

    .line 66
    .line 67
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    if-eqz v10, :cond_0

    .line 72
    .line 73
    sget v0, Lcom/transsnet/downloader/R$id;->v_path_entrance:I

    .line 74
    .line 75
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    move-object v11, v1

    .line 80
    check-cast v11, Lcom/transsnet/downloader/widget/DownloadPathEntranceView;

    .line 81
    .line 82
    if-eqz v11, :cond_0

    .line 83
    .line 84
    new-instance v0, Lbx/g0;

    .line 85
    .line 86
    move-object v3, p0

    .line 87
    check-cast v3, Landroid/widget/FrameLayout;

    .line 88
    .line 89
    move-object v2, v0

    .line 90
    invoke-direct/range {v2 .. v11}, Lbx/g0;-><init>(Landroid/widget/FrameLayout;Lbx/s0;Landroid/widget/ImageView;Landroid/view/View;Landroidx/appcompat/widget/LinearLayoutCompat;Lcom/transsnet/downloader/widget/DownloadView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/view/View;Lcom/transsnet/downloader/widget/DownloadPathEntranceView;)V

    .line 91
    .line 92
    .line 93
    return-object v0

    .line 94
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    .line 103
    .line 104
    const-string v1, "Missing required view with ID: "

    .line 105
    .line 106
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v0
.end method

.method public static c(Landroid/view/LayoutInflater;)Lbx/g0;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v0, v1}, Lbx/g0;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lbx/g0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lbx/g0;
    .locals 2

    .line 1
    sget v0, Lcom/transsnet/downloader/R$layout;->fragment_download_res_single_res:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {p0}, Lbx/g0;->a(Landroid/view/View;)Lbx/g0;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public b()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lbx/g0;->a:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbx/g0;->b()Landroid/widget/FrameLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
