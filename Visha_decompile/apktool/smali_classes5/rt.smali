.class public final synthetic Lrt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;

.field public final synthetic c:Lcom/transsion/dbdata/database/PlayList;

.field public final synthetic d:Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;Lcom/transsion/dbdata/database/PlayList;Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrt;->b:Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;

    iput-object p2, p0, Lrt;->c:Lcom/transsion/dbdata/database/PlayList;

    iput-object p3, p0, Lrt;->d:Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lrt;->b:Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;

    iget-object v1, p0, Lrt;->c:Lcom/transsion/dbdata/database/PlayList;

    iget-object p0, p0, Lrt;->d:Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->g(Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;Lcom/transsion/dbdata/database/PlayList;Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;Ljava/lang/Boolean;)V

    return-void
.end method
