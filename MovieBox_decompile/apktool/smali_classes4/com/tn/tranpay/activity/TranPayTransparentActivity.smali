.class public final Lcom/tn/tranpay/activity/TranPayTransparentActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tn/tranpay/activity/TranPayTransparentActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\t\u0010\u0003\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/tn/tranpay/activity/TranPayTransparentActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onDestroy",
        "a",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final a:Lcom/tn/tranpay/activity/TranPayTransparentActivity$a;

.field private static final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/tn/tranpay/activity/TranPayTransparentActivity$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/tn/tranpay/activity/TranPayTransparentActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/tn/tranpay/activity/TranPayTransparentActivity;->a:Lcom/tn/tranpay/activity/TranPayTransparentActivity$a;

    .line 8
    .line 9
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/tn/tranpay/activity/TranPayTransparentActivity;->b:Ljava/util/Map;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic O()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/tn/tranpay/activity/TranPayTransparentActivity;->b:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 15
    .line 16
    .line 17
    const/high16 v0, 0x4000000

    .line 18
    .line 19
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 20
    .line 21
    .line 22
    const/16 v0, 0x80

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 25
    .line 26
    .line 27
    :cond_0
    sget-object p1, Llh/a;->a:Llh/a;

    .line 28
    .line 29
    const-string v0, "TranPayTransparentActivity: onCreate, keeping activity alive"

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    const/4 v2, 0x2

    .line 33
    invoke-static {p1, v0, v1, v2, v1}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v3, "extra_billing_params"

    .line 41
    .line 42
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/tn/tranpay/BillingParams;

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const-string v4, "extra_callback_id"

    .line 53
    .line 54
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    if-eqz v3, :cond_1

    .line 59
    .line 60
    sget-object v4, Lcom/tn/tranpay/activity/TranPayTransparentActivity;->b:Ljava/util/Map;

    .line 61
    .line 62
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Lcom/tn/tranpay/d;

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    move-object v3, v1

    .line 70
    :goto_0
    if-eqz v0, :cond_2

    .line 71
    .line 72
    if-eqz v3, :cond_2

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/tn/tranpay/BillingParams;->getTxnId()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    new-instance v5, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v6, "TranPayTransparentActivity: launching billing flow with txnId: "

    .line 84
    .line 85
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-static {p1, v4, v1, v2, v1}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    const-string v4, "TranPayTransparentActivity: Ready to launch payment, will keep activity alive until callback"

    .line 99
    .line 100
    invoke-static {p1, v4, v1, v2, v1}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    new-instance p1, Lcom/tn/tranpay/activity/TranPayTransparentActivity$b;

    .line 104
    .line 105
    invoke-direct {p1, v3, p0}, Lcom/tn/tranpay/activity/TranPayTransparentActivity$b;-><init>(Lcom/tn/tranpay/d;Lcom/tn/tranpay/activity/TranPayTransparentActivity;)V

    .line 106
    .line 107
    .line 108
    sget-object v1, Lcom/tn/tranpay/TranPayClient;->a:Lcom/tn/tranpay/TranPayClient;

    .line 109
    .line 110
    invoke-virtual {v1, p0, v0, p1}, Lcom/tn/tranpay/TranPayClient;->c(Landroidx/appcompat/app/AppCompatActivity;Lcom/tn/tranpay/BillingParams;Lcom/tn/tranpay/d;)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_2
    const-string v0, "TranPayTransparentActivity: missing params or callback"

    .line 115
    .line 116
    invoke-static {p1, v0, v1, v2, v1}, Llh/a;->e(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    if-eqz v3, :cond_3

    .line 120
    .line 121
    new-instance p1, Lcom/tn/tranpay/b;

    .line 122
    .line 123
    const/4 v0, -0x1

    .line 124
    const-string v2, ""

    .line 125
    .line 126
    invoke-direct {p1, v0, v2}, Lcom/tn/tranpay/b;-><init>(ILjava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-interface {v3, p1, v1}, Lcom/tn/tranpay/d;->a(Lcom/tn/tranpay/b;Lcom/tn/tranpay/c;)V

    .line 130
    .line 131
    .line 132
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 133
    .line 134
    .line 135
    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Llh/a;->a:Llh/a;

    .line 5
    .line 6
    const-string v1, "TranPayTransparentActivity: onDestroy - This should only happen after payment callback!"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x2

    .line 10
    invoke-static {v0, v1, v2, v3, v2}, Llh/a;->e(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v4, "extra_callback_id"

    .line 18
    .line 19
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    sget-object v4, Lcom/tn/tranpay/activity/TranPayTransparentActivity;->b:Ljava/util/Map;

    .line 26
    .line 27
    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/tn/tranpay/d;

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    const-string v1, "TranPayTransparentActivity: Callback was removed due to activity destruction!"

    .line 36
    .line 37
    invoke-static {v0, v1, v2, v3, v2}, Llh/a;->k(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method
