.class public abstract Li0f;
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

    const-string v0, "gads:dynamite_load:fail:sample_rate"

    const-wide/16 v1, 0x2710

    invoke-static {v0, v1, v2}, Leze;->b(Ljava/lang/String;J)Leze;

    move-result-object v0

    sput-object v0, Li0f;->a:Leze;

    const-string v0, "gads:report_dynamite_crash_in_background_thread"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Li0f;->b:Leze;

    new-instance v0, Leze;

    const-string v2, "gads:public_beta:traffic_multiplier"

    const-string v3, "1.0"

    const/4 v4, 0x4

    invoke-direct {v0, v2, v3, v4}, Leze;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    sput-object v0, Li0f;->c:Leze;

    new-instance v0, Leze;

    const-string v2, "gads:sdk_crash_report_class_prefix"

    const-string v3, "com.google."

    invoke-direct {v0, v2, v3, v4}, Leze;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    sput-object v0, Li0f;->d:Leze;

    const-string v0, "gads:sdk_crash_report_enabled"

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    const-string v0, "gads:sdk_crash_report_full_stacktrace"

    invoke-static {v0, v1}, Leze;->d(Ljava/lang/String;Z)Leze;

    move-result-object v0

    sput-object v0, Li0f;->e:Leze;

    const-string v0, "gads:trapped_exception_sample_rate"

    const-wide v1, 0x3f847ae147ae147bL    # 0.01

    invoke-static {v0, v1, v2}, Leze;->a(Ljava/lang/String;D)Leze;

    move-result-object v0

    sput-object v0, Li0f;->f:Leze;

    return-void
.end method
