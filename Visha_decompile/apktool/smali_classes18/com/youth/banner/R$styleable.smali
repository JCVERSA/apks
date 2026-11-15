.class public final Lcom/youth/banner/R$styleable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youth/banner/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final Banner:[I

.field public static final Banner_banner_auto_loop:I = 0x0

.field public static final Banner_banner_indicator_gravity:I = 0x1

.field public static final Banner_banner_indicator_height:I = 0x2

.field public static final Banner_banner_indicator_margin:I = 0x3

.field public static final Banner_banner_indicator_marginBottom:I = 0x4

.field public static final Banner_banner_indicator_marginLeft:I = 0x5

.field public static final Banner_banner_indicator_marginRight:I = 0x6

.field public static final Banner_banner_indicator_marginTop:I = 0x7

.field public static final Banner_banner_indicator_normal_color:I = 0x8

.field public static final Banner_banner_indicator_normal_width:I = 0x9

.field public static final Banner_banner_indicator_radius:I = 0xa

.field public static final Banner_banner_indicator_selected_color:I = 0xb

.field public static final Banner_banner_indicator_selected_width:I = 0xc

.field public static final Banner_banner_indicator_space:I = 0xd

.field public static final Banner_banner_infinite_loop:I = 0xe

.field public static final Banner_banner_loop_time:I = 0xf

.field public static final Banner_banner_orientation:I = 0x10

.field public static final Banner_banner_radius:I = 0x11

.field public static final Banner_banner_round_bottom_left:I = 0x12

.field public static final Banner_banner_round_bottom_right:I = 0x13

.field public static final Banner_banner_round_top_left:I = 0x14

.field public static final Banner_banner_round_top_right:I = 0x15

.field public static final ColorStateListItem:[I

.field public static final ColorStateListItem_alpha:I = 0x3

.field public static final ColorStateListItem_android_alpha:I = 0x1

.field public static final ColorStateListItem_android_color:I = 0x0

.field public static final ColorStateListItem_android_lStar:I = 0x2

.field public static final ColorStateListItem_lStar:I = 0x4

.field public static final DrawableIndicator:[I

.field public static final DrawableIndicator_normal_drawable:I = 0x0

.field public static final DrawableIndicator_selected_drawable:I = 0x1

.field public static final FontFamily:[I

.field public static final FontFamilyFont:[I

.field public static final FontFamilyFont_android_font:I = 0x0

.field public static final FontFamilyFont_android_fontStyle:I = 0x2

.field public static final FontFamilyFont_android_fontVariationSettings:I = 0x4

.field public static final FontFamilyFont_android_fontWeight:I = 0x1

.field public static final FontFamilyFont_android_ttcIndex:I = 0x3

.field public static final FontFamilyFont_font:I = 0x5

.field public static final FontFamilyFont_fontStyle:I = 0x6

.field public static final FontFamilyFont_fontVariationSettings:I = 0x7

.field public static final FontFamilyFont_fontWeight:I = 0x8

.field public static final FontFamilyFont_ttcIndex:I = 0x9

.field public static final FontFamily_fontProviderAuthority:I = 0x0

.field public static final FontFamily_fontProviderCerts:I = 0x1

.field public static final FontFamily_fontProviderFallbackQuery:I = 0x2

.field public static final FontFamily_fontProviderFetchStrategy:I = 0x3

.field public static final FontFamily_fontProviderFetchTimeout:I = 0x4

.field public static final FontFamily_fontProviderPackage:I = 0x5

.field public static final FontFamily_fontProviderQuery:I = 0x6

.field public static final FontFamily_fontProviderSystemFontFamily:I = 0x7

.field public static final GradientColor:[I

.field public static final GradientColorItem:[I

.field public static final GradientColorItem_android_color:I = 0x0

.field public static final GradientColorItem_android_offset:I = 0x1

.field public static final GradientColor_android_centerColor:I = 0x7

.field public static final GradientColor_android_centerX:I = 0x3

.field public static final GradientColor_android_centerY:I = 0x4

.field public static final GradientColor_android_endColor:I = 0x1

.field public static final GradientColor_android_endX:I = 0xa

.field public static final GradientColor_android_endY:I = 0xb

.field public static final GradientColor_android_gradientRadius:I = 0x5

.field public static final GradientColor_android_startColor:I = 0x0

.field public static final GradientColor_android_startX:I = 0x8

.field public static final GradientColor_android_startY:I = 0x9

.field public static final GradientColor_android_tileMode:I = 0x6

.field public static final GradientColor_android_type:I = 0x2

.field public static final RecyclerView:[I

.field public static final RecyclerView_android_clipToPadding:I = 0x1

.field public static final RecyclerView_android_descendantFocusability:I = 0x2

.field public static final RecyclerView_android_orientation:I = 0x0

.field public static final RecyclerView_fastScrollEnabled:I = 0x3

.field public static final RecyclerView_fastScrollHorizontalThumbDrawable:I = 0x4

.field public static final RecyclerView_fastScrollHorizontalTrackDrawable:I = 0x5

.field public static final RecyclerView_fastScrollVerticalThumbDrawable:I = 0x6

.field public static final RecyclerView_fastScrollVerticalTrackDrawable:I = 0x7

.field public static final RecyclerView_layoutManager:I = 0x8

.field public static final RecyclerView_reverseLayout:I = 0x9

.field public static final RecyclerView_spanCount:I = 0xa

.field public static final RecyclerView_stackFromEnd:I = 0xb

.field public static final ViewPager2:[I

.field public static final ViewPager2_android_orientation:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/youth/banner/R$styleable;->Banner:[I

    const v0, 0x7f040069

    const v1, 0x7f0403ff

    const v2, 0x10101a5

    const v3, 0x101031f

    const v4, 0x1010647

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/youth/banner/R$styleable;->ColorStateListItem:[I

    const v0, 0x7f040572

    const v1, 0x7f040790

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/youth/banner/R$styleable;->DrawableIndicator:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/youth/banner/R$styleable;->FontFamily:[I

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/youth/banner/R$styleable;->FontFamilyFont:[I

    const/16 v0, 0xc

    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Lcom/youth/banner/R$styleable;->GradientColor:[I

    const v1, 0x1010514

    filled-new-array {v2, v1}, [I

    move-result-object v1

    sput-object v1, Lcom/youth/banner/R$styleable;->GradientColorItem:[I

    const v1, 0x10100c4

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/youth/banner/R$styleable;->RecyclerView:[I

    filled-new-array {v1}, [I

    move-result-object v0

    sput-object v0, Lcom/youth/banner/R$styleable;->ViewPager2:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0400b2
        0x7f0400b3
        0x7f0400b4
        0x7f0400b5
        0x7f0400b6
        0x7f0400b7
        0x7f0400b8
        0x7f0400b9
        0x7f0400ba
        0x7f0400bb
        0x7f0400bc
        0x7f0400bd
        0x7f0400be
        0x7f0400bf
        0x7f0400c0
        0x7f0400c1
        0x7f0400c2
        0x7f0400c3
        0x7f0400c4
        0x7f0400c5
        0x7f0400c6
        0x7f0400c7
    .end array-data

    :array_1
    .array-data 4
        0x7f040347
        0x7f040348
        0x7f040349
        0x7f04034a
        0x7f04034b
        0x7f04034c
        0x7f04034d
        0x7f04034e
    .end array-data

    :array_2
    .array-data 4
        0x1010532
        0x1010533
        0x101053f
        0x101056f
        0x1010570
        0x7f040344
        0x7f04034f
        0x7f040350
        0x7f040351
        0x7f04091b
    .end array-data

    :array_3
    .array-data 4
        0x101019d
        0x101019e
        0x10101a1
        0x10101a2
        0x10101a3
        0x10101a4
        0x1010201
        0x101020b
        0x1010510
        0x1010511
        0x1010512
        0x1010513
    .end array-data

    :array_4
    .array-data 4
        0x10100c4
        0x10100eb
        0x10100f1
        0x7f040304
        0x7f040305
        0x7f040306
        0x7f040307
        0x7f040308
        0x7f04040a
        0x7f040742
        0x7f0407f4
        0x7f040807
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
