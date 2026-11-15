.class public final synthetic Lcom/transsion/usercenter/profile/see/adapter/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/usercenter/profile/see/bean/ProfileSeeSubjectItem;

.field public final synthetic b:Lcom/transsion/usercenter/profile/see/adapter/a$b;

.field public final synthetic c:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/usercenter/profile/see/bean/ProfileSeeSubjectItem;Lcom/transsion/usercenter/profile/see/adapter/a$b;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/usercenter/profile/see/adapter/b;->a:Lcom/transsion/usercenter/profile/see/bean/ProfileSeeSubjectItem;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/usercenter/profile/see/adapter/b;->b:Lcom/transsion/usercenter/profile/see/adapter/a$b;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/usercenter/profile/see/adapter/b;->c:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/see/adapter/b;->a:Lcom/transsion/usercenter/profile/see/bean/ProfileSeeSubjectItem;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/usercenter/profile/see/adapter/b;->b:Lcom/transsion/usercenter/profile/see/adapter/a$b;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/usercenter/profile/see/adapter/b;->c:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Lcom/transsion/usercenter/profile/see/adapter/a$b;->y(Lcom/transsion/usercenter/profile/see/bean/ProfileSeeSubjectItem;Lcom/transsion/usercenter/profile/see/adapter/a$b;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
