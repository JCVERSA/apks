.class public abstract Llze;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Leze;

.field public static final b:Leze;

.field public static final c:Leze;

.field public static final d:Leze;

.field public static final e:Leze;

.field public static final f:Leze;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "gads:content_age_weight"

    const-wide/16 v1, 0x1

    invoke-static {v0, v1, v2}, Leze;->b(Ljava/lang/String;J)Leze;

    move-result-object v0

    sput-object v0, Llze;->a:Leze;

    const-string v0, "gads:enable_content_fetching"

    const/4 v3, 0x1

    invoke-static {v0, v3}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Llze;->b:Leze;

    const-string v0, "gads:fingerprint_number"

    const-wide/16 v3, 0xa

    invoke-static {v0, v3, v4}, Leze;->b(Ljava/lang/String;J)Leze;

    move-result-object v0

    sput-object v0, Llze;->c:Leze;

    const-string v0, "gads:content_length_weight"

    invoke-static {v0, v1, v2}, Leze;->b(Ljava/lang/String;J)Leze;

    move-result-object v0

    sput-object v0, Llze;->d:Leze;

    const-string v0, "gads:min_content_len"

    const-wide/16 v1, 0xb

    invoke-static {v0, v1, v2}, Leze;->b(Ljava/lang/String;J)Leze;

    move-result-object v0

    sput-object v0, Llze;->e:Leze;

    const-string v0, "gads:sleep_sec"

    invoke-static {v0, v3, v4}, Leze;->b(Ljava/lang/String;J)Leze;

    move-result-object v0

    sput-object v0, Llze;->f:Leze;

    return-void
.end method
