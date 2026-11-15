.class public final Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lbr/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;->S0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment$c;->a:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;

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
    .locals 6

    .line 1
    iget-object p4, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment$c;->a:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;

    .line 2
    .line 3
    invoke-static {p4}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;->s0(Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;)Lcom/transsion/shorttv/_channel/ui/adapter/c;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    if-eqz p4, :cond_7

    .line 8
    .line 9
    invoke-virtual {p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p4

    .line 13
    if-eqz p4, :cond_7

    .line 14
    .line 15
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result p4

    .line 19
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment$c;->a:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;

    .line 20
    .line 21
    if-lt p1, p4, :cond_0

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_0
    invoke-static {v0}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;->s0(Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;)Lcom/transsion/shorttv/_channel/ui/adapter/c;

    .line 25
    .line 26
    .line 27
    move-result-object p4

    .line 28
    const/4 v1, 0x0

    .line 29
    if-eqz p4, :cond_1

    .line 30
    .line 31
    invoke-virtual {p4, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p4

    .line 35
    check-cast p4, Lcom/transsion/shorttv/_channel/model/ShortTvMovieItem;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object p4, v1

    .line 39
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v3, ""

    .line 45
    .line 46
    if-eqz p4, :cond_2

    .line 47
    .line 48
    invoke-virtual {p4}, Lcom/transsion/shorttv/_channel/model/ShortTvMovieItem;->getSubjectId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    if-nez v4, :cond_3

    .line 53
    .line 54
    :cond_2
    move-object v4, v3

    .line 55
    :cond_3
    const-string v5, "subject_id"

    .line 56
    .line 57
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    if-eqz p4, :cond_4

    .line 61
    .line 62
    invoke-virtual {p4}, Lcom/transsion/shorttv/_channel/model/ShortTvMovieItem;->getHasResource()Ljava/lang/Boolean;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    :cond_4
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const-string v4, "has_resource"

    .line 71
    .line 72
    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    const-string v1, "sequence"

    .line 76
    .line 77
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    if-eqz p4, :cond_6

    .line 85
    .line 86
    invoke-virtual {p4}, Lcom/transsion/shorttv/_channel/model/ShortTvMovieItem;->getOps()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-nez p1, :cond_5

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_5
    move-object v3, p1

    .line 94
    :cond_6
    :goto_1
    const-string p1, "ops"

    .line 95
    .line 96
    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    const-string p1, "filter_name"

    .line 100
    .line 101
    invoke-static {v0}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;->r0(Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p4

    .line 105
    invoke-interface {v2, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    const-string p1, "browse_duration"

    .line 109
    .line 110
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;->M0()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-virtual {p1, p2, v2}, Lqi/h;->z(Ljava/lang/String;Ljava/util/Map;)V

    .line 124
    .line 125
    .line 126
    :cond_7
    :goto_2
    return-void
.end method
