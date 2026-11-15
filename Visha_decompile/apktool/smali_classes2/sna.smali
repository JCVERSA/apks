.class public final Lsna;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lal3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsna$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lsna;
    .locals 1

    invoke-static {}, Lsna$a;->a()Lsna;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lhy0;
    .locals 2

    invoke-static {}, Lqna;->b()Lhy0;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lvd8;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhy0;

    return-object v0
.end method


# virtual methods
.method public b()Lhy0;
    .locals 0

    invoke-static {}, Lsna;->c()Lhy0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lsna;->b()Lhy0;

    move-result-object p0

    return-object p0
.end method
