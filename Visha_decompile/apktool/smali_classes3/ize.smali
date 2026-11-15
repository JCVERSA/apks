.class public abstract Lize;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Leze;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "gads:sequential_cache_delay_to_load_seconds"

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Leze;->b(Ljava/lang/String;J)Leze;

    move-result-object v0

    sput-object v0, Lize;->a:Leze;

    return-void
.end method
