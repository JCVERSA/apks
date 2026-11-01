.class public final Lru/zdevs/zarchiver/activity/OpenAsDlg$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/activity/OpenAsDlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/activity/OpenAsDlg;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/activity/OpenAsDlg;)V
    .locals 0

    iput-object p1, p0, Lru/zdevs/zarchiver/activity/OpenAsDlg$b;->a:Lru/zdevs/zarchiver/activity/OpenAsDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/activity/OpenAsDlg$b;->a:Lru/zdevs/zarchiver/activity/OpenAsDlg;

    .line 2
    .line 3
    iget-object v1, v0, Lru/zdevs/zarchiver/activity/OpenAsDlg;->a:Lc0/i;

    .line 4
    .line 5
    iget v2, v0, Lru/zdevs/zarchiver/activity/OpenAsDlg;->b:I

    .line 6
    .line 7
    iget-object v1, v1, Lc0/i;->b:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lc0/i$a;

    .line 14
    .line 15
    iget-object v1, v1, Lc0/i$a;->a:Landroid/content/Intent;

    .line 16
    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    const-string v3, "OpenAsDlg.EXTRA_EXTRA"

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-static {v0, v1}, Lv0/e;->h(Landroid/content/Context;Landroid/content/Intent;)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    if-eqz p1, :cond_3

    .line 43
    .line 44
    iget-object v1, v0, Lru/zdevs/zarchiver/activity/OpenAsDlg;->c:Ljava/lang/String;

    .line 45
    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    iget-object v1, v0, Lru/zdevs/zarchiver/activity/OpenAsDlg;->a:Lc0/i;

    .line 49
    .line 50
    iget v2, v0, Lru/zdevs/zarchiver/activity/OpenAsDlg;->b:I

    .line 51
    .line 52
    iget-object v1, v1, Lc0/i;->b:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lc0/i$a;

    .line 59
    .line 60
    new-instance v2, Lu0/b;

    .line 61
    .line 62
    iget-object v3, v1, Lc0/i$a;->b:Landroid/content/pm/ResolveInfo;

    .line 63
    .line 64
    invoke-direct {v2, v3}, Lu0/b;-><init>(Landroid/content/pm/ResolveInfo;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, v1, Lc0/i$a;->a:Landroid/content/Intent;

    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const/4 v3, 0x1

    .line 74
    if-eqz v1, :cond_1

    .line 75
    .line 76
    const-string v4, "file"

    .line 77
    .line 78
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    xor-int/2addr v1, v3

    .line 87
    iput v1, v2, Lu0/b;->d:I

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    iput v3, v2, Lu0/b;->d:I

    .line 91
    .line 92
    :goto_0
    iget-object v1, v0, Lru/zdevs/zarchiver/activity/OpenAsDlg;->c:Ljava/lang/String;

    .line 93
    .line 94
    iput-object v1, v2, Lu0/b;->a:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    const v1, 0x7f070042

    .line 101
    .line 102
    .line 103
    if-ne p1, v1, :cond_2

    .line 104
    .line 105
    const/4 v3, 0x0

    .line 106
    :cond_2
    iput v3, v2, Lu0/b;->e:I

    .line 107
    .line 108
    sget-object p1, Lw0/c;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 109
    .line 110
    new-instance v1, Lru/zdevs/zarchiver/activity/OpenAsDlg$b$a;

    .line 111
    .line 112
    invoke-direct {v1, v2}, Lru/zdevs/zarchiver/activity/OpenAsDlg$b$a;-><init>(Lu0/b;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 116
    .line 117
    .line 118
    :cond_3
    const/4 p1, -0x1

    .line 119
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 123
    .line 124
    .line 125
    return-void
.end method
