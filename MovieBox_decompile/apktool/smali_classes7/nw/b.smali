.class public final synthetic Lnw/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/widget/TextView;

.field public final synthetic b:Lcom/transsion/ad/ps/activate/PsActivateBean;

.field public final synthetic c:Lnw/e;

.field public final synthetic d:Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;

.field public final synthetic e:Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Lcom/transsion/ad/ps/activate/PsActivateBean;Lnw/e;Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnw/b;->a:Landroid/widget/TextView;

    .line 5
    .line 6
    iput-object p2, p0, Lnw/b;->b:Lcom/transsion/ad/ps/activate/PsActivateBean;

    .line 7
    .line 8
    iput-object p3, p0, Lnw/b;->c:Lnw/e;

    .line 9
    .line 10
    iput-object p4, p0, Lnw/b;->d:Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;

    .line 11
    .line 12
    iput-object p5, p0, Lnw/b;->e:Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lnw/b;->a:Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object v1, p0, Lnw/b;->b:Lcom/transsion/ad/ps/activate/PsActivateBean;

    .line 4
    .line 5
    iget-object v2, p0, Lnw/b;->c:Lnw/e;

    .line 6
    .line 7
    iget-object v3, p0, Lnw/b;->d:Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;

    .line 8
    .line 9
    iget-object v4, p0, Lnw/b;->e:Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;

    .line 10
    .line 11
    move-object v5, p1

    .line 12
    invoke-static/range {v0 .. v5}, Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;->a(Landroid/widget/TextView;Lcom/transsion/ad/ps/activate/PsActivateBean;Lnw/e;Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
