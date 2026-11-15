.class public final Lgf/p0;
.super Lgf/d;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/p0$a;
    }
.end annotation


# static fields
.field public static final f:Lgf/p0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgf/p0$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lgf/p0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lgf/p0;->f:Lgf/p0$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lgf/o0;)V
    .locals 1

    .line 1
    const-string v0, "permissionBuilder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lgf/d;-><init>(Lgf/o0;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1

    .line 1
    const-string v0, "permissions"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lgf/d;->a:Lgf/o0;

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Lgf/o0;->t(Lgf/e;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public request()V
    .locals 5

    .line 1
    iget-object v0, p0, Lgf/d;->a:Lgf/o0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgf/o0;->F()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_6

    .line 8
    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v1, 0x1d

    .line 12
    .line 13
    const-string v2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 14
    .line 15
    if-ge v0, v1, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lgf/d;->a:Lgf/o0;

    .line 18
    .line 19
    iget-object v0, v0, Lgf/o0;->f:Ljava/util/Set;

    .line 20
    .line 21
    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lgf/d;->a:Lgf/o0;

    .line 25
    .line 26
    iget-object v0, v0, Lgf/o0;->i:Ljava/util/Set;

    .line 27
    .line 28
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lgf/d;->finish()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    sget-object v0, Lcf/c;->a:Lcf/c;

    .line 36
    .line 37
    iget-object v1, p0, Lgf/d;->a:Lgf/o0;

    .line 38
    .line 39
    invoke-virtual {v1}, Lgf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1, v2}, Lcf/c;->f(Landroid/content/Context;Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    invoke-virtual {p0}, Lgf/d;->finish()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    iget-object v1, p0, Lgf/d;->a:Lgf/o0;

    .line 54
    .line 55
    invoke-virtual {v1}, Lgf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    .line 60
    .line 61
    invoke-virtual {v0, v1, v3}, Lcf/c;->f(Landroid/content/Context;Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    iget-object v3, p0, Lgf/d;->a:Lgf/o0;

    .line 66
    .line 67
    invoke-virtual {v3}, Lgf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    .line 72
    .line 73
    invoke-virtual {v0, v3, v4}, Lcf/c;->f(Landroid/content/Context;Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v1, :cond_2

    .line 78
    .line 79
    if-eqz v0, :cond_6

    .line 80
    .line 81
    :cond_2
    iget-object v0, p0, Lgf/d;->a:Lgf/o0;

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lgf/d;->a:Lgf/o0;

    .line 87
    .line 88
    iget-object v0, v0, Lgf/o0;->q:Ldf/b;

    .line 89
    .line 90
    if-eqz v0, :cond_5

    .line 91
    .line 92
    invoke-virtual {p0}, Lgf/d;->d()Lcom/tencent/mmkv/MMKV;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    const/4 v1, 0x0

    .line 97
    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    const/4 v1, 0x1

    .line 102
    if-eqz v0, :cond_3

    .line 103
    .line 104
    iget-object v0, p0, Lgf/d;->a:Lgf/o0;

    .line 105
    .line 106
    invoke-virtual {v0}, Lgf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-static {v0, v2}, Landroidx/core/app/ActivityCompat;->j(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    goto :goto_0

    .line 115
    :cond_3
    invoke-virtual {p0}, Lgf/d;->d()Lcom/tencent/mmkv/MMKV;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 120
    .line 121
    .line 122
    move v0, v1

    .line 123
    :goto_0
    iget-object v3, p0, Lgf/d;->a:Lgf/o0;

    .line 124
    .line 125
    invoke-virtual {v3, p0}, Lgf/o0;->E(Lgf/e;)V

    .line 126
    .line 127
    .line 128
    filled-new-array {v2}, [Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    iget-object v3, p0, Lgf/d;->a:Lgf/o0;

    .line 137
    .line 138
    iget-object v4, v3, Lgf/o0;->q:Ldf/b;

    .line 139
    .line 140
    if-eqz v4, :cond_4

    .line 141
    .line 142
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Lgf/d;->b()Lgf/f;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    xor-int/2addr v0, v1

    .line 150
    invoke-interface {v4, v3, v2, v1, v0}, Ldf/b;->a(Lgf/f;Ljava/util/List;ZZ)V

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    const/4 v0, 0x0

    .line 158
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Lgf/d;->b()Lgf/f;

    .line 162
    .line 163
    .line 164
    throw v0

    .line 165
    :cond_5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {p0, v0}, Lgf/p0;->a(Ljava/util/List;)V

    .line 170
    .line 171
    .line 172
    :goto_1
    return-void

    .line 173
    :cond_6
    invoke-virtual {p0}, Lgf/d;->finish()V

    .line 174
    .line 175
    .line 176
    return-void
.end method
