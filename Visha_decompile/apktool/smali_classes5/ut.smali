.class public final synthetic Lut;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lut;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lut;->b:Ljava/lang/String;

    check-cast p1, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->b(Ljava/lang/String;Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
