.class public Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
.super Lcom/google/android/material/navigation/NavigationBarItemView;
.source "source.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected getItemDefaultMarginResId()I
    .locals 1

    .line 1
    sget v0, Lcom/google/android/material/R$dimen;->design_bottom_navigation_margin:I

    .line 2
    .line 3
    return v0
.end method

.method protected getItemLayoutResId()I
    .locals 1

    .line 1
    sget v0, Lcom/google/android/material/R$layout;->design_bottom_navigation_item:I

    .line 2
    .line 3
    return v0
.end method
