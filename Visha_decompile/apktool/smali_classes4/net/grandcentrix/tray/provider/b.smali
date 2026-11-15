.class public Lnet/grandcentrix/tray/provider/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/grandcentrix/tray/provider/b$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Landroid/net/Uri;

.field public c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/grandcentrix/tray/provider/b;->c:Landroid/content/Context;

    invoke-static {p1}, Lo9b;->b(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lnet/grandcentrix/tray/provider/b;->a:Landroid/net/Uri;

    invoke-static {p1}, Lo9b;->d(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lnet/grandcentrix/tray/provider/b;->b:Landroid/net/Uri;

    return-void
.end method

.method public static synthetic a(Lnet/grandcentrix/tray/provider/b;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iput-object p1, p0, Lnet/grandcentrix/tray/provider/b;->c:Landroid/content/Context;

    return-object p1
.end method

.method public static synthetic b(Lnet/grandcentrix/tray/provider/b;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lnet/grandcentrix/tray/provider/b;->b:Landroid/net/Uri;

    return-object p0
.end method

.method public static synthetic c(Lnet/grandcentrix/tray/provider/b;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lnet/grandcentrix/tray/provider/b;->a:Landroid/net/Uri;

    return-object p0
.end method


# virtual methods
.method public d()Lnet/grandcentrix/tray/provider/b$a;
    .locals 2

    new-instance v0, Lnet/grandcentrix/tray/provider/b$a;

    iget-object v1, p0, Lnet/grandcentrix/tray/provider/b;->c:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lnet/grandcentrix/tray/provider/b$a;-><init>(Lnet/grandcentrix/tray/provider/b;Landroid/content/Context;)V

    return-object v0
.end method
