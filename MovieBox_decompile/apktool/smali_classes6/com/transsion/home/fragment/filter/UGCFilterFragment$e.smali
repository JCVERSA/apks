.class public final Lcom/transsion/home/fragment/filter/UGCFilterFragment$e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/filter/UGCFilterFragment;->s1(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/fragment/filter/UGCFilterFragment;


# direct methods
.method constructor <init>(Lcom/transsion/home/fragment/filter/UGCFilterFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$e;->a:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$e;->a:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    if-eq v1, v2, :cond_1

    .line 15
    .line 16
    sget-object v1, Lcom/transsion/home/fragment/filter/UGCFilterFragment$TabType;->HOTTEST:Lcom/transsion/home/fragment/filter/UGCFilterFragment$TabType;

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    sget-object v1, Lcom/transsion/home/fragment/filter/UGCFilterFragment$TabType;->LATEST:Lcom/transsion/home/fragment/filter/UGCFilterFragment$TabType;

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_2
    sget-object v1, Lcom/transsion/home/fragment/filter/UGCFilterFragment$TabType;->FOR_U:Lcom/transsion/home/fragment/filter/UGCFilterFragment$TabType;

    .line 23
    .line 24
    :goto_1
    invoke-static {v0, v1}, Lcom/transsion/home/fragment/filter/UGCFilterFragment;->U0(Lcom/transsion/home/fragment/filter/UGCFilterFragment;Lcom/transsion/home/fragment/filter/UGCFilterFragment$TabType;)V

    .line 25
    .line 26
    .line 27
    if-eqz p1, :cond_3

    .line 28
    .line 29
    iget-object v0, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$e;->a:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    .line 30
    .line 31
    invoke-static {v0, p1, v2}, Lcom/transsion/home/fragment/filter/UGCFilterFragment;->F0(Lcom/transsion/home/fragment/filter/UGCFilterFragment;Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    .line 32
    .line 33
    .line 34
    :cond_3
    iget-object p1, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$e;->a:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/transsion/home/fragment/filter/UGCFilterFragment;->K0(Lcom/transsion/home/fragment/filter/UGCFilterFragment;)Lrk/b;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-eqz p1, :cond_4

    .line 41
    .line 42
    invoke-virtual {p1}, Lrk/b;->e()V

    .line 43
    .line 44
    .line 45
    :cond_4
    iget-object p1, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$e;->a:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    .line 46
    .line 47
    invoke-static {p1, v2}, Lcom/transsion/home/fragment/filter/UGCFilterFragment;->V0(Lcom/transsion/home/fragment/filter/UGCFilterFragment;I)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$e;->a:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    .line 51
    .line 52
    invoke-static {p1, v2}, Lcom/transsion/home/fragment/filter/UGCFilterFragment;->T0(Lcom/transsion/home/fragment/filter/UGCFilterFragment;Z)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$e;->a:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, p1, v1}, Lcom/transsion/home/fragment/filter/UGCFilterFragment;->F0(Lcom/transsion/home/fragment/filter/UGCFilterFragment;Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method
