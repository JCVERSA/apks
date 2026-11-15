.class public final Lo29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lal3;


# instance fields
.field public final a:Loj8;

.field public final b:Loj8;

.field public final c:Loj8;

.field public final d:Loj8;


# direct methods
.method public constructor <init>(Loj8;Loj8;Loj8;Loj8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo29;->a:Loj8;

    iput-object p2, p0, Lo29;->b:Loj8;

    iput-object p3, p0, Lo29;->c:Loj8;

    iput-object p4, p0, Lo29;->d:Loj8;

    return-void
.end method

.method public static a(Loj8;Loj8;Loj8;Loj8;)Lo29;
    .locals 1

    new-instance v0, Lo29;

    invoke-direct {v0, p0, p1, p2, p3}, Lo29;-><init>(Loj8;Loj8;Loj8;Loj8;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;Lge3;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;Lhy0;)Lfpc;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ln29;->a(Landroid/content/Context;Lge3;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;Lhy0;)Lfpc;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lvd8;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfpc;

    return-object p0
.end method


# virtual methods
.method public b()Lfpc;
    .locals 3

    iget-object v0, p0, Lo29;->a:Loj8;

    invoke-interface {v0}, Loj8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lo29;->b:Loj8;

    invoke-interface {v1}, Loj8;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lge3;

    iget-object v2, p0, Lo29;->c:Loj8;

    invoke-interface {v2}, Loj8;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;

    iget-object p0, p0, Lo29;->d:Loj8;

    invoke-interface {p0}, Loj8;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhy0;

    invoke-static {v0, v1, v2, p0}, Lo29;->c(Landroid/content/Context;Lge3;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;Lhy0;)Lfpc;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lo29;->b()Lfpc;

    move-result-object p0

    return-object p0
.end method
