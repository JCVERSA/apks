.class public final synthetic Lq18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/datasource/DataSource$Factory;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createDataSource()Landroidx/media3/datasource/DataSource;
    .locals 0

    invoke-static {}, Landroidx/media3/datasource/PlaceholderDataSource;->b()Landroidx/media3/datasource/PlaceholderDataSource;

    move-result-object p0

    return-object p0
.end method
