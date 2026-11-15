.class public final Ly7;
.super Lvec;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly7$a;
    }
.end annotation


# static fields
.field public static final b:Ly7$a;

.field public static final c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly7$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly7$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ly7;->b:Ly7$a;

    const-class v0, Lec2;

    const-class v1, Lum6;

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ly71;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ly7;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lvec;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public c()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic create(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ly7;->h(Landroid/content/Context;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public dependencies()Ljava/util/List;
    .locals 0

    sget-object p0, Ly7;->c:Ljava/util/List;

    return-object p0
.end method

.method public h(Landroid/content/Context;)Ljava/lang/Void;
    .locals 0

    sget-boolean p0, Lpp3;->b:Z

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    sget-object p0, Lkm6;->a:Lkm6$a;

    invoke-virtual {p0}, Lkm6$a;->a()Lkm6;

    move-result-object p0

    invoke-virtual {p0}, Lkm6;->b()V

    return-object p1
.end method
