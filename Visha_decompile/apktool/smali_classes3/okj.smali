.class public final Lokj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ltkj;

.field public final b:Landroid/media/MediaFormat;

.field public final c:Lerj;

.field public final d:Landroid/view/Surface;

.field public final e:Landroid/media/MediaCrypto;

.field public final f:Lnkj;


# direct methods
.method public constructor <init>(Ltkj;Landroid/media/MediaFormat;Lerj;Landroid/view/Surface;Landroid/media/MediaCrypto;Lnkj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokj;->a:Ltkj;

    iput-object p2, p0, Lokj;->b:Landroid/media/MediaFormat;

    iput-object p3, p0, Lokj;->c:Lerj;

    iput-object p4, p0, Lokj;->d:Landroid/view/Surface;

    const/4 p1, 0x0

    iput-object p1, p0, Lokj;->e:Landroid/media/MediaCrypto;

    iput-object p6, p0, Lokj;->f:Lnkj;

    return-void
.end method

.method public static a(Ltkj;Landroid/media/MediaFormat;Lerj;Landroid/media/MediaCrypto;Lnkj;)Lokj;
    .locals 7

    new-instance p3, Lokj;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lokj;-><init>(Ltkj;Landroid/media/MediaFormat;Lerj;Landroid/view/Surface;Landroid/media/MediaCrypto;Lnkj;)V

    return-object p3
.end method

.method public static b(Ltkj;Landroid/media/MediaFormat;Lerj;Landroid/view/Surface;Landroid/media/MediaCrypto;)Lokj;
    .locals 7

    new-instance p4, Lokj;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lokj;-><init>(Ltkj;Landroid/media/MediaFormat;Lerj;Landroid/view/Surface;Landroid/media/MediaCrypto;Lnkj;)V

    return-object p4
.end method
