.class public final Lcom/transsion/ad/web/AdWebActivity$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ad/web/AdWebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/web/AdWebActivity$a$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/web/AdWebActivity$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager$AdOverridePendingTransitionEnum;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/a;->b()Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .line 9
    .line 10
    const-class v2, Lcom/transsion/ad/web/AdWebActivity;

    .line 11
    .line 12
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    const-string v2, "url"

    .line 16
    .line 17
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    const-string p1, "web_activity_extra_log_tag_key"

    .line 21
    .line 22
    invoke-virtual {v1, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    const/high16 p1, 0x10000000

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 35
    .line 36
    .line 37
    if-nez p2, :cond_1

    .line 38
    .line 39
    const/4 p1, -0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    sget-object p1, Lcom/transsion/ad/web/AdWebActivity$a$a;->a:[I

    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    aget p1, p1, p2

    .line 48
    .line 49
    :goto_0
    const/4 p2, 0x1

    .line 50
    if-ne p1, p2, :cond_2

    .line 51
    .line 52
    sget p1, Lcom/transsion/ad/R$anim;->slide_in_from_top:I

    .line 53
    .line 54
    sget p2, Lcom/transsion/ad/R$anim;->no_anim:I

    .line 55
    .line 56
    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 57
    .line 58
    .line 59
    :cond_2
    return-void
.end method
