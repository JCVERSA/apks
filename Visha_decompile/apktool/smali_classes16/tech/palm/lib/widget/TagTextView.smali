.class public Ltech/palm/lib/widget/TagTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# static fields
.field public static TAGS_INDEX_AT_END:I = 0x1

.field public static TAGS_INDEX_AT_START:I


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/lang/StringBuffer;

.field public f:Landroid/content/Context;

.field public g:Landroid/widget/TextView;

.field public h:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2
    sget v0, Ltech/palm/commonlib/R$drawable;->shape_textview_tags_bg:I

    iput v0, p0, Ltech/palm/lib/widget/TagTextView;->b:I

    const/16 v0, 0xa

    .line 3
    iput v0, p0, Ltech/palm/lib/widget/TagTextView;->c:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Ltech/palm/lib/widget/TagTextView;->h:I

    .line 5
    iput-object p1, p0, Ltech/palm/lib/widget/TagTextView;->f:Landroid/content/Context;

    .line 6
    invoke-virtual {p0}, Ltech/palm/lib/widget/TagTextView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    sget p2, Ltech/palm/commonlib/R$drawable;->shape_textview_tags_bg:I

    iput p2, p0, Ltech/palm/lib/widget/TagTextView;->b:I

    const/16 p2, 0xa

    .line 9
    iput p2, p0, Ltech/palm/lib/widget/TagTextView;->c:I

    const/4 p2, 0x0

    .line 10
    iput p2, p0, Ltech/palm/lib/widget/TagTextView;->h:I

    .line 11
    iput-object p1, p0, Ltech/palm/lib/widget/TagTextView;->f:Landroid/content/Context;

    .line 12
    invoke-virtual {p0}, Ltech/palm/lib/widget/TagTextView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    sget p2, Ltech/palm/commonlib/R$drawable;->shape_textview_tags_bg:I

    iput p2, p0, Ltech/palm/lib/widget/TagTextView;->b:I

    const/16 p2, 0xa

    .line 15
    iput p2, p0, Ltech/palm/lib/widget/TagTextView;->c:I

    const/4 p2, 0x0

    .line 16
    iput p2, p0, Ltech/palm/lib/widget/TagTextView;->h:I

    .line 17
    iput-object p1, p0, Ltech/palm/lib/widget/TagTextView;->f:Landroid/content/Context;

    .line 18
    invoke-virtual {p0}, Ltech/palm/lib/widget/TagTextView;->b()V

    return-void
.end method

