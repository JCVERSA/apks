.class public final Landroidx/media3/extractor/text/CueDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# static fields
.field static final BUNDLE_FIELD_CUES:Ljava/lang/String; = "c"

.field static final BUNDLE_FIELD_DURATION_US:Ljava/lang/String; = "d"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(J[BII)Landroidx/media3/extractor/text/CuesWithTiming;
    .locals 6

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    invoke-virtual {p0, p3, p4, p5}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Landroid/os/Parcel;->setDataPosition(I)V

    const-class p3, Landroid/os/Bundle;

    invoke-virtual {p3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    const-string p0, "c"

    invoke-virtual {p3, p0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    new-instance p4, Landroidx/media3/extractor/text/CuesWithTiming;

    new-instance p5, Lom1;

    invoke-direct {p5}, Lom1;-><init>()V

    invoke-static {p5, p0}, Landroidx/media3/common/util/BundleCollectionUtil;->fromBundleList(Lo74;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const-string p0, "d"

    invoke-virtual {p3, p0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object v0, p4

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Landroidx/media3/extractor/text/CuesWithTiming;-><init>(Ljava/util/List;JJ)V

    return-object p4
.end method
