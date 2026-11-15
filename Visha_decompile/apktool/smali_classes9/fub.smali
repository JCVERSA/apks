.class public final synthetic Lfub;
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

    iput-object p1, p0, Lfub;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lfub;->b:Ljava/lang/String;

    check-cast p1, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->i(Ljava/lang/String;Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
