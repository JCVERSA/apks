.class public abstract Ln0f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Leze;

.field public static final b:Leze;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "gads:trustless_token_for_decagon:enabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Ln0f;->a:Leze;

    const-string v0, "gads:invalidate_token_at_refresh_start"

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    const-string v0, "gms:expose_token_for_gma:enabled"

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    const-string v0, "gads:referesh_rate_limit"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Leze;->d(Ljava/lang/String;Z)Leze;

    const-string v0, "gads:timeout_for_trustless_token:millis"

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v2, v3}, Leze;->b(Ljava/lang/String;J)Leze;

    move-result-object v0

    sput-object v0, Ln0f;->b:Leze;

    const-string v0, "gads:token_anonymization:enabled"

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    const-string v0, "gads:cached_token:ttl_millis"

    const-wide/32 v1, 0xa4cb80

    invoke-static {v0, v1, v2}, Leze;->b(Ljava/lang/String;J)Leze;

    return-void
.end method
