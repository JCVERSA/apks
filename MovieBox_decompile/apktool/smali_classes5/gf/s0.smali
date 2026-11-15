.class public final Lgf/s0;
.super Lgf/d;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/s0$a;
    }
.end annotation


# static fields
.field public static final f:Lgf/s0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgf/s0$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lgf/s0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lgf/s0;->f:Lgf/s0$a;

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
    invoke-virtual {p1, p0}, Lgf/o0;->v(Lgf/e;)V

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
    invoke-virtual {v0}, Lgf/o0;->H()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v1, 0x1a

    .line 12
    .line 13
    if-lt v0, v1, :cond_4

    .line 14
    .line 15
    iget-object v0, p0, Lgf/d;->a:Lgf/o0;

    .line 16
    .line 17
    invoke-virtual {v0}, Lgf/o0;->p()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-lt v0, v1, :cond_4

    .line 22
    .line 23
    iget-object v0, p0, Lgf/d;->a:Lgf/o0;

    .line 24
    .line 25
    invoke-virtual {v0}, Lgf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lgf/b;->a(Landroid/content/pm/PackageManager;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0}, Lgf/d;->finish()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lgf/d;->a:Lgf/o0;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lgf/d;->a:Lgf/o0;

    .line 49
    .line 50
    iget-object v0, v0, Lgf/o0;->q:Ldf/b;

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    invoke-virtual {p0}, Lgf/d;->d()Lcom/tencent/mmkv/MMKV;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const/4 v1, 0x0

    .line 59
    const-string v2, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 60
    .line 61
    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    const/4 v1, 0x1

    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    iget-object v0, p0, Lgf/d;->a:Lgf/o0;

    .line 69
    .line 70
    invoke-virtual {v0}, Lgf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0, v2}, Landroidx/core/app/ActivityCompat;->j(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p0}, Lgf/d;->d()Lcom/tencent/mmkv/MMKV;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 84
    .line 85
    .line 86
    move v0, v1

    .line 87
    :goto_0
    iget-object v3, p0, Lgf/d;->a:Lgf/o0;

    .line 88
    .line 89
    invoke-virtual {v3, p0}, Lgf/o0;->E(Lgf/e;)V

    .line 90
    .line 91
    .line 92
    filled-new-array {v2}, [Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    iget-object v3, p0, Lgf/d;->a:Lgf/o0;

    .line 101
    .line 102
    iget-object v4, v3, Lgf/o0;->q:Ldf/b;

    .line 103
    .line 104
    if-eqz v4, :cond_2

    .line 105
    .line 106
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lgf/d;->b()Lgf/f;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    xor-int/2addr v0, v1

    .line 114
    invoke-interface {v4, v3, v2, v1, v0}, Ldf/b;->a(Lgf/f;Ljava/util/List;ZZ)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    const/4 v0, 0x0

    .line 122
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lgf/d;->b()Lgf/f;

    .line 126
    .line 127
    .line 128
    throw v0

    .line 129
    :cond_3
    invoke-virtual {p0}, Lgf/d;->finish()V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_4
    invoke-virtual {p0}, Lgf/d;->finish()V

    .line 134
    .line 135
    .line 136
    :goto_1
    return-void
.end method
