.class public final Lnet/grandcentrix/tray/provider/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/grandcentrix/tray/provider/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lnet/grandcentrix/tray/core/TrayStorage$Type;

.field public final synthetic e:Lnet/grandcentrix/tray/provider/b;


# direct methods
.method public constructor <init>(Lnet/grandcentrix/tray/provider/b;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lnet/grandcentrix/tray/provider/b$a;->e:Lnet/grandcentrix/tray/provider/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lnet/grandcentrix/tray/core/TrayStorage$Type;->UNDEFINED:Lnet/grandcentrix/tray/core/TrayStorage$Type;

    iput-object v0, p0, Lnet/grandcentrix/tray/provider/b$a;->d:Lnet/grandcentrix/tray/core/TrayStorage$Type;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1, p0}, Lnet/grandcentrix/tray/provider/b;->a(Lnet/grandcentrix/tray/provider/b;Landroid/content/Context;)Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 2

    iget-boolean v0, p0, Lnet/grandcentrix/tray/provider/b$a;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/grandcentrix/tray/provider/b$a;->e:Lnet/grandcentrix/tray/provider/b;

    invoke-static {v0}, Lnet/grandcentrix/tray/provider/b;->b(Lnet/grandcentrix/tray/provider/b;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/grandcentrix/tray/provider/b$a;->e:Lnet/grandcentrix/tray/provider/b;

    invoke-static {v0}, Lnet/grandcentrix/tray/provider/b;->c(Lnet/grandcentrix/tray/provider/b;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lnet/grandcentrix/tray/provider/b$a;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1
    iget-object v1, p0, Lnet/grandcentrix/tray/provider/b$a;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_2
    iget-object p0, p0, Lnet/grandcentrix/tray/provider/b$a;->d:Lnet/grandcentrix/tray/core/TrayStorage$Type;

    sget-object v1, Lnet/grandcentrix/tray/core/TrayStorage$Type;->UNDEFINED:Lnet/grandcentrix/tray/core/TrayStorage$Type;

    if-eq p0, v1, :cond_4

    sget-object v1, Lnet/grandcentrix/tray/core/TrayStorage$Type;->USER:Lnet/grandcentrix/tray/core/TrayStorage$Type;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "true"

    goto :goto_1

    :cond_3
    const-string p0, "false"

    :goto_1
    const-string v1, "backup"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_4
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public b(Z)Lnet/grandcentrix/tray/provider/b$a;
    .locals 0

    iput-boolean p1, p0, Lnet/grandcentrix/tray/provider/b$a;->a:Z

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lnet/grandcentrix/tray/provider/b$a;
    .locals 0

    iput-object p1, p0, Lnet/grandcentrix/tray/provider/b$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lnet/grandcentrix/tray/provider/b$a;
    .locals 0

    iput-object p1, p0, Lnet/grandcentrix/tray/provider/b$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public e(Lnet/grandcentrix/tray/core/TrayStorage$Type;)Lnet/grandcentrix/tray/provider/b$a;
    .locals 0

    iput-object p1, p0, Lnet/grandcentrix/tray/provider/b$a;->d:Lnet/grandcentrix/tray/core/TrayStorage$Type;

    return-object p0
.end method
