.class public Lcom/aliyun/subtitle/SubtitleView;
.super Landroid/widget/RelativeLayout;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;,
        Lcom/aliyun/subtitle/SubtitleView$Subtitle;
    }
.end annotation


# static fields
.field public static final EXTRA_COLOR__STRING:Ljava/lang/String; = "extra_color"

.field public static final EXTRA_GRAVITY__ENUM:Ljava/lang/String; = "extra_gravity"

.field public static final EXTRA_LOCATION__INT:Ljava/lang/String; = "extra_location"

.field public static final EXTRA_SIZE_PX__INT:Ljava/lang/String; = "extra_size_px"

.field private static final TAG:Ljava/lang/String; = "SubtitleView"


# instance fields
.field private mDefaultColor:Ljava/lang/String;

.field private mDefaultLocation:I

.field private mDefaultPercent:F

.field private mDefaultSize:I

.field private mSubtitleView:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mTextViewPool:Lcom/aliyun/subtitle/TextViewPool;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/aliyun/subtitle/SubtitleView;->mSubtitleView:Ljava/util/Map;

    .line 3
    invoke-direct {p0}, Lcom/aliyun/subtitle/SubtitleView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/aliyun/subtitle/SubtitleView;->mSubtitleView:Ljava/util/Map;

    .line 6
    invoke-direct {p0}, Lcom/aliyun/subtitle/SubtitleView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/aliyun/subtitle/SubtitleView;->mSubtitleView:Ljava/util/Map;

    .line 9
    invoke-direct {p0}, Lcom/aliyun/subtitle/SubtitleView;->init()V

    return-void
.end method

