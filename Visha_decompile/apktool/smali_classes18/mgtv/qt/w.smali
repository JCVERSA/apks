.class final Lmgtv/qt/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lmgtv/qt/w;->a:Ljava/lang/String;

    iput-object p2, p0, Lmgtv/qt/w;->b:Ljava/lang/String;

    iput-object p3, p0, Lmgtv/qt/w;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lmgtv/qt/w;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    sget-object v0, Lmgtv/qt/c;->k:Landroid/app/Application;

    iget-object v1, p0, Lmgtv/qt/w;->a:Ljava/lang/String;

    iget-object v2, p0, Lmgtv/qt/w;->b:Ljava/lang/String;

    iget-boolean p0, p0, Lmgtv/qt/w;->d:Z

    invoke-static {v0, v1, v2, p0}, Lmgtv/qt/c;->d(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object p0, Lmgtv/qt/c;->k:Landroid/app/Application;

    invoke-static {p0}, Lmgtv/qt/e;->g(Landroid/app/Application;)V

    invoke-static {}, Ls3d;->b()V

    sget-object p0, Lmgtv/qt/c;->k:Landroid/app/Application;

    invoke-static {p0}, Lmgtv/qt/c;->b(Landroid/app/Application;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
