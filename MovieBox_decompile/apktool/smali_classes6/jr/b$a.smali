.class public final Ljr/b$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljr/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljr/b$a;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 1

    .line 1
    invoke-static {}, Ljr/b;->a()Ljr/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Ljr/b$a;->b()Ljr/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Ljr/b;->b(Ljr/a;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private final b()Ljr/a;
    .locals 1

    .line 1
    sget-object v0, Lmr/b;->a:Lmr/b$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lmr/b$a;->a()Lmr/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method


# virtual methods
.method public final c(Landroid/app/Application;)V
    .locals 1

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lmr/b;->a:Lmr/b$a;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lmr/b$a;->b(Landroid/app/Application;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final d(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljr/b$a;->a()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljr/b;->a()Ljr/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljr/a;->a(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljr/b$a;->a()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljr/b;->a()Ljr/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljr/a;->b(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
