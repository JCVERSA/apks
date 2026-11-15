.class public abstract Ld0f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Leze;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "gads:parallel_rendering:max_renderers"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Leze;->b(Ljava/lang/String;J)Leze;

    move-result-object v0

    sput-object v0, Ld0f;->a:Leze;

    return-void
.end method
