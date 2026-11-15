.class public final synthetic Lcom/transsion/usercenter/me/adapter/y;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsnet/loginapi/bean/UserInfo;

.field public final synthetic b:Lcom/transsion/usercenter/me/adapter/b0;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/loginapi/bean/UserInfo;Lcom/transsion/usercenter/me/adapter/b0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/usercenter/me/adapter/y;->a:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/usercenter/me/adapter/y;->b:Lcom/transsion/usercenter/me/adapter/b0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/me/adapter/y;->a:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/usercenter/me/adapter/y;->b:Lcom/transsion/usercenter/me/adapter/b0;

    .line 4
    .line 5
    check-cast p1, Landroid/view/View;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lcom/transsion/usercenter/me/adapter/b0;->z(Lcom/transsnet/loginapi/bean/UserInfo;Lcom/transsion/usercenter/me/adapter/b0;Landroid/view/View;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
