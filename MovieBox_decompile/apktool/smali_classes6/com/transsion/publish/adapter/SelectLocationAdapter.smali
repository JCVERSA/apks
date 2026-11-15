.class public final Lcom/transsion/publish/adapter/SelectLocationAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/publish/adapter/SelectLocationAdapter$SelectLocationItemVH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u001bB\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J!\u0010\n\u001a\u00020\t2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001f\u0010\u0010\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001f\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u0017\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/transsion/publish/adapter/SelectLocationAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/room/api/bean/LocationPlace;",
        "Lcom/transsion/publish/adapter/SelectLocationAdapter$SelectLocationItemVH;",
        "<init>",
        "()V",
        "",
        "lat",
        "lon",
        "",
        "D1",
        "(Ljava/lang/Double;Ljava/lang/Double;)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "C1",
        "(Landroid/view/ViewGroup;I)Lcom/transsion/publish/adapter/SelectLocationAdapter$SelectLocationItemVH;",
        "holder",
        "item",
        "B1",
        "(Lcom/transsion/publish/adapter/SelectLocationAdapter$SelectLocationItemVH;Lcom/transsion/room/api/bean/LocationPlace;)V",
        "F",
        "Ljava/lang/Double;",
        "curLat",
        "G",
        "curLon",
        "SelectLocationItemVH",
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


# instance fields
.field private F:Ljava/lang/Double;

.field private G:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    sget v0, Lcom/transsion/publish/R$layout;->item_select_location:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method protected B1(Lcom/transsion/publish/adapter/SelectLocationAdapter$SelectLocationItemVH;Lcom/transsion/room/api/bean/LocationPlace;)V
    .locals 10

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/SelectLocationAdapter$SelectLocationItemVH;->f()Llo/j;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Llo/j;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/transsion/room/api/bean/LocationPlace;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/transsion/room/api/bean/LocationPlace;->getDistance()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_4

    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lcom/transsion/publish/adapter/SelectLocationAdapter;->F:Ljava/lang/Double;

    .line 37
    .line 38
    const-wide/16 v1, 0x0

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 43
    .line 44
    .line 45
    move-result-wide v3

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move-wide v3, v1

    .line 48
    :goto_0
    cmpl-double v0, v3, v1

    .line 49
    .line 50
    if-lez v0, :cond_4

    .line 51
    .line 52
    iget-object v0, p0, Lcom/transsion/publish/adapter/SelectLocationAdapter;->G:Ljava/lang/Double;

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 57
    .line 58
    .line 59
    move-result-wide v3

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    move-wide v3, v1

    .line 62
    :goto_1
    cmpl-double v0, v3, v1

    .line 63
    .line 64
    if-lez v0, :cond_4

    .line 65
    .line 66
    iget-object v0, p0, Lcom/transsion/publish/adapter/SelectLocationAdapter;->F:Ljava/lang/Double;

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    iget-object v0, p0, Lcom/transsion/publish/adapter/SelectLocationAdapter;->G:Ljava/lang/Double;

    .line 71
    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    invoke-virtual {p2}, Lcom/transsion/room/api/bean/LocationPlace;->getLat()Ljava/lang/Double;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    invoke-virtual {p2}, Lcom/transsion/room/api/bean/LocationPlace;->getLon()Ljava/lang/Double;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    sget-object v1, Lij/s;->a:Lij/s;

    .line 87
    .line 88
    iget-object v0, p0, Lcom/transsion/publish/adapter/SelectLocationAdapter;->F:Ljava/lang/Double;

    .line 89
    .line 90
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 94
    .line 95
    .line 96
    move-result-wide v2

    .line 97
    iget-object v0, p0, Lcom/transsion/publish/adapter/SelectLocationAdapter;->G:Ljava/lang/Double;

    .line 98
    .line 99
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 103
    .line 104
    .line 105
    move-result-wide v4

    .line 106
    invoke-virtual {p2}, Lcom/transsion/room/api/bean/LocationPlace;->getLat()Ljava/lang/Double;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 114
    .line 115
    .line 116
    move-result-wide v6

    .line 117
    invoke-virtual {p2}, Lcom/transsion/room/api/bean/LocationPlace;->getLon()Ljava/lang/Double;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 125
    .line 126
    .line 127
    move-result-wide v8

    .line 128
    invoke-virtual/range {v1 .. v9}, Lij/s;->a(DDDD)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    goto :goto_2

    .line 133
    :cond_3
    const/4 v0, 0x0

    .line 134
    goto :goto_2

    .line 135
    :cond_4
    invoke-virtual {p2}, Lcom/transsion/room/api/bean/LocationPlace;->getDistance()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    if-eqz v0, :cond_6

    .line 145
    .line 146
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-nez v0, :cond_5

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_5
    invoke-virtual {p2}, Lcom/transsion/room/api/bean/LocationPlace;->getDistance()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v0, "\u00b7"

    .line 161
    .line 162
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    :cond_6
    :goto_3
    invoke-virtual {p2}, Lcom/transsion/room/api/bean/LocationPlace;->getAddress()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/SelectLocationAdapter$SelectLocationItemVH;->f()Llo/j;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    iget-object p1, p1, Llo/j;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 177
    .line 178
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    .line 180
    .line 181
    return-void
.end method

.method protected C1(Landroid/view/ViewGroup;I)Lcom/transsion/publish/adapter/SelectLocationAdapter$SelectLocationItemVH;
    .locals 1

    .line 1
    const-string p2, "parent"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-static {p2, p1, v0}, Llo/j;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Llo/j;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string p2, "inflate(...)"

    .line 20
    .line 21
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance p2, Lcom/transsion/publish/adapter/SelectLocationAdapter$SelectLocationItemVH;

    .line 25
    .line 26
    invoke-direct {p2, p1}, Lcom/transsion/publish/adapter/SelectLocationAdapter$SelectLocationItemVH;-><init>(Llo/j;)V

    .line 27
    .line 28
    .line 29
    return-object p2
.end method

.method public final D1(Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/publish/adapter/SelectLocationAdapter;->F:Ljava/lang/Double;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/publish/adapter/SelectLocationAdapter;->G:Ljava/lang/Double;

    .line 4
    .line 5
    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/publish/adapter/SelectLocationAdapter$SelectLocationItemVH;

    .line 2
    .line 3
    check-cast p2, Lcom/transsion/room/api/bean/LocationPlace;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/transsion/publish/adapter/SelectLocationAdapter;->B1(Lcom/transsion/publish/adapter/SelectLocationAdapter$SelectLocationItemVH;Lcom/transsion/room/api/bean/LocationPlace;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public bridge synthetic y0(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/publish/adapter/SelectLocationAdapter;->C1(Landroid/view/ViewGroup;I)Lcom/transsion/publish/adapter/SelectLocationAdapter$SelectLocationItemVH;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
