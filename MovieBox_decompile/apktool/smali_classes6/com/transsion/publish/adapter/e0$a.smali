.class public final Lcom/transsion/publish/adapter/e0$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/adapter/e0;->u(Lcom/transsion/publish/adapter/f0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/publish/adapter/e0;

.field final synthetic b:Lcom/transsion/publish/api/PhotoEntity;

.field final synthetic c:Lcom/transsion/publish/adapter/f0;


# direct methods
.method constructor <init>(Lcom/transsion/publish/adapter/e0;Lcom/transsion/publish/api/PhotoEntity;Lcom/transsion/publish/adapter/f0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/publish/adapter/e0$a;->a:Lcom/transsion/publish/adapter/e0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/publish/adapter/e0$a;->b:Lcom/transsion/publish/api/PhotoEntity;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/publish/adapter/e0$a;->c:Lcom/transsion/publish/adapter/f0;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    const-wide/16 v1, 0x1f4

    .line 12
    .line 13
    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-object p1, p0, Lcom/transsion/publish/adapter/e0$a;->a:Lcom/transsion/publish/adapter/e0;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/transsion/publish/adapter/e0;->j(Lcom/transsion/publish/adapter/e0;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/4 v0, 0x5

    .line 27
    if-eq p1, v0, :cond_5

    .line 28
    .line 29
    iget-object p1, p0, Lcom/transsion/publish/adapter/e0$a;->a:Lcom/transsion/publish/adapter/e0;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/transsion/publish/adapter/e0;->j(Lcom/transsion/publish/adapter/e0;)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const/4 v0, 0x7

    .line 36
    if-ne p1, v0, :cond_2

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    iget-object p1, p0, Lcom/transsion/publish/adapter/e0$a;->a:Lcom/transsion/publish/adapter/e0;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/transsion/publish/adapter/e0;->l(Lcom/transsion/publish/adapter/e0;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    const/4 v0, 0x1

    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    iget-object p1, p0, Lcom/transsion/publish/adapter/e0$a;->a:Lcom/transsion/publish/adapter/e0;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/transsion/publish/adapter/e0$a;->b:Lcom/transsion/publish/api/PhotoEntity;

    .line 51
    .line 52
    iget-object v2, p0, Lcom/transsion/publish/adapter/e0$a;->c:Lcom/transsion/publish/adapter/f0;

    .line 53
    .line 54
    invoke-static {p1, v1, v2, v0}, Lcom/transsion/publish/adapter/e0;->k(Lcom/transsion/publish/adapter/e0;Lcom/transsion/publish/api/PhotoEntity;Lcom/transsion/publish/adapter/f0;Z)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_3
    iget-object p1, p0, Lcom/transsion/publish/adapter/e0$a;->b:Lcom/transsion/publish/api/PhotoEntity;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/transsion/publish/api/PhotoEntity;->getEnableSelect()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_4

    .line 65
    .line 66
    iget-object p1, p0, Lcom/transsion/publish/adapter/e0$a;->a:Lcom/transsion/publish/adapter/e0;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/transsion/publish/adapter/e0$a;->b:Lcom/transsion/publish/api/PhotoEntity;

    .line 69
    .line 70
    iget-object v2, p0, Lcom/transsion/publish/adapter/e0$a;->c:Lcom/transsion/publish/adapter/f0;

    .line 71
    .line 72
    invoke-static {p1, v1, v2, v0}, Lcom/transsion/publish/adapter/e0;->k(Lcom/transsion/publish/adapter/e0;Lcom/transsion/publish/api/PhotoEntity;Lcom/transsion/publish/adapter/f0;Z)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    iget-object p1, p0, Lcom/transsion/publish/adapter/e0$a;->a:Lcom/transsion/publish/adapter/e0;

    .line 77
    .line 78
    iget-object v0, p0, Lcom/transsion/publish/adapter/e0$a;->b:Lcom/transsion/publish/api/PhotoEntity;

    .line 79
    .line 80
    iget-object v1, p0, Lcom/transsion/publish/adapter/e0$a;->c:Lcom/transsion/publish/adapter/f0;

    .line 81
    .line 82
    invoke-static {p1, v0, v1}, Lcom/transsion/publish/adapter/e0;->h(Lcom/transsion/publish/adapter/e0;Lcom/transsion/publish/api/PhotoEntity;Lcom/transsion/publish/adapter/f0;)V

    .line 83
    .line 84
    .line 85
    :goto_1
    return-void

    .line 86
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/transsion/publish/adapter/e0$a;->b:Lcom/transsion/publish/api/PhotoEntity;

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/transsion/publish/api/PhotoEntity;->getLocalPath()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    if-eqz v2, :cond_6

    .line 93
    .line 94
    iget-object p1, p0, Lcom/transsion/publish/adapter/e0$a;->a:Lcom/transsion/publish/adapter/e0;

    .line 95
    .line 96
    invoke-static {p1}, Lcom/transsion/publish/adapter/e0;->i(Lcom/transsion/publish/adapter/e0;)Landroid/app/Activity;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    if-eqz v1, :cond_6

    .line 101
    .line 102
    sget-object v0, Lcom/transsion/publish/ui/ClippingImageActivity;->j:Lcom/transsion/publish/ui/ClippingImageActivity$a;

    .line 103
    .line 104
    invoke-static {p1}, Lcom/transsion/publish/adapter/e0;->j(Lcom/transsion/publish/adapter/e0;)I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    const/16 v5, 0x8

    .line 109
    .line 110
    const/4 v6, 0x0

    .line 111
    const/4 v4, 0x0

    .line 112
    invoke-static/range {v0 .. v6}, Lcom/transsion/publish/ui/ClippingImageActivity$a;->b(Lcom/transsion/publish/ui/ClippingImageActivity$a;Landroid/app/Activity;Ljava/lang/String;ILandroidx/activity/result/b;ILjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    :cond_6
    return-void
.end method
