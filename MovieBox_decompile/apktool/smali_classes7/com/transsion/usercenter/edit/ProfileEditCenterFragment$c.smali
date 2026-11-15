.class public final Lcom/transsion/usercenter/edit/ProfileEditCenterFragment$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/usercenter/edit/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->uploadImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment$c;->a:Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 2
    .line 3
    sget p2, Lcom/transsion/usercenter/R$string;->profile_saved_fail_retry:I

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lfh/b$a;->d(I)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment$c;->a:Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->access$hideRequestLoading(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;ZLjava/lang/String;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment$c;->c(Ljava/lang/String;ZLjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    .line 1
    const-string p2, "bucket"

    .line 2
    .line 3
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p2, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment$c;->a:Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-static {p2, v0}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->access$setRetry$p(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;Z)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment$c;->a:Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;

    .line 15
    .line 16
    invoke-static {p2}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->access$getCropImage$p(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p2, p1, v0, p3}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->onAvatarUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
