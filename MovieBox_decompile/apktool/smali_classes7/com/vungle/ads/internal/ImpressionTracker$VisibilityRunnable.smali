.class public final Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/ImpressionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VisibilityRunnable"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0081\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;",
        "Ljava/lang/Runnable;",
        "(Lcom/vungle/ads/internal/ImpressionTracker;)V",
        "invisibleViews",
        "Ljava/util/ArrayList;",
        "Landroid/view/View;",
        "visibleViews",
        "run",
        "",
        "vungle-ads_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final invisibleViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/vungle/ads/internal/ImpressionTracker;

.field private final visibleViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/ImpressionTracker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;->this$0:Lcom/vungle/ads/internal/ImpressionTracker;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;->visibleViews:Ljava/util/ArrayList;

    .line 12
    .line 13
    new-instance p1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;->invisibleViews:Ljava/util/ArrayList;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;->this$0:Lcom/vungle/ads/internal/ImpressionTracker;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/vungle/ads/internal/ImpressionTracker;->access$setVisibilityScheduled$p(Lcom/vungle/ads/internal/ImpressionTracker;Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;->this$0:Lcom/vungle/ads/internal/ImpressionTracker;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/vungle/ads/internal/ImpressionTracker;->access$getTrackedViews$p(Lcom/vungle/ads/internal/ImpressionTracker;)Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/util/Map$Entry;

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Landroid/view/View;

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/vungle/ads/internal/ImpressionTracker$c;

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/vungle/ads/internal/ImpressionTracker$c;->getMinViewablePercent()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    iget-object v3, p0, Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;->this$0:Lcom/vungle/ads/internal/ImpressionTracker;

    .line 50
    .line 51
    invoke-static {v3, v2, v1}, Lcom/vungle/ads/internal/ImpressionTracker;->access$isVisible(Lcom/vungle/ads/internal/ImpressionTracker;Landroid/view/View;I)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    iget-object v1, p0, Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;->visibleViews:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;->invisibleViews:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;->visibleViews:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_3

    .line 80
    .line 81
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Landroid/view/View;

    .line 86
    .line 87
    iget-object v2, p0, Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;->this$0:Lcom/vungle/ads/internal/ImpressionTracker;

    .line 88
    .line 89
    invoke-static {v2}, Lcom/vungle/ads/internal/ImpressionTracker;->access$getTrackedViews$p(Lcom/vungle/ads/internal/ImpressionTracker;)Ljava/util/Map;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    check-cast v2, Lcom/vungle/ads/internal/ImpressionTracker$c;

    .line 98
    .line 99
    if-eqz v2, :cond_2

    .line 100
    .line 101
    invoke-virtual {v2}, Lcom/vungle/ads/internal/ImpressionTracker$c;->getImpressionListener()Lcom/vungle/ads/internal/ImpressionTracker$b;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    if-eqz v2, :cond_2

    .line 106
    .line 107
    invoke-interface {v2, v1}, Lcom/vungle/ads/internal/ImpressionTracker$b;->onImpression(Landroid/view/View;)V

    .line 108
    .line 109
    .line 110
    :cond_2
    iget-object v2, p0, Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;->this$0:Lcom/vungle/ads/internal/ImpressionTracker;

    .line 111
    .line 112
    const-string v3, "view"

    .line 113
    .line 114
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v1}, Lcom/vungle/ads/internal/ImpressionTracker;->removeView(Landroid/view/View;)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;->visibleViews:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;->invisibleViews:Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_5

    .line 137
    .line 138
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    check-cast v1, Landroid/view/View;

    .line 143
    .line 144
    iget-object v2, p0, Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;->this$0:Lcom/vungle/ads/internal/ImpressionTracker;

    .line 145
    .line 146
    invoke-static {v2}, Lcom/vungle/ads/internal/ImpressionTracker;->access$getTrackedViews$p(Lcom/vungle/ads/internal/ImpressionTracker;)Ljava/util/Map;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    check-cast v2, Lcom/vungle/ads/internal/ImpressionTracker$c;

    .line 155
    .line 156
    if-eqz v2, :cond_4

    .line 157
    .line 158
    invoke-virtual {v2}, Lcom/vungle/ads/internal/ImpressionTracker$c;->getImpressionListener()Lcom/vungle/ads/internal/ImpressionTracker$b;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    if-eqz v2, :cond_4

    .line 163
    .line 164
    invoke-interface {v2, v1}, Lcom/vungle/ads/internal/ImpressionTracker$b;->onViewInvisible(Landroid/view/View;)V

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_5
    iget-object v0, p0, Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;->invisibleViews:Ljava/util/ArrayList;

    .line 169
    .line 170
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;->this$0:Lcom/vungle/ads/internal/ImpressionTracker;

    .line 174
    .line 175
    invoke-static {v0}, Lcom/vungle/ads/internal/ImpressionTracker;->access$getTrackedViews$p(Lcom/vungle/ads/internal/ImpressionTracker;)Ljava/util/Map;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-nez v0, :cond_6

    .line 184
    .line 185
    iget-object v0, p0, Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;->this$0:Lcom/vungle/ads/internal/ImpressionTracker;

    .line 186
    .line 187
    invoke-static {v0}, Lcom/vungle/ads/internal/ImpressionTracker;->access$getSetViewTreeObserverSucceed$p(Lcom/vungle/ads/internal/ImpressionTracker;)Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-nez v0, :cond_6

    .line 192
    .line 193
    iget-object v0, p0, Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;->this$0:Lcom/vungle/ads/internal/ImpressionTracker;

    .line 194
    .line 195
    invoke-static {v0}, Lcom/vungle/ads/internal/ImpressionTracker;->access$scheduleVisibilityCheck(Lcom/vungle/ads/internal/ImpressionTracker;)V

    .line 196
    .line 197
    .line 198
    :cond_6
    return-void
.end method
