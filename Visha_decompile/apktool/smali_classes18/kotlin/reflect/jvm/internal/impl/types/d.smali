.class public final Lkotlin/reflect/jvm/internal/impl/types/d;
.super Lkotlin/reflect/jvm/internal/impl/types/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/types/d$a;
    }
.end annotation


# static fields
.field public static final e:Lkotlin/reflect/jvm/internal/impl/types/d$a;


# instance fields
.field public final c:Lkotlin/reflect/jvm/internal/impl/types/l;

.field public final d:Lkotlin/reflect/jvm/internal/impl/types/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/d;->e:Lkotlin/reflect/jvm/internal/impl/types/d$a;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/l;Lkotlin/reflect/jvm/internal/impl/types/l;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/types/l;-><init>()V

    .line 3
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/d;->c:Lkotlin/reflect/jvm/internal/impl/types/l;

    .line 4
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/types/d;->d:Lkotlin/reflect/jvm/internal/impl/types/l;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/l;Lkotlin/reflect/jvm/internal/impl/types/l;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/d;-><init>(Lkotlin/reflect/jvm/internal/impl/types/l;Lkotlin/reflect/jvm/internal/impl/types/l;)V

    return-void
.end method

.method public static final i(Lkotlin/reflect/jvm/internal/impl/types/l;Lkotlin/reflect/jvm/internal/impl/types/l;)Lkotlin/reflect/jvm/internal/impl/types/l;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/d;->e:Lkotlin/reflect/jvm/internal/impl/types/d$a;

    invoke-virtual {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/d$a;->a(Lkotlin/reflect/jvm/internal/impl/types/l;Lkotlin/reflect/jvm/internal/impl/types/l;)Lkotlin/reflect/jvm/internal/impl/types/l;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/d;->c:Lkotlin/reflect/jvm/internal/impl/types/l;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/l;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/d;->d:Lkotlin/reflect/jvm/internal/impl/types/l;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/l;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/d;->c:Lkotlin/reflect/jvm/internal/impl/types/l;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/l;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/d;->d:Lkotlin/reflect/jvm/internal/impl/types/l;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/l;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public d(Lmd;)Lmd;
    .locals 1

    const-string v0, "annotations"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/d;->d:Lkotlin/reflect/jvm/internal/impl/types/l;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/d;->c:Lkotlin/reflect/jvm/internal/impl/types/l;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/l;->d(Lmd;)Lmd;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/types/l;->d(Lmd;)Lmd;

    move-result-object p0

    return-object p0
.end method

.method public e(Leh5;)Lmcb;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/d;->c:Lkotlin/reflect/jvm/internal/impl/types/l;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/types/l;->e(Leh5;)Lmcb;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/d;->d:Lkotlin/reflect/jvm/internal/impl/types/l;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/l;->e(Leh5;)Lmcb;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public f()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public g(Leh5;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Leh5;
    .locals 1

    const-string v0, "topLevelType"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/d;->d:Lkotlin/reflect/jvm/internal/impl/types/l;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/d;->c:Lkotlin/reflect/jvm/internal/impl/types/l;

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/l;->g(Leh5;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Leh5;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Lkotlin/reflect/jvm/internal/impl/types/l;->g(Leh5;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Leh5;

    move-result-object p0

    return-object p0
.end method
