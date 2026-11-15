.class public final Lxk/a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxk/a$a;
    }
.end annotation


# static fields
.field public static final c:Lxk/a$a;

.field public static final d:I


# instance fields
.field private final a:Landroid/widget/ImageView;

.field private final b:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lxk/a$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lxk/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lxk/a;->c:Lxk/a$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lxk/a;->d:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lxk/a;->a:Landroid/widget/ImageView;

    .line 5
    .line 6
    iput-object p2, p0, Lxk/a;->b:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method

.method private final b(IF)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    .line 4
    invoke-static {p2, v0, v1}, Lkotlin/ranges/RangesKt;->k(FFF)F

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    const/16 v0, 0xff

    .line 9
    .line 10
    int-to-float v0, v0

    .line 11
    mul-float/2addr p2, v0

    .line 12
    float-to-int p2, p2

    .line 13
    const v0, 0xffffff

    .line 14
    .line 15
    .line 16
    and-int/2addr p1, v0

    .line 17
    shl-int/lit8 p2, p2, 0x18

    .line 18
    .line 19
    or-int/2addr p1, p2

    .line 20
    return p1
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lxk/a;->b:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const v3, 0x3e99999a    # 0.3f

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1, v3}, Lxk/a;->b(IF)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    filled-new-array {v1, v2, p1}, [I

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 32
    .line 33
    invoke-static {p1, v1}, Lsk/a;->b([ILandroid/graphics/drawable/GradientDrawable$Orientation;)Landroid/graphics/drawable/GradientDrawable;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method
