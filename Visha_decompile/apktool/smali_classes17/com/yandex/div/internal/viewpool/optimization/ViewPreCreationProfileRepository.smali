.class public Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$Companion;,
        Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$ViewPreCreationProfileSerializer;
    }
.end annotation


# static fields
.field public static final c:Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$Companion;

.field public static final d:Ljava/util/WeakHashMap;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lddc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository;->c:Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$Companion;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository;->d:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lddc;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultProfile"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository;->b:Lddc;

    return-void
.end method

.method public static final synthetic a()Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$Companion;
    .locals 1

    sget-object v0, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository;->c:Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$Companion;

    return-object v0
.end method

.method public static final synthetic b(Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic c(Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository;)Lddc;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository;->b:Lddc;

    return-object p0
.end method

.method public static final synthetic d()Ljava/util/WeakHashMap;
    .locals 1

    sget-object v0, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository;->d:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method public static synthetic f(Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository;Ljava/lang/String;Lwh1;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v0

    new-instance v1, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$get$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$get$2;-><init>(Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository;Ljava/lang/String;Lwh1;)V

    invoke-static {v0, v1, p2}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public e(Ljava/lang/String;Lwh1;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository;->f(Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository;Ljava/lang/String;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
