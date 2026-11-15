.class public final synthetic Lcom/transsion/usercenter/me/adapter/e0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/usercenter/profile/bean/ButtonInfo;

.field public final synthetic b:Lcom/transsion/usercenter/me/adapter/f0;

.field public final synthetic c:Lcom/transsion/usercenter/profile/bean/MeItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/usercenter/profile/bean/ButtonInfo;Lcom/transsion/usercenter/me/adapter/f0;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/usercenter/me/adapter/e0;->a:Lcom/transsion/usercenter/profile/bean/ButtonInfo;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/usercenter/me/adapter/e0;->b:Lcom/transsion/usercenter/me/adapter/f0;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/usercenter/me/adapter/e0;->c:Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/me/adapter/e0;->a:Lcom/transsion/usercenter/profile/bean/ButtonInfo;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/usercenter/me/adapter/e0;->b:Lcom/transsion/usercenter/me/adapter/f0;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/usercenter/me/adapter/e0;->c:Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    .line 6
    .line 7
    check-cast p1, Landroid/view/View;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, p1}, Lcom/transsion/usercenter/me/adapter/f0;->y(Lcom/transsion/usercenter/profile/bean/ButtonInfo;Lcom/transsion/usercenter/me/adapter/f0;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Landroid/view/View;)Lkotlin/Unit;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
