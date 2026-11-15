.class public final Lcom/transsion/home/fragment/filter/FilterFragment$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lrk/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/filter/FilterFragment;->f1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/fragment/filter/FilterFragment;


# direct methods
.method constructor <init>(Lcom/transsion/home/fragment/filter/FilterFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/fragment/filter/FilterFragment$b;->a:Lcom/transsion/home/fragment/filter/FilterFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(IJLandroid/view/View;)V
    .locals 4

    .line 1
    iget-object p2, p0, Lcom/transsion/home/fragment/filter/FilterFragment$b;->a:Lcom/transsion/home/fragment/filter/FilterFragment;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/transsion/home/fragment/filter/FilterFragment;->H0(Lcom/transsion/home/fragment/filter/FilterFragment;)Lcom/transsion/home/adapter/a;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->s0()Z

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p2, p0, Lcom/transsion/home/fragment/filter/FilterFragment$b;->a:Lcom/transsion/home/fragment/filter/FilterFragment;

    .line 13
    .line 14
    invoke-static {p2}, Lcom/transsion/home/fragment/filter/FilterFragment;->H0(Lcom/transsion/home/fragment/filter/FilterFragment;)Lcom/transsion/home/adapter/a;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    if-eqz p2, :cond_8

    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    if-eqz p2, :cond_8

    .line 25
    .line 26
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    iget-object p3, p0, Lcom/transsion/home/fragment/filter/FilterFragment$b;->a:Lcom/transsion/home/fragment/filter/FilterFragment;

    .line 31
    .line 32
    if-lt p1, p2, :cond_1

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_1
    invoke-static {p3}, Lcom/transsion/home/fragment/filter/FilterFragment;->H0(Lcom/transsion/home/fragment/filter/FilterFragment;)Lcom/transsion/home/adapter/a;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    const/4 p4, 0x0

    .line 40
    if-eqz p2, :cond_2

    .line 41
    .line 42
    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    check-cast p2, Lcom/transsion/home/bean/MovieItem;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    move-object p2, p4

    .line 50
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v1, ""

    .line 56
    .line 57
    if-eqz p2, :cond_3

    .line 58
    .line 59
    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getSubjectId()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    if-nez v2, :cond_4

    .line 64
    .line 65
    :cond_3
    move-object v2, v1

    .line 66
    :cond_4
    const-string v3, "subject_id"

    .line 67
    .line 68
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    if-eqz p2, :cond_5

    .line 72
    .line 73
    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getHasResource()Ljava/lang/Boolean;

    .line 74
    .line 75
    .line 76
    move-result-object p4

    .line 77
    :cond_5
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p4

    .line 81
    const-string v2, "has_resource"

    .line 82
    .line 83
    invoke-interface {v0, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    const-string p4, "sequence"

    .line 87
    .line 88
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-interface {v0, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    if-eqz p2, :cond_7

    .line 96
    .line 97
    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getOps()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    if-nez p1, :cond_6

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_6
    move-object v1, p1

    .line 105
    :cond_7
    :goto_1
    const-string p1, "ops"

    .line 106
    .line 107
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 111
    .line 112
    invoke-static {p3}, Lcom/transsion/home/fragment/filter/FilterFragment;->I0(Lcom/transsion/home/fragment/filter/FilterFragment;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-static {p3}, Lcom/transsion/home/fragment/filter/FilterFragment;->J0(Lcom/transsion/home/fragment/filter/FilterFragment;)Lcom/transsion/home/bean/FilterItems;

    .line 117
    .line 118
    .line 119
    move-result-object p4

    .line 120
    invoke-virtual {p3, p2, p4}, Lcom/transsion/home/fragment/filter/FilterFragment;->Z0(Ljava/lang/String;Lcom/transsion/home/bean/FilterItems;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-virtual {p1, p2, v0}, Lcom/transsion/baselib/helper/a;->e(Ljava/lang/String;Ljava/util/Map;)V

    .line 125
    .line 126
    .line 127
    :cond_8
    :goto_2
    return-void
.end method
