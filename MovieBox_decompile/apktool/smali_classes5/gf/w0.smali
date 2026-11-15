.class public final Lgf/w0;
.super Lgf/d;
.source "source.java"


# direct methods
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
    invoke-virtual {p1, p0}, Lgf/o0;->z(Lgf/e;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public request()V
    .locals 4

    .line 1
    iget-object v0, p0, Lgf/d;->a:Lgf/o0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgf/o0;->K()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    sget-object v0, Lcf/c;->a:Lcf/c;

    .line 10
    .line 11
    iget-object v1, p0, Lgf/d;->a:Lgf/o0;

    .line 12
    .line 13
    invoke-virtual {v1}, Lgf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcf/c;->c(Landroid/content/Context;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lgf/d;->finish()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lgf/d;->a:Lgf/o0;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lgf/d;->a:Lgf/o0;

    .line 33
    .line 34
    iget-object v1, v0, Lgf/o0;->q:Ldf/b;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {v0, p0}, Lgf/o0;->E(Lgf/e;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "android.permission.PICTURE_IN_PICTURE"

    .line 42
    .line 43
    filled-new-array {v0}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v1, p0, Lgf/d;->a:Lgf/o0;

    .line 52
    .line 53
    iget-object v2, v1, Lgf/o0;->q:Ldf/b;

    .line 54
    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lgf/d;->b()Lgf/f;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const/4 v3, 0x1

    .line 65
    invoke-interface {v2, v1, v0, v3, v3}, Ldf/b;->a(Lgf/f;Ljava/util/List;ZZ)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    const/4 v0, 0x0

    .line 73
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lgf/d;->b()Lgf/f;

    .line 77
    .line 78
    .line 79
    throw v0

    .line 80
    :cond_2
    invoke-virtual {p0}, Lgf/d;->finish()V

    .line 81
    .line 82
    .line 83
    return-void
.end method
