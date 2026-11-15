.class public final Lsj/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lf4/a;


# instance fields
.field private final a:Landroid/view/View;

.field public final b:Landroidx/constraintlayout/widget/Guideline;

.field public final c:Lcom/google/android/material/imageview/ShapeableImageView;

.field public final d:Landroidx/appcompat/widget/AppCompatImageView;

.field public final e:Landroidx/constraintlayout/widget/Barrier;

.field public final f:Landroidx/constraintlayout/widget/Barrier;

.field public final g:Landroidx/constraintlayout/widget/Guideline;


# direct methods
.method private constructor <init>(Landroid/view/View;Landroidx/constraintlayout/widget/Guideline;Lcom/google/android/material/imageview/ShapeableImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/constraintlayout/widget/Barrier;Landroidx/constraintlayout/widget/Barrier;Landroidx/constraintlayout/widget/Guideline;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lsj/c;->a:Landroid/view/View;

    .line 5
    .line 6
    iput-object p2, p0, Lsj/c;->b:Landroidx/constraintlayout/widget/Guideline;

    .line 7
    .line 8
    iput-object p3, p0, Lsj/c;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 9
    .line 10
    iput-object p4, p0, Lsj/c;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 11
    .line 12
    iput-object p5, p0, Lsj/c;->e:Landroidx/constraintlayout/widget/Barrier;

    .line 13
    .line 14
    iput-object p6, p0, Lsj/c;->f:Landroidx/constraintlayout/widget/Barrier;

    .line 15
    .line 16
    iput-object p7, p0, Lsj/c;->g:Landroidx/constraintlayout/widget/Guideline;

    .line 17
    .line 18
    return-void
.end method

.method public static a(Landroid/view/View;)Lsj/c;
    .locals 9

    .line 1
    sget v0, Lcom/transsion/commercialization/R$id;->bottomGuideline:I

    .line 2
    .line 3
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v3, v0

    .line 8
    check-cast v3, Landroidx/constraintlayout/widget/Guideline;

    .line 9
    .line 10
    sget v0, Lcom/transsion/commercialization/R$id;->iv:I

    .line 11
    .line 12
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    move-object v4, v1

    .line 17
    check-cast v4, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    sget v0, Lcom/transsion/commercialization/R$id;->ivClose:I

    .line 22
    .line 23
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    move-object v5, v1

    .line 28
    check-cast v5, Landroidx/appcompat/widget/AppCompatImageView;

    .line 29
    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    sget v0, Lcom/transsion/commercialization/R$id;->leftBarrier:I

    .line 33
    .line 34
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    move-object v6, v0

    .line 39
    check-cast v6, Landroidx/constraintlayout/widget/Barrier;

    .line 40
    .line 41
    sget v0, Lcom/transsion/commercialization/R$id;->rightBarrier:I

    .line 42
    .line 43
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    move-object v7, v0

    .line 48
    check-cast v7, Landroidx/constraintlayout/widget/Barrier;

    .line 49
    .line 50
    sget v0, Lcom/transsion/commercialization/R$id;->topGuideline:I

    .line 51
    .line 52
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    move-object v8, v0

    .line 57
    check-cast v8, Landroidx/constraintlayout/widget/Guideline;

    .line 58
    .line 59
    new-instance v0, Lsj/c;

    .line 60
    .line 61
    move-object v1, v0

    .line 62
    move-object v2, p0

    .line 63
    invoke-direct/range {v1 .. v8}, Lsj/c;-><init>(Landroid/view/View;Landroidx/constraintlayout/widget/Guideline;Lcom/google/android/material/imageview/ShapeableImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/constraintlayout/widget/Barrier;Landroidx/constraintlayout/widget/Barrier;Landroidx/constraintlayout/widget/Guideline;)V

    .line 64
    .line 65
    .line 66
    return-object v0

    .line 67
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    new-instance v0, Ljava/lang/NullPointerException;

    .line 76
    .line 77
    const-string v1, "Missing required view with ID: "

    .line 78
    .line 79
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lsj/c;->a:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method
