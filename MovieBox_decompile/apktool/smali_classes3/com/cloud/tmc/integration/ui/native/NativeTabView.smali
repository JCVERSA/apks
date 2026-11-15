.class public Lcom/cloud/tmc/integration/ui/native/NativeTabView;
.super Landroid/widget/FrameLayout;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/ui/native/NativeTabView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u0000 %2\u00020\u0001:\u0001%B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0015J\u0018\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u0017H\u0014J\u0010\u0010\u001f\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0015J\u000e\u0010 \u001a\u00020\u001a2\u0006\u0010!\u001a\u00020\"J\u000e\u0010#\u001a\u00020\u001a2\u0006\u0010$\u001a\u00020\u0017R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/ui/native/NativeTabView;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attributeSet",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "backDrawable",
        "Landroid/graphics/drawable/GradientDrawable;",
        "isApiControl",
        "",
        "tabLayout",
        "Lcom/google/android/material/tabs/TabLayout;",
        "getTabLayout",
        "()Lcom/google/android/material/tabs/TabLayout;",
        "tabLayout$delegate",
        "Lkotlin/Lazy;",
        "tabList",
        "",
        "",
        "tabListener",
        "Lcom/cloud/tmc/integration/ui/native/INativeTabListener;",
        "textColor",
        "",
        "textSelectedColor",
        "addNativeTabListener",
        "",
        "listener",
        "onMeasure",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "removeNativeTabListener",
        "setTabStyle",
        "data",
        "Lcom/cloud/tmc/integration/ui/data/NativeTabBean;",
        "switchTab",
        "index",
        "Companion",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/integration/ui/native/NativeTabView$Companion;

.field public static final ERROR:Ljava/lang/String; = "error"

.field public static final ERROR_MSG_T10001:Ljava/lang/String; = "Parameter error: T10001"

.field public static final ERROR_MSG_T10002:Ljava/lang/String; = "parse Json error, please check the config: T10002"

.field public static final EVENT_SELECTED:Ljava/lang/String; = "nativeTabSelected"

.field public static final TAG:Ljava/lang/String; = "NativeTabView"


# instance fields
.field private backDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private isApiControl:Z

.field private final tabLayout$delegate:Lkotlin/Lazy;

.field private tabList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tabListener:Lcom/cloud/tmc/integration/ui/native/INativeTabListener;

.field private textColor:I

