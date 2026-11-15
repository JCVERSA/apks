.class public La32;
.super Lb32;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La32$a;
    }
.end annotation


# static fields
.field public static final k:Ljava/util/WeakHashMap;

.field public static final l:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, La32;->k:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, La32;->l:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method public constructor <init>(Lfreemarker/template/Version;)V
    .locals 0

    invoke-direct {p0, p1}, Lb32;-><init>(Lfreemarker/template/Version;)V

    return-void
.end method


# virtual methods
.method public m()Lz22;
    .locals 3

    sget-object v0, La32;->k:Ljava/util/WeakHashMap;

    sget-object v1, La32;->l:Ljava/lang/ref/ReferenceQueue;

    invoke-static {}, La32$a;->b()La32$a;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, La0d;->b(Lxd0;Ljava/util/Map;Ljava/lang/ref/ReferenceQueue;La0d$a;)Lfreemarker/ext/beans/b;

    move-result-object p0

    check-cast p0, Lz22;

    return-object p0
.end method
