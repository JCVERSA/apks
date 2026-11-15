.class public final Le8d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgbd;


# instance fields
.field public synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le8d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 2

    :try_start_0
    invoke-static {p1}, Ly4d;->s(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "tp"

    iget-object p0, p0, Le8d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p1}, Ly4d;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "v"

    invoke-static {p0}, Ly4d;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "dft"

    const-string p1, "1"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
