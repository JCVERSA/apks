.class public final Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/transfer/wifi/create/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->Q0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$a;->a:Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ldu/a;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$a;->a:Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->M0(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;Ldu/a;J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$a;->a:Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->L0(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;IJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onStart()V
    .locals 5

    .line 1
    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$a;->a:Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getClassTag()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$a;->a:Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " --> createWifi() --> start .... --> WifiCreateActivity.hashCode() = "

    .line 24
    .line 25
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x2

    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$a;->a:Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lxt/d;

    .line 48
    .line 49
    iget-object v0, v0, Lxt/d;->h:Landroid/widget/ProgressBar;

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$a;->a:Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lxt/d;

    .line 61
    .line 62
    iget-object v0, v0, Lxt/d;->e:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 63
    .line 64
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$a;->a:Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Lxt/d;

    .line 74
    .line 75
    iget-object v0, v0, Lxt/d;->b:Landroidx/constraintlayout/widget/Group;

    .line 76
    .line 77
    const/16 v1, 0x8

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$a;->a:Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Lxt/d;

    .line 89
    .line 90
    iget-object v0, v0, Lxt/d;->c:Landroidx/constraintlayout/widget/Group;

    .line 91
    .line 92
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    return-void
.end method
