.class public abstract Lf4i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lf4i;

.field public static final b:Lf4i;

.field public static final c:Lf4i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc4i;

    invoke-direct {v0}, Lc4i;-><init>()V

    sput-object v0, Lf4i;->a:Lf4i;

    new-instance v0, Ld4i;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ld4i;-><init>(I)V

    sput-object v0, Lf4i;->b:Lf4i;

    new-instance v0, Ld4i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ld4i;-><init>(I)V

    sput-object v0, Lf4i;->c:Lf4i;

    return-void
.end method

.method public synthetic constructor <init>(Le4i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic f()Lf4i;
    .locals 1

    sget-object v0, Lf4i;->a:Lf4i;

    return-object v0
.end method

.method public static bridge synthetic g()Lf4i;
    .locals 1

    sget-object v0, Lf4i;->c:Lf4i;

    return-object v0
.end method

.method public static bridge synthetic h()Lf4i;
    .locals 1

    sget-object v0, Lf4i;->b:Lf4i;

    return-object v0
.end method

.method public static i()Lf4i;
    .locals 1

    sget-object v0, Lf4i;->a:Lf4i;

    return-object v0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b(II)Lf4i;
.end method

.method public abstract c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lf4i;
.end method

.method public abstract d(ZZ)Lf4i;
.end method

.method public abstract e(ZZ)Lf4i;
.end method
