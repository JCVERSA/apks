.class public final synthetic Lcom/transsion/usercenter/setting/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/usercenter/setting/SettingAboutUsActivity;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/usercenter/setting/SettingAboutUsActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/usercenter/setting/a;->a:Lcom/transsion/usercenter/setting/SettingAboutUsActivity;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/transsion/usercenter/setting/a;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/setting/a;->a:Lcom/transsion/usercenter/setting/SettingAboutUsActivity;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/transsion/usercenter/setting/a;->b:Z

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->b0(Lcom/transsion/usercenter/setting/SettingAboutUsActivity;ZLandroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
