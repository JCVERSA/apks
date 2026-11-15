.class public abstract Landroidx/navigation/NavController;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/NavController$NavControllerNavigatorState;,
        Landroidx/navigation/NavController$a;
    }
.end annotation


# static fields
.field public static final G:Landroidx/navigation/NavController$a;

.field private static H:Z


# instance fields
.field private final A:Ljava/util/Map;

.field private B:I

.field private final C:Ljava/util/List;

.field private final D:Lkotlin/Lazy;

.field private final E:Lkotlinx/coroutines/flow/w0;

.field private final F:Lkotlinx/coroutines/flow/a;

.field private final a:Landroid/content/Context;

.field private b:Landroid/app/Activity;

.field private c:Landroidx/navigation/k;

.field private d:Landroidx/navigation/NavGraph;

.field private e:Landroid/os/Bundle;

.field private f:[Landroid/os/Parcelable;

.field private g:Z

.field private final h:Lkotlin/collections/ArrayDeque;

.field private final i:Lkotlinx/coroutines/flow/x0;

.field private final j:Lkotlinx/coroutines/flow/h1;

.field private final k:Ljava/util/Map;

.field private final l:Ljava/util/Map;

.field private final m:Ljava/util/Map;

.field private final n:Ljava/util/Map;

.field private o:Landroidx/lifecycle/u;

.field private p:Landroidx/activity/OnBackPressedDispatcher;

.field private q:Landroidx/navigation/f;

.field private final r:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private s:Landroidx/lifecycle/Lifecycle$State;

.field private final t:Landroidx/lifecycle/t;

.field private final u:Landroidx/activity/u;

.field private v:Z

.field private w:Landroidx/navigation/q;

.field private final x:Ljava/util/Map;

.field private y:Lkotlin/jvm/functions/Function1;

.field private z:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/navigation/NavController$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/navigation/NavController$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/navigation/NavController;->G:Landroidx/navigation/NavController$a;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    sput-boolean v0, Landroidx/navigation/NavController;->H:Z

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    .line 10
    .line 11
    sget-object v0, Landroidx/navigation/NavController$activity$1;->INSTANCE:Landroidx/navigation/NavController$activity$1;

    .line 12
    .line 13
    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->h(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    move-object v2, v0

    .line 33
    check-cast v2, Landroid/content/Context;

    .line 34
    .line 35
    instance-of v2, v2, Landroid/app/Activity;

    .line 36
    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move-object v0, v1

    .line 41
    :goto_0
    check-cast v0, Landroid/app/Activity;

    .line 42
    .line 43
    iput-object v0, p0, Landroidx/navigation/NavController;->b:Landroid/app/Activity;

    .line 44
    .line 45
    new-instance p1, Lkotlin/collections/ArrayDeque;

    .line 46
    .line 47
    invoke-direct {p1}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Landroidx/navigation/NavController;->h:Lkotlin/collections/ArrayDeque;

    .line 51
    .line 52
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p1}, Lkotlinx/coroutines/flow/i1;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/x0;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Landroidx/navigation/NavController;->i:Lkotlinx/coroutines/flow/x0;

    .line 61
    .line 62
    invoke-static {p1}, Lkotlinx/coroutines/flow/c;->b(Lkotlinx/coroutines/flow/x0;)Lkotlinx/coroutines/flow/h1;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iput-object p1, p0, Landroidx/navigation/NavController;->j:Lkotlinx/coroutines/flow/h1;

    .line 67
    .line 68
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 69
    .line 70
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object p1, p0, Landroidx/navigation/NavController;->k:Ljava/util/Map;

    .line 74
    .line 75
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 76
    .line 77
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object p1, p0, Landroidx/navigation/NavController;->l:Ljava/util/Map;

    .line 81
    .line 82
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 83
    .line 84
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 85
    .line 86
    .line 87
    iput-object p1, p0, Landroidx/navigation/NavController;->m:Ljava/util/Map;

    .line 88
    .line 89
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 90
    .line 91
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 92
    .line 93
    .line 94
    iput-object p1, p0, Landroidx/navigation/NavController;->n:Ljava/util/Map;

    .line 95
    .line 96
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 97
    .line 98
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 99
    .line 100
    .line 101
    iput-object p1, p0, Landroidx/navigation/NavController;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 102
    .line 103
    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    .line 104
    .line 105
    iput-object p1, p0, Landroidx/navigation/NavController;->s:Landroidx/lifecycle/Lifecycle$State;

    .line 106
    .line 107
    new-instance p1, Landroidx/navigation/e;

    .line 108
    .line 109
    invoke-direct {p1, p0}, Landroidx/navigation/e;-><init>(Landroidx/navigation/NavController;)V

    .line 110
    .line 111
    .line 112
    iput-object p1, p0, Landroidx/navigation/NavController;->t:Landroidx/lifecycle/t;

    .line 113
    .line 114
    new-instance p1, Landroidx/navigation/NavController$b;

    .line 115
    .line 116
    invoke-direct {p1, p0}, Landroidx/navigation/NavController$b;-><init>(Landroidx/navigation/NavController;)V

    .line 117
    .line 118
    .line 119
    iput-object p1, p0, Landroidx/navigation/NavController;->u:Landroidx/activity/u;

    .line 120
    .line 121
    const/4 p1, 0x1

    .line 122
    iput-boolean p1, p0, Landroidx/navigation/NavController;->v:Z

    .line 123
    .line 124
    new-instance v0, Landroidx/navigation/q;

    .line 125
    .line 126
    invoke-direct {v0}, Landroidx/navigation/q;-><init>()V

    .line 127
    .line 128
    .line 129
    iput-object v0, p0, Landroidx/navigation/NavController;->w:Landroidx/navigation/q;

    .line 130
    .line 131
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 132
    .line 133
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 134
    .line 135
    .line 136
    iput-object v0, p0, Landroidx/navigation/NavController;->x:Ljava/util/Map;

    .line 137
    .line 138
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 139
    .line 140
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 141
    .line 142
    .line 143
    iput-object v0, p0, Landroidx/navigation/NavController;->A:Ljava/util/Map;

    .line 144
    .line 145
    iget-object v0, p0, Landroidx/navigation/NavController;->w:Landroidx/navigation/q;

    .line 146
    .line 147
    new-instance v2, Landroidx/navigation/h;

    .line 148
    .line 149
    invoke-direct {v2, v0}, Landroidx/navigation/h;-><init>(Landroidx/navigation/q;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v2}, Landroidx/navigation/q;->b(Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Landroidx/navigation/NavController;->w:Landroidx/navigation/q;

    .line 156
    .line 157
    new-instance v2, Landroidx/navigation/ActivityNavigator;

    .line 158
    .line 159
    iget-object v3, p0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    .line 160
    .line 161
    invoke-direct {v2, v3}, Landroidx/navigation/ActivityNavigator;-><init>(Landroid/content/Context;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v2}, Landroidx/navigation/q;->b(Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;

    .line 165
    .line 166
    .line 167
    new-instance v0, Ljava/util/ArrayList;

    .line 168
    .line 169
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .line 171
    .line 172
    iput-object v0, p0, Landroidx/navigation/NavController;->C:Ljava/util/List;

    .line 173
    .line 174
    new-instance v0, Landroidx/navigation/NavController$navInflater$2;

    .line 175
    .line 176
    invoke-direct {v0, p0}, Landroidx/navigation/NavController$navInflater$2;-><init>(Landroidx/navigation/NavController;)V

    .line 177
    .line 178
    .line 179
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    iput-object v0, p0, Landroidx/navigation/NavController;->D:Lkotlin/Lazy;

    .line 184
    .line 185
    sget-object v0, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 186
    .line 187
    const/4 v2, 0x2

    .line 188
    const/4 v3, 0x0

    .line 189
    invoke-static {p1, v3, v0, v2, v1}, Lkotlinx/coroutines/flow/c1;->b(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/w0;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    iput-object p1, p0, Landroidx/navigation/NavController;->E:Lkotlinx/coroutines/flow/w0;

    .line 194
    .line 195
    invoke-static {p1}, Lkotlinx/coroutines/flow/c;->a(Lkotlinx/coroutines/flow/w0;)Lkotlinx/coroutines/flow/b1;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    iput-object p1, p0, Landroidx/navigation/NavController;->F:Lkotlinx/coroutines/flow/a;

    .line 200
    .line 201
    return-void
.end method

.method private final B()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Ljava/util/Collection;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    instance-of v1, v1, Landroidx/navigation/NavGraph;

    .line 38
    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    if-gez v2, :cond_1

    .line 44
    .line 45
    invoke-static {}, Lkotlin/collections/CollectionsKt;->t()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    :goto_1
    return v2
.end method

.method private final H(Lkotlin/collections/ArrayDeque;)Ljava/util/List;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->l()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :goto_0
    if-nez v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/navigation/NavController;->C()Landroidx/navigation/NavGraph;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :cond_1
    if-nez p1, :cond_2

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_4

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Landroidx/navigation/NavBackStackEntryState;

    .line 48
    .line 49
    invoke-virtual {v2}, Landroidx/navigation/NavBackStackEntryState;->getDestinationId()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-direct {p0, v1, v3}, Landroidx/navigation/NavController;->t(Landroidx/navigation/NavDestination;I)Landroidx/navigation/NavDestination;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    if-eqz v3, :cond_3

    .line 58
    .line 59
    invoke-virtual {p0}, Landroidx/navigation/NavController;->y()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {p0}, Landroidx/navigation/NavController;->D()Landroidx/lifecycle/Lifecycle$State;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    iget-object v5, p0, Landroidx/navigation/NavController;->q:Landroidx/navigation/f;

    .line 68
    .line 69
    invoke-virtual {v2, v1, v3, v4, v5}, Landroidx/navigation/NavBackStackEntryState;->instantiate(Landroid/content/Context;Landroidx/navigation/NavDestination;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/f;)Landroidx/navigation/NavBackStackEntry;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-object v1, v3

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    sget-object p1, Landroidx/navigation/NavDestination;->j:Landroidx/navigation/NavDestination$Companion;

    .line 79
    .line 80
    invoke-virtual {p0}, Landroidx/navigation/NavController;->y()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v2}, Landroidx/navigation/NavBackStackEntryState;->getDestinationId()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    invoke-virtual {p1, v0, v2}, Landroidx/navigation/NavDestination$Companion;->b(Landroid/content/Context;I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v2, "Restore State failed: destination "

    .line 98
    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string p1, " cannot be found from the current destination "

    .line 106
    .line 107
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw v0

    .line 127
    :cond_4
    :goto_2
    return-object v0
.end method

.method private static final I(Landroidx/navigation/NavController;Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$noName_0"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "event"

    .line 12
    .line 13
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Landroidx/lifecycle/Lifecycle$Event;->getTargetState()Landroidx/lifecycle/Lifecycle$State;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "event.targetState"

    .line 21
    .line 22
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Landroidx/navigation/NavController;->s:Landroidx/lifecycle/Lifecycle$State;

    .line 26
    .line 27
    iget-object p1, p0, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Landroidx/navigation/NavBackStackEntry;

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroidx/navigation/NavBackStackEntry;->i(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method

.method private final J(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavBackStackEntry;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavController;->k:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/navigation/NavController;->l:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Landroidx/navigation/NavController;->l:Ljava/util/Map;

    .line 15
    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Landroidx/navigation/NavController;->l:Ljava/util/Map;

    .line 26
    .line 27
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private final K(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/l;Landroidx/navigation/Navigator$a;)V
    .locals 20

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v3, p3

    .line 4
    .line 5
    iget-object v0, v6, Landroidx/navigation/NavController;->x:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Iterable;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroidx/navigation/r;->i(Z)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 35
    .line 36
    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 37
    .line 38
    .line 39
    const/4 v8, 0x0

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/l;->e()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const/4 v1, -0x1

    .line 47
    if-eq v0, v1, :cond_1

    .line 48
    .line 49
    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/l;->e()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/l;->f()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/l;->h()Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    invoke-direct {v6, v0, v1, v4}, Landroidx/navigation/NavController;->S(IZZ)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    move v9, v0

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    move v9, v8

    .line 68
    :goto_1
    invoke-virtual/range {p1 .. p2}, Landroidx/navigation/NavDestination;->f(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-nez v3, :cond_2

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/l;->i()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-ne v1, v2, :cond_3

    .line 80
    .line 81
    iget-object v1, v6, Landroidx/navigation/NavController;->m:Ljava/util/Map;

    .line 82
    .line 83
    invoke-virtual/range {p1 .. p1}, Landroidx/navigation/NavDestination;->n()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_3

    .line 96
    .line 97
    invoke-virtual/range {p1 .. p1}, Landroidx/navigation/NavDestination;->n()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    move-object/from16 v4, p4

    .line 102
    .line 103
    invoke-direct {v6, v1, v0, v3, v4}, Landroidx/navigation/NavController;->Y(ILandroid/os/Bundle;Landroidx/navigation/l;Landroidx/navigation/Navigator$a;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    iput-boolean v0, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 108
    .line 109
    goto/16 :goto_4

    .line 110
    .line 111
    :cond_3
    :goto_2
    move-object/from16 v4, p4

    .line 112
    .line 113
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->z()Landroidx/navigation/NavBackStackEntry;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    iget-object v5, v6, Landroidx/navigation/NavController;->w:Landroidx/navigation/q;

    .line 118
    .line 119
    invoke-virtual/range {p1 .. p1}, Landroidx/navigation/NavDestination;->o()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    invoke-virtual {v5, v10}, Landroidx/navigation/q;->d(Ljava/lang/String;)Landroidx/navigation/Navigator;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    if-nez v3, :cond_4

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/l;->g()Z

    .line 131
    .line 132
    .line 133
    move-result v10

    .line 134
    if-ne v10, v2, :cond_8

    .line 135
    .line 136
    invoke-virtual/range {p1 .. p1}, Landroidx/navigation/NavDestination;->n()I

    .line 137
    .line 138
    .line 139
    move-result v10

    .line 140
    if-nez v1, :cond_5

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_5
    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    .line 144
    .line 145
    .line 146
    move-result-object v11

    .line 147
    if-nez v11, :cond_6

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_6
    invoke-virtual {v11}, Landroidx/navigation/NavDestination;->n()I

    .line 151
    .line 152
    .line 153
    move-result v11

    .line 154
    if-ne v10, v11, :cond_8

    .line 155
    .line 156
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    .line 165
    .line 166
    invoke-virtual {v6, v3}, Landroidx/navigation/NavController;->g0(Landroidx/navigation/NavBackStackEntry;)Landroidx/navigation/NavBackStackEntry;

    .line 167
    .line 168
    .line 169
    new-instance v3, Landroidx/navigation/NavBackStackEntry;

    .line 170
    .line 171
    invoke-direct {v3, v1, v0}, Landroidx/navigation/NavBackStackEntry;-><init>(Landroidx/navigation/NavBackStackEntry;Landroid/os/Bundle;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v0, v3}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->p()Landroidx/navigation/NavGraph;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    if-eqz v0, :cond_7

    .line 190
    .line 191
    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->n()I

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    invoke-virtual {v6, v0}, Landroidx/navigation/NavController;->w(I)Landroidx/navigation/NavBackStackEntry;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-direct {v6, v3, v0}, Landroidx/navigation/NavController;->J(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavBackStackEntry;)V

    .line 200
    .line 201
    .line 202
    :cond_7
    invoke-virtual {v5, v3}, Landroidx/navigation/Navigator;->g(Landroidx/navigation/NavBackStackEntry;)V

    .line 203
    .line 204
    .line 205
    goto :goto_5

    .line 206
    :cond_8
    :goto_3
    sget-object v10, Landroidx/navigation/NavBackStackEntry;->n:Landroidx/navigation/NavBackStackEntry$a;

    .line 207
    .line 208
    iget-object v11, v6, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    .line 209
    .line 210
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->D()Landroidx/lifecycle/Lifecycle$State;

    .line 211
    .line 212
    .line 213
    move-result-object v14

    .line 214
    iget-object v15, v6, Landroidx/navigation/NavController;->q:Landroidx/navigation/f;

    .line 215
    .line 216
    const/16 v18, 0x60

    .line 217
    .line 218
    const/16 v19, 0x0

    .line 219
    .line 220
    const/16 v16, 0x0

    .line 221
    .line 222
    const/16 v17, 0x0

    .line 223
    .line 224
    move-object/from16 v12, p1

    .line 225
    .line 226
    move-object v13, v0

    .line 227
    invoke-static/range {v10 .. v19}, Landroidx/navigation/NavBackStackEntry$a;->b(Landroidx/navigation/NavBackStackEntry$a;Landroid/content/Context;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/p;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Landroidx/navigation/NavBackStackEntry;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    new-instance v10, Landroidx/navigation/NavController$navigate$4;

    .line 236
    .line 237
    move-object/from16 v1, p1

    .line 238
    .line 239
    invoke-direct {v10, v7, v6, v1, v0}, Landroidx/navigation/NavController$navigate$4;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V

    .line 240
    .line 241
    .line 242
    move-object/from16 v0, p0

    .line 243
    .line 244
    move-object v1, v5

    .line 245
    move-object/from16 v3, p3

    .line 246
    .line 247
    move-object/from16 v4, p4

    .line 248
    .line 249
    move-object v5, v10

    .line 250
    invoke-direct/range {v0 .. v5}, Landroidx/navigation/NavController;->L(Landroidx/navigation/Navigator;Ljava/util/List;Landroidx/navigation/l;Landroidx/navigation/Navigator$a;Lkotlin/jvm/functions/Function1;)V

    .line 251
    .line 252
    .line 253
    :goto_4
    move v2, v8

    .line 254
    :goto_5
    invoke-direct/range {p0 .. p0}, Landroidx/navigation/NavController;->i0()V

    .line 255
    .line 256
    .line 257
    iget-object v0, v6, Landroidx/navigation/NavController;->x:Ljava/util/Map;

    .line 258
    .line 259
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    check-cast v0, Ljava/lang/Iterable;

    .line 264
    .line 265
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    if-eqz v1, :cond_9

    .line 274
    .line 275
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    check-cast v1, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 280
    .line 281
    invoke-virtual {v1, v8}, Landroidx/navigation/r;->i(Z)V

    .line 282
    .line 283
    .line 284
    goto :goto_6

    .line 285
    :cond_9
    if-nez v9, :cond_b

    .line 286
    .line 287
    iget-boolean v0, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 288
    .line 289
    if-nez v0, :cond_b

    .line 290
    .line 291
    if-eqz v2, :cond_a

    .line 292
    .line 293
    goto :goto_7

    .line 294
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->h0()V

    .line 295
    .line 296
    .line 297
    goto :goto_8

    .line 298
    :cond_b
    :goto_7
    invoke-direct/range {p0 .. p0}, Landroidx/navigation/NavController;->q()Z

    .line 299
    .line 300
    .line 301
    :goto_8
    return-void
.end method

.method private final L(Landroidx/navigation/Navigator;Ljava/util/List;Landroidx/navigation/l;Landroidx/navigation/Navigator$a;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput-object p5, p0, Landroidx/navigation/NavController;->y:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    invoke-virtual {p1, p2, p3, p4}, Landroidx/navigation/Navigator;->e(Ljava/util/List;Landroidx/navigation/l;Landroidx/navigation/Navigator$a;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Landroidx/navigation/NavController;->y:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    return-void
.end method

.method private final M(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavController;->e:Landroid/os/Bundle;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    const-string v1, "android-support-nav:controller:navigatorState:names"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/lang/String;

    .line 29
    .line 30
    iget-object v3, p0, Landroidx/navigation/NavController;->w:Landroidx/navigation/q;

    .line 31
    .line 32
    const-string v4, "name"

    .line 33
    .line 34
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v2}, Landroidx/navigation/q;->d(Ljava/lang/String;)Landroidx/navigation/Navigator;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    invoke-virtual {v3, v2}, Landroidx/navigation/Navigator;->h(Landroid/os/Bundle;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/navigation/NavController;->f:[Landroid/os/Parcelable;

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    goto/16 :goto_3

    .line 57
    .line 58
    :cond_3
    array-length v2, v0

    .line 59
    const/4 v3, 0x0

    .line 60
    :cond_4
    :goto_2
    if-ge v3, v2, :cond_7

    .line 61
    .line 62
    aget-object v4, v0, v3

    .line 63
    .line 64
    add-int/lit8 v3, v3, 0x1

    .line 65
    .line 66
    check-cast v4, Landroidx/navigation/NavBackStackEntryState;

    .line 67
    .line 68
    invoke-virtual {v4}, Landroidx/navigation/NavBackStackEntryState;->getDestinationId()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    invoke-virtual {p0, v5}, Landroidx/navigation/NavController;->s(I)Landroidx/navigation/NavDestination;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    if-eqz v5, :cond_6

    .line 77
    .line 78
    invoke-virtual {p0}, Landroidx/navigation/NavController;->y()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {p0}, Landroidx/navigation/NavController;->D()Landroidx/lifecycle/Lifecycle$State;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    iget-object v8, p0, Landroidx/navigation/NavController;->q:Landroidx/navigation/f;

    .line 87
    .line 88
    invoke-virtual {v4, v6, v5, v7, v8}, Landroidx/navigation/NavBackStackEntryState;->instantiate(Landroid/content/Context;Landroidx/navigation/NavDestination;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/f;)Landroidx/navigation/NavBackStackEntry;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    iget-object v6, p0, Landroidx/navigation/NavController;->w:Landroidx/navigation/q;

    .line 93
    .line 94
    invoke-virtual {v5}, Landroidx/navigation/NavDestination;->o()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-virtual {v6, v5}, Landroidx/navigation/q;->d(Ljava/lang/String;)Landroidx/navigation/Navigator;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    iget-object v6, p0, Landroidx/navigation/NavController;->x:Ljava/util/Map;

    .line 103
    .line 104
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    if-nez v7, :cond_5

    .line 109
    .line 110
    new-instance v7, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 111
    .line 112
    invoke-direct {v7, p0, v5}, Landroidx/navigation/NavController$NavControllerNavigatorState;-><init>(Landroidx/navigation/NavController;Landroidx/navigation/Navigator;)V

    .line 113
    .line 114
    .line 115
    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    :cond_5
    check-cast v7, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 119
    .line 120
    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-virtual {v5, v4}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    invoke-virtual {v7, v4}, Landroidx/navigation/NavController$NavControllerNavigatorState;->k(Landroidx/navigation/NavBackStackEntry;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-virtual {v5}, Landroidx/navigation/NavDestination;->p()Landroidx/navigation/NavGraph;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    if-eqz v5, :cond_4

    .line 139
    .line 140
    invoke-virtual {v5}, Landroidx/navigation/NavDestination;->n()I

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    invoke-virtual {p0, v5}, Landroidx/navigation/NavController;->w(I)Landroidx/navigation/NavBackStackEntry;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-direct {p0, v4, v5}, Landroidx/navigation/NavController;->J(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavBackStackEntry;)V

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_6
    sget-object p1, Landroidx/navigation/NavDestination;->j:Landroidx/navigation/NavDestination$Companion;

    .line 153
    .line 154
    invoke-virtual {p0}, Landroidx/navigation/NavController;->y()Landroid/content/Context;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v4}, Landroidx/navigation/NavBackStackEntryState;->getDestinationId()I

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    invoke-virtual {p1, v0, v1}, Landroidx/navigation/NavDestination$Companion;->b(Landroid/content/Context;I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 167
    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    const-string v2, "Restoring the Navigation back stack failed: destination "

    .line 174
    .line 175
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string p1, " cannot be found from the current destination "

    .line 182
    .line 183
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0}, Landroidx/navigation/NavController;->A()Landroidx/navigation/NavDestination;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    throw v0

    .line 201
    :cond_7
    invoke-direct {p0}, Landroidx/navigation/NavController;->i0()V

    .line 202
    .line 203
    .line 204
    iput-object v1, p0, Landroidx/navigation/NavController;->f:[Landroid/os/Parcelable;

    .line 205
    .line 206
    :goto_3
    iget-object v0, p0, Landroidx/navigation/NavController;->w:Landroidx/navigation/q;

    .line 207
    .line 208
    invoke-virtual {v0}, Landroidx/navigation/q;->e()Ljava/util/Map;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    check-cast v0, Ljava/lang/Iterable;

    .line 217
    .line 218
    new-instance v2, Ljava/util/ArrayList;

    .line 219
    .line 220
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .line 222
    .line 223
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    :cond_8
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    if-eqz v3, :cond_9

    .line 232
    .line 233
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    move-object v4, v3

    .line 238
    check-cast v4, Landroidx/navigation/Navigator;

    .line 239
    .line 240
    invoke-virtual {v4}, Landroidx/navigation/Navigator;->c()Z

    .line 241
    .line 242
    .line 243
    move-result v4

    .line 244
    if-nez v4, :cond_8

    .line 245
    .line 246
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    goto :goto_4

    .line 250
    :cond_9
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    if-eqz v2, :cond_b

    .line 259
    .line 260
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    check-cast v2, Landroidx/navigation/Navigator;

    .line 265
    .line 266
    iget-object v3, p0, Landroidx/navigation/NavController;->x:Ljava/util/Map;

    .line 267
    .line 268
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    if-nez v4, :cond_a

    .line 273
    .line 274
    new-instance v4, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 275
    .line 276
    invoke-direct {v4, p0, v2}, Landroidx/navigation/NavController$NavControllerNavigatorState;-><init>(Landroidx/navigation/NavController;Landroidx/navigation/Navigator;)V

    .line 277
    .line 278
    .line 279
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    :cond_a
    check-cast v4, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 283
    .line 284
    invoke-virtual {v2, v4}, Landroidx/navigation/Navigator;->f(Landroidx/navigation/r;)V

    .line 285
    .line 286
    .line 287
    goto :goto_5

    .line 288
    :cond_b
    iget-object v0, p0, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    .line 289
    .line 290
    if-eqz v0, :cond_d

    .line 291
    .line 292
    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    if-eqz v0, :cond_d

    .line 301
    .line 302
    iget-boolean v0, p0, Landroidx/navigation/NavController;->g:Z

    .line 303
    .line 304
    if-nez v0, :cond_c

    .line 305
    .line 306
    iget-object v0, p0, Landroidx/navigation/NavController;->b:Landroid/app/Activity;

    .line 307
    .line 308
    if-eqz v0, :cond_c

    .line 309
    .line 310
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    invoke-virtual {p0, v0}, Landroidx/navigation/NavController;->G(Landroid/content/Intent;)Z

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    if-eqz v0, :cond_c

    .line 322
    .line 323
    goto :goto_6

    .line 324
    :cond_c
    iget-object v0, p0, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    .line 325
    .line 326
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    invoke-direct {p0, v0, p1, v1, v1}, Landroidx/navigation/NavController;->K(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/l;Landroidx/navigation/Navigator$a;)V

    .line 330
    .line 331
    .line 332
    goto :goto_6

    .line 333
    :cond_d
    invoke-direct {p0}, Landroidx/navigation/NavController;->q()Z

    .line 334
    .line 335
    .line 336
    :goto_6
    return-void
.end method

.method private final R(Landroidx/navigation/Navigator;Landroidx/navigation/NavBackStackEntry;ZLkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput-object p4, p0, Landroidx/navigation/NavController;->z:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    invoke-virtual {p1, p2, p3}, Landroidx/navigation/Navigator;->j(Landroidx/navigation/NavBackStackEntry;Z)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Landroidx/navigation/NavController;->z:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    return-void
.end method

.method private final S(IZZ)Z
    .locals 16

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    move/from16 v7, p3

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    return v2

    .line 19
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->D0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_4

    .line 41
    .line 42
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    .line 47
    .line 48
    invoke-virtual {v4}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    iget-object v5, v6, Landroidx/navigation/NavController;->w:Landroidx/navigation/q;

    .line 53
    .line 54
    invoke-virtual {v4}, Landroidx/navigation/NavDestination;->o()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    invoke-virtual {v5, v9}, Landroidx/navigation/q;->d(Ljava/lang/String;)Landroidx/navigation/Navigator;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    if-nez p2, :cond_2

    .line 63
    .line 64
    invoke-virtual {v4}, Landroidx/navigation/NavDestination;->n()I

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    if-eq v9, v0, :cond_3

    .line 69
    .line 70
    :cond_2
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    :cond_3
    invoke-virtual {v4}, Landroidx/navigation/NavDestination;->n()I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-ne v5, v0, :cond_1

    .line 78
    .line 79
    move-object v9, v4

    .line 80
    goto :goto_0

    .line 81
    :cond_4
    const/4 v9, 0x0

    .line 82
    :goto_0
    if-nez v9, :cond_5

    .line 83
    .line 84
    sget-object v1, Landroidx/navigation/NavDestination;->j:Landroidx/navigation/NavDestination$Companion;

    .line 85
    .line 86
    iget-object v3, v6, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    .line 87
    .line 88
    invoke-virtual {v1, v3, v0}, Landroidx/navigation/NavDestination$Companion;->b(Landroid/content/Context;I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v3, "Ignoring popBackStack to destination "

    .line 98
    .line 99
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v0, " as it was not found on the current back stack"

    .line 106
    .line 107
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    return v2

    .line 111
    :cond_5
    new-instance v10, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 112
    .line 113
    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 114
    .line 115
    .line 116
    new-instance v11, Lkotlin/collections/ArrayDeque;

    .line 117
    .line 118
    invoke-direct {v11}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v12

    .line 125
    :cond_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_7

    .line 130
    .line 131
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    move-object v13, v0

    .line 136
    check-cast v13, Landroidx/navigation/Navigator;

    .line 137
    .line 138
    new-instance v14, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 139
    .line 140
    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    move-object v15, v0

    .line 152
    check-cast v15, Landroidx/navigation/NavBackStackEntry;

    .line 153
    .line 154
    new-instance v5, Landroidx/navigation/NavController$popBackStackInternal$2;

    .line 155
    .line 156
    move-object v0, v5

    .line 157
    move-object v1, v14

    .line 158
    move-object v2, v10

    .line 159
    move-object/from16 v3, p0

    .line 160
    .line 161
    move/from16 v4, p3

    .line 162
    .line 163
    move-object v8, v5

    .line 164
    move-object v5, v11

    .line 165
    invoke-direct/range {v0 .. v5}, Landroidx/navigation/NavController$popBackStackInternal$2;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/navigation/NavController;ZLkotlin/collections/ArrayDeque;)V

    .line 166
    .line 167
    .line 168
    invoke-direct {v6, v13, v15, v7, v8}, Landroidx/navigation/NavController;->R(Landroidx/navigation/Navigator;Landroidx/navigation/NavBackStackEntry;ZLkotlin/jvm/functions/Function1;)V

    .line 169
    .line 170
    .line 171
    iget-boolean v0, v14, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 172
    .line 173
    if-nez v0, :cond_6

    .line 174
    .line 175
    :cond_7
    if-eqz v7, :cond_b

    .line 176
    .line 177
    if-nez p2, :cond_9

    .line 178
    .line 179
    sget-object v0, Landroidx/navigation/NavController$popBackStackInternal$3;->INSTANCE:Landroidx/navigation/NavController$popBackStackInternal$3;

    .line 180
    .line 181
    invoke-static {v9, v0}, Lkotlin/sequences/SequencesKt;->h(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    new-instance v1, Landroidx/navigation/NavController$popBackStackInternal$4;

    .line 186
    .line 187
    invoke-direct {v1, v6}, Landroidx/navigation/NavController$popBackStackInternal$4;-><init>(Landroidx/navigation/NavController;)V

    .line 188
    .line 189
    .line 190
    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->A(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-eqz v1, :cond_9

    .line 203
    .line 204
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    check-cast v1, Landroidx/navigation/NavDestination;

    .line 209
    .line 210
    iget-object v2, v6, Landroidx/navigation/NavController;->m:Ljava/util/Map;

    .line 211
    .line 212
    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->n()I

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-virtual {v11}, Lkotlin/collections/ArrayDeque;->i()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    check-cast v3, Landroidx/navigation/NavBackStackEntryState;

    .line 225
    .line 226
    if-nez v3, :cond_8

    .line 227
    .line 228
    const/4 v3, 0x0

    .line 229
    goto :goto_2

    .line 230
    :cond_8
    invoke-virtual {v3}, Landroidx/navigation/NavBackStackEntryState;->getId()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    :goto_2
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    goto :goto_1

    .line 238
    :cond_9
    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    if-nez v0, :cond_b

    .line 243
    .line 244
    invoke-virtual {v11}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    check-cast v0, Landroidx/navigation/NavBackStackEntryState;

    .line 249
    .line 250
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntryState;->getDestinationId()I

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    invoke-virtual {v6, v1}, Landroidx/navigation/NavController;->s(I)Landroidx/navigation/NavDestination;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    sget-object v2, Landroidx/navigation/NavController$popBackStackInternal$6;->INSTANCE:Landroidx/navigation/NavController$popBackStackInternal$6;

    .line 259
    .line 260
    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt;->h(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    new-instance v2, Landroidx/navigation/NavController$popBackStackInternal$7;

    .line 265
    .line 266
    invoke-direct {v2, v6}, Landroidx/navigation/NavController$popBackStackInternal$7;-><init>(Landroidx/navigation/NavController;)V

    .line 267
    .line 268
    .line 269
    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt;->A(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 278
    .line 279
    .line 280
    move-result v2

    .line 281
    if-eqz v2, :cond_a

    .line 282
    .line 283
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    check-cast v2, Landroidx/navigation/NavDestination;

    .line 288
    .line 289
    iget-object v3, v6, Landroidx/navigation/NavController;->m:Ljava/util/Map;

    .line 290
    .line 291
    invoke-virtual {v2}, Landroidx/navigation/NavDestination;->n()I

    .line 292
    .line 293
    .line 294
    move-result v2

    .line 295
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntryState;->getId()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    goto :goto_3

    .line 307
    :cond_a
    iget-object v1, v6, Landroidx/navigation/NavController;->n:Ljava/util/Map;

    .line 308
    .line 309
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntryState;->getId()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-interface {v1, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    :cond_b
    invoke-direct/range {p0 .. p0}, Landroidx/navigation/NavController;->i0()V

    .line 317
    .line 318
    .line 319
    iget-boolean v0, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 320
    .line 321
    return v0
.end method

.method static synthetic T(Landroidx/navigation/NavController;IZZILjava/lang/Object;)Z
    .locals 0

    .line 1
    if-nez p5, :cond_1

    .line 2
    .line 3
    and-int/lit8 p4, p4, 0x4

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/navigation/NavController;->S(IZZ)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: popBackStackInternal"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method private final U(Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 10
    .line 11
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_a

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/navigation/NavController;->F()Landroidx/navigation/q;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->o()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p1, v1}, Landroidx/navigation/q;->d(Ljava/lang/String;)Landroidx/navigation/Navigator;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object v1, p0, Landroidx/navigation/NavController;->x:Ljava/util/Map;

    .line 41
    .line 42
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    if-nez p1, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p1}, Landroidx/navigation/r;->c()Lkotlinx/coroutines/flow/h1;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-nez p1, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-interface {p1}, Lkotlinx/coroutines/flow/h1;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Ljava/util/Set;

    .line 64
    .line 65
    if-nez p1, :cond_2

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-ne p1, v1, :cond_3

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    :goto_0
    iget-object p1, p0, Landroidx/navigation/NavController;->l:Ljava/util/Map;

    .line 76
    .line 77
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_4

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    const/4 v1, 0x0

    .line 85
    :goto_1
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 94
    .line 95
    invoke-virtual {p1, v2}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_7

    .line 100
    .line 101
    if-eqz p2, :cond_5

    .line 102
    .line 103
    invoke-virtual {v0, v2}, Landroidx/navigation/NavBackStackEntry;->l(Landroidx/lifecycle/Lifecycle$State;)V

    .line 104
    .line 105
    .line 106
    new-instance p1, Landroidx/navigation/NavBackStackEntryState;

    .line 107
    .line 108
    invoke-direct {p1, v0}, Landroidx/navigation/NavBackStackEntryState;-><init>(Landroidx/navigation/NavBackStackEntry;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p3, p1}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    :cond_5
    if-nez v1, :cond_6

    .line 115
    .line 116
    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 117
    .line 118
    invoke-virtual {v0, p1}, Landroidx/navigation/NavBackStackEntry;->l(Landroidx/lifecycle/Lifecycle$State;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v0}, Landroidx/navigation/NavController;->g0(Landroidx/navigation/NavBackStackEntry;)Landroidx/navigation/NavBackStackEntry;

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_6
    invoke-virtual {v0, v2}, Landroidx/navigation/NavBackStackEntry;->l(Landroidx/lifecycle/Lifecycle$State;)V

    .line 126
    .line 127
    .line 128
    :cond_7
    :goto_2
    if-nez p2, :cond_9

    .line 129
    .line 130
    if-nez v1, :cond_9

    .line 131
    .line 132
    iget-object p1, p0, Landroidx/navigation/NavController;->q:Landroidx/navigation/f;

    .line 133
    .line 134
    if-nez p1, :cond_8

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_8
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->g()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    invoke-virtual {p1, p2}, Landroidx/navigation/f;->c(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :cond_9
    :goto_3
    return-void

    .line 145
    :cond_a
    new-instance p2, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string p3, "Attempted to pop "

    .line 151
    .line 152
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string p1, ", which is not the top of the back stack ("

    .line 163
    .line 164
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const/16 p1, 0x29

    .line 175
    .line 176
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 184
    .line 185
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw p2
.end method

.method static synthetic V(Landroidx/navigation/NavController;Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p5, :cond_2

    .line 2
    .line 3
    and-int/lit8 p5, p4, 0x2

    .line 4
    .line 5
    if-eqz p5, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 9
    .line 10
    if-eqz p4, :cond_1

    .line 11
    .line 12
    new-instance p3, Lkotlin/collections/ArrayDeque;

    .line 13
    .line 14
    invoke-direct {p3}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/navigation/NavController;->U(Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 22
    .line 23
    const-string p1, "Super calls with default arguments not supported in this target, function: popEntryFromBackStack"

    .line 24
    .line 25
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p0
.end method

.method private final Y(ILandroid/os/Bundle;Landroidx/navigation/l;Landroidx/navigation/Navigator$a;)Z
    .locals 13

    .line 1
    move-object v6, p0

    .line 2
    const/4 v0, 0x0

    .line 3
    iget-object v1, v6, Landroidx/navigation/NavController;->m:Ljava/util/Map;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    iget-object v1, v6, Landroidx/navigation/NavController;->m:Ljava/util/Map;

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/String;

    .line 27
    .line 28
    iget-object v2, v6, Landroidx/navigation/NavController;->m:Ljava/util/Map;

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/lang/Iterable;

    .line 35
    .line 36
    new-instance v3, Landroidx/navigation/NavController$restoreStateInternal$1;

    .line 37
    .line 38
    invoke-direct {v3, v1}, Landroidx/navigation/NavController$restoreStateInternal$1;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->G(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    .line 42
    .line 43
    .line 44
    iget-object v2, v6, Landroidx/navigation/NavController;->n:Ljava/util/Map;

    .line 45
    .line 46
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lkotlin/collections/ArrayDeque;

    .line 51
    .line 52
    invoke-direct {p0, v1}, Landroidx/navigation/NavController;->H(Lkotlin/collections/ArrayDeque;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    move-object v2, v7

    .line 62
    check-cast v2, Ljava/lang/Iterable;

    .line 63
    .line 64
    new-instance v3, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_2

    .line 78
    .line 79
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    move-object v5, v4

    .line 84
    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    .line 85
    .line 86
    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    instance-of v5, v5, Landroidx/navigation/NavGraph;

    .line 91
    .line 92
    if-nez v5, :cond_1

    .line 93
    .line 94
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_7

    .line 107
    .line 108
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    .line 113
    .line 114
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->v0(Ljava/util/List;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    check-cast v4, Ljava/util/List;

    .line 119
    .line 120
    const/4 v5, 0x0

    .line 121
    if-nez v4, :cond_3

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_3
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->u0(Ljava/util/List;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    check-cast v8, Landroidx/navigation/NavBackStackEntry;

    .line 129
    .line 130
    if-nez v8, :cond_4

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_4
    invoke-virtual {v8}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    if-nez v8, :cond_5

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_5
    invoke-virtual {v8}, Landroidx/navigation/NavDestination;->o()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    :goto_2
    invoke-virtual {v3}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    invoke-virtual {v8}, Landroidx/navigation/NavDestination;->o()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    if-eqz v5, :cond_6

    .line 157
    .line 158
    check-cast v4, Ljava/util/Collection;

    .line 159
    .line 160
    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_6
    const/4 v4, 0x1

    .line 165
    new-array v4, v4, [Landroidx/navigation/NavBackStackEntry;

    .line 166
    .line 167
    aput-object v3, v4, v0

    .line 168
    .line 169
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_7
    new-instance v8, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 178
    .line 179
    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 183
    .line 184
    .line 185
    move-result-object v9

    .line 186
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-eqz v0, :cond_8

    .line 191
    .line 192
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    move-object v10, v0

    .line 197
    check-cast v10, Ljava/util/List;

    .line 198
    .line 199
    iget-object v0, v6, Landroidx/navigation/NavController;->w:Landroidx/navigation/q;

    .line 200
    .line 201
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 206
    .line 207
    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->o()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {v0, v1}, Landroidx/navigation/q;->d(Ljava/lang/String;)Landroidx/navigation/Navigator;

    .line 216
    .line 217
    .line 218
    move-result-object v11

    .line 219
    new-instance v3, Lkotlin/jvm/internal/Ref$IntRef;

    .line 220
    .line 221
    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 222
    .line 223
    .line 224
    new-instance v12, Landroidx/navigation/NavController$restoreStateInternal$4;

    .line 225
    .line 226
    move-object v0, v12

    .line 227
    move-object v1, v8

    .line 228
    move-object v2, v7

    .line 229
    move-object v4, p0

    .line 230
    move-object v5, p2

    .line 231
    invoke-direct/range {v0 .. v5}, Landroidx/navigation/NavController$restoreStateInternal$4;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/List;Lkotlin/jvm/internal/Ref$IntRef;Landroidx/navigation/NavController;Landroid/os/Bundle;)V

    .line 232
    .line 233
    .line 234
    move-object v0, p0

    .line 235
    move-object v1, v11

    .line 236
    move-object v2, v10

    .line 237
    move-object/from16 v3, p3

    .line 238
    .line 239
    move-object/from16 v4, p4

    .line 240
    .line 241
    move-object v5, v12

    .line 242
    invoke-direct/range {v0 .. v5}, Landroidx/navigation/NavController;->L(Landroidx/navigation/Navigator;Ljava/util/List;Landroidx/navigation/l;Landroidx/navigation/Navigator$a;Lkotlin/jvm/functions/Function1;)V

    .line 243
    .line 244
    .line 245
    goto :goto_3

    .line 246
    :cond_8
    iget-boolean v0, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 247
    .line 248
    return v0
.end method

.method public static synthetic a(Landroidx/navigation/NavController;Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/navigation/NavController;->I(Landroidx/navigation/NavController;Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic b(Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/navigation/NavController;->n(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic c(Landroidx/navigation/NavController;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/navigation/NavController;->y:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d(Landroidx/navigation/NavController;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/navigation/NavController;->m:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e()Z
    .locals 1

    .line 1
    sget-boolean v0, Landroidx/navigation/NavController;->H:Z

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic f(Landroidx/navigation/NavController;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/navigation/NavController;->A:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Landroidx/navigation/NavController;)Landroidx/navigation/k;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/navigation/NavController;->c:Landroidx/navigation/k;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Landroidx/navigation/NavController;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/navigation/NavController;->x:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic i(Landroidx/navigation/NavController;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/navigation/NavController;->z:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object p0
.end method

.method private final i0()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavController;->u:Landroidx/activity/u;

    .line 2
    .line 3
    iget-boolean v1, p0, Landroidx/navigation/NavController;->v:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/navigation/NavController;->B()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-le v1, v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v2, 0x0

    .line 16
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/activity/u;->setEnabled(Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static final synthetic j(Landroidx/navigation/NavController;)Landroidx/navigation/f;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/navigation/NavController;->q:Landroidx/navigation/f;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic k(Landroidx/navigation/NavController;)Landroidx/navigation/q;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/navigation/NavController;->w:Landroidx/navigation/q;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic l(Landroidx/navigation/NavController;)Lkotlinx/coroutines/flow/x0;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/navigation/NavController;->i:Lkotlinx/coroutines/flow/x0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic m(Landroidx/navigation/NavController;Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/navigation/NavController;->U(Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final n(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;Ljava/util/List;)V
    .locals 30

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v15, p4

    .line 1
    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v14

    .line 2
    instance-of v0, v14, Landroidx/navigation/b;

    if-nez v0, :cond_0

    .line 3
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v0

    instance-of v0, v0, Landroidx/navigation/b;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->n()I

    move-result v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Landroidx/navigation/NavController;->T(Landroidx/navigation/NavController;IZZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v5, Lkotlin/collections/ArrayDeque;

    invoke-direct {v5}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 7
    instance-of v0, v7, Landroidx/navigation/NavGraph;

    const/16 v18, 0x0

    if-eqz v0, :cond_7

    move-object v0, v14

    .line 8
    :goto_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->p()Landroidx/navigation/NavGraph;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 9
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v15, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 10
    :cond_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    .line 12
    move-object v2, v1

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 13
    invoke-virtual {v2}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_2
    move-object/from16 v1, v18

    .line 14
    :goto_2
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    if-nez v1, :cond_3

    .line 15
    sget-object v8, Landroidx/navigation/NavBackStackEntry;->n:Landroidx/navigation/NavBackStackEntry$a;

    .line 16
    iget-object v9, v6, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->D()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v12

    iget-object v13, v6, Landroidx/navigation/NavController;->q:Landroidx/navigation/f;

    const/16 v16, 0x60

    const/16 v17, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v10, v4

    move-object/from16 v11, p2

    move-object/from16 v19, v14

    move-object v14, v0

    move-object v15, v1

    .line 18
    invoke-static/range {v8 .. v17}, Landroidx/navigation/NavBackStackEntry$a;->b(Landroidx/navigation/NavBackStackEntry$a;Landroid/content/Context;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/p;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object/from16 v19, v14

    .line 19
    :goto_3
    invoke-virtual {v5, v1}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 20
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v0

    if-ne v0, v4, :cond_4

    .line 21
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object v13, v4

    move v4, v8

    move-object v8, v5

    move-object v5, v9

    invoke-static/range {v0 .. v5}, Landroidx/navigation/NavController;->V(Landroidx/navigation/NavController;Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;ILjava/lang/Object;)V

    goto :goto_4

    :cond_4
    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object v13, v4

    move-object v8, v5

    goto :goto_4

    :cond_5
    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object v13, v4

    move-object v8, v5

    move-object/from16 v19, v14

    move-object v12, v15

    :goto_4
    if-eqz v13, :cond_8

    if-ne v13, v7, :cond_6

    goto :goto_5

    :cond_6
    move-object v5, v8

    move-object v15, v12

    move-object v0, v13

    move-object/from16 v14, v19

    goto/16 :goto_1

    :cond_7
    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object v8, v5

    move-object/from16 v19, v14

    move-object v12, v15

    .line 22
    :cond_8
    :goto_5
    invoke-virtual {v8}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    move-object/from16 v14, v19

    goto :goto_6

    :cond_9
    invoke-virtual {v8}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v14

    :cond_a
    :goto_6
    if-eqz v14, :cond_e

    .line 23
    invoke-virtual {v14}, Landroidx/navigation/NavDestination;->n()I

    move-result v0

    invoke-virtual {v6, v0}, Landroidx/navigation/NavController;->s(I)Landroidx/navigation/NavDestination;

    move-result-object v0

    if-nez v0, :cond_e

    .line 24
    invoke-virtual {v14}, Landroidx/navigation/NavDestination;->p()Landroidx/navigation/NavGraph;

    move-result-object v14

    if-eqz v14, :cond_a

    .line 25
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v12, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 26
    :cond_b
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 27
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    .line 28
    move-object v2, v1

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 29
    invoke-virtual {v2}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v2

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_7

    :cond_c
    move-object/from16 v1, v18

    .line 30
    :goto_7
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    if-nez v1, :cond_d

    .line 31
    sget-object v20, Landroidx/navigation/NavBackStackEntry;->n:Landroidx/navigation/NavBackStackEntry$a;

    .line 32
    iget-object v0, v6, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    invoke-virtual {v14, v10}, Landroidx/navigation/NavDestination;->f(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->D()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v24

    .line 33
    iget-object v1, v6, Landroidx/navigation/NavController;->q:Landroidx/navigation/f;

    const/16 v28, 0x60

    const/16 v29, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v21, v0

    move-object/from16 v22, v14

    move-object/from16 v25, v1

    .line 34
    invoke-static/range {v20 .. v29}, Landroidx/navigation/NavBackStackEntry$a;->b(Landroidx/navigation/NavBackStackEntry$a;Landroid/content/Context;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/p;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v1

    .line 35
    :cond_d
    invoke-virtual {v8, v1}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_6

    .line 36
    :cond_e
    invoke-virtual {v8}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    move-object/from16 v14, v19

    goto :goto_8

    .line 37
    :cond_f
    invoke-virtual {v8}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v14

    .line 38
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v0

    instance-of v0, v0, Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_10

    .line 39
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavGraph;

    .line 40
    invoke-virtual {v14}, Landroidx/navigation/NavDestination;->n()I

    move-result v1

    const/4 v2, 0x0

    .line 41
    invoke-virtual {v0, v1, v2}, Landroidx/navigation/NavGraph;->B(IZ)Landroidx/navigation/NavDestination;

    move-result-object v0

    if-nez v0, :cond_10

    .line 42
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Landroidx/navigation/NavController;->V(Landroidx/navigation/NavController;Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;ILjava/lang/Object;)V

    goto :goto_8

    .line 43
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    if-nez v0, :cond_11

    invoke-virtual {v8}, Lkotlin/collections/ArrayDeque;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    :cond_11
    if-nez v0, :cond_12

    move-object/from16 v0, v18

    goto :goto_9

    .line 44
    :cond_12
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v0

    :goto_9
    iget-object v1, v6, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 45
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v12, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 46
    :cond_13
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 47
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    .line 48
    move-object v2, v1

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 49
    invoke-virtual {v2}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v2

    iget-object v3, v6, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v18, v1

    .line 50
    :cond_14
    check-cast v18, Landroidx/navigation/NavBackStackEntry;

    if-nez v18, :cond_15

    .line 51
    sget-object v19, Landroidx/navigation/NavBackStackEntry;->n:Landroidx/navigation/NavBackStackEntry$a;

    .line 52
    iget-object v0, v6, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    iget-object v1, v6, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v2, v6, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v2, v10}, Landroidx/navigation/NavDestination;->f(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->D()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v23

    .line 53
    iget-object v2, v6, Landroidx/navigation/NavController;->q:Landroidx/navigation/f;

    const/16 v27, 0x60

    const/16 v28, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v20, v0

    move-object/from16 v21, v1

    move-object/from16 v24, v2

    .line 54
    invoke-static/range {v19 .. v28}, Landroidx/navigation/NavBackStackEntry$a;->b(Landroidx/navigation/NavBackStackEntry$a;Landroid/content/Context;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/p;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v18

    :cond_15
    move-object/from16 v0, v18

    .line 55
    invoke-virtual {v8, v0}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 56
    :cond_16
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 57
    iget-object v2, v6, Landroidx/navigation/NavController;->w:Landroidx/navigation/q;

    .line 58
    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/navigation/NavDestination;->o()Ljava/lang/String;

    move-result-object v3

    .line 59
    invoke-virtual {v2, v3}, Landroidx/navigation/q;->d(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v2

    .line 60
    iget-object v3, v6, Landroidx/navigation/NavController;->x:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_17

    check-cast v2, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 61
    invoke-virtual {v2, v1}, Landroidx/navigation/NavController$NavControllerNavigatorState;->k(Landroidx/navigation/NavBackStackEntry;)V

    goto :goto_a

    .line 62
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NavigatorBackStack for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroidx/navigation/NavDestination;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " should already be created"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0, v8}, Lkotlin/collections/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 65
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0, v11}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-static {v8, v11}, Lkotlin/collections/CollectionsKt;->C0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 67
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 68
    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/navigation/NavDestination;->p()Landroidx/navigation/NavGraph;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 69
    invoke-virtual {v2}, Landroidx/navigation/NavDestination;->n()I

    move-result v2

    invoke-virtual {v6, v2}, Landroidx/navigation/NavController;->w(I)Landroidx/navigation/NavBackStackEntry;

    move-result-object v2

    invoke-direct {v6, v1, v2}, Landroidx/navigation/NavController;->J(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavBackStackEntry;)V

    goto :goto_b

    :cond_1a
    return-void
.end method

.method static synthetic o(Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;Ljava/util/List;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p6, :cond_1

    .line 2
    .line 3
    and-int/lit8 p5, p5, 0x8

    .line 4
    .line 5
    if-eqz p5, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p4

    .line 11
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/navigation/NavController;->n(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 16
    .line 17
    const-string p1, "Super calls with default arguments not supported in this target, function: addEntryToBackStack"

    .line 18
    .line 19
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method

.method private final p(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavController;->x:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Iterable;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroidx/navigation/r;->i(Z)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0, v0, v0}, Landroidx/navigation/NavController;->Y(ILandroid/os/Bundle;Landroidx/navigation/l;Landroidx/navigation/Navigator$a;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget-object v1, p0, Landroidx/navigation/NavController;->x:Ljava/util/Map;

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Ljava/lang/Iterable;

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    const/4 v4, 0x0

    .line 52
    if-eqz v3, :cond_1

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Landroidx/navigation/r;->i(Z)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    if-eqz v0, :cond_2

    .line 65
    .line 66
    invoke-direct {p0, p1, v2, v4}, Landroidx/navigation/NavController;->S(IZZ)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_2
    move v2, v4

    .line 74
    :goto_2
    return v2
.end method

.method private final q()Z
    .locals 7

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    instance-of v0, v0, Landroidx/navigation/NavGraph;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    move-object v2, v0

    .line 38
    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 39
    .line 40
    const/4 v5, 0x6

    .line 41
    const/4 v6, 0x0

    .line 42
    const/4 v3, 0x0

    .line 43
    const/4 v4, 0x0

    .line 44
    move-object v1, p0

    .line 45
    invoke-static/range {v1 .. v6}, Landroidx/navigation/NavController;->V(Landroidx/navigation/NavController;Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->l()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    iget-object v1, p0, Landroidx/navigation/NavController;->C:Ljava/util/List;

    .line 62
    .line 63
    check-cast v1, Ljava/util/Collection;

    .line 64
    .line 65
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    :cond_1
    iget v1, p0, Landroidx/navigation/NavController;->B:I

    .line 69
    .line 70
    const/4 v2, 0x1

    .line 71
    add-int/2addr v1, v2

    .line 72
    iput v1, p0, Landroidx/navigation/NavController;->B:I

    .line 73
    .line 74
    invoke-virtual {p0}, Landroidx/navigation/NavController;->h0()V

    .line 75
    .line 76
    .line 77
    iget v1, p0, Landroidx/navigation/NavController;->B:I

    .line 78
    .line 79
    add-int/lit8 v1, v1, -0x1

    .line 80
    .line 81
    iput v1, p0, Landroidx/navigation/NavController;->B:I

    .line 82
    .line 83
    if-nez v1, :cond_4

    .line 84
    .line 85
    iget-object v1, p0, Landroidx/navigation/NavController;->C:Ljava/util/List;

    .line 86
    .line 87
    check-cast v1, Ljava/util/Collection;

    .line 88
    .line 89
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iget-object v3, p0, Landroidx/navigation/NavController;->C:Ljava/util/List;

    .line 94
    .line 95
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 96
    .line 97
    .line 98
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_3

    .line 107
    .line 108
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    .line 113
    .line 114
    iget-object v4, p0, Landroidx/navigation/NavController;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 115
    .line 116
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-nez v5, :cond_2

    .line 125
    .line 126
    iget-object v4, p0, Landroidx/navigation/NavController;->E:Lkotlinx/coroutines/flow/w0;

    .line 127
    .line 128
    invoke-interface {v4, v3}, Lkotlinx/coroutines/flow/w0;->b(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-static {v0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3}, Landroidx/navigation/NavBackStackEntry;->d()Landroid/os/Bundle;

    .line 143
    .line 144
    .line 145
    const/4 v0, 0x0

    .line 146
    throw v0

    .line 147
    :cond_3
    iget-object v1, p0, Landroidx/navigation/NavController;->i:Lkotlinx/coroutines/flow/x0;

    .line 148
    .line 149
    invoke-virtual {p0}, Landroidx/navigation/NavController;->W()Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-interface {v1, v3}, Lkotlinx/coroutines/flow/w0;->b(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    :cond_4
    if-eqz v0, :cond_5

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_5
    const/4 v2, 0x0

    .line 160
    :goto_2
    return v2
.end method

.method private final t(Landroidx/navigation/NavDestination;I)Landroidx/navigation/NavDestination;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->n()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne v0, p2, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    instance-of v0, p1, Landroidx/navigation/NavGraph;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    check-cast p1, Landroidx/navigation/NavGraph;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->p()Landroidx/navigation/NavGraph;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {p1, p2}, Landroidx/navigation/NavGraph;->A(I)Landroidx/navigation/NavDestination;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method private final u([I)Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    .line 2
    .line 3
    array-length v1, p1

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    const/4 v3, 0x0

    .line 6
    if-ge v2, v1, :cond_4

    .line 7
    .line 8
    add-int/lit8 v4, v2, 0x1

    .line 9
    .line 10
    aget v5, p1, v2

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    iget-object v6, p0, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    .line 15
    .line 16
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v6}, Landroidx/navigation/NavDestination;->n()I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    if-ne v6, v5, :cond_1

    .line 24
    .line 25
    iget-object v3, p0, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v5}, Landroidx/navigation/NavGraph;->A(I)Landroidx/navigation/NavDestination;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    :cond_1
    :goto_1
    if-nez v3, :cond_2

    .line 36
    .line 37
    sget-object p1, Landroidx/navigation/NavDestination;->j:Landroidx/navigation/NavDestination$Companion;

    .line 38
    .line 39
    iget-object v0, p0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {p1, v0, v5}, Landroidx/navigation/NavDestination$Companion;->b(Landroid/content/Context;I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1

    .line 46
    :cond_2
    array-length v5, p1

    .line 47
    add-int/lit8 v5, v5, -0x1

    .line 48
    .line 49
    if-eq v2, v5, :cond_3

    .line 50
    .line 51
    instance-of v2, v3, Landroidx/navigation/NavGraph;

    .line 52
    .line 53
    if-eqz v2, :cond_3

    .line 54
    .line 55
    check-cast v3, Landroidx/navigation/NavGraph;

    .line 56
    .line 57
    move-object v0, v3

    .line 58
    :goto_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->G()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    invoke-virtual {v0, v2}, Landroidx/navigation/NavGraph;->A(I)Landroidx/navigation/NavDestination;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    instance-of v2, v2, Landroidx/navigation/NavGraph;

    .line 70
    .line 71
    if-eqz v2, :cond_3

    .line 72
    .line 73
    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->G()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    invoke-virtual {v0, v2}, Landroidx/navigation/NavGraph;->A(I)Landroidx/navigation/NavDestination;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Landroidx/navigation/NavGraph;

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_3
    move v2, v4

    .line 85
    goto :goto_0

    .line 86
    :cond_4
    return-object v3
.end method


# virtual methods
.method public A()Landroidx/navigation/NavDestination;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/navigation/NavController;->z()Landroidx/navigation/NavBackStackEntry;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    return-object v0
.end method

.method public C()Landroidx/navigation/NavGraph;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    .line 9
    .line 10
    const-string v1, "null cannot be cast to non-null type androidx.navigation.NavGraph"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0

    .line 16
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v1, "You must call setGraph() before calling getGraph()"

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public final D()Landroidx/lifecycle/Lifecycle$State;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavController;->o:Landroidx/lifecycle/u;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->s:Landroidx/lifecycle/Lifecycle$State;

    .line 9
    .line 10
    :goto_0
    return-object v0
.end method

.method public E()Landroidx/navigation/k;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavController;->D:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/navigation/k;

    .line 8
    .line 9
    return-object v0
.end method

.method public F()Landroidx/navigation/q;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavController;->w:Landroidx/navigation/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public G(Landroid/content/Intent;)Z
    .locals 20

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const/4 v7, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v7

    .line 9
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v8, 0x0

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    move-object v2, v8

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const-string v2, "android-support-nav:controller:deepLinkIds"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    :goto_0
    if-nez v1, :cond_2

    .line 25
    .line 26
    move-object v3, v8

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    const-string v3, "android-support-nav:controller:deepLinkArgs"

    .line 29
    .line 30
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    :goto_1
    new-instance v4, Landroid/os/Bundle;

    .line 35
    .line 36
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 37
    .line 38
    .line 39
    if-nez v1, :cond_3

    .line 40
    .line 41
    move-object v1, v8

    .line 42
    goto :goto_2

    .line 43
    :cond_3
    const-string v5, "android-support-nav:controller:deepLinkExtras"

    .line 44
    .line 45
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    :goto_2
    if-eqz v1, :cond_4

    .line 50
    .line 51
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 52
    .line 53
    .line 54
    :cond_4
    const/4 v9, 0x1

    .line 55
    if-eqz v2, :cond_5

    .line 56
    .line 57
    array-length v1, v2

    .line 58
    if-nez v1, :cond_7

    .line 59
    .line 60
    :cond_5
    iget-object v1, v6, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    .line 61
    .line 62
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    new-instance v5, Landroidx/navigation/g;

    .line 66
    .line 67
    invoke-direct {v5, v0}, Landroidx/navigation/g;-><init>(Landroid/content/Intent;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v5}, Landroidx/navigation/NavGraph;->r(Landroidx/navigation/g;)Landroidx/navigation/NavDestination$a;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    if-eqz v1, :cond_7

    .line 75
    .line 76
    invoke-virtual {v1}, Landroidx/navigation/NavDestination$a;->b()Landroidx/navigation/NavDestination;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-static {v2, v8, v9, v8}, Landroidx/navigation/NavDestination;->j(Landroidx/navigation/NavDestination;Landroidx/navigation/NavDestination;ILjava/lang/Object;)[I

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v1}, Landroidx/navigation/NavDestination$a;->d()Landroid/os/Bundle;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v2, v1}, Landroidx/navigation/NavDestination;->f(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    if-eqz v1, :cond_6

    .line 93
    .line 94
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 95
    .line 96
    .line 97
    :cond_6
    move-object v10, v3

    .line 98
    move-object v3, v8

    .line 99
    goto :goto_3

    .line 100
    :cond_7
    move-object v10, v2

    .line 101
    :goto_3
    if-eqz v10, :cond_17

    .line 102
    .line 103
    array-length v1, v10

    .line 104
    if-nez v1, :cond_8

    .line 105
    .line 106
    goto/16 :goto_b

    .line 107
    .line 108
    :cond_8
    invoke-direct {v6, v10}, Landroidx/navigation/NavController;->u([I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    if-eqz v1, :cond_9

    .line 113
    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    const-string v3, "Could not find destination "

    .line 120
    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v1, " in the navigation graph, ignoring the deep link from "

    .line 128
    .line 129
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    return v7

    .line 136
    :cond_9
    const-string v1, "android-support-nav:controller:deepLinkIntent"

    .line 137
    .line 138
    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 139
    .line 140
    .line 141
    array-length v1, v10

    .line 142
    new-array v11, v1, [Landroid/os/Bundle;

    .line 143
    .line 144
    move v2, v7

    .line 145
    :goto_4
    if-ge v2, v1, :cond_b

    .line 146
    .line 147
    add-int/lit8 v5, v2, 0x1

    .line 148
    .line 149
    new-instance v12, Landroid/os/Bundle;

    .line 150
    .line 151
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v12, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 155
    .line 156
    .line 157
    if-eqz v3, :cond_a

    .line 158
    .line 159
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v13

    .line 163
    check-cast v13, Landroid/os/Bundle;

    .line 164
    .line 165
    if-eqz v13, :cond_a

    .line 166
    .line 167
    invoke-virtual {v12, v13}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 168
    .line 169
    .line 170
    :cond_a
    aput-object v12, v11, v2

    .line 171
    .line 172
    move v2, v5

    .line 173
    goto :goto_4

    .line 174
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    const/high16 v2, 0x10000000

    .line 179
    .line 180
    and-int/2addr v2, v1

    .line 181
    if-eqz v2, :cond_d

    .line 182
    .line 183
    const v3, 0x8000

    .line 184
    .line 185
    .line 186
    and-int/2addr v1, v3

    .line 187
    if-nez v1, :cond_d

    .line 188
    .line 189
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 190
    .line 191
    .line 192
    iget-object v1, v6, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    .line 193
    .line 194
    invoke-static {v1}, Landroidx/core/app/b0;->f(Landroid/content/Context;)Landroidx/core/app/b0;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {v1, v0}, Landroidx/core/app/b0;->b(Landroid/content/Intent;)Landroidx/core/app/b0;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    const-string v1, "create(context)\n        \u2026ntWithParentStack(intent)"

    .line 203
    .line 204
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0}, Landroidx/core/app/b0;->g()V

    .line 208
    .line 209
    .line 210
    iget-object v0, v6, Landroidx/navigation/NavController;->b:Landroid/app/Activity;

    .line 211
    .line 212
    if-nez v0, :cond_c

    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_c
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v7, v7}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 219
    .line 220
    .line 221
    :goto_5
    return v9

    .line 222
    :cond_d
    const-string v12, "Deep Linking failed: destination "

    .line 223
    .line 224
    if-eqz v2, :cond_11

    .line 225
    .line 226
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-nez v0, :cond_e

    .line 235
    .line 236
    iget-object v0, v6, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    .line 237
    .line 238
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->n()I

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    const/4 v4, 0x4

    .line 246
    const/4 v5, 0x0

    .line 247
    const/4 v2, 0x1

    .line 248
    const/4 v3, 0x0

    .line 249
    move-object/from16 v0, p0

    .line 250
    .line 251
    invoke-static/range {v0 .. v5}, Landroidx/navigation/NavController;->T(Landroidx/navigation/NavController;IZZILjava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    :cond_e
    :goto_6
    array-length v0, v10

    .line 255
    if-ge v7, v0, :cond_10

    .line 256
    .line 257
    aget v0, v10, v7

    .line 258
    .line 259
    add-int/lit8 v1, v7, 0x1

    .line 260
    .line 261
    aget-object v2, v11, v7

    .line 262
    .line 263
    invoke-virtual {v6, v0}, Landroidx/navigation/NavController;->s(I)Landroidx/navigation/NavDestination;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    if-eqz v3, :cond_f

    .line 268
    .line 269
    new-instance v0, Landroidx/navigation/NavController$handleDeepLink$2;

    .line 270
    .line 271
    invoke-direct {v0, v3, v6}, Landroidx/navigation/NavController$handleDeepLink$2;-><init>(Landroidx/navigation/NavDestination;Landroidx/navigation/NavController;)V

    .line 272
    .line 273
    .line 274
    invoke-static {v0}, Landroidx/navigation/n;->a(Lkotlin/jvm/functions/Function1;)Landroidx/navigation/l;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-direct {v6, v3, v2, v0, v8}, Landroidx/navigation/NavController;->K(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/l;Landroidx/navigation/Navigator$a;)V

    .line 279
    .line 280
    .line 281
    move v7, v1

    .line 282
    goto :goto_6

    .line 283
    :cond_f
    sget-object v1, Landroidx/navigation/NavDestination;->j:Landroidx/navigation/NavDestination$Companion;

    .line 284
    .line 285
    iget-object v2, v6, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    .line 286
    .line 287
    invoke-virtual {v1, v2, v0}, Landroidx/navigation/NavDestination$Companion;->b(Landroid/content/Context;I)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 292
    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    const-string v0, " cannot be found from the current destination "

    .line 305
    .line 306
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->A()Landroidx/navigation/NavDestination;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    throw v1

    .line 324
    :cond_10
    return v9

    .line 325
    :cond_11
    iget-object v0, v6, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    .line 326
    .line 327
    array-length v1, v10

    .line 328
    move v2, v7

    .line 329
    :goto_7
    if-ge v2, v1, :cond_16

    .line 330
    .line 331
    add-int/lit8 v3, v2, 0x1

    .line 332
    .line 333
    aget v4, v10, v2

    .line 334
    .line 335
    aget-object v5, v11, v2

    .line 336
    .line 337
    if-nez v2, :cond_12

    .line 338
    .line 339
    iget-object v13, v6, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    .line 340
    .line 341
    goto :goto_8

    .line 342
    :cond_12
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v0, v4}, Landroidx/navigation/NavGraph;->A(I)Landroidx/navigation/NavDestination;

    .line 346
    .line 347
    .line 348
    move-result-object v13

    .line 349
    :goto_8
    if-eqz v13, :cond_15

    .line 350
    .line 351
    array-length v4, v10

    .line 352
    sub-int/2addr v4, v9

    .line 353
    if-eq v2, v4, :cond_14

    .line 354
    .line 355
    instance-of v2, v13, Landroidx/navigation/NavGraph;

    .line 356
    .line 357
    if-eqz v2, :cond_13

    .line 358
    .line 359
    check-cast v13, Landroidx/navigation/NavGraph;

    .line 360
    .line 361
    move-object v0, v13

    .line 362
    :goto_9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->G()I

    .line 366
    .line 367
    .line 368
    move-result v2

    .line 369
    invoke-virtual {v0, v2}, Landroidx/navigation/NavGraph;->A(I)Landroidx/navigation/NavDestination;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    instance-of v2, v2, Landroidx/navigation/NavGraph;

    .line 374
    .line 375
    if-eqz v2, :cond_13

    .line 376
    .line 377
    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->G()I

    .line 378
    .line 379
    .line 380
    move-result v2

    .line 381
    invoke-virtual {v0, v2}, Landroidx/navigation/NavGraph;->A(I)Landroidx/navigation/NavDestination;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    check-cast v0, Landroidx/navigation/NavGraph;

    .line 386
    .line 387
    goto :goto_9

    .line 388
    :cond_13
    :goto_a
    move v2, v3

    .line 389
    goto :goto_7

    .line 390
    :cond_14
    new-instance v14, Landroidx/navigation/l$a;

    .line 391
    .line 392
    invoke-direct {v14}, Landroidx/navigation/l$a;-><init>()V

    .line 393
    .line 394
    .line 395
    iget-object v2, v6, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    .line 396
    .line 397
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v2}, Landroidx/navigation/NavDestination;->n()I

    .line 401
    .line 402
    .line 403
    move-result v15

    .line 404
    const/16 v18, 0x4

    .line 405
    .line 406
    const/16 v19, 0x0

    .line 407
    .line 408
    const/16 v16, 0x1

    .line 409
    .line 410
    const/16 v17, 0x0

    .line 411
    .line 412
    invoke-static/range {v14 .. v19}, Landroidx/navigation/l$a;->i(Landroidx/navigation/l$a;IZZILjava/lang/Object;)Landroidx/navigation/l$a;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    invoke-virtual {v2, v7}, Landroidx/navigation/l$a;->b(I)Landroidx/navigation/l$a;

    .line 417
    .line 418
    .line 419
    move-result-object v2

    .line 420
    invoke-virtual {v2, v7}, Landroidx/navigation/l$a;->c(I)Landroidx/navigation/l$a;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    invoke-virtual {v2}, Landroidx/navigation/l$a;->a()Landroidx/navigation/l;

    .line 425
    .line 426
    .line 427
    move-result-object v2

    .line 428
    invoke-direct {v6, v13, v5, v2, v8}, Landroidx/navigation/NavController;->K(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/l;Landroidx/navigation/Navigator$a;)V

    .line 429
    .line 430
    .line 431
    goto :goto_a

    .line 432
    :cond_15
    sget-object v1, Landroidx/navigation/NavDestination;->j:Landroidx/navigation/NavDestination$Companion;

    .line 433
    .line 434
    iget-object v2, v6, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    .line 435
    .line 436
    invoke-virtual {v1, v2, v4}, Landroidx/navigation/NavDestination$Companion;->b(Landroid/content/Context;I)Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v1

    .line 440
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 441
    .line 442
    new-instance v3, Ljava/lang/StringBuilder;

    .line 443
    .line 444
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    const-string v1, " cannot be found in graph "

    .line 454
    .line 455
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    throw v2

    .line 469
    :cond_16
    iput-boolean v9, v6, Landroidx/navigation/NavController;->g:Z

    .line 470
    .line 471
    return v9

    .line 472
    :cond_17
    :goto_b
    return v7
.end method

.method public N()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroidx/navigation/NavController;->A()Landroidx/navigation/NavDestination;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->n()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-virtual {p0, v0, v1}, Landroidx/navigation/NavController;->O(IZ)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    :goto_0
    return v0
.end method

.method public O(IZ)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Landroidx/navigation/NavController;->P(IZZ)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public P(IZZ)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/navigation/NavController;->S(IZZ)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/navigation/NavController;->q()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method public final Q(Landroidx/navigation/NavBackStackEntry;Lkotlin/jvm/functions/Function0;)V
    .locals 9

    .line 1
    const-string v0, "popUpTo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "onComplete"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lkotlin/collections/ArrayDeque;->indexOf(Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-gez v0, :cond_0

    .line 20
    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v0, "Ignoring pop of "

    .line 27
    .line 28
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p1, " as it was not found on the current back stack"

    .line 35
    .line 36
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    const/4 v1, 0x1

    .line 41
    add-int/2addr v0, v1

    .line 42
    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2}, Lkotlin/collections/AbstractMutableList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eq v0, v2, :cond_1

    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2, v0}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->n()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    const/4 v2, 0x0

    .line 71
    invoke-direct {p0, v0, v1, v2}, Landroidx/navigation/NavController;->S(IZZ)Z

    .line 72
    .line 73
    .line 74
    :cond_1
    const/4 v7, 0x6

    .line 75
    const/4 v8, 0x0

    .line 76
    const/4 v5, 0x0

    .line 77
    const/4 v6, 0x0

    .line 78
    move-object v3, p0

    .line 79
    move-object v4, p1

    .line 80
    invoke-static/range {v3 .. v8}, Landroidx/navigation/NavController;->V(Landroidx/navigation/NavController;Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    invoke-direct {p0}, Landroidx/navigation/NavController;->i0()V

    .line 87
    .line 88
    .line 89
    invoke-direct {p0}, Landroidx/navigation/NavController;->q()Z

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public final W()Ljava/util/List;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/navigation/NavController;->x:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/Iterable;

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 29
    .line 30
    invoke-virtual {v2}, Landroidx/navigation/r;->c()Lkotlinx/coroutines/flow/h1;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {v2}, Lkotlinx/coroutines/flow/h1;->getValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ljava/lang/Iterable;

    .line 39
    .line 40
    new-instance v3, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_1

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    move-object v5, v4

    .line 60
    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    .line 61
    .line 62
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-nez v6, :cond_0

    .line 67
    .line 68
    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {v5}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    sget-object v6, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 77
    .line 78
    invoke-virtual {v5, v6}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-nez v5, :cond_0

    .line 83
    .line 84
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    new-instance v2, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-eqz v3, :cond_4

    .line 110
    .line 111
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    move-object v4, v3

    .line 116
    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    .line 117
    .line 118
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    if-nez v5, :cond_3

    .line 123
    .line 124
    invoke-virtual {v4}, Landroidx/navigation/NavBackStackEntry;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-virtual {v4}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 133
    .line 134
    invoke-virtual {v4, v5}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    if-eqz v4, :cond_3

    .line 139
    .line 140
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_4
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 145
    .line 146
    .line 147
    new-instance v1, Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_6

    .line 161
    .line 162
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    move-object v3, v2

    .line 167
    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    .line 168
    .line 169
    invoke-virtual {v3}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    instance-of v3, v3, Landroidx/navigation/NavGraph;

    .line 174
    .line 175
    if-nez v3, :cond_5

    .line 176
    .line 177
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_6
    return-object v1
.end method

.method public X(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "android-support-nav:controller:navigatorState"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Landroidx/navigation/NavController;->e:Landroid/os/Bundle;

    .line 20
    .line 21
    const-string v0, "android-support-nav:controller:backStack"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Landroidx/navigation/NavController;->f:[Landroid/os/Parcelable;

    .line 28
    .line 29
    iget-object v0, p0, Landroidx/navigation/NavController;->n:Ljava/util/Map;

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 32
    .line 33
    .line 34
    const-string v0, "android-support-nav:controller:backStackDestIds"

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "android-support-nav:controller:backStackIds"

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    array-length v2, v0

    .line 51
    const/4 v3, 0x0

    .line 52
    move v4, v3

    .line 53
    :goto_0
    if-ge v3, v2, :cond_1

    .line 54
    .line 55
    aget v5, v0, v3

    .line 56
    .line 57
    add-int/lit8 v3, v3, 0x1

    .line 58
    .line 59
    add-int/lit8 v6, v4, 0x1

    .line 60
    .line 61
    iget-object v7, p0, Landroidx/navigation/NavController;->m:Ljava/util/Map;

    .line 62
    .line 63
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-interface {v7, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move v4, v6

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    const-string v0, "android-support-nav:controller:backStackStates"

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-nez v0, :cond_2

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_6

    .line 94
    .line 95
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    check-cast v1, Ljava/lang/String;

    .line 100
    .line 101
    const-string v2, "android-support-nav:controller:backStackStates:"

    .line 102
    .line 103
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->q(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    if-eqz v2, :cond_3

    .line 112
    .line 113
    iget-object v3, p0, Landroidx/navigation/NavController;->n:Ljava/util/Map;

    .line 114
    .line 115
    const-string v4, "id"

    .line 116
    .line 117
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    new-instance v4, Lkotlin/collections/ArrayDeque;

    .line 121
    .line 122
    array-length v5, v2

    .line 123
    invoke-direct {v4, v5}, Lkotlin/collections/ArrayDeque;-><init>(I)V

    .line 124
    .line 125
    .line 126
    invoke-static {v2}, Lkotlin/jvm/internal/ArrayIteratorKt;->a([Ljava/lang/Object;)Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    if-eqz v5, :cond_5

    .line 135
    .line 136
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    check-cast v5, Landroid/os/Parcelable;

    .line 141
    .line 142
    if-eqz v5, :cond_4

    .line 143
    .line 144
    check-cast v5, Landroidx/navigation/NavBackStackEntryState;

    .line 145
    .line 146
    invoke-virtual {v4, v5}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    .line 151
    .line 152
    const-string v0, "null cannot be cast to non-null type androidx.navigation.NavBackStackEntryState"

    .line 153
    .line 154
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p1

    .line 158
    :cond_5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 159
    .line 160
    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_6
    :goto_3
    const-string v0, "android-support-nav:controller:deepLinkHandled"

    .line 165
    .line 166
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    iput-boolean p1, p0, Landroidx/navigation/NavController;->g:Z

    .line 171
    .line 172
    return-void
.end method

.method public Z()Landroid/os/Bundle;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Landroidx/navigation/NavController;->w:Landroidx/navigation/q;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroidx/navigation/q;->e()Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/util/Map$Entry;

    .line 36
    .line 37
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Ljava/lang/String;

    .line 42
    .line 43
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Landroidx/navigation/Navigator;

    .line 48
    .line 49
    invoke-virtual {v3}, Landroidx/navigation/Navigator;->i()Landroid/os/Bundle;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    if-eqz v3, :cond_0

    .line 54
    .line 55
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-nez v2, :cond_2

    .line 67
    .line 68
    new-instance v2, Landroid/os/Bundle;

    .line 69
    .line 70
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v3, "android-support-nav:controller:navigatorState:names"

    .line 74
    .line 75
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 76
    .line 77
    .line 78
    const-string v0, "android-support-nav:controller:navigatorState"

    .line 79
    .line 80
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    const/4 v2, 0x0

    .line 85
    :goto_1
    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    const/4 v1, 0x0

    .line 94
    if-nez v0, :cond_5

    .line 95
    .line 96
    if-nez v2, :cond_3

    .line 97
    .line 98
    new-instance v2, Landroid/os/Bundle;

    .line 99
    .line 100
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 101
    .line 102
    .line 103
    :cond_3
    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lkotlin/collections/AbstractMutableList;->size()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    new-array v0, v0, [Landroid/os/Parcelable;

    .line 112
    .line 113
    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    move v4, v1

    .line 122
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    if-eqz v5, :cond_4

    .line 127
    .line 128
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    .line 133
    .line 134
    add-int/lit8 v6, v4, 0x1

    .line 135
    .line 136
    new-instance v7, Landroidx/navigation/NavBackStackEntryState;

    .line 137
    .line 138
    invoke-direct {v7, v5}, Landroidx/navigation/NavBackStackEntryState;-><init>(Landroidx/navigation/NavBackStackEntry;)V

    .line 139
    .line 140
    .line 141
    aput-object v7, v0, v4

    .line 142
    .line 143
    move v4, v6

    .line 144
    goto :goto_2

    .line 145
    :cond_4
    const-string v3, "android-support-nav:controller:backStack"

    .line 146
    .line 147
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 148
    .line 149
    .line 150
    :cond_5
    iget-object v0, p0, Landroidx/navigation/NavController;->m:Ljava/util/Map;

    .line 151
    .line 152
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-nez v0, :cond_8

    .line 157
    .line 158
    if-nez v2, :cond_6

    .line 159
    .line 160
    new-instance v2, Landroid/os/Bundle;

    .line 161
    .line 162
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 163
    .line 164
    .line 165
    :cond_6
    iget-object v0, p0, Landroidx/navigation/NavController;->m:Ljava/util/Map;

    .line 166
    .line 167
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    new-array v0, v0, [I

    .line 172
    .line 173
    new-instance v3, Ljava/util/ArrayList;

    .line 174
    .line 175
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .line 177
    .line 178
    iget-object v4, p0, Landroidx/navigation/NavController;->m:Ljava/util/Map;

    .line 179
    .line 180
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    move v5, v1

    .line 189
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    if-eqz v6, :cond_7

    .line 194
    .line 195
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    check-cast v6, Ljava/util/Map$Entry;

    .line 200
    .line 201
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    check-cast v7, Ljava/lang/Number;

    .line 206
    .line 207
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 208
    .line 209
    .line 210
    move-result v7

    .line 211
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    check-cast v6, Ljava/lang/String;

    .line 216
    .line 217
    add-int/lit8 v8, v5, 0x1

    .line 218
    .line 219
    aput v7, v0, v5

    .line 220
    .line 221
    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move v5, v8

    .line 225
    goto :goto_3

    .line 226
    :cond_7
    const-string v4, "android-support-nav:controller:backStackDestIds"

    .line 227
    .line 228
    invoke-virtual {v2, v4, v0}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 229
    .line 230
    .line 231
    const-string v0, "android-support-nav:controller:backStackIds"

    .line 232
    .line 233
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 234
    .line 235
    .line 236
    :cond_8
    iget-object v0, p0, Landroidx/navigation/NavController;->n:Ljava/util/Map;

    .line 237
    .line 238
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    if-nez v0, :cond_d

    .line 243
    .line 244
    if-nez v2, :cond_9

    .line 245
    .line 246
    new-instance v2, Landroid/os/Bundle;

    .line 247
    .line 248
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 249
    .line 250
    .line 251
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    .line 252
    .line 253
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .line 255
    .line 256
    iget-object v3, p0, Landroidx/navigation/NavController;->n:Ljava/util/Map;

    .line 257
    .line 258
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 267
    .line 268
    .line 269
    move-result v4

    .line 270
    if-eqz v4, :cond_c

    .line 271
    .line 272
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v4

    .line 276
    check-cast v4, Ljava/util/Map$Entry;

    .line 277
    .line 278
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v5

    .line 282
    check-cast v5, Ljava/lang/String;

    .line 283
    .line 284
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    check-cast v4, Lkotlin/collections/ArrayDeque;

    .line 289
    .line 290
    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    invoke-virtual {v4}, Lkotlin/collections/AbstractMutableList;->size()I

    .line 294
    .line 295
    .line 296
    move-result v6

    .line 297
    new-array v6, v6, [Landroid/os/Parcelable;

    .line 298
    .line 299
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    move v7, v1

    .line 304
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 305
    .line 306
    .line 307
    move-result v8

    .line 308
    if-eqz v8, :cond_b

    .line 309
    .line 310
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v8

    .line 314
    add-int/lit8 v9, v7, 0x1

    .line 315
    .line 316
    if-gez v7, :cond_a

    .line 317
    .line 318
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 319
    .line 320
    .line 321
    :cond_a
    check-cast v8, Landroidx/navigation/NavBackStackEntryState;

    .line 322
    .line 323
    aput-object v8, v6, v7

    .line 324
    .line 325
    move v7, v9

    .line 326
    goto :goto_5

    .line 327
    :cond_b
    const-string v4, "android-support-nav:controller:backStackStates:"

    .line 328
    .line 329
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->q(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 334
    .line 335
    .line 336
    goto :goto_4

    .line 337
    :cond_c
    const-string v1, "android-support-nav:controller:backStackStates"

    .line 338
    .line 339
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 340
    .line 341
    .line 342
    :cond_d
    iget-boolean v0, p0, Landroidx/navigation/NavController;->g:Z

    .line 343
    .line 344
    if-eqz v0, :cond_f

    .line 345
    .line 346
    if-nez v2, :cond_e

    .line 347
    .line 348
    new-instance v2, Landroid/os/Bundle;

    .line 349
    .line 350
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 351
    .line 352
    .line 353
    :cond_e
    const-string v0, "android-support-nav:controller:deepLinkHandled"

    .line 354
    .line 355
    iget-boolean v1, p0, Landroidx/navigation/NavController;->g:Z

    .line 356
    .line 357
    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 358
    .line 359
    .line 360
    :cond_f
    return-object v2
.end method

.method public a0(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/navigation/NavController;->E()Landroidx/navigation/k;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroidx/navigation/k;->b(I)Landroidx/navigation/NavGraph;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, v0}, Landroidx/navigation/NavController;->c0(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public b0(ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/navigation/NavController;->E()Landroidx/navigation/k;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroidx/navigation/k;->b(I)Landroidx/navigation/NavGraph;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1, p2}, Landroidx/navigation/NavController;->c0(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public c0(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V
    .locals 9

    .line 1
    const-string v0, "graph"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    iget-object v2, p0, Landroidx/navigation/NavController;->m:Ljava/util/Map;

    .line 22
    .line 23
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/util/Collection;

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Ljava/lang/Integer;

    .line 47
    .line 48
    const-string v3, "id"

    .line 49
    .line 50
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-direct {p0, v2}, Landroidx/navigation/NavController;->p(I)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->n()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    const/4 v7, 0x4

    .line 66
    const/4 v8, 0x0

    .line 67
    const/4 v5, 0x1

    .line 68
    const/4 v6, 0x0

    .line 69
    move-object v3, p0

    .line 70
    invoke-static/range {v3 .. v8}, Landroidx/navigation/NavController;->T(Landroidx/navigation/NavController;IZZILjava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    :goto_1
    iput-object p1, p0, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    .line 74
    .line 75
    invoke-direct {p0, p2}, Landroidx/navigation/NavController;->M(Landroid/os/Bundle;)V

    .line 76
    .line 77
    .line 78
    goto :goto_5

    .line 79
    :cond_2
    invoke-virtual {p1}, Landroidx/navigation/NavGraph;->E()Landroidx/collection/y0;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-virtual {p2}, Landroidx/collection/y0;->p()I

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    const/4 v0, 0x0

    .line 88
    :goto_2
    if-ge v0, p2, :cond_7

    .line 89
    .line 90
    add-int/lit8 v1, v0, 0x1

    .line 91
    .line 92
    invoke-virtual {p1}, Landroidx/navigation/NavGraph;->E()Landroidx/collection/y0;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v2, v0}, Landroidx/collection/y0;->q(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    check-cast v2, Landroidx/navigation/NavDestination;

    .line 101
    .line 102
    iget-object v3, p0, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    .line 103
    .line 104
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3}, Landroidx/navigation/NavGraph;->E()Landroidx/collection/y0;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-virtual {v3, v0, v2}, Landroidx/collection/y0;->o(ILjava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    new-instance v3, Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    :cond_3
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-eqz v4, :cond_5

    .line 132
    .line 133
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    move-object v5, v4

    .line 138
    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    .line 139
    .line 140
    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    invoke-virtual {v5}, Landroidx/navigation/NavDestination;->n()I

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    if-nez v2, :cond_4

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_4
    invoke-virtual {v2}, Landroidx/navigation/NavDestination;->n()I

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    if-ne v5, v6, :cond_3

    .line 156
    .line 157
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_5
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    if-eqz v3, :cond_6

    .line 170
    .line 171
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    .line 176
    .line 177
    const-string v4, "newDestination"

    .line 178
    .line 179
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3, v2}, Landroidx/navigation/NavBackStackEntry;->k(Landroidx/navigation/NavDestination;)V

    .line 183
    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_6
    move v0, v1

    .line 187
    goto :goto_2

    .line 188
    :cond_7
    :goto_5
    return-void
.end method

.method public d0(Landroidx/lifecycle/u;)V
    .locals 2

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/navigation/NavController;->o:Landroidx/lifecycle/u;

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->o:Landroidx/lifecycle/u;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-interface {v0}, Landroidx/lifecycle/u;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    iget-object v1, p0, Landroidx/navigation/NavController;->t:Landroidx/lifecycle/t;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/t;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    iput-object p1, p0, Landroidx/navigation/NavController;->o:Landroidx/lifecycle/u;

    .line 33
    .line 34
    invoke-interface {p1}, Landroidx/lifecycle/u;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object v0, p0, Landroidx/navigation/NavController;->t:Landroidx/lifecycle/t;

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/t;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public e0(Landroidx/activity/OnBackPressedDispatcher;)V
    .locals 2

    .line 1
    const-string v0, "dispatcher"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/navigation/NavController;->p:Landroidx/activity/OnBackPressedDispatcher;

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->o:Landroidx/lifecycle/u;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/navigation/NavController;->u:Landroidx/activity/u;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/activity/u;->remove()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Landroidx/navigation/NavController;->p:Landroidx/activity/OnBackPressedDispatcher;

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/navigation/NavController;->u:Landroidx/activity/u;

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Landroidx/activity/OnBackPressedDispatcher;->i(Landroidx/lifecycle/u;Landroidx/activity/u;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v0}, Landroidx/lifecycle/u;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object v0, p0, Landroidx/navigation/NavController;->t:Landroidx/lifecycle/t;

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/t;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Landroidx/navigation/NavController;->t:Landroidx/lifecycle/t;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/t;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string v0, "You must call setLifecycleOwner() before calling setOnBackPressedDispatcher()"

    .line 49
    .line 50
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1
.end method

.method public f0(Landroidx/lifecycle/x0;)V
    .locals 3

    .line 1
    const-string v0, "viewModelStore"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/navigation/NavController;->q:Landroidx/navigation/f;

    .line 7
    .line 8
    sget-object v1, Landroidx/navigation/f;->b:Landroidx/navigation/f$b;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Landroidx/navigation/f$b;->a(Landroidx/lifecycle/x0;)Landroidx/navigation/f;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Landroidx/navigation/f$b;->a(Landroidx/lifecycle/x0;)Landroidx/navigation/f;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Landroidx/navigation/NavController;->q:Landroidx/navigation/f;

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    const-string v0, "ViewModelStore should be set before setGraph call"

    .line 41
    .line 42
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method public final g0(Landroidx/navigation/NavBackStackEntry;)Landroidx/navigation/NavBackStackEntry;
    .locals 2

    .line 1
    const-string v0, "child"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/navigation/NavController;->k:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroidx/navigation/NavBackStackEntry;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object v1, p0, Landroidx/navigation/NavController;->l:Ljava/util/Map;

    .line 19
    .line 20
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_0
    if-nez v0, :cond_2

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_4

    .line 45
    .line 46
    iget-object v0, p0, Landroidx/navigation/NavController;->w:Landroidx/navigation/q;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->o()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Landroidx/navigation/q;->d(Ljava/lang/String;)Landroidx/navigation/Navigator;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v1, p0, Landroidx/navigation/NavController;->x:Ljava/util/Map;

    .line 61
    .line 62
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 67
    .line 68
    if-nez v0, :cond_3

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    invoke-virtual {v0, p1}, Landroidx/navigation/NavController$NavControllerNavigatorState;->e(Landroidx/navigation/NavBackStackEntry;)V

    .line 72
    .line 73
    .line 74
    :goto_1
    iget-object v0, p0, Landroidx/navigation/NavController;->l:Ljava/util/Map;

    .line 75
    .line 76
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    :cond_4
    :goto_2
    return-object p1
.end method

.method public final h0()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->u0(Ljava/util/List;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    instance-of v2, v1, Landroidx/navigation/b;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    move-object v2, v0

    .line 32
    check-cast v2, Ljava/lang/Iterable;

    .line 33
    .line 34
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->D0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_2

    .line 47
    .line 48
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    .line 53
    .line 54
    invoke-virtual {v4}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    instance-of v5, v4, Landroidx/navigation/NavGraph;

    .line 59
    .line 60
    if-nez v5, :cond_1

    .line 61
    .line 62
    instance-of v5, v4, Landroidx/navigation/b;

    .line 63
    .line 64
    if-nez v5, :cond_1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    move-object v4, v3

    .line 68
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    .line 69
    .line 70
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 71
    .line 72
    .line 73
    move-object v5, v0

    .line 74
    check-cast v5, Ljava/lang/Iterable;

    .line 75
    .line 76
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->D0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-eqz v6, :cond_e

    .line 89
    .line 90
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    check-cast v6, Landroidx/navigation/NavBackStackEntry;

    .line 95
    .line 96
    invoke-virtual {v6}, Landroidx/navigation/NavBackStackEntry;->h()Landroidx/lifecycle/Lifecycle$State;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    invoke-virtual {v6}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    if-eqz v1, :cond_a

    .line 105
    .line 106
    invoke-virtual {v8}, Landroidx/navigation/NavDestination;->n()I

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->n()I

    .line 111
    .line 112
    .line 113
    move-result v10

    .line 114
    if-ne v9, v10, :cond_a

    .line 115
    .line 116
    sget-object v8, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 117
    .line 118
    if-eq v7, v8, :cond_9

    .line 119
    .line 120
    invoke-virtual {p0}, Landroidx/navigation/NavController;->F()Landroidx/navigation/q;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    invoke-virtual {v6}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    invoke-virtual {v9}, Landroidx/navigation/NavDestination;->o()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v9

    .line 132
    invoke-virtual {v7, v9}, Landroidx/navigation/q;->d(Ljava/lang/String;)Landroidx/navigation/Navigator;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    iget-object v9, p0, Landroidx/navigation/NavController;->x:Ljava/util/Map;

    .line 137
    .line 138
    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    check-cast v7, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 143
    .line 144
    if-nez v7, :cond_3

    .line 145
    .line 146
    :goto_2
    move-object v7, v3

    .line 147
    goto :goto_3

    .line 148
    :cond_3
    invoke-virtual {v7}, Landroidx/navigation/r;->c()Lkotlinx/coroutines/flow/h1;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    if-nez v7, :cond_4

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_4
    invoke-interface {v7}, Lkotlinx/coroutines/flow/h1;->getValue()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    check-cast v7, Ljava/util/Set;

    .line 160
    .line 161
    if-nez v7, :cond_5

    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_5
    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v7

    .line 168
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    :goto_3
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 173
    .line 174
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v7

    .line 178
    if-nez v7, :cond_8

    .line 179
    .line 180
    iget-object v7, p0, Landroidx/navigation/NavController;->l:Ljava/util/Map;

    .line 181
    .line 182
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    check-cast v7, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 187
    .line 188
    if-nez v7, :cond_6

    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_6
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 192
    .line 193
    .line 194
    move-result v7

    .line 195
    if-nez v7, :cond_7

    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_7
    :goto_4
    invoke-interface {v2, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    goto :goto_6

    .line 202
    :cond_8
    :goto_5
    sget-object v7, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 203
    .line 204
    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    :cond_9
    :goto_6
    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->p()Landroidx/navigation/NavGraph;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    goto :goto_1

    .line 212
    :cond_a
    if-eqz v4, :cond_d

    .line 213
    .line 214
    invoke-virtual {v8}, Landroidx/navigation/NavDestination;->n()I

    .line 215
    .line 216
    .line 217
    move-result v8

    .line 218
    invoke-virtual {v4}, Landroidx/navigation/NavDestination;->n()I

    .line 219
    .line 220
    .line 221
    move-result v9

    .line 222
    if-ne v8, v9, :cond_d

    .line 223
    .line 224
    sget-object v8, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 225
    .line 226
    if-ne v7, v8, :cond_b

    .line 227
    .line 228
    sget-object v7, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 229
    .line 230
    invoke-virtual {v6, v7}, Landroidx/navigation/NavBackStackEntry;->l(Landroidx/lifecycle/Lifecycle$State;)V

    .line 231
    .line 232
    .line 233
    goto :goto_7

    .line 234
    :cond_b
    sget-object v8, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 235
    .line 236
    if-eq v7, v8, :cond_c

    .line 237
    .line 238
    invoke-interface {v2, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    :cond_c
    :goto_7
    invoke-virtual {v4}, Landroidx/navigation/NavDestination;->p()Landroidx/navigation/NavGraph;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    goto/16 :goto_1

    .line 246
    .line 247
    :cond_d
    sget-object v7, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 248
    .line 249
    invoke-virtual {v6, v7}, Landroidx/navigation/NavBackStackEntry;->l(Landroidx/lifecycle/Lifecycle$State;)V

    .line 250
    .line 251
    .line 252
    goto/16 :goto_1

    .line 253
    .line 254
    :cond_e
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    if-eqz v1, :cond_10

    .line 263
    .line 264
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 269
    .line 270
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    check-cast v3, Landroidx/lifecycle/Lifecycle$State;

    .line 275
    .line 276
    if-eqz v3, :cond_f

    .line 277
    .line 278
    invoke-virtual {v1, v3}, Landroidx/navigation/NavBackStackEntry;->l(Landroidx/lifecycle/Lifecycle$State;)V

    .line 279
    .line 280
    .line 281
    goto :goto_8

    .line 282
    :cond_f
    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->m()V

    .line 283
    .line 284
    .line 285
    goto :goto_8

    .line 286
    :cond_10
    return-void
.end method

.method public r(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/navigation/NavController;->v:Z

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/navigation/NavController;->i0()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final s(I)Landroidx/navigation/NavDestination;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->n()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ne v0, p1, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_1
    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->l()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    :goto_0
    if-nez v1, :cond_3

    .line 37
    .line 38
    iget-object v1, p0, Landroidx/navigation/NavController;->d:Landroidx/navigation/NavGraph;

    .line 39
    .line 40
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :cond_3
    invoke-direct {p0, v1, p1}, Landroidx/navigation/NavController;->t(Landroidx/navigation/NavDestination;I)Landroidx/navigation/NavDestination;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1
.end method

.method public v()Lkotlin/collections/ArrayDeque;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavController;->h:Lkotlin/collections/ArrayDeque;

    .line 2
    .line 3
    return-object v0
.end method

.method public w(I)Landroidx/navigation/NavBackStackEntry;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    move-object v2, v1

    .line 24
    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Landroidx/navigation/NavDestination;->n()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-ne v2, p1, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v1, 0x0

    .line 38
    :goto_0
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    return-object v1

    .line 43
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v1, "No destination with ID "

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p1, " is on the NavController\'s back stack. The current destination is "

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/navigation/NavController;->A()Landroidx/navigation/NavDestination;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v0
.end method

.method public final x(Ljava/lang/String;)Landroidx/navigation/NavBackStackEntry;
    .locals 3

    .line 1
    const-string v0, "route"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    move-object v2, v1

    .line 29
    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 30
    .line 31
    invoke-virtual {v2}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Landroidx/navigation/NavDestination;->q()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 v1, 0x0

    .line 47
    :goto_0
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    return-object v1

    .line 52
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v1, "No destination with route "

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p1, " is on the NavController\'s back stack. The current destination is "

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroidx/navigation/NavController;->A()Landroidx/navigation/NavDestination;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v0
.end method

.method public final y()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public z()Landroidx/navigation/NavBackStackEntry;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/navigation/NavController;->v()Lkotlin/collections/ArrayDeque;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->l()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 10
    .line 11
    return-object v0
.end method
