.class public final Lxti;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lxti;


# instance fields
.field public final a:Lnui;

.field public final b:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lxti;

    invoke-direct {v0}, Lxti;-><init>()V

    sput-object v0, Lxti;->c:Lxti;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lxti;->b:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lhti;

    invoke-direct {v0}, Lhti;-><init>()V

    iput-object v0, p0, Lxti;->a:Lnui;

    return-void
.end method

.method public static a()Lxti;
    .locals 1

    sget-object v0, Lxti;->c:Lxti;

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/Class;)Lcui;
    .locals 3

    const-string v0, "messageType"

    invoke-static {p1, v0}, Lzsi;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lxti;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcui;

    if-nez v2, :cond_0

    iget-object p0, p0, Lxti;->a:Lnui;

    invoke-interface {p0, p1}, Lnui;->a(Ljava/lang/Class;)Lcui;

    move-result-object v2

    invoke-static {p1, v0}, Lzsi;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcui;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object v2
.end method