.method public static a(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v0, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static dp2px(Landroid/content/Context;F)I
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method


# virtual methods
.method public final b()V
    .locals 1

    const-string v0, "#FF08B1FF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ltech/palm/lib/widget/TagTextView;->d:I

    return-void
.end method

.method public setMultiTagAndContent(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget v0, p0, Ltech/palm/lib/widget/TagTextView;->h:I

    sget v1, Ltech/palm/lib/widget/TagTextView;->TAGS_INDEX_AT_START:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Ltech/palm/lib/widget/TagTextView;->setTagStart(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Ltech/palm/lib/widget/TagTextView;->setTagEnd(Ljava/util/List;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setSingleTagAndContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, p2}, Ltech/palm/lib/widget/TagTextView;->setMultiTagAndContent(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public setTagAnyway(IILjava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Ltech/palm/lib/widget/TagTextView;->f:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Ltech/palm/commonlib/R$layout;->layout_textview_tags:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p3, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    sget v2, Ltech/palm/commonlib/R$id;->tv_tags:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Ltech/palm/lib/widget/TagTextView;->g:Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Ltech/palm/lib/widget/TagTextView;->g:Landroid/widget/TextView;

    iget v2, p0, Ltech/palm/lib/widget/TagTextView;->c:I

    int-to-float v2, v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p3, p0, Ltech/palm/lib/widget/TagTextView;->g:Landroid/widget/TextView;

    iget v2, p0, Ltech/palm/lib/widget/TagTextView;->d:I

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p3, p0, Ltech/palm/lib/widget/TagTextView;->g:Landroid/widget/TextView;

    iget v2, p0, Ltech/palm/lib/widget/TagTextView;->b:I

    invoke-virtual {p3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-static {v1}, Ltech/palm/lib/widget/TagTextView;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p3

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object p3, p0, Ltech/palm/lib/widget/TagTextView;->g:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    iget-object v2, p0, Ltech/palm/lib/widget/TagTextView;->g:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, p3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance p3, Ljs0;

    invoke-direct {p3, v1}, Ljs0;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0x12

    invoke-virtual {v0, p3, p1, p2, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method

.method public setTagEnd(Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ltech/palm/lib/widget/TagTextView;->e:Ljava/lang/StringBuffer;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Ltech/palm/lib/widget/TagTextView;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/text/SpannableString;

    iget-object v1, p0, Ltech/palm/lib/widget/TagTextView;->e:Ljava/lang/StringBuffer;

    invoke-direct {p2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Ltech/palm/lib/widget/TagTextView;->f:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Ltech/palm/commonlib/R$layout;->layout_textview_tags:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    sget v5, Ltech/palm/commonlib/R$id;->tv_tags:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Ltech/palm/lib/widget/TagTextView;->g:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Ltech/palm/lib/widget/TagTextView;->g:Landroid/widget/TextView;

    iget v6, p0, Ltech/palm/lib/widget/TagTextView;->c:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v5, p0, Ltech/palm/lib/widget/TagTextView;->g:Landroid/widget/TextView;

    iget v6, p0, Ltech/palm/lib/widget/TagTextView;->d:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Ltech/palm/lib/widget/TagTextView;->g:Landroid/widget/TextView;

    iget v6, p0, Ltech/palm/lib/widget/TagTextView;->b:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-static {v4}, Ltech/palm/lib/widget/TagTextView;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v6, p0, Ltech/palm/lib/widget/TagTextView;->g:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-object v7, p0, Ltech/palm/lib/widget/TagTextView;->g:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {v5, v1, v1, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v5, Landroid/text/style/ImageSpan;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v0

    const/16 v6, 0x12

    invoke-virtual {p2, v5, v0, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x5

    invoke-virtual {p0, v1, v1, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method

.method public setTagImageStart(Landroid/content/Context;ILjava/lang/String;II)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "**"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltech/palm/lib/widget/TagTextView;->e:Ljava/lang/StringBuffer;

    new-instance p3, Landroid/text/SpannableString;

    iget-object v0, p0, Ltech/palm/lib/widget/TagTextView;->e:Ljava/lang/StringBuffer;

    invoke-direct {p3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float p2, p4

    invoke-static {p1, p2}, Ltech/palm/lib/widget/TagTextView;->dp2px(Landroid/content/Context;F)I

    move-result p2

    int-to-float p4, p5

    invoke-static {p1, p4}, Ltech/palm/lib/widget/TagTextView;->dp2px(Landroid/content/Context;F)I

    move-result p1

    const/4 p4, 0x0

    invoke-virtual {v0, p4, p4, p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance p1, Ljs0;

    invoke-direct {p1, v0}, Ljs0;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x2

    const/16 p5, 0x12

    invoke-virtual {p3, p1, p4, p2, p5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method

.method public setTagStart(Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ltech/palm/lib/widget/TagTextView;->e:Ljava/lang/StringBuffer;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Ltech/palm/lib/widget/TagTextView;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltech/palm/lib/widget/TagTextView;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance p2, Landroid/text/SpannableString;

    iget-object v0, p0, Ltech/palm/lib/widget/TagTextView;->e:Ljava/lang/StringBuffer;

    invoke-direct {p2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    move v3, v2

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    iget-object v5, p0, Ltech/palm/lib/widget/TagTextView;->f:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Ltech/palm/commonlib/R$layout;->layout_textview_tags:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    sget v6, Ltech/palm/commonlib/R$id;->tv_tags:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Ltech/palm/lib/widget/TagTextView;->g:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Ltech/palm/lib/widget/TagTextView;->g:Landroid/widget/TextView;

    iget v7, p0, Ltech/palm/lib/widget/TagTextView;->c:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v6, p0, Ltech/palm/lib/widget/TagTextView;->g:Landroid/widget/TextView;

    iget v7, p0, Ltech/palm/lib/widget/TagTextView;->d:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, p0, Ltech/palm/lib/widget/TagTextView;->g:Landroid/widget/TextView;

    iget v7, p0, Ltech/palm/lib/widget/TagTextView;->b:I

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-static {v5}, Ltech/palm/lib/widget/TagTextView;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v5, p0, Ltech/palm/lib/widget/TagTextView;->g:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v7, p0, Ltech/palm/lib/widget/TagTextView;->g:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {v6, v0, v0, v5, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v5, Ljs0;

    invoke-direct {v5, v6}, Ljs0;-><init>(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v6, v1, -0x1

    const/16 v7, 0x12

    invoke-virtual {p2, v5, v6, v3, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x5

    invoke-virtual {p0, v0, v0, v0, p1}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method

.method public setTagTextColor(I)V
    .locals 0

    iput p1, p0, Ltech/palm/lib/widget/TagTextView;->d:I

    return-void
.end method

.method public setTagTextSize(I)V
    .locals 0

    iput p1, p0, Ltech/palm/lib/widget/TagTextView;->c:I

    return-void
.end method

.method public setTagsBackgroundStyle(I)V
    .locals 0

    iput p1, p0, Ltech/palm/lib/widget/TagTextView;->b:I

    return-void
.end method

.method public setTagsIndex(I)V
    .locals 0

    iput p1, p0, Ltech/palm/lib/widget/TagTextView;->h:I

    return-void
.end method
