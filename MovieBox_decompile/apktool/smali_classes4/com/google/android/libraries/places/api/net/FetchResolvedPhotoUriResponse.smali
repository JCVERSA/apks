.class public abstract Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriResponse;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static newInstance(Landroid/net/Uri;)Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriResponse;
    .locals 1
    .param p0    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/api/net/zzl;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/api/net/zzl;-><init>(Landroid/net/Uri;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract getUri()Landroid/net/Uri;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method
