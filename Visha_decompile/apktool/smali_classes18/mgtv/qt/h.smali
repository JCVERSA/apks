.class public final Lmgtv/qt/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-nez p0, :cond_0

    const-string p0, "QuestMobile"

    const-string p1, "onEvent context is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lmgtv/qt/c;->j:Landroid/content/Context;

    new-instance p0, Lmgtv/qt/g;

    const-string v4, ""

    const-string v5, "-1"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lmgtv/qt/g;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lmgtv/qt/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmgtv/qt/h;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lmgtv/qt/h;->a:Ljava/lang/Object;

    return-void
.end method

.method public final d(Z)V
    .locals 0

    iput-boolean p1, p0, Lmgtv/qt/h;->b:Z

    return-void
.end method

.method public final e()Z
    .locals 0

    iget-boolean p0, p0, Lmgtv/qt/h;->b:Z

    return p0
.end method
