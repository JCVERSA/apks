.class public final Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;

.field public static e:Z

.field public static final f:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final g:Lo/t14;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Landroid/widget/Button;

.field public c:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;-><init>(Lo/pg1;)V

    sput-object v0, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->d:Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->f:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v0, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$Companion$TRANSLATES$2;->INSTANCE:Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$Companion$TRANSLATES$2;

    invoke-static {v0}, Lkotlin/b;->b(Lo/bx2;)Lo/t14;

    move-result-object v0

    sput-object v0, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->g:Lo/t14;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x1030225

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->o(Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lo/bx2;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->k(Lo/bx2;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic c()Z
    .locals 1

    sget-boolean v0, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->e:Z

    return v0
.end method

.method public static final synthetic d()Lo/t14;
    .locals 1

    sget-object v0, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->g:Lo/t14;

    return-object v0
.end method

.method public static final synthetic e()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->f:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static final synthetic f(Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;)V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->v()V

    return-void
.end method

.method public static final synthetic g(Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;)V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->w()V

    return-void
.end method

.method public static final h(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->d:Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;

    invoke-virtual {v0, p0}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;->c(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static final k(Lo/bx2;Landroid/view/View;)V
    .locals 0

    const-string p1, "$onClick"

    invoke-static {p0, p1}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lo/bx2;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static final o(Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->v()V

    return-void
.end method

.method public static final r(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->d:Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;

    invoke-virtual {v0, p0, p1}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final x(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->d:Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;

    invoke-virtual {v0, p0}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;->j(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final i(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 p1, 0x18

    invoke-static {p1}, Lo/sf5;->a(I)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method public final j(Ljava/lang/String;ZLo/bx2;)Landroid/widget/Button;
    .locals 2

    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41600000    # 14.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const-string p1, "#2F2F2F"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->p()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Lo/qf5;

    invoke-direct {p1, p3}, Lo/qf5;-><init>(Lo/bx2;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setSelected(Z)V

    return-object v0
.end method

.method public final l(Landroid/widget/LinearLayout;)Landroid/widget/ImageView;
    .locals 1

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object v0
.end method

.method public final m(Landroid/widget/LinearLayout;Ljava/lang/CharSequence;)Landroid/widget/TextView;
    .locals 3

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41800000    # 16.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const-string p1, "#2F2F2F"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/16 p1, 0x10

    invoke-static {p1}, Lo/sf5;->a(I)F

    move-result p2

    float-to-int p2, p2

    invoke-static {p1}, Lo/sf5;->a(I)F

    move-result v1

    float-to-int v1, v1

    invoke-static {p1}, Lo/sf5;->a(I)F

    move-result v2

    float-to-int v2, v2

    invoke-static {p1}, Lo/sf5;->a(I)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p2, v1, v2, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method public final n()Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    new-instance v1, Landroid/widget/ScrollView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->t()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v6, "#2F2F2F"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0x10

    invoke-static {v8}, Lo/sf5;->a(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/16 v9, 0x30

    invoke-static {v9}, Lo/sf5;->a(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sget-object v9, Lo/mg8;->a:Lo/mg8;

    invoke-virtual {v2, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->q()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->m(Landroid/widget/LinearLayout;Ljava/lang/CharSequence;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Lo/pf5;

    invoke-direct {v6, v0}, Lo/pf5;-><init>(Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->l(Landroid/widget/LinearLayout;)Landroid/widget/ImageView;

    move-result-object v5

    sget-object v6, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->d:Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "getContext(...)"

    invoke-static {v9, v10}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "guide_download"

    invoke-virtual {v6, v9, v11}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v9, v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    const/16 v11, 0xca

    invoke-static {v11}, Lo/sf5;->a(I)F

    move-result v12

    float-to-int v12, v12

    const/16 v13, 0x66

    invoke-static {v13}, Lo/sf5;->a(I)F

    move-result v14

    float-to-int v14, v14

    invoke-direct {v9, v12, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v2, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v5, "step_one_action"

    invoke-static {v6, v5}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;->b(Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v9, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$createView$1$1$6;

    invoke-direct {v9, v0}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$createView$1$1$6;-><init>(Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;)V

    invoke-virtual {v0, v5, v4, v9}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->j(Ljava/lang/String;ZLo/bx2;)Landroid/widget/Button;

    move-result-object v5

    iput-object v5, v0, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->b:Landroid/widget/Button;

    if-nez v5, :cond_1

    const-string v5, "btnDownload"

    invoke-static {v5}, Lo/or3;->w(Ljava/lang/String;)V

    const/4 v5, 0x0

    :cond_1
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v8}, Lo/sf5;->a(I)F

    move-result v14

    float-to-int v14, v14

    invoke-static {v8}, Lo/sf5;->a(I)F

    move-result v15

    float-to-int v15, v15

    invoke-static {v8}, Lo/sf5;->a(I)F

    move-result v9

    float-to-int v9, v9

    invoke-static {v8}, Lo/sf5;->a(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v12, v14, v15, v9, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->m(Landroid/widget/LinearLayout;Ljava/lang/CharSequence;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->l(Landroid/widget/LinearLayout;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v10}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "guide_uninstall"

    invoke-virtual {v6, v5, v9}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v5, v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-static {v11}, Lo/sf5;->a(I)F

    move-result v9

    float-to-int v9, v9

    invoke-static {v13}, Lo/sf5;->a(I)F

    move-result v10

    float-to-int v10, v10

    invoke-direct {v5, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v2, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "step_two_action"

    invoke-static {v6, v3}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;->b(Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$createView$1$1$10;

    invoke-direct {v4, v0}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$createView$1$1$10;-><init>(Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;)V

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v4}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->j(Ljava/lang/String;ZLo/bx2;)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, v0, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->c:Landroid/widget/Button;

    if-nez v3, :cond_3

    const-string v3, "btnUninstall"

    invoke-static {v3}, Lo/or3;->w(Ljava/lang/String;)V

    const/4 v9, 0x0

    goto :goto_0

    :cond_3
    move-object v9, v3

    :goto_0
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v8}, Lo/sf5;->a(I)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v8}, Lo/sf5;->a(I)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v8}, Lo/sf5;->a(I)F

    move-result v6

    float-to-int v6, v6

    invoke-static {v8}, Lo/sf5;->a(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v9, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->n()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    sget-object p1, Lo/et5;->a:Lo/et5;

    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/et5;->c(Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->u()V

    return-void
.end method

.method public final p()Landroid/graphics/drawable/Drawable;
    .locals 3

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const v1, 0x10100a1

    filled-new-array {v1}, [I

    move-result-object v1

    const-string v2, "#FFCD22"

    invoke-virtual {p0, v2}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->i(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    new-array v1, v1, [I

    const-string v2, "#F5F5F5"

    invoke-virtual {p0, v2}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->i(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public final q()Ljava/lang/CharSequence;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lo/ft7;->a:Lo/ft7;

    sget-object v1, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->d:Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;

    const-string v2, "step_one_title"

    invoke-static {v1, v2}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;->b(Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Snaptube.com"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(...)"

    invoke-static {v1, v2}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x6

    const/4 v8, 0x0

    const-string v4, "Snaptube.com"

    const/4 v6, 0x0

    move-object v3, v0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt__StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const-string v4, "#4D90FF"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x12

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v2
.end method

.method public final s()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->d:Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;

    const-string v2, "step_two_title"

    invoke-static {v1, v2}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;->b(Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final t()Ljava/lang/CharSequence;
    .locals 6

    sget-object v0, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->d:Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;

    const-string v1, "title_action"

    invoke-static {v0, v1}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;->b(Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lo/ft7;->a:Lo/ft7;

    const-string v2, "official_snaptube"

    invoke-static {v0, v2}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;->b(Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Snaptube"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "format(...)"

    invoke-static {v0, v2}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v3, 0x1a

    invoke-static {v3}, Lo/sf5;->b(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v0, v3, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x11

    invoke-virtual {v2, v0, v5, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v3, 0x20

    invoke-static {v3}, Lo/sf5;->b(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v0, v3, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x12

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v2
.end method

.method public final u()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method

.method public final v()V
    .locals 4

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    sget-object v0, Lo/et5;->a:Lo/et5;

    iget-object v1, p0, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/et5;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->d:Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;

    const-string v3, "official_web_url"

    invoke-static {v2, v3}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;->b(Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->b:Landroid/widget/Button;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "btnDownload"

    invoke-static {v0}, Lo/or3;->w(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->c:Landroid/widget/Button;

    if-nez v0, :cond_1

    const-string v0, "btnUninstall"

    invoke-static {v0}, Lo/or3;->w(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    sget-object v0, Lo/mg8;->a:Lo/mg8;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    return-void
.end method

.method public final w()V
    .locals 4

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    sget-object v0, Lo/et5;->a:Lo/et5;

    iget-object v1, p0, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/et5;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lo/mg8;->a:Lo/mg8;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
