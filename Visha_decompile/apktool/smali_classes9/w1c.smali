.class public final synthetic Lw1c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/transsion/cloud_drive/base/api/model/FileVideoTemplate;

    check-cast p2, Lcom/transsion/cloud_drive/base/api/model/FileVideoTemplate;

    invoke-static {p1, p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->g(Lcom/transsion/cloud_drive/base/api/model/FileVideoTemplate;Lcom/transsion/cloud_drive/base/api/model/FileVideoTemplate;)I

    move-result p0

    return p0
.end method
