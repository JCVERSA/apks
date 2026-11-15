.class public final synthetic Lcom/transsion/usercenter/me/adapter/z;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsnet/loginapi/bean/UserInfo;

.field public final synthetic b:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/loginapi/bean/UserInfo;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/usercenter/me/adapter/z;->a:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/usercenter/me/adapter/z;->b:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/me/adapter/z;->a:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/usercenter/me/adapter/z;->b:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/transsion/usercenter/me/adapter/b0;->A(Lcom/transsnet/loginapi/bean/UserInfo;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
