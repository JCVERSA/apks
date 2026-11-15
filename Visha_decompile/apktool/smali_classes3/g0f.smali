.class public abstract Lg0f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Leze;

.field public static final b:Leze;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "gads:separate_url_generation:enabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Lg0f;->a:Leze;

    const-string v0, "gads:url_cache:max_size"

    const-wide/16 v2, 0xc8

    invoke-static {v0, v2, v3}, Leze;->b(Ljava/lang/String;J)Leze;

    move-result-object v0

    sput-object v0, Lg0f;->b:Leze;

    const-string v0, "gads:use_request_id_as_url_cache_key:enabled"

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    return-void
.end method
