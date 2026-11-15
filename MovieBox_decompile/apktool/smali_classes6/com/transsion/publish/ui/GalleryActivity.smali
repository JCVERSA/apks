.class public final Lcom/transsion/publish/ui/GalleryActivity;
.super Lcom/transsion/baseui/activity/BaseActivity;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/publish/ui/GalleryActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/activity/BaseActivity<",
        "Llo/c;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 >2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u00010B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u0017\u0010\t\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u0017\u0010\u000c\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\nJ\u000f\u0010\r\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0004J\u001f\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\nJ\u0017\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\nJ\u000f\u0010\u0016\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0017\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u000f\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008 \u0010\u0004J\u0019\u0010#\u001a\u00020\u00052\u0008\u0010\"\u001a\u0004\u0018\u00010!H\u0014\u00a2\u0006\u0004\u0008#\u0010$J\u000f\u0010%\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008%\u0010&J\u000f\u0010\'\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\'\u0010\u0004J\u000f\u0010(\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008(\u0010\u0018J\u000f\u0010)\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008)\u0010\u0018J\u000f\u0010*\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008*\u0010\u0018J\u000f\u0010+\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008+\u0010\u0004J\u000f\u0010-\u001a\u00020,H\u0016\u00a2\u0006\u0004\u0008-\u0010.R\u001c\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u00070/8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u001c\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u00070/8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u00101R\u0018\u00108\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u00107R\u0016\u0010;\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u0010:R\u0016\u0010=\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008<\u0010:\u00a8\u0006?"
    }
    d2 = {
        "Lcom/transsion/publish/ui/GalleryActivity;",
        "Lcom/transsion/baseui/activity/BaseActivity;",
        "Llo/c;",
        "<init>",
        "()V",
        "",
        "initView",
        "Lcom/transsion/publish/api/PhotoEntity;",
        "photoEntity",
        "t0",
        "(Lcom/transsion/publish/api/PhotoEntity;)V",
        "v0",
        "s0",
        "initData",
        "o0",
        "info",
        "",
        "refresh",
        "q0",
        "(Lcom/transsion/publish/api/PhotoEntity;Z)V",
        "i0",
        "u0",
        "w0",
        "r0",
        "()Z",
        "",
        "position",
        "h0",
        "(I)V",
        "",
        "j0",
        "(Lcom/transsion/publish/api/PhotoEntity;)Ljava/lang/String;",
        "g0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "k0",
        "()Llo/c;",
        "onDestroy",
        "isTranslucent",
        "isStatusDark",
        "isChangeStatusBar",
        "onBackPressed",
        "Lqi/b;",
        "newLogViewConfig",
        "()Lqi/b;",
        "",
        "a",
        "Ljava/util/List;",
        "photos",
        "b",
        "select",
        "Lcom/transsion/publish/adapter/o0;",
        "c",
        "Lcom/transsion/publish/adapter/o0;",
        "travelsGalleryAdapter",
        "d",
        "I",
        "from",
        "e",
        "limit",
        "f",
        "Publish_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final f:Lcom/transsion/publish/ui/GalleryActivity$a;


# instance fields
.field private a:Ljava/util/List;

.field private b:Ljava/util/List;

.field private c:Lcom/transsion/publish/adapter/o0;

.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/publish/ui/GalleryActivity$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/publish/ui/GalleryActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/publish/ui/GalleryActivity;->f:Lcom/transsion/publish/ui/GalleryActivity$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/publish/ui/GalleryActivity;->a:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/transsion/publish/ui/GalleryActivity;->b:Ljava/util/List;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput v0, p0, Lcom/transsion/publish/ui/GalleryActivity;->e:I

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic b0(Lcom/transsion/publish/ui/GalleryActivity;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/publish/ui/GalleryActivity;->n0(Lcom/transsion/publish/ui/GalleryActivity;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c0(Lcom/transsion/publish/ui/GalleryActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/publish/ui/GalleryActivity;->l0(Lcom/transsion/publish/ui/GalleryActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d0(Lcom/transsion/publish/ui/GalleryActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/publish/ui/GalleryActivity;->m0(Lcom/transsion/publish/ui/GalleryActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e0(Lcom/transsion/publish/ui/GalleryActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/publish/ui/GalleryActivity;->p0(Lcom/transsion/publish/ui/GalleryActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic f0(Lcom/transsion/publish/ui/GalleryActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/publish/ui/GalleryActivity;->h0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final g0()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    check-cast v1, Llo/c;

    .line 7
    .line 8
    iget-object v1, v1, Llo/c;->j:Landroid/widget/TextView;

    .line 9
    .line 10
    const-string v2, "selectNumTV"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/transsion/publish/ui/GalleryActivity;->b:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x0

    .line 22
    if-lez v2, :cond_0

    .line 23
    .line 24
    move v2, v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v2, v3

    .line 27
    :goto_0
    if-eqz v2, :cond_1

    .line 28
    .line 29
    move v2, v3

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/16 v2, 0x8

    .line 32
    .line 33
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Llo/c;

    .line 41
    .line 42
    iget-object v1, v1, Llo/c;->j:Landroid/widget/TextView;

    .line 43
    .line 44
    sget v2, Lcom/transsion/publish/R$string;->image_select_num_tips:I

    .line 45
    .line 46
    iget-object v4, p0, Lcom/transsion/publish/ui/GalleryActivity;->b:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    iget v5, p0, Lcom/transsion/publish/ui/GalleryActivity;->e:I

    .line 57
    .line 58
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    const/4 v6, 0x2

    .line 63
    new-array v6, v6, [Ljava/lang/Object;

    .line 64
    .line 65
    aput-object v4, v6, v3

    .line 66
    .line 67
    aput-object v5, v6, v0

    .line 68
    .line 69
    invoke-virtual {p0, v2, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method private final h0(I)V
    .locals 6

    .line 1
    :try_start_0
    iget v0, p0, Lcom/transsion/publish/ui/GalleryActivity;->d:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v1, v0, :cond_1

    .line 5
    .line 6
    add-int/lit8 v0, p1, 0x1

    .line 7
    .line 8
    iget-object v1, p0, Lcom/transsion/publish/ui/GalleryActivity;->a:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    const-string v2, "/"

    .line 15
    .line 16
    if-le v0, v1, :cond_0

    .line 17
    .line 18
    :try_start_1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Llo/c;

    .line 23
    .line 24
    iget-object v0, v0, Llo/c;->k:Landroid/widget/TextView;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/transsion/publish/ui/GalleryActivity;->a:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :catch_0
    move-exception p1

    .line 55
    goto/16 :goto_1

    .line 56
    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Llo/c;

    .line 62
    .line 63
    iget-object p1, p1, Llo/c;->k:Landroid/widget/TextView;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/transsion/publish/ui/GalleryActivity;->a:Ljava/util/List;

    .line 66
    .line 67
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_1
    const-string v1, ""

    .line 94
    .line 95
    const/4 v2, 0x3

    .line 96
    if-ne v2, v0, :cond_3

    .line 97
    .line 98
    :try_start_2
    iget-object v0, p0, Lcom/transsion/publish/ui/GalleryActivity;->a:Ljava/util/List;

    .line 99
    .line 100
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    check-cast p1, Lcom/transsion/publish/api/PhotoEntity;

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/transsion/publish/api/PhotoEntity;->getEnableSelect()Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-eqz p1, :cond_2

    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    check-cast p1, Llo/c;

    .line 117
    .line 118
    iget-object p1, p1, Llo/c;->l:Landroid/widget/TextView;

    .line 119
    .line 120
    const-string v0, "1"

    .line 121
    .line 122
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    check-cast p1, Llo/c;

    .line 130
    .line 131
    iget-object p1, p1, Llo/c;->l:Landroid/widget/TextView;

    .line 132
    .line 133
    sget v0, Lcom/transsion/publish/R$drawable;->bg_linear_r16:I

    .line 134
    .line 135
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    check-cast p1, Llo/c;

    .line 144
    .line 145
    iget-object p1, p1, Llo/c;->l:Landroid/widget/TextView;

    .line 146
    .line 147
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    check-cast p1, Llo/c;

    .line 155
    .line 156
    iget-object p1, p1, Llo/c;->l:Landroid/widget/TextView;

    .line 157
    .line 158
    sget v0, Lcom/transsion/publish/R$drawable;->ic_select_number_bro:I

    .line 159
    .line 160
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 161
    .line 162
    .line 163
    :goto_0
    return-void

    .line 164
    :cond_3
    iget-object v0, p0, Lcom/transsion/publish/ui/GalleryActivity;->a:Ljava/util/List;

    .line 165
    .line 166
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    check-cast p1, Lcom/transsion/publish/api/PhotoEntity;

    .line 171
    .line 172
    invoke-virtual {p1}, Lcom/transsion/publish/api/PhotoEntity;->getEnableSelect()Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-eqz v0, :cond_4

    .line 177
    .line 178
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    check-cast v0, Llo/c;

    .line 183
    .line 184
    iget-object v0, v0, Llo/c;->l:Landroid/widget/TextView;

    .line 185
    .line 186
    invoke-direct {p0, p1}, Lcom/transsion/publish/ui/GalleryActivity;->j0(Lcom/transsion/publish/api/PhotoEntity;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    check-cast p1, Llo/c;

    .line 198
    .line 199
    iget-object p1, p1, Llo/c;->l:Landroid/widget/TextView;

    .line 200
    .line 201
    sget v0, Lcom/transsion/publish/R$drawable;->bg_linear_r16:I

    .line 202
    .line 203
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 204
    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    check-cast p1, Llo/c;

    .line 212
    .line 213
    iget-object p1, p1, Llo/c;->l:Landroid/widget/TextView;

    .line 214
    .line 215
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    check-cast p1, Llo/c;

    .line 223
    .line 224
    iget-object p1, p1, Llo/c;->l:Landroid/widget/TextView;

    .line 225
    .line 226
    sget v0, Lcom/transsion/publish/R$drawable;->ic_select_number_bro:I

    .line 227
    .line 228
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 229
    .line 230
    .line 231
    goto :goto_2

    .line 232
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    if-eqz v2, :cond_5

    .line 237
    .line 238
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 239
    .line 240
    const/4 v4, 0x4

    .line 241
    const/4 v5, 0x0

    .line 242
    const-string v1, "checkStatus"

    .line 243
    .line 244
    const/4 v3, 0x0

    .line 245
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    :cond_5
    :goto_2
    return-void
.end method

.method private final i0(Lcom/transsion/publish/api/PhotoEntity;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/transsion/publish/api/PhotoEntity;->getEnableSelect()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/transsion/publish/ui/GalleryActivity;->b:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p1, v0}, Lcom/transsion/publish/api/PhotoEntity;->setEnableSelect(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Llo/c;

    .line 21
    .line 22
    iget-object v0, v0, Llo/c;->l:Landroid/widget/TextView;

    .line 23
    .line 24
    invoke-direct {p0, p1}, Lcom/transsion/publish/ui/GalleryActivity;->j0(Lcom/transsion/publish/api/PhotoEntity;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Llo/c;

    .line 36
    .line 37
    iget-object p1, p1, Llo/c;->l:Landroid/widget/TextView;

    .line 38
    .line 39
    sget v0, Lcom/transsion/publish/R$drawable;->bg_linear_r16:I

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lcom/transsion/publish/ui/GalleryActivity;->w0()V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Lcom/transsion/publish/ui/GalleryActivity;->g0()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method private final initData()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/publish/ui/GalleryActivity;->o0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final initView()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Llo/c;

    .line 6
    .line 7
    iget-object v0, v0, Llo/c;->d:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 8
    .line 9
    new-instance v1, Lcom/transsion/publish/ui/f0;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/transsion/publish/ui/f0;-><init>(Lcom/transsion/publish/ui/GalleryActivity;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Llo/c;

    .line 22
    .line 23
    iget-object v0, v0, Llo/c;->i:Landroid/widget/LinearLayout;

    .line 24
    .line 25
    new-instance v1, Lcom/transsion/publish/ui/g0;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/transsion/publish/ui/g0;-><init>(Lcom/transsion/publish/ui/GalleryActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Llo/c;

    .line 38
    .line 39
    iget-object v1, v0, Llo/c;->g:Landroid/widget/TextView;

    .line 40
    .line 41
    const-string v0, "confirmTV"

    .line 42
    .line 43
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    new-instance v4, Lcom/transsion/publish/ui/h0;

    .line 47
    .line 48
    invoke-direct {v4, p0}, Lcom/transsion/publish/ui/h0;-><init>(Lcom/transsion/publish/ui/GalleryActivity;)V

    .line 49
    .line 50
    .line 51
    const/4 v5, 0x1

    .line 52
    const/4 v6, 0x0

    .line 53
    const-wide/16 v2, 0x0

    .line 54
    .line 55
    invoke-static/range {v1 .. v6}, Luf/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method private final j0(Lcom/transsion/publish/api/PhotoEntity;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/ui/GalleryActivity;->b:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Iterable;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_2

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    add-int/lit8 v3, v1, 0x1

    .line 21
    .line 22
    if-gez v1, :cond_0

    .line 23
    .line 24
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 25
    .line 26
    .line 27
    :cond_0
    check-cast v2, Lcom/transsion/publish/api/PhotoEntity;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/transsion/publish/api/PhotoEntity;->getLocalPath()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v2}, Lcom/transsion/publish/api/PhotoEntity;->getLocalPath()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1

    .line 48
    :cond_1
    move v1, v3

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const-string p1, "-1"

    .line 51
    .line 52
    return-object p1
.end method

.method private static final l0(Lcom/transsion/publish/ui/GalleryActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/publish/ui/GalleryActivity;->w0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private static final m0(Lcom/transsion/publish/ui/GalleryActivity;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Llo/c;

    .line 6
    .line 7
    iget-object p1, p1, Llo/c;->n:Lcom/transsion/publish/view/FixedViewPager;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget-object v0, p0, Lcom/transsion/publish/ui/GalleryActivity;->a:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/transsion/publish/ui/GalleryActivity;->a:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-le p1, v0, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/transsion/publish/ui/GalleryActivity;->a:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lcom/transsion/publish/api/PhotoEntity;

    .line 38
    .line 39
    const/4 v0, 0x2

    .line 40
    :try_start_0
    iget v1, p0, Lcom/transsion/publish/ui/GalleryActivity;->d:I

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    if-eq v1, v2, :cond_4

    .line 44
    .line 45
    if-eq v1, v0, :cond_3

    .line 46
    .line 47
    const/4 v2, 0x3

    .line 48
    if-eq v1, v2, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    invoke-direct {p0, p1}, Lcom/transsion/publish/ui/GalleryActivity;->v0(Lcom/transsion/publish/api/PhotoEntity;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catch_0
    move-exception p0

    .line 56
    goto :goto_0

    .line 57
    :cond_3
    invoke-direct {p0, p1}, Lcom/transsion/publish/ui/GalleryActivity;->t0(Lcom/transsion/publish/api/PhotoEntity;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_4
    invoke-direct {p0, p1}, Lcom/transsion/publish/ui/GalleryActivity;->s0(Lcom/transsion/publish/api/PhotoEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :goto_0
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v2, "ext:"

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    const/4 v1, 0x0

    .line 89
    const/4 v2, 0x0

    .line 90
    invoke-static {p1, p0, v1, v0, v2}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :goto_1
    return-void
.end method

.method private static final n0(Lcom/transsion/publish/ui/GalleryActivity;Landroid/view/View;)Lkotlin/Unit;
    .locals 4

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/transsion/publish/bean/PreviewMediaConfirmEvent;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {p1, v2, v0, v1}, Lcom/transsion/publish/bean/PreviewMediaConfirmEvent;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 15
    .line 16
    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 23
    .line 24
    const-class v1, Lcom/transsion/publish/bean/PreviewMediaConfirmEvent;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "getName(...)"

    .line 31
    .line 32
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-wide/16 v2, 0x0

    .line 36
    .line 37
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    .line 41
    .line 42
    .line 43
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 44
    .line 45
    return-object p0
.end method

.method private final o0()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Llo/c;

    .line 6
    .line 7
    iget-object v0, v0, Llo/c;->f:Landroid/widget/ProgressBar;

    .line 8
    .line 9
    const-string v1, "clipLoading"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v2, "list"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const-string v3, "null cannot be cast to non-null type kotlin.collections.MutableList<com.transsion.publish.api.PhotoEntity>"

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->c(Ljava/lang/Object;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    sget-object v0, Lcom/transsion/publish/n;->b:Lcom/transsion/publish/n$a;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/transsion/publish/n$a;->a()Lcom/transsion/publish/n;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/transsion/publish/n;->e()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    :goto_0
    iput-object v0, p0, Lcom/transsion/publish/ui/GalleryActivity;->a:Ljava/util/List;

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v2, "select"

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_1

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->c(Ljava/lang/Object;)Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iput-object v0, p0, Lcom/transsion/publish/ui/GalleryActivity;->b:Ljava/util/List;

    .line 87
    .line 88
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const-string v2, "from"

    .line 93
    .line 94
    const/4 v3, 0x1

    .line 95
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    iput v0, p0, Lcom/transsion/publish/ui/GalleryActivity;->d:I

    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const-string v2, "key_list"

    .line 106
    .line 107
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    iput v0, p0, Lcom/transsion/publish/ui/GalleryActivity;->e:I

    .line 112
    .line 113
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    const-string v2, "index"

    .line 118
    .line 119
    const/4 v4, 0x0

    .line 120
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    new-instance v2, Lcom/transsion/publish/adapter/o0;

    .line 125
    .line 126
    iget-object v4, p0, Lcom/transsion/publish/ui/GalleryActivity;->a:Ljava/util/List;

    .line 127
    .line 128
    invoke-direct {v2, v4}, Lcom/transsion/publish/adapter/o0;-><init>(Ljava/util/List;)V

    .line 129
    .line 130
    .line 131
    iput-object v2, p0, Lcom/transsion/publish/ui/GalleryActivity;->c:Lcom/transsion/publish/adapter/o0;

    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    check-cast v2, Llo/c;

    .line 138
    .line 139
    iget-object v2, v2, Llo/c;->n:Lcom/transsion/publish/view/FixedViewPager;

    .line 140
    .line 141
    iget-object v4, p0, Lcom/transsion/publish/ui/GalleryActivity;->c:Lcom/transsion/publish/adapter/o0;

    .line 142
    .line 143
    invoke-virtual {v2, v4}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    check-cast v2, Llo/c;

    .line 151
    .line 152
    iget-object v2, v2, Llo/c;->f:Landroid/widget/ProgressBar;

    .line 153
    .line 154
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-static {v2}, Luf/c;->g(Landroid/view/View;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    check-cast v1, Llo/c;

    .line 165
    .line 166
    iget-object v1, v1, Llo/c;->n:Lcom/transsion/publish/view/FixedViewPager;

    .line 167
    .line 168
    new-instance v2, Lcom/transsion/publish/ui/GalleryActivity$b;

    .line 169
    .line 170
    invoke-direct {v2, p0}, Lcom/transsion/publish/ui/GalleryActivity$b;-><init>(Lcom/transsion/publish/ui/GalleryActivity;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$h;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    check-cast v1, Llo/c;

    .line 181
    .line 182
    iget-object v1, v1, Llo/c;->n:Lcom/transsion/publish/view/FixedViewPager;

    .line 183
    .line 184
    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 185
    .line 186
    .line 187
    iget v1, p0, Lcom/transsion/publish/ui/GalleryActivity;->d:I

    .line 188
    .line 189
    const-string v2, "llSelect"

    .line 190
    .line 191
    const-string v4, "bottomGroup"

    .line 192
    .line 193
    const-string v5, "ivDelete"

    .line 194
    .line 195
    const/4 v6, 0x2

    .line 196
    if-ne v6, v1, :cond_2

    .line 197
    .line 198
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    check-cast v1, Llo/c;

    .line 203
    .line 204
    iget-object v1, v1, Llo/c;->k:Landroid/widget/TextView;

    .line 205
    .line 206
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    check-cast v1, Llo/c;

    .line 214
    .line 215
    iget-object v1, v1, Llo/c;->h:Landroid/widget/ImageView;

    .line 216
    .line 217
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-static {v1}, Luf/c;->k(Landroid/view/View;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    check-cast v1, Llo/c;

    .line 228
    .line 229
    iget-object v1, v1, Llo/c;->i:Landroid/widget/LinearLayout;

    .line 230
    .line 231
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-static {v1}, Luf/c;->g(Landroid/view/View;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    check-cast v1, Llo/c;

    .line 242
    .line 243
    iget-object v1, v1, Llo/c;->b:Landroidx/constraintlayout/widget/Group;

    .line 244
    .line 245
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-static {v1}, Luf/c;->g(Landroid/view/View;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    check-cast v1, Llo/c;

    .line 256
    .line 257
    iget-object v1, v1, Llo/c;->h:Landroid/widget/ImageView;

    .line 258
    .line 259
    new-instance v2, Lcom/transsion/publish/ui/e0;

    .line 260
    .line 261
    invoke-direct {v2, p0}, Lcom/transsion/publish/ui/e0;-><init>(Lcom/transsion/publish/ui/GalleryActivity;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    .line 266
    .line 267
    goto :goto_1

    .line 268
    :cond_2
    const/4 v6, 0x4

    .line 269
    if-ne v6, v1, :cond_3

    .line 270
    .line 271
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    check-cast v1, Llo/c;

    .line 276
    .line 277
    iget-object v1, v1, Llo/c;->k:Landroid/widget/TextView;

    .line 278
    .line 279
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    check-cast v1, Llo/c;

    .line 287
    .line 288
    iget-object v1, v1, Llo/c;->h:Landroid/widget/ImageView;

    .line 289
    .line 290
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-static {v1}, Luf/c;->g(Landroid/view/View;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    check-cast v1, Llo/c;

    .line 301
    .line 302
    iget-object v1, v1, Llo/c;->i:Landroid/widget/LinearLayout;

    .line 303
    .line 304
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    invoke-static {v1}, Luf/c;->g(Landroid/view/View;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    check-cast v1, Llo/c;

    .line 315
    .line 316
    iget-object v1, v1, Llo/c;->b:Landroidx/constraintlayout/widget/Group;

    .line 317
    .line 318
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-static {v1}, Luf/c;->g(Landroid/view/View;)V

    .line 322
    .line 323
    .line 324
    goto :goto_1

    .line 325
    :cond_3
    invoke-direct {p0}, Lcom/transsion/publish/ui/GalleryActivity;->g0()V

    .line 326
    .line 327
    .line 328
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    check-cast v1, Llo/c;

    .line 333
    .line 334
    iget-object v1, v1, Llo/c;->b:Landroidx/constraintlayout/widget/Group;

    .line 335
    .line 336
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    invoke-static {v1}, Luf/c;->k(Landroid/view/View;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    check-cast v1, Llo/c;

    .line 347
    .line 348
    iget-object v1, v1, Llo/c;->k:Landroid/widget/TextView;

    .line 349
    .line 350
    const-string v2, "tvNum"

    .line 351
    .line 352
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    invoke-static {v1}, Luf/c;->g(Landroid/view/View;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    check-cast v1, Llo/c;

    .line 363
    .line 364
    iget-object v1, v1, Llo/c;->h:Landroid/widget/ImageView;

    .line 365
    .line 366
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    invoke-static {v1}, Luf/c;->g(Landroid/view/View;)V

    .line 370
    .line 371
    .line 372
    :goto_1
    invoke-direct {p0, v0}, Lcom/transsion/publish/ui/GalleryActivity;->h0(I)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseActivity;->getLogViewConfig()Lqi/b;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    if-eqz v0, :cond_4

    .line 380
    .line 381
    invoke-virtual {v0, v3}, Lqi/b;->k(Z)V

    .line 382
    .line 383
    .line 384
    :cond_4
    return-void
.end method

.method private static final p0(Lcom/transsion/publish/ui/GalleryActivity;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Llo/c;

    .line 6
    .line 7
    iget-object p1, p1, Llo/c;->n:Lcom/transsion/publish/view/FixedViewPager;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget-object v0, p0, Lcom/transsion/publish/ui/GalleryActivity;->a:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/transsion/publish/ui/GalleryActivity;->a:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-le p1, v0, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/transsion/publish/ui/GalleryActivity;->a:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lcom/transsion/publish/api/PhotoEntity;

    .line 38
    .line 39
    :try_start_0
    invoke-direct {p0, p1}, Lcom/transsion/publish/ui/GalleryActivity;->t0(Lcom/transsion/publish/api/PhotoEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p0

    .line 44
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v1, "ext:"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const/4 v0, 0x2

    .line 68
    const/4 v1, 0x0

    .line 69
    const/4 v2, 0x0

    .line 70
    invoke-static {p1, p0, v2, v0, v1}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    return-void
.end method

.method private final q0(Lcom/transsion/publish/api/PhotoEntity;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/transsion/publish/api/PhotoEntity;->getEnableSelect()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/transsion/publish/ui/GalleryActivity;->u0(Lcom/transsion/publish/api/PhotoEntity;)V

    .line 8
    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-virtual {p1, p2}, Lcom/transsion/publish/api/PhotoEntity;->setEnableSelect(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Llo/c;

    .line 19
    .line 20
    iget-object p1, p1, Llo/c;->l:Landroid/widget/TextView;

    .line 21
    .line 22
    const-string p2, ""

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Llo/c;

    .line 32
    .line 33
    iget-object p1, p1, Llo/c;->l:Landroid/widget/TextView;

    .line 34
    .line 35
    sget p2, Lcom/transsion/publish/R$drawable;->ic_select_number_bro:I

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method private final r0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/ui/GalleryActivity;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/transsion/publish/ui/GalleryActivity;->e:I

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method private final s0(Lcom/transsion/publish/api/PhotoEntity;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-direct {p0}, Lcom/transsion/publish/ui/GalleryActivity;->r0()Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-eqz v2, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/transsion/publish/api/PhotoEntity;->getEnableSelect()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 16
    .line 17
    sget v2, Lcom/transsion/publish/R$string;->add_img_max_tips:I

    .line 18
    .line 19
    iget v3, p0, Lcom/transsion/publish/ui/GalleryActivity;->e:I

    .line 20
    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    new-array v1, v1, [Ljava/lang/Object;

    .line 26
    .line 27
    aput-object v3, v1, v0

    .line 28
    .line 29
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Lcom/tn/lib/widget/toast/core/h;->l(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/transsion/publish/ui/GalleryActivity;->q0(Lcom/transsion/publish/api/PhotoEntity;Z)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/publish/api/PhotoEntity;->getEnableSelect()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-direct {p0, p1, v0}, Lcom/transsion/publish/ui/GalleryActivity;->q0(Lcom/transsion/publish/api/PhotoEntity;Z)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-direct {p0, p1}, Lcom/transsion/publish/ui/GalleryActivity;->i0(Lcom/transsion/publish/api/PhotoEntity;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method private final t0(Lcom/transsion/publish/api/PhotoEntity;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/transsion/publish/api/PhotoEntity;->getEnableSelect()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    iget-object v0, p0, Lcom/transsion/publish/ui/GalleryActivity;->a:Ljava/util/List;

    .line 8
    .line 9
    check-cast v0, Ljava/lang/Iterable;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    move v3, v1

    .line 18
    move v4, v3

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-eqz v5, :cond_2

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    add-int/lit8 v6, v3, 0x1

    .line 30
    .line 31
    if-gez v3, :cond_0

    .line 32
    .line 33
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 34
    .line 35
    .line 36
    :cond_0
    check-cast v5, Lcom/transsion/publish/api/PhotoEntity;

    .line 37
    .line 38
    invoke-virtual {v5}, Lcom/transsion/publish/api/PhotoEntity;->getLocalPath()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    invoke-virtual {p1}, Lcom/transsion/publish/api/PhotoEntity;->getLocalPath()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    if-eqz v7, :cond_1

    .line 51
    .line 52
    move v4, v3

    .line 53
    move-object v2, v5

    .line 54
    :cond_1
    move v3, v6

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    if-nez v2, :cond_3

    .line 57
    .line 58
    return-void

    .line 59
    :cond_3
    iget-object v0, p0, Lcom/transsion/publish/ui/GalleryActivity;->a:Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/transsion/publish/ui/GalleryActivity;->c:Lcom/transsion/publish/adapter/o0;

    .line 65
    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    iget-object v2, p0, Lcom/transsion/publish/ui/GalleryActivity;->a:Ljava/util/List;

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Lcom/transsion/publish/adapter/o0;->c(Ljava/util/List;)V

    .line 71
    .line 72
    .line 73
    :cond_4
    invoke-direct {p0, p1}, Lcom/transsion/publish/ui/GalleryActivity;->u0(Lcom/transsion/publish/api/PhotoEntity;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/transsion/publish/ui/GalleryActivity;->a:Ljava/util/List;

    .line 77
    .line 78
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_5

    .line 83
    .line 84
    invoke-direct {p0}, Lcom/transsion/publish/ui/GalleryActivity;->w0()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Llo/c;

    .line 96
    .line 97
    iget-object p1, p1, Llo/c;->n:Lcom/transsion/publish/view/FixedViewPager;

    .line 98
    .line 99
    const-string v0, "vp"

    .line 100
    .line 101
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-le v4, p1, :cond_6

    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Llo/c;

    .line 115
    .line 116
    iget-object p1, p1, Llo/c;->n:Lcom/transsion/publish/view/FixedViewPager;

    .line 117
    .line 118
    invoke-virtual {p1, v1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    check-cast p1, Llo/c;

    .line 127
    .line 128
    iget-object p1, p1, Llo/c;->n:Lcom/transsion/publish/view/FixedViewPager;

    .line 129
    .line 130
    invoke-virtual {p1, v4, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 131
    .line 132
    .line 133
    :goto_1
    invoke-direct {p0, v4}, Lcom/transsion/publish/ui/GalleryActivity;->h0(I)V

    .line 134
    .line 135
    .line 136
    :cond_7
    return-void
.end method

.method private final u0(Lcom/transsion/publish/api/PhotoEntity;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/ui/GalleryActivity;->b:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Iterable;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/transsion/publish/api/PhotoEntity;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/transsion/publish/api/PhotoEntity;->getLocalPath()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {p1}, Lcom/transsion/publish/api/PhotoEntity;->getLocalPath()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v2, v1}, Lcom/transsion/publish/api/PhotoEntity;->setEnableSelect(Z)V

    .line 38
    .line 39
    .line 40
    move-object v1, v2

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    if-eqz v1, :cond_2

    .line 43
    .line 44
    iget-object p1, p0, Lcom/transsion/publish/ui/GalleryActivity;->b:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-direct {p0}, Lcom/transsion/publish/ui/GalleryActivity;->w0()V

    .line 50
    .line 51
    .line 52
    invoke-direct {p0}, Lcom/transsion/publish/ui/GalleryActivity;->g0()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method private final v0(Lcom/transsion/publish/api/PhotoEntity;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/transsion/publish/bean/BigImageBean;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/transsion/publish/bean/BigImageBean;-><init>()V

    .line 12
    .line 13
    .line 14
    iget v2, p0, Lcom/transsion/publish/ui/GalleryActivity;->d:I

    .line 15
    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Lcom/transsion/publish/bean/BigImageBean;->setFrom(Ljava/lang/Integer;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lcom/transsion/publish/bean/BigImageBean;->setSelect(Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/transsion/publish/api/PhotoEntity;->getEnableSelect()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const-string v2, "getName(...)"

    .line 31
    .line 32
    const-class v3, Lcom/transsion/publish/bean/BigImageBean;

    .line 33
    .line 34
    const-class v4, Lcom/transsnet/flow/event/FlowEventBus;

    .line 35
    .line 36
    const-wide/16 v5, 0x0

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, v0}, Lcom/transsion/publish/api/PhotoEntity;->setEnableSelect(Z)V

    .line 42
    .line 43
    .line 44
    const/4 p1, 0x2

    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v1, p1}, Lcom/transsion/publish/bean/BigImageBean;->setOperator(Ljava/lang/Integer;)V

    .line 50
    .line 51
    .line 52
    sget-object p1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 53
    .line 54
    invoke-virtual {p1, v4}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0, v1, v5, v6}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    const/4 v0, 0x1

    .line 72
    invoke-virtual {p1, v0}, Lcom/transsion/publish/api/PhotoEntity;->setEnableSelect(Z)V

    .line 73
    .line 74
    .line 75
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {v1, p1}, Lcom/transsion/publish/bean/BigImageBean;->setOperator(Ljava/lang/Integer;)V

    .line 80
    .line 81
    .line 82
    sget-object p1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 83
    .line 84
    invoke-virtual {p1, v4}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 89
    .line 90
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v0, v1, v5, v6}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    .line 101
    .line 102
    .line 103
    :goto_0
    return-void
.end method

.method private final w0()V
    .locals 5

    .line 1
    new-instance v0, Lcom/transsion/publish/bean/BigImageBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/publish/bean/BigImageBean;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/transsion/publish/ui/GalleryActivity;->d:I

    .line 7
    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/transsion/publish/bean/BigImageBean;->setFrom(Ljava/lang/Integer;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/transsion/publish/ui/GalleryActivity;->b:Ljava/util/List;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/transsion/publish/bean/BigImageBean;->setSelect(Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/transsion/publish/bean/BigImageBean;->setOperator(Ljava/lang/Integer;)V

    .line 26
    .line 27
    .line 28
    sget-object v1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 29
    .line 30
    const-class v2, Lcom/transsnet/flow/event/FlowEventBus;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 37
    .line 38
    const-class v2, Lcom/transsion/publish/bean/BigImageBean;

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const-string v3, "getName(...)"

    .line 45
    .line 46
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-wide/16 v3, 0x0

    .line 50
    .line 51
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 52
    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public bridge synthetic getViewBinding()Lf4/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/publish/ui/GalleryActivity;->k0()Llo/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public isChangeStatusBar()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public isStatusDark()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public isTranslucent()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public k0()Llo/c;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Llo/c;->c(Landroid/view/LayoutInflater;)Llo/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "inflate(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public newLogViewConfig()Lqi/b;
    .locals 5

    .line 1
    new-instance v0, Lqi/b;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "gallery_page"

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-direct {v0, v3, v4, v1, v2}, Lqi/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/publish/ui/GalleryActivity;->w0()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/baseui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/publish/ui/GalleryActivity;->initView()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/transsion/publish/ui/GalleryActivity;->initData()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Llo/c;

    .line 9
    .line 10
    iget-object v0, v0, Llo/c;->f:Landroid/widget/ProgressBar;

    .line 11
    .line 12
    const-string v1, "clipLoading"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
