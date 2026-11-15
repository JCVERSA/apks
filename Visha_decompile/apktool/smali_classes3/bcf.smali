.class public final Lbcf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/WeakHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lbcf;->a:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static bridge synthetic a(Lbcf;)Ljava/util/WeakHashMap;
    .locals 0

    iget-object p0, p0, Lbcf;->a:Ljava/util/WeakHashMap;

    return-object p0
.end method


# virtual methods
.method public final b(Landroid/content/Context;)Ljava/util/concurrent/Future;
    .locals 2

    sget-object v0, Lzef;->a:Lg8i;

    new-instance v1, Lzbf;

    invoke-direct {v1, p0, p1}, Lzbf;-><init>(Lbcf;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lg8i;->m(Ljava/util/concurrent/Callable;)Lim5;

    move-result-object p0

    return-object p0
.end method
