.class public final Lme3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lal3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme3$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lme3;
    .locals 1

    invoke-static {}, Lme3$a;->a()Lme3;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lhe3;
    .locals 2

    invoke-static {}, Lie3;->d()Lhe3;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lvd8;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhe3;

    return-object v0
.end method


# virtual methods
.method public b()Lhe3;
    .locals 0

    invoke-static {}, Lme3;->c()Lhe3;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lme3;->b()Lhe3;

    move-result-object p0

    return-object p0
.end method
