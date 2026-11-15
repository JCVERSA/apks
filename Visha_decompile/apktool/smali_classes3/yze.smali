.class public abstract Lyze;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Leze;

.field public static final b:Leze;

.field public static final c:Leze;

.field public static final d:Leze;

.field public static final e:Leze;

.field public static final f:Leze;

.field public static final g:Leze;

.field public static final h:Leze;

.field public static final i:Leze;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Leze;

    const-string v1, "gads:gma_attestation:click:macro_string"

    const-string v2, "@click_attok@"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Leze;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    sput-object v0, Lyze;->a:Leze;

    new-instance v0, Leze;

    const-string v1, "gads:gma_attestation:click:query_param"

    const-string v2, "attok"

    invoke-direct {v0, v1, v2, v3}, Leze;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    sput-object v0, Lyze;->b:Leze;

    const-string v0, "gads:gma_attestation:click:timeout"

    const-wide/16 v1, 0x7d0

    invoke-static {v0, v1, v2}, Leze;->b(Ljava/lang/String;J)Leze;

    move-result-object v0

    sput-object v0, Lyze;->c:Leze;

    const-string v0, "gads:gma_attestation:click:enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Lyze;->d:Leze;

    const-string v0, "gads:gma_attestation:click:enable_dynamite_version"

    const-wide/32 v2, 0xcbe6c14

    invoke-static {v0, v2, v3}, Leze;->b(Ljava/lang/String;J)Leze;

    move-result-object v0

    sput-object v0, Lyze;->e:Leze;

    const-string v0, "gads:gma_attestation:click:qualification:enable"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Lyze;->f:Leze;

    const-string v0, "gads:gma_attestation:image_hash"

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Lyze;->g:Leze;

    const-string v0, "gads:gma_attestation:impression:enable"

    invoke-static {v0, v2}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Lyze;->h:Leze;

    const-string v0, "gads:gma_attestation:request:enable_javascript"

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    const-string v0, "gads:gma_attestation:request:enable"

    invoke-static {v0, v2}, Leze;->d(Ljava/lang/String;Z)Leze;

    const-string v0, "gads:gma_attestation:click:report_error"

    invoke-static {v0, v2}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Lyze;->i:Leze;

    return-void
.end method
