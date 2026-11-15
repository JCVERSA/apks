.class public abstract Ljoh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lxda;

.field public static b:Lye;

.field public static final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljoh;->c:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lxda;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljoh;->b(Landroid/content/Context;Z)V

    sget-object p0, Ljoh;->c:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Ljoh;->a:Lxda;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b(Landroid/content/Context;Z)V
    .locals 2

    sget-object v0, Ljoh;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ljoh;->b:Lye;

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/appset/AppSet;->a(Landroid/content/Context;)Lye;

    move-result-object p0

    sput-object p0, Ljoh;->b:Lye;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Ljoh;->a:Lxda;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lxda;->p()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Ljoh;->a:Lxda;

    invoke-virtual {p0}, Lxda;->q()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    sget-object p0, Ljoh;->a:Lxda;

    invoke-virtual {p0}, Lxda;->p()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    sget-object p0, Ljoh;->b:Lye;

    const-string p1, "the appSetIdClient shouldn\'t be null"

    invoke-static {p0, p1}, Lwd8;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lye;

    invoke-interface {p0}, Lye;->a()Lxda;

    move-result-object p0

    sput-object p0, Ljoh;->a:Lxda;

    :cond_3
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
