.class public final Lcom/transsion/home/adapter/trending/provider/i0$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lbj/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/adapter/trending/provider/i0;->L(Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;Lcom/transsion/home/bean/OperateItem;Lzk/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;

.field final synthetic b:Lcom/transsion/home/adapter/trending/provider/i0;

.field final synthetic c:Lcom/transsion/home/bean/OperateItem;

.field final synthetic d:Lzk/j;


# direct methods
.method constructor <init>(Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;Lcom/transsion/home/adapter/trending/provider/i0;Lcom/transsion/home/bean/OperateItem;Lzk/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/adapter/trending/provider/i0$b;->a:Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/home/adapter/trending/provider/i0$b;->b:Lcom/transsion/home/adapter/trending/provider/i0;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/home/adapter/trending/provider/i0$b;->c:Lcom/transsion/home/bean/OperateItem;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/home/adapter/trending/provider/i0$b;->d:Lzk/j;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(IJLandroid/view/View;)V
    .locals 10

    .line 1
    iget-object p4, p0, Lcom/transsion/home/adapter/trending/provider/i0$b;->a:Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/home/adapter/trending/provider/i0$b;->b:Lcom/transsion/home/adapter/trending/provider/i0;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/home/adapter/trending/provider/i0$b;->c:Lcom/transsion/home/bean/OperateItem;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsion/home/adapter/trending/provider/i0$b;->d:Lzk/j;

    .line 8
    .line 9
    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 10
    .line 11
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 12
    .line 13
    const-string v5, "StateAwareRankListProvider"

    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v6, "content item exposure, position:"

    .line 21
    .line 22
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v6, ", duration:"

    .line 29
    .line 30
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    filled-new-array {p2}, [Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    const/4 v8, 0x4

    .line 45
    const/4 v9, 0x0

    .line 46
    const/4 v7, 0x0

    .line 47
    invoke-static/range {v4 .. v9}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p4, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->f0(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    check-cast p2, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 55
    .line 56
    if-nez p2, :cond_0

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_0
    invoke-static {v0, v1}, Lcom/transsion/home/adapter/trending/provider/i0;->B(Lcom/transsion/home/adapter/trending/provider/i0;Lcom/transsion/home/bean/OperateItem;)Ljava/util/HashMap;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    invoke-virtual {p4, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemViewType(I)I

    .line 64
    .line 65
    .line 66
    move-result p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    const/16 v3, 0x64

    .line 68
    .line 69
    const-string v4, "sequence"

    .line 70
    .line 71
    if-ne p4, v3, :cond_1

    .line 72
    .line 73
    :try_start_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-interface {p3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    const-string p1, "deepkLink"

    .line 81
    .line 82
    invoke-static {v0, v1, v2}, Lcom/transsion/home/adapter/trending/provider/i0;->C(Lcom/transsion/home/adapter/trending/provider/i0;Lcom/transsion/home/bean/OperateItem;Lzk/j;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    const-string p1, "module_name"

    .line 90
    .line 91
    const-string p2, "more"

    .line 92
    .line 93
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :catchall_0
    move-exception p1

    .line 98
    goto :goto_3

    .line 99
    :cond_1
    const-string p4, "subject_id"

    .line 100
    .line 101
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    const-string v2, ""

    .line 106
    .line 107
    if-nez v1, :cond_2

    .line 108
    .line 109
    move-object v1, v2

    .line 110
    :cond_2
    :try_start_2
    invoke-interface {p3, p4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-interface {p3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    const-string p1, "subject_type"

    .line 121
    .line 122
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object p4

    .line 126
    if-eqz p4, :cond_4

    .line 127
    .line 128
    invoke-virtual {p4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p4

    .line 132
    if-nez p4, :cond_3

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_3
    move-object v2, p4

    .line 136
    :cond_4
    :goto_0
    invoke-interface {p3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    const-string p1, "has_resource"

    .line 140
    .line 141
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getHasResource()Ljava/lang/Boolean;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    :goto_1
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 153
    .line 154
    sget-object p2, Lcom/transsion/home/fragment/tab/SubTabFragment;->t:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    .line 155
    .line 156
    invoke-static {v0}, Lcom/transsion/home/adapter/trending/provider/i0;->D(Lcom/transsion/home/adapter/trending/provider/i0;)I

    .line 157
    .line 158
    .line 159
    move-result p4

    .line 160
    invoke-virtual {p2, p4}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-virtual {p1, p2, p3}, Lqi/h;->z(Ljava/lang/String;Ljava/util/Map;)V

    .line 165
    .line 166
    .line 167
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 168
    .line 169
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    .line 171
    .line 172
    goto :goto_4

    .line 173
    :goto_3
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 174
    .line 175
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    :goto_4
    return-void
.end method
