.class public Lcom/noober/background/drawable/DrawableCreator;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noober/background/drawable/DrawableCreator$Builder;,
        Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;,
        Lcom/noober/background/drawable/DrawableCreator$Gradient;,
        Lcom/noober/background/drawable/DrawableCreator$Shape;
    }
.end annotation


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

.method public static setDrawable(Landroid/graphics/drawable/Drawable;Landroid/view/View;Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;)V
    .locals 6

    .line 1
    instance-of v0, p1, Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz p0, :cond_4

    .line 8
    .line 9
    sget-object v2, Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;->Left:Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;

    .line 10
    .line 11
    if-ne p2, v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {p0, v0, v0, p2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 22
    .line 23
    .line 24
    check-cast p1, Landroid/widget/TextView;

    .line 25
    .line 26
    invoke-virtual {p1, p0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 27
    .line 28
    .line 29
    goto/16 :goto_1

    .line 30
    .line 31
    :cond_0
    sget-object v2, Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;->Top:Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;

    .line 32
    .line 33
    if-ne p2, v2, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual {p0, v0, v0, p2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 44
    .line 45
    .line 46
    check-cast p1, Landroid/widget/TextView;

    .line 47
    .line 48
    invoke-virtual {p1, v1, p0, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    sget-object v2, Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;->Right:Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;

    .line 53
    .line 54
    if-ne p2, v2, :cond_2

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-virtual {p0, v0, v0, p2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 65
    .line 66
    .line 67
    check-cast p1, Landroid/widget/TextView;

    .line 68
    .line 69
    invoke-virtual {p1, v1, v1, p0, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    sget-object v2, Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;->Bottom:Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;

    .line 74
    .line 75
    if-ne p2, v2, :cond_3

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    invoke-virtual {p0, v0, v0, p2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 86
    .line 87
    .line 88
    check-cast p1, Landroid/widget/TextView;

    .line 89
    .line 90
    invoke-virtual {p1, v1, v1, v1, p0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_4
    check-cast p1, Landroid/widget/TextView;

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    sget-object v2, Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;->Left:Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;

    .line 105
    .line 106
    const/4 v3, 0x3

    .line 107
    const/4 v4, 0x2

    .line 108
    const/4 v5, 0x1

    .line 109
    if-ne p2, v2, :cond_5

    .line 110
    .line 111
    aput-object v1, p0, v0

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_5
    sget-object v2, Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;->Top:Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;

    .line 115
    .line 116
    if-ne p2, v2, :cond_6

    .line 117
    .line 118
    aput-object v1, p0, v5

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_6
    sget-object v2, Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;->Right:Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;

    .line 122
    .line 123
    if-ne p2, v2, :cond_7

    .line 124
    .line 125
    aput-object v1, p0, v4

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_7
    sget-object v2, Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;->Bottom:Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;

    .line 129
    .line 130
    if-ne p2, v2, :cond_8

    .line 131
    .line 132
    aput-object v1, p0, v3

    .line 133
    .line 134
    :cond_8
    :goto_0
    aget-object p2, p0, v0

    .line 135
    .line 136
    aget-object v0, p0, v5

    .line 137
    .line 138
    aget-object v1, p0, v4

    .line 139
    .line 140
    aget-object p0, p0, v3

    .line 141
    .line 142
    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_9
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 147
    .line 148
    .line 149
    :goto_1
    return-void
.end method
