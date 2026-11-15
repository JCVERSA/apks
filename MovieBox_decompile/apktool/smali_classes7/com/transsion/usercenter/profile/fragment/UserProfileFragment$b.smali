.class public final Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$b;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->S0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$b;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$b;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->E0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 v0, 0x1

    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$b;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->z0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)Landroidx/fragment/app/Fragment;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    iget-object p1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$b;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->F0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {p1, v0}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->A0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;Ljava/lang/String;)Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$b;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->F0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {p1, v0}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->A0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;Ljava/lang/String;)Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object p1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$b;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->z0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)Landroidx/fragment/app/Fragment;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-nez p1, :cond_2

    .line 53
    .line 54
    iget-object p1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$b;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->F0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {p1, v0}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->A0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;Ljava/lang/String;)Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    :cond_2
    :goto_0
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$b;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->E0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method
