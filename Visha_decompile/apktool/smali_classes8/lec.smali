.class public final Llec;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Llec;->a:Z

    iput-object p2, p0, Llec;->b:Ljava/lang/String;

    iput-object p3, p0, Llec;->c:Ljava/lang/String;

    return-void
.end method

.method public static c(Landroid/content/Context;)Llec;
    .locals 7

    invoke-static {}, Lge;->e()Z

    move-result v6

    const/4 v0, 0x0

    if-eqz v6, :cond_0

    const-string v1, "push_env_mode"

    invoke-static {p0, v1, v0}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    :cond_0
    move p0, v0

    const-string v4, "f0f87fbc33954875b036499054070a5c"

    const-string v5, "d1237f72bdee434ba7d101365d63c244"

    const-string v2, "52a89908b30741bebc51034d9452f9fc"

    const-string v3, "85f5899508da4dcaa3ab88f82927d231"

    move v0, v6

    move v1, p0

    invoke-static/range {v0 .. v5}, Llec;->f(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Llec;

    move-result-object v0

    invoke-virtual {v0}, Llec;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Llec;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "empty tpush credentials: useTestEnv="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Llec;->d()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " canSwitch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " storedMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " (check BuildConfig TPUSH_*_APP_ID/KEY)"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Visha_tpush"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static f(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Llec;
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    new-instance p1, Llec;

    invoke-static {p4}, Llec;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p5}, Llec;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p0, p2, p3}, Llec;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    new-instance p0, Llec;

    invoke-static {p2}, Llec;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Llec;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p0, p3, p1, p2}, Llec;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Llec;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Llec;->c:Ljava/lang/String;

    return-object p0
.end method

.method public d()Z
    .locals 0

    iget-boolean p0, p0, Llec;->a:Z

    return p0
.end method
