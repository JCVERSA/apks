.class public Lcom/aliyun/subtitle/LocationStyle;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final Location_Bottom:I = 0x8

.field public static final Location_Center:I = 0x40

.field public static final Location_CenterH:I = 0x10

.field public static final Location_CenterV:I = 0x20

.field public static final Location_Left:I = 0x1

.field public static final Location_Right:I = 0x4

.field public static final Location_Top:I = 0x2


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

.method public static setLocation(Landroid/widget/RelativeLayout$LayoutParams;Ljava/util/Map;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RelativeLayout$LayoutParams;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "extra_location"

    .line 4
    .line 5
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    :cond_0
    and-int/lit8 p1, p2, 0x8

    .line 22
    .line 23
    const/16 v0, 0x8

    .line 24
    .line 25
    if-ne p1, v0, :cond_1

    .line 26
    .line 27
    const/16 p1, 0xc

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 30
    .line 31
    .line 32
    :cond_1
    and-int/lit8 p1, p2, 0x1

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    if-ne p1, v0, :cond_2

    .line 36
    .line 37
    const/16 p1, 0x9

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 40
    .line 41
    .line 42
    :cond_2
    and-int/lit8 p1, p2, 0x2

    .line 43
    .line 44
    const/4 v0, 0x2

    .line 45
    if-ne p1, v0, :cond_3

    .line 46
    .line 47
    const/16 p1, 0xa

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 50
    .line 51
    .line 52
    :cond_3
    and-int/lit8 p1, p2, 0x4

    .line 53
    .line 54
    const/4 v0, 0x4

    .line 55
    if-ne p1, v0, :cond_4

    .line 56
    .line 57
    const/16 p1, 0xb

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 60
    .line 61
    .line 62
    :cond_4
    and-int/lit8 p1, p2, 0x10

    .line 63
    .line 64
    const/16 v0, 0x10

    .line 65
    .line 66
    if-ne p1, v0, :cond_5

    .line 67
    .line 68
    const/16 p1, 0xe

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 71
    .line 72
    .line 73
    :cond_5
    and-int/lit8 p1, p2, 0x20

    .line 74
    .line 75
    const/16 v0, 0x20

    .line 76
    .line 77
    if-ne p1, v0, :cond_6

    .line 78
    .line 79
    const/16 p1, 0xf

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 82
    .line 83
    .line 84
    :cond_6
    const/16 p1, 0x40

    .line 85
    .line 86
    and-int/2addr p2, p1

    .line 87
    if-ne p2, p1, :cond_7

    .line 88
    .line 89
    const/16 p1, 0xd

    .line 90
    .line 91
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 92
    .line 93
    .line 94
    :cond_7
    return-void
.end method
