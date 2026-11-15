.class public final synthetic Lcom/transsion/shorttv/ui/adapter/n;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/ui/adapter/q;

.field public final synthetic b:Lcom/transsion/shorttv/bean/AppointSubject;

.field public final synthetic c:I

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/ui/adapter/q;Lcom/transsion/shorttv/bean/AppointSubject;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/shorttv/ui/adapter/n;->a:Lcom/transsion/shorttv/ui/adapter/q;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/shorttv/ui/adapter/n;->b:Lcom/transsion/shorttv/bean/AppointSubject;

    .line 7
    .line 8
    iput p3, p0, Lcom/transsion/shorttv/ui/adapter/n;->c:I

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/transsion/shorttv/ui/adapter/n;->d:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/adapter/n;->a:Lcom/transsion/shorttv/ui/adapter/q;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/ui/adapter/n;->b:Lcom/transsion/shorttv/bean/AppointSubject;

    .line 4
    .line 5
    iget v2, p0, Lcom/transsion/shorttv/ui/adapter/n;->c:I

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/transsion/shorttv/ui/adapter/n;->d:Z

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/shorttv/ui/adapter/q;->E1(Lcom/transsion/shorttv/ui/adapter/q;Lcom/transsion/shorttv/bean/AppointSubject;IZLandroid/view/View;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
