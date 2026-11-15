.class public abstract Lcq5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcl4;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcq5;->a:Ljava/lang/String;

    invoke-static {}, Lcl4;->f()Lcl4;

    move-result-object v0

    invoke-virtual {v0}, Lcl4;->e()Lfx9;

    move-result-object v0

    invoke-virtual {v0}, Lfx9;->h()Z

    move-result v0

    sput-boolean v0, Lcq5;->b:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcq5;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcq5;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
