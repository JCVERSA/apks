.class public final Lru/zdevs/zarchiver/ui/text/ExSearchView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/ui/text/ExSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/ui/text/ExSearchView;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ui/text/ExSearchView;)V
    .locals 0

    iput-object p1, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView$b;->a:Lru/zdevs/zarchiver/ui/text/ExSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/text/ExSearchView$b;->a:Lru/zdevs/zarchiver/ui/text/ExSearchView;

    .line 2
    .line 3
    iget-object v1, v0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->a:Landroid/widget/EditText;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_4

    .line 8
    .line 9
    :cond_0
    iget-object v2, v0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->d:[Ljava/lang/String;

    .line 10
    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    iget-object v0, v0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->e:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    goto/16 :goto_4

    .line 19
    .line 20
    :cond_1
    sget-object v1, Lru/zdevs/zarchiver/ui/text/ExSearchView;->i:[Lru/zdevs/zarchiver/ui/layout/a$a;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v5, 0x0

    .line 26
    :goto_0
    const/4 v6, 0x7

    .line 27
    if-ge v4, v6, :cond_7

    .line 28
    .line 29
    aget-object v6, v1, v4

    .line 30
    .line 31
    iget-object v7, v0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->d:[Ljava/lang/String;

    .line 32
    .line 33
    iget-object v8, v6, Lru/zdevs/zarchiver/ui/layout/a$a;->a:Ljava/lang/String;

    .line 34
    .line 35
    const/4 v9, 0x1

    .line 36
    if-nez v7, :cond_3

    .line 37
    .line 38
    :cond_2
    const/4 v7, 0x0

    .line 39
    goto :goto_2

    .line 40
    :cond_3
    array-length v10, v7

    .line 41
    const/4 v11, 0x0

    .line 42
    :goto_1
    if-ge v11, v10, :cond_2

    .line 43
    .line 44
    aget-object v12, v7, v11

    .line 45
    .line 46
    invoke-static {v12, v8}, Lv0/h;->f(Ljava/lang/String;Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v12

    .line 50
    if-eqz v12, :cond_4

    .line 51
    .line 52
    const/4 v7, 0x1

    .line 53
    goto :goto_2

    .line 54
    :cond_4
    add-int/lit8 v11, v11, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :goto_2
    if-eqz v7, :cond_6

    .line 58
    .line 59
    iget v6, v6, Lru/zdevs/zarchiver/ui/layout/a$a;->d:I

    .line 60
    .line 61
    if-eqz v6, :cond_6

    .line 62
    .line 63
    add-int/lit8 v5, v5, 0x1

    .line 64
    .line 65
    if-le v5, v9, :cond_5

    .line 66
    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v6, "... "

    .line 70
    .line 71
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    goto :goto_3

    .line 82
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_7
    if-nez v3, :cond_8

    .line 94
    .line 95
    iget-object v1, v0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->a:Landroid/widget/EditText;

    .line 96
    .line 97
    iget-object v0, v0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->e:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_8
    new-instance v1, Lg1/a;

    .line 104
    .line 105
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    const v5, 0x7f030009

    .line 110
    .line 111
    .line 112
    invoke-static {v4, v5}, Lz0/c;->c(Landroid/content/Context;I)I

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    invoke-direct {v1, v4}, Lg1/a;-><init>(I)V

    .line 117
    .line 118
    .line 119
    new-instance v4, Landroid/text/SpannableStringBuilder;

    .line 120
    .line 121
    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    const/16 v6, 0x20

    .line 129
    .line 130
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    iget-object v6, v0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->e:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    const/16 v6, 0x21

    .line 145
    .line 146
    invoke-virtual {v5, v1, v2, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 147
    .line 148
    .line 149
    iget-object v0, v0, Lru/zdevs/zarchiver/ui/text/ExSearchView;->a:Landroid/widget/EditText;

    .line 150
    .line 151
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    .line 153
    .line 154
    :goto_4
    return-void
.end method
