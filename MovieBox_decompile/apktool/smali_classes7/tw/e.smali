.class public final synthetic Ltw/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;

.field public final synthetic b:Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;

.field public final synthetic c:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ltw/e;->a:Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;

    .line 5
    .line 6
    iput-object p2, p0, Ltw/e;->b:Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;

    .line 7
    .line 8
    iput-object p3, p0, Ltw/e;->c:Landroid/app/Activity;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ltw/e;->a:Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;

    .line 2
    .line 3
    iget-object v1, p0, Ltw/e;->b:Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;

    .line 4
    .line 5
    iget-object v2, p0, Ltw/e;->c:Landroid/app/Activity;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;->a(Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;Landroid/app/Activity;Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
