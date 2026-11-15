.class public final Lje3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lal3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lje3$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lje3;
    .locals 1

    invoke-static {}, Lje3$a;->a()Lje3;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lie3;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lvd8;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lje3;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lje3;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