.method private getFinalParam(Lcom/aliyun/subtitle/SubtitleView$Subtitle;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p1, Lcom/aliyun/subtitle/SubtitleView$Subtitle;->extraInfo:Ljava/util/Map;

    .line 8
    .line 9
    iget v1, p0, Lcom/aliyun/subtitle/SubtitleView;->mDefaultLocation:I

    .line 10
    .line 11
    invoke-static {v0, p1, v1}, Lcom/aliyun/subtitle/LocationStyle;->setLocation(Landroid/widget/RelativeLayout$LayoutParams;Ljava/util/Map;I)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method private getFinalText(Lcom/aliyun/subtitle/SubtitleView$Subtitle;)Landroid/text/SpannableStringBuilder;
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p1, Lcom/aliyun/subtitle/SubtitleView$Subtitle;->content:Ljava/lang/String;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v1, "\n"

    .line 9
    .line 10
    const-string v2, "<br>"

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p1, Lcom/aliyun/subtitle/SubtitleView$Subtitle;->extraInfo:Ljava/util/Map;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/aliyun/subtitle/SubtitleView;->mDefaultColor:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v1, p1, v0}, Lcom/aliyun/subtitle/TextSytle;->setTextColor(Landroid/text/SpannableStringBuilder;Ljava/util/Map;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget v0, p0, Lcom/aliyun/subtitle/SubtitleView;->mDefaultSize:I

    .line 33
    .line 34
    invoke-static {v1, p1, v0}, Lcom/aliyun/subtitle/TextSytle;->setTextSize(Landroid/text/SpannableStringBuilder;Ljava/util/Map;I)V

    .line 35
    .line 36
    .line 37
    return-object v1

    .line 38
    :cond_1
    :goto_0
    new-instance p1, Landroid/text/SpannableStringBuilder;

    .line 39
    .line 40
    const-string v0, ""

    .line 41
    .line 42
    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    return-object p1
.end method

.method private getFinalTextView(Lcom/aliyun/subtitle/SubtitleView$Subtitle;)Landroid/widget/TextView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aliyun/subtitle/SubtitleView;->mTextViewPool:Lcom/aliyun/subtitle/TextViewPool;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/aliyun/subtitle/TextViewPool;->obtain()Landroid/widget/TextView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p1, p1, Lcom/aliyun/subtitle/SubtitleView$Subtitle;->extraInfo:Ljava/util/Map;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/16 p1, 0x11

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v1, "extra_gravity"

    .line 18
    .line 19
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    :goto_0
    return-object v0
.end method

.method private init()V
    .locals 2

    .line 1
    new-instance v0, Lcom/aliyun/subtitle/TextViewPool;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/aliyun/subtitle/TextViewPool;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/aliyun/subtitle/SubtitleView;->mTextViewPool:Lcom/aliyun/subtitle/TextViewPool;

    .line 11
    .line 12
    new-instance v0, Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/aliyun/subtitle/SubtitleView;->setDefaultValue(Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public dismiss(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/subtitle/SubtitleView;->mSubtitleView:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/widget/TextView;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/aliyun/subtitle/SubtitleView;->mTextViewPool:Lcom/aliyun/subtitle/TextViewPool;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/aliyun/subtitle/TextViewPool;->recycle(Landroid/widget/TextView;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    sub-int/2addr p5, p3

    .line 5
    iget p1, p0, Lcom/aliyun/subtitle/SubtitleView;->mDefaultSize:I

    .line 6
    .line 7
    if-lez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget p1, p0, Lcom/aliyun/subtitle/SubtitleView;->mDefaultPercent:F

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    cmpl-float p2, p1, p2

    .line 14
    .line 15
    if-lez p2, :cond_1

    .line 16
    .line 17
    int-to-float p2, p5

    .line 18
    mul-float/2addr p1, p2

    .line 19
    float-to-int p1, p1

    .line 20
    iput p1, p0, Lcom/aliyun/subtitle/SubtitleView;->mDefaultSize:I

    .line 21
    .line 22
    :cond_1
    iget p1, p0, Lcom/aliyun/subtitle/SubtitleView;->mDefaultSize:I

    .line 23
    .line 24
    if-gtz p1, :cond_2

    .line 25
    .line 26
    const/16 p1, 0x14

    .line 27
    .line 28
    iput p1, p0, Lcom/aliyun/subtitle/SubtitleView;->mDefaultSize:I

    .line 29
    .line 30
    :cond_2
    return-void
.end method

.method public setDefaultValue(Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;)V
    .locals 1

    .line 1
    iget v0, p1, Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;->mLocation:I

    .line 2
    .line 3
    iput v0, p0, Lcom/aliyun/subtitle/SubtitleView;->mDefaultLocation:I

    .line 4
    .line 5
    iget v0, p1, Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;->mTextSizePercent:F

    .line 6
    .line 7
    iput v0, p0, Lcom/aliyun/subtitle/SubtitleView;->mDefaultPercent:F

    .line 8
    .line 9
    iget v0, p1, Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;->mTextSize:I

    .line 10
    .line 11
    iput v0, p0, Lcom/aliyun/subtitle/SubtitleView;->mDefaultSize:I

    .line 12
    .line 13
    iget-object p1, p1, Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;->mTextColor:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/aliyun/subtitle/SubtitleView;->mDefaultColor:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public show(Lcom/aliyun/subtitle/SubtitleView$Subtitle;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/aliyun/subtitle/SubtitleView;->getFinalText(Lcom/aliyun/subtitle/SubtitleView$Subtitle;)Landroid/text/SpannableStringBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p1}, Lcom/aliyun/subtitle/SubtitleView;->getFinalParam(Lcom/aliyun/subtitle/SubtitleView$Subtitle;)Landroid/widget/RelativeLayout$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {p0, p1}, Lcom/aliyun/subtitle/SubtitleView;->getFinalTextView(Lcom/aliyun/subtitle/SubtitleView$Subtitle;)Landroid/widget/TextView;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    check-cast v0, Landroid/view/ViewGroup;

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/aliyun/subtitle/SubtitleView;->mSubtitleView:Ljava/util/Map;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/aliyun/subtitle/SubtitleView$Subtitle;->id:Ljava/lang/String;

    .line 36
    .line 37
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    return-void
.end method
