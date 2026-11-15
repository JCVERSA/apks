.class public final Lvp/m;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lf4/a;


# instance fields
.field private final a:Landroid/view/View;

.field public final b:Lcom/google/android/material/imageview/ShapeableImageView;

.field public final c:Lcom/tn/lib/view/CornerTextView;

.field public final d:Landroid/view/View;

.field public final e:Lcom/transsnet/downloader/widget/DownloadView;

.field public final f:Landroidx/recyclerview/widget/RecyclerView;

.field public final g:Landroid/widget/LinearLayout;

.field public final h:Landroidx/appcompat/widget/AppCompatTextView;

.field public final i:Landroidx/appcompat/widget/AppCompatTextView;

.field public final j:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/tn/lib/view/CornerTextView;Landroid/view/View;Lcom/transsnet/downloader/widget/DownloadView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvp/m;->a:Landroid/view/View;

    .line 5
    .line 6
    iput-object p2, p0, Lvp/m;->b:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 7
    .line 8
    iput-object p3, p0, Lvp/m;->c:Lcom/tn/lib/view/CornerTextView;

    .line 9
    .line 10
    iput-object p4, p0, Lvp/m;->d:Landroid/view/View;

    .line 11
    .line 12
    iput-object p5, p0, Lvp/m;->e:Lcom/transsnet/downloader/widget/DownloadView;

    .line 13
    .line 14
    iput-object p6, p0, Lvp/m;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    .line 16
    iput-object p7, p0, Lvp/m;->g:Landroid/widget/LinearLayout;

    .line 17
    .line 18
    iput-object p8, p0, Lvp/m;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 19
    .line 20
    iput-object p9, p0, Lvp/m;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 21
    .line 22
    iput-object p10, p0, Lvp/m;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 23
    .line 24
    return-void
.end method

.method public static a(Landroid/view/View;)Lvp/m;
    .locals 13

    .line 1
    sget v0, Lcom/transsion/search/R$id;->ivCover:I

    .line 2
    .line 3
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    move-object v4, v1

    .line 8
    check-cast v4, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 9
    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    sget v0, Lcom/transsion/search/R$id;->ivSearchCorner:I

    .line 13
    .line 14
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    move-object v5, v1

    .line 19
    check-cast v5, Lcom/tn/lib/view/CornerTextView;

    .line 20
    .line 21
    if-eqz v5, :cond_0

    .line 22
    .line 23
    sget v0, Lcom/transsion/search/R$id;->line:I

    .line 24
    .line 25
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    if-eqz v6, :cond_0

    .line 30
    .line 31
    sget v0, Lcom/transsion/search/R$id;->llDownload:I

    .line 32
    .line 33
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    move-object v7, v1

    .line 38
    check-cast v7, Lcom/transsnet/downloader/widget/DownloadView;

    .line 39
    .line 40
    if-eqz v7, :cond_0

    .line 41
    .line 42
    sget v0, Lcom/transsion/search/R$id;->rvSeasons:I

    .line 43
    .line 44
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    move-object v8, v1

    .line 49
    check-cast v8, Landroidx/recyclerview/widget/RecyclerView;

    .line 50
    .line 51
    if-eqz v8, :cond_0

    .line 52
    .line 53
    sget v0, Lcom/transsion/search/R$id;->tagContentLL:I

    .line 54
    .line 55
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    move-object v9, v1

    .line 60
    check-cast v9, Landroid/widget/LinearLayout;

    .line 61
    .line 62
    if-eqz v9, :cond_0

    .line 63
    .line 64
    sget v0, Lcom/transsion/search/R$id;->tvSubject:I

    .line 65
    .line 66
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    move-object v10, v1

    .line 71
    check-cast v10, Landroidx/appcompat/widget/AppCompatTextView;

    .line 72
    .line 73
    if-eqz v10, :cond_0

    .line 74
    .line 75
    sget v0, Lcom/transsion/search/R$id;->tvSubjectScore:I

    .line 76
    .line 77
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    move-object v11, v1

    .line 82
    check-cast v11, Landroidx/appcompat/widget/AppCompatTextView;

    .line 83
    .line 84
    if-eqz v11, :cond_0

    .line 85
    .line 86
    sget v0, Lcom/transsion/search/R$id;->tvSubjectYear:I

    .line 87
    .line 88
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    move-object v12, v1

    .line 93
    check-cast v12, Landroidx/appcompat/widget/AppCompatTextView;

    .line 94
    .line 95
    if-eqz v12, :cond_0

    .line 96
    .line 97
    new-instance v0, Lvp/m;

    .line 98
    .line 99
    move-object v2, v0

    .line 100
    move-object v3, p0

    .line 101
    invoke-direct/range {v2 .. v12}, Lvp/m;-><init>(Landroid/view/View;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/tn/lib/view/CornerTextView;Landroid/view/View;Lcom/transsnet/downloader/widget/DownloadView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 102
    .line 103
    .line 104
    return-object v0

    .line 105
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    new-instance v0, Ljava/lang/NullPointerException;

    .line 114
    .line 115
    const-string v1, "Missing required view with ID: "

    .line 116
    .line 117
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw v0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lvp/m;->a:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method
