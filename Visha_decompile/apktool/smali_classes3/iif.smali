.class public final synthetic Liif;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh9e;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/net/Uri;Ljava/util/Map;)[Lc9e;
    .locals 1

    sget p0, Lrif;->x:I

    new-instance p0, Lmfe;

    invoke-direct {p0}, Lmfe;-><init>()V

    new-instance p1, Lxde;

    invoke-direct {p1}, Lxde;-><init>()V

    const/4 p2, 0x2

    new-array p2, p2, [Lc9e;

    const/4 v0, 0x0

    aput-object p0, p2, v0

    const/4 p0, 0x1

    aput-object p1, p2, p0

    return-object p2
.end method
