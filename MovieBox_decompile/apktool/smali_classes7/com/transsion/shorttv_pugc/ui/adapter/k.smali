.class public final synthetic Lcom/transsion/shorttv_pugc/ui/adapter/k;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/transsion/shorttv_pugc/ui/adapter/n;

.field public final synthetic c:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

.field public final synthetic d:Lcom/transsion/shorttv_pugc/bean/AppointSubject;

.field public final synthetic e:I

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(ILcom/transsion/shorttv_pugc/ui/adapter/n;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv_pugc/bean/AppointSubject;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/k;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/shorttv_pugc/ui/adapter/k;->b:Lcom/transsion/shorttv_pugc/ui/adapter/n;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/shorttv_pugc/ui/adapter/k;->c:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/transsion/shorttv_pugc/ui/adapter/k;->d:Lcom/transsion/shorttv_pugc/bean/AppointSubject;

    .line 11
    .line 12
    iput p5, p0, Lcom/transsion/shorttv_pugc/ui/adapter/k;->e:I

    .line 13
    .line 14
    iput-boolean p6, p0, Lcom/transsion/shorttv_pugc/ui/adapter/k;->f:Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/k;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/k;->b:Lcom/transsion/shorttv_pugc/ui/adapter/n;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/adapter/k;->c:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/shorttv_pugc/ui/adapter/k;->d:Lcom/transsion/shorttv_pugc/bean/AppointSubject;

    .line 8
    .line 9
    iget v4, p0, Lcom/transsion/shorttv_pugc/ui/adapter/k;->e:I

    .line 10
    .line 11
    iget-boolean v5, p0, Lcom/transsion/shorttv_pugc/ui/adapter/k;->f:Z

    .line 12
    .line 13
    move-object v6, p1

    .line 14
    invoke-static/range {v0 .. v6}, Lcom/transsion/shorttv_pugc/ui/adapter/n;->E1(ILcom/transsion/shorttv_pugc/ui/adapter/n;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv_pugc/bean/AppointSubject;IZLandroid/view/View;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
