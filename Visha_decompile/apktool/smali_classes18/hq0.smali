.class public abstract Lhq0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "java.lang.ClassValue"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lhq0;->a:Z

    return-void
.end method

.method public static final a(Le74;)Lqd9;
    .locals 1

    const-string v0, "factory"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lhq0;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lkotlinx/serialization/internal/ClassValueCache;

    invoke-direct {v0, p0}, Lkotlinx/serialization/internal/ClassValueCache;-><init>(Le74;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lfe1;

    invoke-direct {v0, p0}, Lfe1;-><init>(Le74;)V

    :goto_0
    return-object v0
.end method

.method public static final b(Ls74;)Llw7;
    .locals 1

    const-string v0, "factory"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lhq0;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lkotlinx/serialization/internal/ClassValueParametrizedCache;

    invoke-direct {v0, p0}, Lkotlinx/serialization/internal/ClassValueParametrizedCache;-><init>(Ls74;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lhe1;

    invoke-direct {v0, p0}, Lhe1;-><init>(Ls74;)V

    :goto_0
    return-object v0
.end method
