.class public final synthetic Lbo0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/datasource/ByteArrayDataSource$UriResolver;


# instance fields
.field public final synthetic a:[B


# direct methods
.method public synthetic constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbo0;->a:[B

    return-void
.end method


# virtual methods
.method public final resolve(Landroid/net/Uri;)[B
    .locals 0

    iget-object p0, p0, Lbo0;->a:[B

    invoke-static {p0, p1}, Landroidx/media3/datasource/ByteArrayDataSource;->b([BLandroid/net/Uri;)[B

    move-result-object p0

    return-object p0
.end method
