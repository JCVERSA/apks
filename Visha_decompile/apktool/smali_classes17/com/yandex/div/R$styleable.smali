.class public final Lcom/yandex/div/R$styleable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final BaseIndicatorTabLayout:[I

.field public static final BaseIndicatorTabLayout_tabContentEnd:I = 0x0

.field public static final BaseIndicatorTabLayout_tabEllipsizeEnabled:I = 0x1

.field public static final BaseIndicatorTabLayout_tabIndicatorPaddingBottom:I = 0x2

.field public static final BaseIndicatorTabLayout_tabIndicatorPaddingTop:I = 0x3

.field public static final BaseIndicatorTabLayout_tabScrollPadding:I = 0x4

.field public static final BaseIndicatorTabLayout_tabScrollPaddingEnabled:I = 0x5

.field public static final BaseIndicatorTabLayout_tabTextBoldOnSelection:I = 0x6

.field public static final EllipsizedTextView:[I

.field public static final EllipsizedTextView_ellipsis:I = 0x0

.field public static final EllipsizedTextView_ellipsisTextViewStyle:I = 0x1

.field public static final GridContainer:[I

.field public static final GridContainer_android_columnCount:I = 0x1

.field public static final GridContainer_android_gravity:I = 0x0

.field public static final TabItem:[I

.field public static final TabItem_android_icon:I = 0x0

.field public static final TabItem_android_layout:I = 0x1

.field public static final TabItem_android_text:I = 0x2

.field public static final TabLayout:[I

.field public static final TabLayout_OsTabGravity:I = 0x0

.field public static final TabLayout_OsTabMode:I = 0x1

.field public static final TabLayout_isFixPadding:I = 0x2

.field public static final TabLayout_scrollableTabMinWidth:I = 0x3

.field public static final TabLayout_tabBackground:I = 0x4

.field public static final TabLayout_tabContentStart:I = 0x5

.field public static final TabLayout_tabGravity:I = 0x6

.field public static final TabLayout_tabIconTint:I = 0x7

.field public static final TabLayout_tabIconTintMode:I = 0x8

.field public static final TabLayout_tabIndicator:I = 0x9

.field public static final TabLayout_tabIndicatorAnimationDuration:I = 0xa

.field public static final TabLayout_tabIndicatorAnimationMode:I = 0xb

.field public static final TabLayout_tabIndicatorColor:I = 0xc

.field public static final TabLayout_tabIndicatorFullWidth:I = 0xd

.field public static final TabLayout_tabIndicatorGravity:I = 0xe

.field public static final TabLayout_tabIndicatorHeight:I = 0xf

.field public static final TabLayout_tabInlineLabel:I = 0x10

.field public static final TabLayout_tabMaxWidth:I = 0x11

.field public static final TabLayout_tabMinWidth:I = 0x12

.field public static final TabLayout_tabMode:I = 0x13

.field public static final TabLayout_tabPadding:I = 0x14

.field public static final TabLayout_tabPaddingBottom:I = 0x15

.field public static final TabLayout_tabPaddingEnd:I = 0x16

.field public static final TabLayout_tabPaddingStart:I = 0x17

.field public static final TabLayout_tabPaddingTop:I = 0x18

.field public static final TabLayout_tabRippleColor:I = 0x19

.field public static final TabLayout_tabSelectedTextAppearance:I = 0x1a

.field public static final TabLayout_tabSelectedTextColor:I = 0x1b

.field public static final TabLayout_tabTextAppearance:I = 0x1c

.field public static final TabLayout_tabTextColor:I = 0x1d

.field public static final TabLayout_tabUnboundedRipple:I = 0x1e

.field public static final ViewPagerFixedSizeLayout:[I

.field public static final ViewPagerFixedSizeLayout_collapsiblePaddingBottom:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/yandex/div/R$styleable;->BaseIndicatorTabLayout:[I

    const v0, 0x7f0402c1

    const v1, 0x7f0402c2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/yandex/div/R$styleable;->EllipsizedTextView:[I

    const v0, 0x10100af

    const v1, 0x1010377

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/yandex/div/R$styleable;->GridContainer:[I

    const v0, 0x10100f2

    const v1, 0x101014f

    const v2, 0x1010002

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/yandex/div/R$styleable;->TabItem:[I

    const/16 v0, 0x1f

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/yandex/div/R$styleable;->TabLayout:[I

    const v0, 0x7f0401a9

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/yandex/div/R$styleable;->ViewPagerFixedSizeLayout:[I

    return-void

    :array_0
    .array-data 4
        0x7f040848
        0x7f04084a
        0x7f040855
        0x7f040856
        0x7f040861
        0x7f040862
        0x7f040868
    .end array-data

    :array_1
    .array-data 4
        0x7f040018
        0x7f040019
        0x7f0403cb
        0x7f04076b
        0x7f040847
        0x7f040849
        0x7f04084b
        0x7f04084c
        0x7f04084d
        0x7f04084e
        0x7f04084f
        0x7f040850
        0x7f040851
        0x7f040852
        0x7f040853
        0x7f040854
        0x7f040857
        0x7f040858
        0x7f040859
        0x7f04085a
        0x7f04085b
        0x7f04085c
        0x7f04085d
        0x7f04085e
        0x7f04085f
        0x7f040860
        0x7f040864
        0x7f040865
        0x7f040867
        0x7f040869
        0x7f04086a
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