.field private textSelectedColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/ui/native/NativeTabView$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/ui/native/NativeTabView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->Companion:Lcom/cloud/tmc/integration/ui/native/NativeTabView$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p2, Lcom/cloud/tmc/integration/ui/native/NativeTabView$tabLayout$2;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/integration/ui/native/NativeTabView$tabLayout$2;-><init>(Lcom/cloud/tmc/integration/ui/native/NativeTabView;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->tabLayout$delegate:Lkotlin/Lazy;

    const/4 p2, -0x1

    .line 4
    iput p2, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->textColor:I

    const/high16 p2, -0x1000000

    .line 5
    iput p2, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->textSelectedColor:I

    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/cloud/tmc/integration/R$layout;->mini_native_tab_layout:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 7
    invoke-direct {p0}, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p2, p1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p2, :cond_0

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->backDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 8
    invoke-direct {p0}, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object p1

    new-instance p2, Lcom/cloud/tmc/integration/ui/native/NativeTabView$1;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/integration/ui/native/NativeTabView$1;-><init>(Lcom/cloud/tmc/integration/ui/native/NativeTabView;)V

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/integration/ui/native/NativeTabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic access$getTabListener$p(Lcom/cloud/tmc/integration/ui/native/NativeTabView;)Lcom/cloud/tmc/integration/ui/native/INativeTabListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->tabListener:Lcom/cloud/tmc/integration/ui/native/INativeTabListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getTextColor$p(Lcom/cloud/tmc/integration/ui/native/NativeTabView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->textColor:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getTextSelectedColor$p(Lcom/cloud/tmc/integration/ui/native/NativeTabView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->textSelectedColor:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$isApiControl$p(Lcom/cloud/tmc/integration/ui/native/NativeTabView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->isApiControl:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$setApiControl$p(Lcom/cloud/tmc/integration/ui/native/NativeTabView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->isApiControl:Z

    .line 2
    .line 3
    return-void
.end method

.method private final getTabLayout()Lcom/google/android/material/tabs/TabLayout;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->tabLayout$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "<get-tabLayout>(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public final addNativeTabListener(Lcom/cloud/tmc/integration/ui/native/INativeTabListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->tabListener:Lcom/cloud/tmc/integration/ui/native/INativeTabListener;

    .line 2
    .line 3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final removeNativeTabListener(Lcom/cloud/tmc/integration/ui/native/INativeTabListener;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->tabListener:Lcom/cloud/tmc/integration/ui/native/INativeTabListener;

    .line 3
    .line 4
    return-void
.end method

.method public final setTabStyle(Lcom/cloud/tmc/integration/ui/data/NativeTabBean;)V
    .locals 7

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "setTabStyle ="

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "NativeTabView"

    .line 24
    .line 25
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->getColor()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->getColor()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iput v0, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->textColor:I

    .line 50
    .line 51
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->getSelectedColor()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->getSelectedColor()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iput v0, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->textSelectedColor:I

    .line 73
    .line 74
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->getBackgroundColor()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_4

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->backDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 88
    .line 89
    if-eqz v0, :cond_5

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->getBackgroundColor()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 100
    .line 101
    .line 102
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->getSelectBackgroundColor()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    if-eqz v0, :cond_7

    .line 107
    .line 108
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-nez v0, :cond_6

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_6
    invoke-direct {p0}, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->getSelectBackgroundColor()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 128
    .line 129
    .line 130
    :cond_7
    :goto_3
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->getSelectBackgroundColor()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    if-eqz v0, :cond_9

    .line 135
    .line 136
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-nez v0, :cond_8

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_8
    invoke-direct {p0}, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->getSelectBackgroundColor()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 156
    .line 157
    .line 158
    :cond_9
    :goto_4
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->getTabList()Ljava/util/List;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    const/4 v2, 0x0

    .line 163
    if-eqz v0, :cond_11

    .line 164
    .line 165
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    const/4 v4, 0x2

    .line 170
    if-lt v3, v4, :cond_11

    .line 171
    .line 172
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    const/4 v4, 0x5

    .line 177
    if-le v3, v4, :cond_a

    .line 178
    .line 179
    goto/16 :goto_a

    .line 180
    .line 181
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    iget-object v4, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->tabList:Ljava/util/List;

    .line 186
    .line 187
    if-eqz v4, :cond_b

    .line 188
    .line 189
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    goto :goto_5

    .line 194
    :cond_b
    const/4 v4, 0x0

    .line 195
    :goto_5
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    if-eqz v3, :cond_c

    .line 200
    .line 201
    new-instance p1, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .line 205
    .line 206
    const-string v2, "tab list not changed list = "

    .line 207
    .line 208
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    return-void

    .line 222
    :cond_c
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->getSelectedIndex()I

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    const/4 v3, -0x1

    .line 227
    if-eq v1, v3, :cond_d

    .line 228
    .line 229
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->getSelectedIndex()I

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    if-ge v1, v3, :cond_d

    .line 238
    .line 239
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->getSelectedIndex()I

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    goto :goto_6

    .line 244
    :cond_d
    move p1, v2

    .line 245
    :goto_6
    iput-object v0, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->tabList:Ljava/util/List;

    .line 246
    .line 247
    invoke-direct {p0}, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->removeAllTabs()V

    .line 252
    .line 253
    .line 254
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    move v3, v2

    .line 259
    :goto_7
    if-ge v3, v1, :cond_10

    .line 260
    .line 261
    new-instance v4, Landroid/widget/TextView;

    .line 262
    .line 263
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 264
    .line 265
    .line 266
    move-result-object v5

    .line 267
    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 268
    .line 269
    .line 270
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v5

    .line 274
    check-cast v5, Ljava/lang/CharSequence;

    .line 275
    .line 276
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    .line 278
    .line 279
    const/16 v5, 0x11

    .line 280
    .line 281
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 282
    .line 283
    .line 284
    const/high16 v5, 0x41600000    # 14.0f

    .line 285
    .line 286
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 287
    .line 288
    .line 289
    if-ne v3, p1, :cond_e

    .line 290
    .line 291
    iget v5, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->textSelectedColor:I

    .line 292
    .line 293
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 294
    .line 295
    .line 296
    goto :goto_8

    .line 297
    :cond_e
    iget v5, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->textColor:I

    .line 298
    .line 299
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 300
    .line 301
    .line 302
    :goto_8
    invoke-direct {p0}, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    .line 303
    .line 304
    .line 305
    move-result-object v5

    .line 306
    invoke-direct {p0}, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    .line 307
    .line 308
    .line 309
    move-result-object v6

    .line 310
    invoke-virtual {v6}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 311
    .line 312
    .line 313
    move-result-object v6

    .line 314
    invoke-virtual {v6, v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    if-ne v3, p1, :cond_f

    .line 319
    .line 320
    const/4 v6, 0x1

    .line 321
    goto :goto_9

    .line 322
    :cond_f
    move v6, v2

    .line 323
    :goto_9
    invoke-virtual {v5, v4, v6}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    .line 324
    .line 325
    .line 326
    add-int/lit8 v3, v3, 0x1

    .line 327
    .line 328
    goto :goto_7

    .line 329
    :cond_10
    return-void

    .line 330
    :cond_11
    :goto_a
    if-eqz v0, :cond_12

    .line 331
    .line 332
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 333
    .line 334
    .line 335
    move-result v2

    .line 336
    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    .line 337
    .line 338
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    .line 340
    .line 341
    const-string v0, "tab list is invalid. count = "

    .line 342
    .line 343
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 357
    .line 358
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 359
    .line 360
    .line 361
    const-string v0, "errMsg"

    .line 362
    .line 363
    const-string v1, "Parameter error: T10001"

    .line 364
    .line 365
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->tabListener:Lcom/cloud/tmc/integration/ui/native/INativeTabListener;

    .line 369
    .line 370
    if-eqz v0, :cond_13

    .line 371
    .line 372
    const-string v1, "error"

    .line 373
    .line 374
    invoke-interface {v0, v1, p1}, Lcom/cloud/tmc/integration/ui/native/INativeTabListener;->onTabEvent(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 375
    .line 376
    .line 377
    :cond_13
    return-void
.end method

.method public final switchTab(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->tabList:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-ltz p1, :cond_2

    .line 12
    .line 13
    if-lt p1, v0, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    invoke-direct {p0}, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->isApiControl:Z

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 30
    .line 31
    .line 32
    :cond_2
    :goto_1
    return-void
.end method
