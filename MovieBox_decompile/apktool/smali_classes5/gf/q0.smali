.class public final Lgf/q0;
.super Lgf/d;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/q0$a;
    }
.end annotation


# static fields
.field public static final f:Lgf/q0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgf/q0$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lgf/q0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lgf/q0;->f:Lgf/q0$a;

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
    invoke-virtual {p1, p0}, Lgf/o0;->u(Lgf/e;)V

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
    invoke-virtual {v0}, Lgf/o0;->G()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v1, 0x21

    .line 12
    .line 13
    const-string v2, "android.permission.BODY_SENSORS_BACKGROUND"

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
    const-string v3, "android.permission.BODY_SENSORS"

    .line 60
    .line 61
    invoke-virtual {v0, v1, v3}, Lcf/c;->f(Landroid/content/Context;Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    iget-object v0, p0, Lgf/d;->a:Lgf/o0;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lgf/d;->a:Lgf/o0;

    .line 73
    .line 74
    iget-object v0, v0, Lgf/o0;->q:Ldf/b;

    .line 75
    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    invoke-virtual {p0}, Lgf/d;->d()Lcom/tencent/mmkv/MMKV;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const/4 v1, 0x0

    .line 83
    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    const/4 v1, 0x1

    .line 88
    if-eqz v0, :cond_2

    .line 89
    .line 90
    iget-object v0, p0, Lgf/d;->a:Lgf/o0;

    .line 91
    .line 92
    invoke-virtual {v0}, Lgf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {v0, v2}, Landroidx/core/app/ActivityCompat;->j(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {p0}, Lgf/d;->d()Lcom/tencent/mmkv/MMKV;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 106
    .line 107
    .line 108
    move v0, v1

    .line 109
    :goto_0
    iget-object v3, p0, Lgf/d;->a:Lgf/o0;

    .line 110
    .line 111
    invoke-virtual {v3, p0}, Lgf/o0;->E(Lgf/e;)V

    .line 112
    .line 113
    .line 114
    filled-new-array {v2}, [Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    iget-object v3, p0, Lgf/d;->a:Lgf/o0;

    .line 123
    .line 124
    iget-object v4, v3, Lgf/o0;->q:Ldf/b;

    .line 125
    .line 126
    if-eqz v4, :cond_3

    .line 127
    .line 128
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Lgf/d;->b()Lgf/f;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    xor-int/2addr v0, v1

    .line 136
    invoke-interface {v4, v3, v2, v1, v0}, Ldf/b;->a(Lgf/f;Ljava/util/List;ZZ)V

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    const/4 v0, 0x0

    .line 144
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lgf/d;->b()Lgf/f;

    .line 148
    .line 149
    .line 150
    throw v0

    .line 151
    :cond_4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {p0, v0}, Lgf/q0;->a(Ljava/util/List;)V

    .line 156
    .line 157
    .line 158
    :goto_1
    return-void

    .line 159
    :cond_5
    invoke-virtual {p0}, Lgf/d;->finish()V

    .line 160
    .line 161
    .line 162
    return-void
.end method
